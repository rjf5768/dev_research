; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991228-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991228-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%union.anon.0 = type { double }

@u = dso_local global %union.anon { double -2.500000e-01 }, align 8
@endianness_test = dso_local global i64 1, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @signbit(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.anon.0, align 8
  store double %0, double* %2, align 8
  %4 = bitcast %union.anon.0* %3 to double*
  %5 = load double, double* %2, align 8
  store double %5, double* %4, align 8
  %6 = bitcast %union.anon.0* %3 to [2 x i32]*
  %7 = load i32, i32* bitcast (i64* @endianness_test to i32*), align 8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* bitcast (i64* @endianness_test to i32*), align 8
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* bitcast (%union.anon* @u to [2 x i32]*), i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable

8:                                                ; preds = %0
  %9 = call i32 @signbit(double noundef -2.500000e-01)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
