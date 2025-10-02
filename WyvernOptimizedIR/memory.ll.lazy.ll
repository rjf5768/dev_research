; ModuleID = './memory.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myStruct = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mem_test(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = add i32 %.0, 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mem_test2() #0 {
  %1 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #4
  %2 = bitcast i8* %1 to %struct.myStruct*
  %3 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i64 0, i32 1
  store i32 0, i32* %3, align 4
  br i1 false, label %4, label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %0
  %6 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i64 0, i32 0
  %10 = shl nsw i32 %8, 1
  store i32 %10, i32* %9, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %5
  call void @free(i8* noundef %1) #4
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @mem_test(i32 noundef 255)
  call void @mem_test2()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
