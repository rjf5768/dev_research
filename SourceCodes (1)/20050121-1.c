; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050121-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050121-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local <2 x float> @foo_float(i32 noundef %0) #0 {
  %2 = alloca { float, float }, align 4
  %3 = alloca i32, align 4
  %4 = alloca { float, float }, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  store float %7, float* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float %11, float* %12, align 4
  %13 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %14, float* %17, align 4
  store float %16, float* %18, align 4
  %19 = bitcast { float, float }* %2 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4
  ret <2 x float> %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_float(float* noundef %0) #1 {
  %2 = alloca float*, align 8
  %3 = alloca { float, float }, align 4
  store float* %0, float** %2, align 8
  %4 = call <2 x float> @foo_float(i32 noundef 5) #5
  %5 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %4, <2 x float>* %5, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %2, align 8
  store float %7, float* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_float(float* noundef %0) #1 {
  %2 = alloca float*, align 8
  %3 = alloca { float, float }, align 4
  store float* %0, float** %2, align 8
  %4 = call <2 x float> @foo_float(i32 noundef 5) #5
  %5 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %4, <2 x float>* %5, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %2, align 8
  store float %9, float* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local { double, double } @foo_double(i32 noundef %0) #2 {
  %2 = alloca { double, double }, align 8
  %3 = alloca i32, align 4
  %4 = alloca { double, double }, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %7, double* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %11, double* %12, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double %14, double* %17, align 8
  store double %16, double* %18, align 8
  %19 = load { double, double }, { double, double }* %2, align 8
  ret { double, double } %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_double(double* noundef %0) #3 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = call { double, double } @foo_double(i32 noundef 5) #5
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = load double*, double** %2, align 8
  store double %4, double* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_double(double* noundef %0) #3 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = call { double, double } @foo_double(i32 noundef 5) #5
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = load double*, double** %2, align 8
  store double %5, double* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef %0) #2 {
  %2 = alloca { x86_fp80, x86_fp80 }, align 16
  %3 = alloca i32, align 4
  %4 = alloca { x86_fp80, x86_fp80 }, align 16
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = sitofp i32 %6 to x86_fp80
  %8 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 0
  store x86_fp80 %7, x86_fp80* %8, align 16
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sitofp i32 %10 to x86_fp80
  %12 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 1
  store x86_fp80 %11, x86_fp80* %12, align 16
  %13 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 0
  %14 = load x86_fp80, x86_fp80* %13, align 16
  %15 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 1
  %16 = load x86_fp80, x86_fp80* %15, align 16
  %17 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 1
  store x86_fp80 %14, x86_fp80* %17, align 16
  store x86_fp80 %16, x86_fp80* %18, align 16
  %19 = load { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, align 16
  ret { x86_fp80, x86_fp80 } %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_ldouble_t(x86_fp80* noundef %0) #3 {
  %2 = alloca x86_fp80*, align 8
  store x86_fp80* %0, x86_fp80** %2, align 8
  %3 = call { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef 5) #5
  %4 = extractvalue { x86_fp80, x86_fp80 } %3, 0
  %5 = extractvalue { x86_fp80, x86_fp80 } %3, 1
  %6 = load x86_fp80*, x86_fp80** %2, align 8
  store x86_fp80 %4, x86_fp80* %6, align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_ldouble_t(x86_fp80* noundef %0) #3 {
  %2 = alloca x86_fp80*, align 8
  store x86_fp80* %0, x86_fp80** %2, align 8
  %3 = call { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef 5) #5
  %4 = extractvalue { x86_fp80, x86_fp80 } %3, 0
  %5 = extractvalue { x86_fp80, x86_fp80 } %3, 1
  %6 = load x86_fp80*, x86_fp80** %2, align 8
  store x86_fp80 %5, x86_fp80* %6, align 16
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i16 @foo_char(i32 noundef %0) #2 {
  %2 = alloca { i8, i8 }, align 1
  %3 = alloca i32, align 4
  %4 = alloca { i8, i8 }, align 1
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 0
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 1
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %2, i32 0, i32 1
  store i8 %14, i8* %17, align 1
  store i8 %16, i8* %18, align 1
  %19 = bitcast { i8, i8 }* %2 to i16*
  %20 = load i16, i16* %19, align 1
  ret i16 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_char(i8* noundef %0) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca { i8, i8 }, align 1
  store i8* %0, i8** %2, align 8
  %4 = call i16 @foo_char(i32 noundef 5) #5
  %5 = bitcast { i8, i8 }* %3 to i16*
  store i16 %4, i16* %5, align 1
  %6 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %3, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %3, i32 0, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %2, align 8
  store i8 %7, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_char(i8* noundef %0) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca { i8, i8 }, align 1
  store i8* %0, i8** %2, align 8
  %4 = call i16 @foo_char(i32 noundef 5) #5
  %5 = bitcast { i8, i8 }* %3 to i16*
  store i16 %4, i16* %5, align 1
  %6 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %3, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %3, i32 0, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %2, align 8
  store i8 %9, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i32 @foo_short(i32 noundef %0) #2 {
  %2 = alloca { i16, i16 }, align 2
  %3 = alloca i32, align 4
  %4 = alloca { i16, i16 }, align 2
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %4, i32 0, i32 0
  store i16 %7, i16* %8, align 2
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %4, i32 0, i32 1
  store i16 %11, i16* %12, align 2
  %13 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %4, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  %15 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %4, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %2, i32 0, i32 1
  store i16 %14, i16* %17, align 2
  store i16 %16, i16* %18, align 2
  %19 = bitcast { i16, i16 }* %2 to i32*
  %20 = load i32, i32* %19, align 2
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_short(i16* noundef %0) #3 {
  %2 = alloca i16*, align 8
  %3 = alloca { i16, i16 }, align 2
  store i16* %0, i16** %2, align 8
  %4 = call i32 @foo_short(i32 noundef 5) #5
  %5 = bitcast { i16, i16 }* %3 to i32*
  store i32 %4, i32* %5, align 2
  %6 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %3, i32 0, i32 0
  %7 = load i16, i16* %6, align 2
  %8 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %3, i32 0, i32 1
  %9 = load i16, i16* %8, align 2
  %10 = load i16*, i16** %2, align 8
  store i16 %7, i16* %10, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_short(i16* noundef %0) #3 {
  %2 = alloca i16*, align 8
  %3 = alloca { i16, i16 }, align 2
  store i16* %0, i16** %2, align 8
  %4 = call i32 @foo_short(i32 noundef 5) #5
  %5 = bitcast { i16, i16 }* %3 to i32*
  store i32 %4, i32* %5, align 2
  %6 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %3, i32 0, i32 0
  %7 = load i16, i16* %6, align 2
  %8 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %3, i32 0, i32 1
  %9 = load i16, i16* %8, align 2
  %10 = load i16*, i16** %2, align 8
  store i16 %9, i16* %10, align 2
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i64 @foo_int(i32 noundef %0) #2 {
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca i32, align 4
  %4 = alloca { i32, i32 }, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  store i32 %14, i32* %16, align 4
  %17 = bitcast { i32, i32 }* %2 to i64*
  %18 = load i64, i64* %17, align 4
  ret i64 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_int(i32* noundef %0) #3 {
  %2 = alloca i32*, align 8
  %3 = alloca { i32, i32 }, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i64 @foo_int(i32 noundef 5) #5
  %5 = bitcast { i32, i32 }* %3 to i64*
  store i64 %4, i64* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  store i32 %7, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_int(i32* noundef %0) #3 {
  %2 = alloca i32*, align 8
  %3 = alloca { i32, i32 }, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i64 @foo_int(i32 noundef 5) #5
  %5 = bitcast { i32, i32 }* %3 to i64*
  store i64 %4, i64* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  store i32 %9, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local { i64, i64 } @foo_long(i32 noundef %0) #2 {
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca i32, align 4
  %4 = alloca { i64, i64 }, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  store i64 %16, i64* %18, align 8
  %19 = load { i64, i64 }, { i64, i64 }* %2, align 8
  ret { i64, i64 } %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_long(i64* noundef %0) #3 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = call { i64, i64 } @foo_long(i32 noundef 5) #5
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  %6 = load i64*, i64** %2, align 8
  store i64 %4, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_long(i64* noundef %0) #3 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = call { i64, i64 } @foo_long(i32 noundef 5) #5
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  %6 = load i64*, i64** %2, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local { i64, i64 } @foo_llong(i32 noundef %0) #2 {
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca i32, align 4
  %4 = alloca { i64, i64 }, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  store i64 %16, i64* %18, align 8
  %19 = load { i64, i64 }, { i64, i64 }* %2, align 8
  ret { i64, i64 } %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_llong(i64* noundef %0) #3 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = call { i64, i64 } @foo_llong(i32 noundef 5) #5
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  %6 = load i64*, i64** %2, align 8
  store i64 %4, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz_llong(i64* noundef %0) #3 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = call { i64, i64 } @foo_llong(i32 noundef 5) #5
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  %6 = load i64*, i64** %2, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca double, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store float 0.000000e+00, float* %2, align 4
  call void @bar_float(float* noundef %2)
  %10 = load float, float* %2, align 4
  %11 = fcmp une float %10, 6.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #6
  unreachable

13:                                               ; preds = %0
  store float 0.000000e+00, float* %2, align 4
  call void @baz_float(float* noundef %2)
  %14 = load float, float* %2, align 4
  %15 = fcmp une float %14, 4.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #6
  unreachable

17:                                               ; preds = %13
  store double 0.000000e+00, double* %3, align 8
  call void @bar_double(double* noundef %3)
  %18 = load double, double* %3, align 8
  %19 = fcmp une double %18, 6.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #6
  unreachable

21:                                               ; preds = %17
  store double 0.000000e+00, double* %3, align 8
  call void @baz_double(double* noundef %3)
  %22 = load double, double* %3, align 8
  %23 = fcmp une double %22, 4.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #6
  unreachable

25:                                               ; preds = %21
  store x86_fp80 0xK00000000000000000000, x86_fp80* %4, align 16
  call void @bar_ldouble_t(x86_fp80* noundef %4)
  %26 = load x86_fp80, x86_fp80* %4, align 16
  %27 = fcmp une x86_fp80 %26, 0xK4001C000000000000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #6
  unreachable

29:                                               ; preds = %25
  store x86_fp80 0xK00000000000000000000, x86_fp80* %4, align 16
  call void @baz_ldouble_t(x86_fp80* noundef %4)
  %30 = load x86_fp80, x86_fp80* %4, align 16
  %31 = fcmp une x86_fp80 %30, 0xK40018000000000000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #6
  unreachable

33:                                               ; preds = %29
  store i8 0, i8* %5, align 1
  call void @bar_char(i8* noundef %5)
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 6
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #6
  unreachable

38:                                               ; preds = %33
  store i8 0, i8* %5, align 1
  call void @baz_char(i8* noundef %5)
  %39 = load i8, i8* %5, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #6
  unreachable

43:                                               ; preds = %38
  store i16 0, i16* %6, align 2
  call void @bar_short(i16* noundef %6)
  %44 = load i16, i16* %6, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp ne i32 %45, 6
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #6
  unreachable

48:                                               ; preds = %43
  store i16 0, i16* %6, align 2
  call void @baz_short(i16* noundef %6)
  %49 = load i16, i16* %6, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @abort() #6
  unreachable

53:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  call void @bar_int(i32* noundef %7)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 6
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #6
  unreachable

57:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  call void @baz_int(i32* noundef %7)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #6
  unreachable

61:                                               ; preds = %57
  store i64 0, i64* %8, align 8
  call void @bar_long(i64* noundef %8)
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 6
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #6
  unreachable

65:                                               ; preds = %61
  store i64 0, i64* %8, align 8
  call void @baz_long(i64* noundef %8)
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #6
  unreachable

69:                                               ; preds = %65
  store i64 0, i64* %9, align 8
  call void @bar_llong(i64* noundef %9)
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 6
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #6
  unreachable

73:                                               ; preds = %69
  store i64 0, i64* %9, align 8
  call void @baz_llong(i64* noundef %9)
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #6
  unreachable

77:                                               ; preds = %73
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
