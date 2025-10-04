; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65170.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = bitcast i128* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 16
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = load i128, i128* %5, align 16
  %14 = bitcast i128* %6 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 16
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  %17 = load i128, i128* %6, align 16
  store i128 %13, i128* %7, align 16
  store i128 %17, i128* %8, align 16
  %18 = load i128, i128* %7, align 16
  %19 = and i128 %18, 18446744073709551615
  store i128 %19, i128* %7, align 16
  %20 = load i128, i128* %8, align 16
  %21 = and i128 %20, 18446744073709551615
  store i128 %21, i128* %8, align 16
  %22 = load i128, i128* %7, align 16
  %23 = load i128, i128* %8, align 16
  %24 = mul i128 %22, %23
  store i128 %24, i128* %9, align 16
  %25 = load i128, i128* %9, align 16
  %26 = icmp ne i128 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  call void @abort() #2
  unreachable

28:                                               ; preds = %4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 1, i128* %2, align 16
  %4 = bitcast i128* %2 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 16
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i128 1, i128* %3, align 16
  %9 = bitcast i128* %3 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 16
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  call void @foo(i64 noundef %6, i64 noundef %8, i64 noundef %11, i64 noundef %13)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
