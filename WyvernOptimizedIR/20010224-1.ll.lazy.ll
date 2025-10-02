; ModuleID = './20010224-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010224-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masktab = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@psd = dso_local global [6 x i16] [i16 50, i16 40, i16 30, i16 20, i16 10, i16 0], align 2
@bndpsd = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ba_compute_psd(i16 noundef signext %0) #0 {
  %2 = sext i16 %0 to i32
  %3 = sext i16 %0 to i64
  %4 = getelementptr inbounds [6 x i16], [6 x i16]* @masktab, i64 0, i64 %3
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %0 to i64
  %7 = getelementptr inbounds [6 x i16], [6 x i16]* @psd, i64 0, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %5 to i64
  %10 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %9
  store i16 %8, i16* %10, align 2
  %11 = add nsw i32 %2, 1
  br label %12

12:                                               ; preds = %22, %1
  %.01 = phi i32 [ %11, %1 ], [ %24, %22 ]
  %.0 = phi i32 [ %11, %1 ], [ %23, %22 ]
  %13 = icmp slt i32 %.01, 4
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = sext i16 %5 to i64
  %16 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %15
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds [6 x i16], [6 x i16]* @psd, i64 0, i64 %17
  %19 = call signext i16 @logadd(i16* noundef nonnull %16, i16* noundef nonnull %18)
  %20 = sext i16 %5 to i64
  %21 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %20
  store i16 %19, i16* %21, align 2
  br label %22

22:                                               ; preds = %14
  %23 = add nsw i32 %.0, 1
  %24 = add nsw i32 %.01, 1
  br label %12, !llvm.loop !4

25:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i16 @logadd(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1) #1 {
  %3 = load i16, i16* %0, align 2
  %4 = load i16, i16* %1, align 2
  %5 = add i16 %3, %4
  ret i16 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @ba_compute_psd(i16 noundef signext 0)
  %1 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @bndpsd, i64 0, i64 1), align 2
  %.not = icmp eq i16 %1, 140
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
