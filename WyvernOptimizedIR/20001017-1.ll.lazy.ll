; ModuleID = './20001017-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001017-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bug(double* noundef readnone %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double* nocapture noundef readnone %6, i32 noundef %7, double* nocapture noundef readnone %8, i32 noundef %9, double noundef %10, double* noundef readnone %11, i32 noundef %12) #0 {
  %.not = icmp eq double* %11, %0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %13
  call void @abort() #2
  unreachable

15:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [1 x double], align 8
  %2 = alloca [1 x double], align 8
  %3 = alloca [1 x double], align 8
  %4 = getelementptr inbounds [1 x double], [1 x double]* %3, i64 0, i64 0
  %5 = getelementptr inbounds [1 x double], [1 x double]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [1 x double], [1 x double]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [1 x double], [1 x double]* %3, i64 0, i64 0
  call void @bug(double* noundef nonnull %4, i8 noundef signext 66, i32 noundef 1, i32 noundef 2, i32 noundef 3, double noundef 4.000000e+00, double* noundef nonnull %5, i32 noundef 5, double* noundef nonnull %6, i32 noundef 6, double noundef 7.000000e+00, double* noundef nonnull %7, i32 noundef 8)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
