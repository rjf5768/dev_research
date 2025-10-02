; ModuleID = './930518-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930518-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @f(i32* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.01 = phi i32* [ %0, %1 ], [ %8, %5 ]
  %.0 = phi i32 [ 2, %1 ], [ %7, %5 ]
  %3 = load i32, i32* @bar, align 4
  %4 = icmp sgt i32 %.0, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load i32, i32* @bar, align 4
  %7 = sub nsw i32 %.0, %6
  %8 = getelementptr inbounds i32, i32* %.01, i64 1
  store i32 %7, i32* %.01, align 4
  store i32 1, i32* @bar, align 4
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [2 x i32], align 4
  %2 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %5 = call i32 @f(i32* noundef nonnull %4)
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 2
  br i1 %.not, label %8, label %11

8:                                                ; preds = %0
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %.not1 = icmp eq i32 %10, 1
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %8, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
