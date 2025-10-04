; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxcolor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.ht_bit_s = type { i16, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_color_from_rgb(%struct.gs_color_s* noundef %0) #0 {
  %2 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_color_s* %0, %struct.gs_color_s** %2, align 8
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %3, i32 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %8 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %14 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %18 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %24 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %27 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %26, i32 0, i32 3
  store i16 %25, i16* %27, align 2
  %28 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %29 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %28, i32 0, i32 5
  store i8 1, i8* %29, align 1
  %30 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %31 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %30, i32 0, i32 4
  store i8 1, i8* %31, align 2
  br label %37

32:                                               ; preds = %12, %1
  %33 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %34 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %33, i32 0, i32 5
  store i8 0, i8* %34, align 1
  %35 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %36 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %35, i32 0, i32 4
  store i8 0, i8* %36, align 2
  br label %37

37:                                               ; preds = %32, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef %0) #0 {
  %2 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_color_s* %0, %struct.gs_color_s** %2, align 8
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %3, i32 0, i32 5
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  %12 = mul i64 %11, 30
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %14 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i64
  %17 = mul i64 %16, 59
  %18 = add i64 %12, %17
  %19 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %20 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %19, i32 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i64
  %23 = mul i64 %22, 11
  %24 = add i64 %18, %23
  %25 = add i64 %24, 50
  %26 = udiv i64 %25, 100
  %27 = trunc i64 %26 to i16
  %28 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %29 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %28, i32 0, i32 3
  store i16 %27, i16* %29, align 2
  %30 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %31 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %30, i32 0, i32 5
  store i8 1, i8* %31, align 1
  br label %32

32:                                               ; preds = %7, %1
  %33 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %34 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %33, i32 0, i32 3
  %35 = load i16, i16* %34, align 2
  ret i16 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_color_to_hsb(%struct.gs_color_s* noundef %0, i16* noundef %1) #0 {
  %3 = alloca %struct.gs_color_s*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.gs_color_s, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gs_color_s* %0, %struct.gs_color_s** %3, align 8
  store i16* %1, i16** %4, align 8
  %10 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %10, i32 0, i32 4
  %12 = load i8, i8* %11, align 2
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i16*, i16** %4, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 0
  store i16 0, i16* %16, align 2
  %17 = load i16*, i16** %4, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 1
  store i16 0, i16* %18, align 2
  %19 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %20 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  %22 = load i16*, i16** %4, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 2
  store i16 %21, i16* %23, align 2
  br label %174

24:                                               ; preds = %2
  %25 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %26 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  %28 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  store i16 %27, i16* %28, align 2
  %29 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %30 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 2
  %32 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %34 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  store i16 %35, i16* %36, align 2
  %37 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  br label %52

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %47, %44 ], [ %51, %48 ]
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %6, align 2
  %55 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %63 = load i16, i16* %62, align 2
  store i16 %63, i16* %6, align 2
  br label %64

64:                                               ; preds = %61, %52
  %65 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  br label %80

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %75, %72 ], [ %79, %76 ]
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %7, align 2
  %83 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16, i16* %7, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %91 = load i16, i16* %90, align 2
  store i16 %91, i16* %7, align 2
  br label %92

92:                                               ; preds = %89, %80
  %93 = load i16, i16* %6, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* %7, align 2
  %96 = zext i16 %95 to i32
  %97 = sub nsw i32 %94, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %8, align 8
  %99 = load i16, i16* %6, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 65535
  %115 = load i64, i64* %8, align 8
  %116 = sdiv i64 %114, %115
  store i64 %116, i64* %9, align 8
  br label %151

117:                                              ; preds = %92
  %118 = load i16, i16* %6, align 2
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 2
  %126 = load i16, i16* %125, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = sub nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, 65535
  %134 = load i64, i64* %8, align 8
  %135 = sdiv i64 %133, %134
  %136 = add nsw i64 %135, 131070
  store i64 %136, i64* %9, align 8
  br label %150

