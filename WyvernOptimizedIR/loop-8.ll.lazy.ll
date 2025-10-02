; ModuleID = './loop-8.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [3 x double] [double 0.000000e+00, double 1.000000e+00, double 2.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, double* nocapture noundef readonly %1) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %3, label %6

3:                                                ; preds = %2
  %4 = load double, double* %1, align 8
  %5 = fcmp une double %4, 1.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %2
  call void @abort() #3
  unreachable

7:                                                ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca double, align 8
  br label %2

2:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 3
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [3 x double], [3 x double]* @a, i64 0, i64 %5
  %7 = load double, double* %6, align 8
  store double %7, double* %1, align 8
  %8 = fcmp ogt double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

13:                                               ; preds = %2
  call void @bar(i32 noundef 1, double* noundef nonnull %1)
  call void @exit(i32 noundef 1) #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %9
  call void @bar(i32 noundef 0, double* noundef nonnull %1)
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
