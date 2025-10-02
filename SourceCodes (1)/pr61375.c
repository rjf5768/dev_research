; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61375.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61375.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @uint128_central_bitsi_ior(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i64, align 8
  %7 = alloca i128, align 16
  %8 = bitcast i128* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %4, align 16
  store i128 %11, i128* %5, align 16
  store i64 %2, i64* %6, align 8
  store i128 4722294425275607285760, i128* %7, align 16
  %12 = load i128, i128* %5, align 16
  %13 = load i128, i128* %7, align 16
  %14 = and i128 %12, %13
  %15 = lshr i128 %14, 56
  %16 = load i64, i64* %6, align 8
  %17 = zext i64 %16 to i128
  %18 = or i128 %15, %17
  %19 = trunc i128 %18 to i64
  ret i64 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i128 1, i128* %6, align 16
  %8 = load i128, i128* %6, align 16
  %9 = shl i128 %8, 64
  store i128 %9, i128* %6, align 16
  %10 = load i128, i128* %6, align 16
  store i128 %10, i128* %7, align 16
  %11 = bitcast i128* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 16
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @uint128_central_bitsi_ior(i64 noundef %13, i64 noundef %15, i64 noundef 2)
  %17 = icmp ne i64 %16, 258
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  call void @abort() #2
  unreachable

19:                                               ; preds = %2
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
