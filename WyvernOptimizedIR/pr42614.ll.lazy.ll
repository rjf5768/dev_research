; ModuleID = './pr42614.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42614.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.STable = type { [2 x %struct.SEntry] }
%struct.SEntry = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.STable* @init() #0 {
  %1 = call dereferenceable_or_null(2) i8* @malloc(i64 noundef 2) #4
  %2 = bitcast i8* %1 to %struct.STable*
  ret %struct.STable* %2
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @expect_func(i32 noundef %0, i8* noundef readnone %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = icmp eq i8* %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  ret void

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.SEntry, align 1
  store i8 0, i8* %1, align 1
  %3 = call %struct.STable* @init()
  %4 = getelementptr inbounds %struct.STable, %struct.STable* %3, i64 0, i32 0, i64 1
  call void @inlined_wrong(%struct.SEntry* noundef nonnull %4, i32 noundef 1)
  call void @expect_func(i32 noundef 1, i8* noundef nonnull %1)
  call void @inlined_wrong(%struct.SEntry* noundef nonnull %2, i32 noundef 1)
  %5 = getelementptr %struct.STable, %struct.STable* %3, i64 0, i32 0, i64 0, i32 0
  call void @free(i8* noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @inlined_wrong(%struct.SEntry* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %0, i64 0, i32 0
  store i8 0, i8* %3, align 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %13, %6
  %.0 = phi i8 [ 0, %6 ], [ %14, %13 ]
  %8 = icmp eq i8 %.0, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %0, i64 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = add i8 %11, 1
  store i8 %12, i8* %10, align 1
  br label %13

13:                                               ; preds = %9
  %14 = add i8 %.0, 1
  br label %7, !llvm.loop !4

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %0, i64 0, i32 0
  %17 = load i8, i8* %16, align 1
  %.not = icmp eq i8 %17, 0
  br i1 %.not, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %5
  unreachable
}

declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
