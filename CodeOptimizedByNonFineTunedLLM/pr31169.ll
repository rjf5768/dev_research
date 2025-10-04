; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31169.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_type = type { i16, [2 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sign_bit_p(%struct.tree_type* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_type*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tree_type* %0, %struct.tree_type** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.tree_type*, %struct.tree_type** %5, align 8
  %14 = bitcast %struct.tree_type* %13 to i16*
  %15 = load i16, i16* %14, align 4
  %16 = and i16 %15, 511
  %17 = zext i16 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %19, 64
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 64
  %25 = sub i64 %24, 1
  %26 = shl i64 1, %25
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 128, %28
  %30 = lshr i64 -1, %29
  store i64 %30, i64* %10, align 8
  store i64 -1, i64* %8, align 8
  br label %40

31:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  store i64 %35, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 64, %37
  %39 = lshr i64 -1, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %31, %21
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %54

53:                                               ; preds = %46, %40
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tree_type, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.tree_type* %2 to i16*
  %4 = load i16, i16* %3, align 4
  %5 = and i16 %4, -512
  %6 = or i16 %5, 1
  store i16 %6, i16* %3, align 4
  %7 = call i32 @sign_bit_p(%struct.tree_type* noundef %2, i64 noundef 0, i64 noundef -1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

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
