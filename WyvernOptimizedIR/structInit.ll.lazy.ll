; ModuleID = './structInit.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/structInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Connection_Type = type { i32, [10 x i8], i32 }

@link = dso_local global [3 x %struct.Connection_Type] [%struct.Connection_Type { i32 1, [10 x i8] c"link1\00\00\00\00\00", i32 10 }, %struct.Connection_Type { i32 2, [10 x i8] c"link2\00\00\00\00\00", i32 20 }, %struct.Connection_Type { i32 3, [10 x i8] c"link3\00\00\00\00\00", i32 30 }], align 16
@.str = private unnamed_addr constant [12 x i8] c"%d, %s, %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %2 = icmp ult i32 %.0, 3
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %4, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %7, i32 1, i64 0
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %9, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i8* noundef nonnull %8, i32 noundef %11) #2
  br label %13

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

15:                                               ; preds = %1
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
