; ModuleID = './unsafe-fp-assoc-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/unsafe-fp-assoc-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hexdouble = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local void @func(double noundef %0) #0 {
  %2 = alloca %union.hexdouble, align 8
  %3 = getelementptr inbounds %union.hexdouble, %union.hexdouble* %2, i64 0, i32 0
  store double %0, double* %3, align 8
  %4 = bitcast %union.hexdouble* %2 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 2146435072
  %7 = icmp ult i32 %6, 1127219200
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = fadd double %0, 0xC330000000000000
  %10 = fadd double %9, 0x4330000000000000
  %11 = fcmp une double %10, %0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  %14 = fadd double %0, -5.000000e-01
  %15 = fadd double %14, 0xC330000000000000
  %16 = fadd double %15, 0x4330000000000000
  %17 = fadd double %0, 0xC330000000000000
  %18 = fadd double %17, 0x4330000000000000
  %19 = fcmp oeq double %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %1
  ret void

UnifiedUnreachableBlock:                          ; preds = %20, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @func(double noundef 1.000000e+00)
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
