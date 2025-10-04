; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i48 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = bitcast %struct.S* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 281474976710655
  %7 = trunc i64 %6 to i32
  %8 = call i32 @foo(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 24
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 65280
  %8 = or i32 %4, %7
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 8
  %11 = and i32 %10, 16711680
  %12 = or i32 %8, %11
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i32 noundef -559038737)
  %4 = zext i32 %3 to i64
  %5 = or i64 %4, 280293860704256
  %6 = bitcast %struct.S* %2 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = and i64 %5, 281474976710655
  %9 = and i64 %7, -281474976710656
  %10 = or i64 %9, %8
  store i64 %10, i64* %6, align 8
  %11 = call i32 @bar(%struct.S* noundef %2)
  %12 = icmp ne i32 %11, -559038737
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
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
