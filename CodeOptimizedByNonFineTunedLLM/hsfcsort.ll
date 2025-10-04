; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfcsort.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfcsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc2sort(i32 noundef %0, double* noundef %1, double* noundef %2, i32 noundef %3, i32* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x double], align 16
  %25 = alloca [2 x i32], align 4
  store i32 %0, i32* %7, align 4
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store double 0x41EFFFFFFFE00000, double* %13, align 8
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %15, align 8
  store i32 2, i32* %16, align 4
  store i32 3, i32* %17, align 4
  %29 = load i64, i64* %15, align 8
  %30 = mul i64 12, %29
  %31 = call noalias i8* @malloc(i64 noundef %30) #3
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %72, %6
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %15, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load double*, double** %8, align 8
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 0, i64 0
  store double %43, double* %44, align 16
  %45 = load double*, double** %9, align 8
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 0, i64 1
  store double %49, double* %50, align 8
  %51 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 0, i64 0
  %52 = load double, double* %51, align 16
  %53 = fmul double %52, 0x41EFFFFFFFE00000
  %54 = fptoui double %53 to i32
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 0, i64 1
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 0x41EFFFFFFFE00000
  %59 = fptoui double %58 to i32
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  call void @hsfc2d(i32* noundef %61, i32 noundef 2, i32* noundef %65)
  %66 = load i32, i32* %19, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %23, align 4
  %69 = add i32 %68, 2
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %38
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %23, align 4
  %80 = add i32 %79, 3
  store i32 %80, i32* %23, align 4
  br label %33, !llvm.loop !4

81:                                               ; preds = %33
  %82 = load i32, i32* %14, align 4
  %83 = icmp ult i32 2, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %81
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %111, %84
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %15, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %85
  %91 = load i32*, i32** %18, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %22, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = load i32, i32* %23, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %22, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %90
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %22, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add i32 %117, 3
  store i32 %118, i32* %23, align 4
  br label %85, !llvm.loop !6

119:                                              ; preds = %85
  br label %149

120:                                              ; preds = %81
  %121 = load i32, i32* %14, align 4
  %122 = icmp ult i32 1, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %120
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %139, %123
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %15, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load i32*, i32** %18, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %22, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = add i32 %145, 3
  store i32 %146, i32* %23, align 4
  br label %124, !llvm.loop !7

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148, %119
  %150 = load i32*, i32** %18, align 8
  %151 = bitcast i32* %150 to i8*
  %152 = load i64, i64* %15, align 8
  call void @qsort(i8* noundef %151, i64 noundef %152, i64 noundef 12, i32 (i8*, i8*)* noundef @ui2comp)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %19, align 4
  store i32 2, i32* %23, align 4
  br label %153

153:                                              ; preds = %170, %149
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %15, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load i32*, i32** %18, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %163, %164
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %22, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %22, align 4
  %176 = load i32, i32* %23, align 4
  %177 = add i32 %176, 3
  store i32 %177, i32* %23, align 4
  br label %153, !llvm.loop !8