137:                                              ; preds = %117
  %138 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %139 = load i16, i16* %138, align 2
  %140 = zext i16 %139 to i32
  %141 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 1
  %142 = load i16, i16* %141, align 2
  %143 = zext i16 %142 to i32
  %144 = sub nsw i32 %140, %143
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %145, 65535
  %147 = load i64, i64* %8, align 8
  %148 = sdiv i64 %146, %147
  %149 = add nsw i64 %148, 262140
  store i64 %149, i64* %9, align 8
  br label %150

150:                                              ; preds = %137, %124
  br label %151

151:                                              ; preds = %150, %105
  %152 = load i64, i64* %9, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* %9, align 8
  %156 = add nsw i64 %155, 393210
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i64, i64* %9, align 8
  %159 = sdiv i64 %158, 6
  %160 = trunc i64 %159 to i16
  %161 = load i16*, i16** %4, align 8
  %162 = getelementptr inbounds i16, i16* %161, i64 0
  store i16 %160, i16* %162, align 2
  %163 = load i64, i64* %8, align 8
  %164 = mul nsw i64 %163, 65535
  %165 = load i16, i16* %6, align 2
  %166 = zext i16 %165 to i64
  %167 = sdiv i64 %164, %166
  %168 = trunc i64 %167 to i16
  %169 = load i16*, i16** %4, align 8
  %170 = getelementptr inbounds i16, i16* %169, i64 1
  store i16 %168, i16* %170, align 2
  %171 = load i16, i16* %6, align 2
  %172 = load i16*, i16** %4, align 8
  %173 = getelementptr inbounds i16, i16* %172, i64 2
  store i16 %171, i16* %173, align 2
  br label %174

