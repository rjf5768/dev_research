; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86492.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { i32 }
%struct.S = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.U, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast %union.U* %3 to i32*
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = bitcast %union.U* %3 to %struct.S*
  %7 = bitcast %struct.S* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %5, 65535
  %10 = shl i32 %9, 16
  %11 = and i32 %8, 65535
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = bitcast %union.U* %3 to %struct.S*
  %14 = bitcast %struct.S* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -61441
  %17 = or i32 %16, 57344
  store i32 %17, i32* %14, align 4
  %18 = bitcast %union.U* %3 to i32*
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.U, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i32 noundef 114)
  %4 = bitcast %union.U* %2 to i32*
  store i32 %3, i32* %4, align 4
  %5 = bitcast %union.U* %2 to %struct.S*
  %6 = bitcast %struct.S* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 4095
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %0
  %11 = bitcast %union.U* %2 to %struct.S*
  %12 = bitcast %struct.S* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = lshr i32 %13, 12
  %15 = and i32 %14, 15
  %16 = icmp ne i32 %15, 14
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = bitcast %union.U* %2 to %struct.S*
  %19 = bitcast %struct.S* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %20, 16
  %22 = icmp ne i32 %21, 114
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %10, %0
  call void @abort() #2
  unreachable

24:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