178:                                              ; preds = %153
  %179 = load i32*, i32** %18, align 8
  %180 = bitcast i32* %179 to i8*
  call void @free(i8* noundef %180) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @hsfc2d(i32* noundef, i32 noundef, i32* noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui2comp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %18, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 1
  br label %51

26:                                               ; preds = %2
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load i8*, i8** %3, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %40, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 -1, i32 1
  br label %49

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48, %36
  %50 = phi i32 [ %47, %36 ], [ 0, %48 ]
  br label %51

51:                                               ; preds = %49, %14
  %52 = phi i32 [ %25, %14 ], [ %50, %49 ]
  ret i32 %52
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc3sort(i32 noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, i32 noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [3 x double], align 16
  %28 = alloca [3 x i32], align 4
  store i32 %0, i32* %8, align 4
  store double* %1, double** %9, align 8
  store double* %2, double** %10, align 8
  store double* %3, double** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store double 0x41EFFFFFFFE00000, double* %15, align 8
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %17, align 8
  store i32 3, i32* %18, align 4
  store i32 4, i32* %19, align 4
  %32 = load i64, i64* %17, align 8
  %33 = mul i64 16, %32
  %34 = call noalias i8* @malloc(i64 noundef %33) #3
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %20, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %36

36:                                               ; preds = %86, %7
  %37 = load i32, i32* %21, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %17, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %36
  %42 = load double*, double** %9, align 8
  %43 = load i32, i32* %22, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 0
  store double %46, double* %47, align 16
  %48 = load double*, double** %10, align 8
  %49 = load i32, i32* %23, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 1
  store double %52, double* %53, align 8
  %54 = load double*, double** %11, align 8
  %55 = load i32, i32* %24, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 2
  store double %58, double* %59, align 16
  %60 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 0
  %61 = load double, double* %60, align 16
  %62 = fmul double %61, 0x41EFFFFFFFE00000
  %63 = fptoui double %62 to i32
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %66, 0x41EFFFFFFFE00000
  %68 = fptoui double %67 to i32
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 2
  %71 = load double, double* %70, align 16
  %72 = fmul double %71, 0x41EFFFFFFFE00000
  %73 = fptoui double %72 to i32
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 2
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %76 = load i32*, i32** %20, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  call void @hsfc3d(i32* noundef %75, i32 noundef 3, i32* noundef %79)
  %80 = load i32, i32* %21, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = load i32, i32* %26, align 4
  %83 = add i32 %82, 3
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %41
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %26, align 4
  %96 = add i32 %95, 4
  store i32 %96, i32* %26, align 4
  br label %36, !llvm.loop !9

97:                                               ; preds = %36
  %98 = load i32, i32* %16, align 4
  %99 = icmp ult i32 3, %98
  br i1 %99, label %100, label %147

100:                                              ; preds = %97
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %138, %100
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %17, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %146

106:                                              ; preds = %101
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* %26, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %25, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32*, i32** %20, align 8
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %25, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = load i32, i32* %26, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %106
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %25, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = add i32 %144, 4
  store i32 %145, i32* %26, align 4
  br label %101, !llvm.loop !10

146:                                              ; preds = %101
  br label %216

147:                                              ; preds = %97
  %148 = load i32, i32* %16, align 4
  %149 = icmp ult i32 2, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %147
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %17, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %185

156:                                              ; preds = %151
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %26, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %25, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  br label %177

177:                                              ; preds = %156
  %178 = load i32, i32* %21, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %25, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %25, align 4
  %183 = load i32, i32* %26, align 4
  %184 = add i32 %183, 4
  store i32 %184, i32* %26, align 4
  br label %151, !llvm.loop !11

185:                                              ; preds = %151
  br label %215

186:                                              ; preds = %147
  %187 = load i32, i32* %16, align 4
  %188 = icmp ult i32 1, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %186
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %190

190:                                              ; preds = %205, %189
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %17, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %190
  %196 = load i32*, i32** %20, align 8
  %197 = load i32, i32* %26, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %13, align 8
  %202 = load i32, i32* %25, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  br label %205

205:                                              ; preds = %195
  %206 = load i32, i32* %21, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %25, align 4
  %210 = add i32 %209, %208
  store i32 %210, i32* %25, align 4
  %211 = load i32, i32* %26, align 4
  %212 = add i32 %211, 4
  store i32 %212, i32* %26, align 4
  br label %190, !llvm.loop !12

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213, %186
  br label %215

215:                                              ; preds = %214, %185
  br label %216

216:                                              ; preds = %215, %146
  %217 = load i32*, i32** %20, align 8
  %218 = bitcast i32* %217 to i8*
  %219 = load i64, i64* %17, align 8
  call void @qsort(i8* noundef %218, i64 noundef %219, i64 noundef 16, i32 (i8*, i8*)* noundef @ui3comp)
  store i32 0, i32* %25, align 4
  store i32 0, i32* %21, align 4
  store i32 3, i32* %26, align 4
  br label %220

220:                                              ; preds = %237, %216
  %221 = load i32, i32* %21, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %17, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %245

225:                                              ; preds = %220
  %226 = load i32*, i32** %20, align 8
  %227 = load i32, i32* %26, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add i32 %230, %231
  %233 = load i32*, i32** %13, align 8
  %234 = load i32, i32* %25, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %232, i32* %236, align 4
  br label %237

237:                                              ; preds = %225
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %25, align 4
  %242 = add i32 %241, %240
  store i32 %242, i32* %25, align 4
  %243 = load i32, i32* %26, align 4
  %244 = add i32 %243, 4
  store i32 %244, i32* %26, align 4
  br label %220, !llvm.loop !13

245:                                              ; preds = %220
  %246 = load i32*, i32** %20, align 8
  %247 = bitcast i32* %246 to i8*
  call void @free(i8* noundef %247) #3
  ret void
}

declare dso_local void @hsfc3d(i32* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ui3comp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %18, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 1
  br label %75

26:                                               ; preds = %2
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load i8*, i8** %3, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %40, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 -1, i32 1
  br label %73

48:                                               ; preds = %26
  %49 = load i8*, i8** %3, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load i8*, i8** %3, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %62, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 -1, i32 1
  br label %71

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %58
  %72 = phi i32 [ %69, %58 ], [ 0, %70 ]
  br label %73

73:                                               ; preds = %71, %36
  %74 = phi i32 [ %47, %36 ], [ %72, %71 ]
  br label %75

75:                                               ; preds = %73, %14
  %76 = phi i32 [ %25, %14 ], [ %74, %73 ]
  ret i32 %76
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
