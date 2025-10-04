; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/EndianPortable.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/EndianPortable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @Swap16NtoB(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @Swap16BtoN(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Swap32NtoB(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Swap32BtoN(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Swap64BtoN(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Swap64NtoB(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @SwapFloat32BtoN(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @SwapFloat32NtoB(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @SwapFloat64BtoN(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @SwapFloat64NtoB(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Swap16(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = shl i32 %5, 8
  %7 = load i16*, i16** %2, align 8
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = or i32 %6, %11
  %13 = trunc i32 %12 to i16
  %14 = load i16*, i16** %2, align 8
  store i16 %13, i16* %14, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Swap24(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 2
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load i8, i8* %3, align 1
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %12, i8* %14, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Swap32(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = shl i32 %4, 24
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 16711680
  %10 = or i32 %5, %9
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 65280
  %15 = or i32 %10, %14
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = lshr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = or i32 %15, %19
  %21 = load i32*, i32** %2, align 8
  store i32 %20, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