174:                                              ; preds = %157, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_color_from_hsb(%struct.gs_color_s* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.gs_color_s*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.gs_color_s* %0, %struct.gs_color_s** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i16, i16* %8, align 2
  %24 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %25 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %24, i32 0, i32 2
  store i16 %23, i16* %25, align 2
  %26 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %27 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %26, i32 0, i32 1
  store i16 %23, i16* %27, align 2
  %28 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %29 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %28, i32 0, i32 0
  store i16 %23, i16* %29, align 2
  br label %107

30:                                               ; preds = %4
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %32, 0
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, 6.553500e+04
  store float %35, float* %9, align 4
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %37, 0
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %39, 6.553500e+04
  store float %40, float* %10, align 4
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = sdiv i32 %42, 10923
  store i32 %43, i32* %11, align 4
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = srem i32 %45, 10923
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %47, 1.092300e+04
  store float %48, float* %12, align 4
  %49 = load float, float* %9, align 4
  %50 = load float, float* %10, align 4
  %51 = fsub float 1.000000e+00, %50
  %52 = fmul float %49, %51
  store float %52, float* %13, align 4
  %53 = load float, float* %9, align 4
  %54 = load float, float* %10, align 4
  %55 = load float, float* %12, align 4
  %56 = fneg float %54
  %57 = call float @llvm.fmuladd.f32(float %56, float %55, float 1.000000e+00)
  %58 = fmul float %53, %57
  store float %58, float* %14, align 4
  %59 = load float, float* %9, align 4
  %60 = load float, float* %10, align 4
  %61 = load float, float* %12, align 4
  %62 = fsub float 1.000000e+00, %61
  %63 = fneg float %60
  %64 = call float @llvm.fmuladd.f32(float %63, float %62, float 1.000000e+00)
  %65 = fmul float %59, %64
  store float %65, float* %15, align 4
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %67 [
    i32 1, label %71
    i32 2, label %75
    i32 3, label %79
    i32 4, label %83
    i32 5, label %87
  ]

67:                                               ; preds = %30
  %68 = load float, float* %9, align 4
  store float %68, float* %16, align 4
  %69 = load float, float* %15, align 4
  store float %69, float* %17, align 4
  %70 = load float, float* %13, align 4
  store float %70, float* %18, align 4
  br label %91

71:                                               ; preds = %30
  %72 = load float, float* %14, align 4
  store float %72, float* %16, align 4
  %73 = load float, float* %9, align 4
  store float %73, float* %17, align 4
  %74 = load float, float* %13, align 4
  store float %74, float* %18, align 4
  br label %91

75:                                               ; preds = %30
  %76 = load float, float* %13, align 4
  store float %76, float* %16, align 4
  %77 = load float, float* %9, align 4
  store float %77, float* %17, align 4
  %78 = load float, float* %15, align 4
  store float %78, float* %18, align 4
  br label %91

79:                                               ; preds = %30
  %80 = load float, float* %13, align 4
  store float %80, float* %16, align 4
  %81 = load float, float* %14, align 4
  store float %81, float* %17, align 4
  %82 = load float, float* %9, align 4
  store float %82, float* %18, align 4
  br label %91

83:                                               ; preds = %30
  %84 = load float, float* %15, align 4
  store float %84, float* %16, align 4
  %85 = load float, float* %13, align 4
  store float %85, float* %17, align 4
  %86 = load float, float* %9, align 4
  store float %86, float* %18, align 4
  br label %91

87:                                               ; preds = %30
  %88 = load float, float* %9, align 4
  store float %88, float* %16, align 4
  %89 = load float, float* %13, align 4
  store float %89, float* %17, align 4
  %90 = load float, float* %14, align 4
  store float %90, float* %18, align 4
  br label %91

91:                                               ; preds = %87, %83, %79, %75, %71, %67
  %92 = load float, float* %16, align 4
  %93 = fmul float %92, 6.553500e+04
  %94 = fptoui float %93 to i16
  %95 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %96 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %95, i32 0, i32 0
  store i16 %94, i16* %96, align 2
  %97 = load float, float* %17, align 4
  %98 = fmul float %97, 6.553500e+04
  %99 = fptoui float %98 to i16
  %100 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %101 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %100, i32 0, i32 1
  store i16 %99, i16* %101, align 2
  %102 = load float, float* %18, align 4
  %103 = fmul float %102, 6.553500e+04
  %104 = fptoui float %103 to i16
  %105 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %106 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %105, i32 0, i32 2
  store i16 %104, i16* %106, align 2
  br label %107

107:                                              ; preds = %91, %22
  %108 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  call void @gx_color_from_rgb(%struct.gs_color_s* noundef %108)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_sort_ht_order(%struct.ht_bit_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ht_bit_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ht_bit_s, align 2
  %9 = alloca i32, align 4
  store %struct.ht_bit_s* %0, %struct.ht_bit_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ule i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %120

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %119
  %19 = load i32, i32* %5, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %22, i64 %25
  %27 = bitcast %struct.ht_bit_s* %8 to i8*
  %28 = bitcast %struct.ht_bit_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %27, i8* align 2 %28, i64 4, i1 false)
  br label %53

29:                                               ; preds = %18
  %30 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %30, i64 %32
  %34 = bitcast %struct.ht_bit_s* %8 to i8*
  %35 = bitcast %struct.ht_bit_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %34, i8* align 2 %35, i64 4, i1 false)
  %36 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %36, i64 %38
  %40 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %41 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %40, i64 0
  %42 = bitcast %struct.ht_bit_s* %39 to i8*
  %43 = bitcast %struct.ht_bit_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %42, i8* align 2 %43, i64 4, i1 false)
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %49 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %48, i64 0
  %50 = bitcast %struct.ht_bit_s* %49 to i8*
  %51 = bitcast %struct.ht_bit_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %50, i8* align 2 %51, i64 4, i1 false)
  br label %120

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %108
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %57, %58
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %55
  %65 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %65, i64 %67
  %69 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %72, i64 %75
  %77 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %76, i32 0, i32 1
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp slt i32 %71, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %64
  br label %85

85:                                               ; preds = %84, %55
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %8, i32 0, i32 1
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %93, i64 %95
  %97 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp sge i32 %92, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %89, %85
  %102 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %102, i64 %104
  %106 = bitcast %struct.ht_bit_s* %105 to i8*
  %107 = bitcast %struct.ht_bit_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %106, i8* align 2 %107, i64 4, i1 false)
  br label %119

108:                                              ; preds = %89
  %109 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %109, i64 %111
  %113 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %113, i64 %115
  %117 = bitcast %struct.ht_bit_s* %112 to i8*
  %118 = bitcast %struct.ht_bit_s* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %117, i8* align 2 %118, i64 4, i1 false)
  br label %55

119:                                              ; preds = %101
  br label %18

120:                                              ; preds = %16, %47
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
