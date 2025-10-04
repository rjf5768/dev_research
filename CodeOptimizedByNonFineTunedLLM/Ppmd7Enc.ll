; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd7Enc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd7Enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd7z_RangeEnc = type { i64, i32, i8, i64, %struct.IByteOut* }
%struct.IByteOut = type { void (i8*, i8)* }
%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD7_kExpEscape = external dso_local constant [16 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7z_RangeEnc_Init(%struct.CPpmd7z_RangeEnc* noundef %0) #0 {
  %2 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %2, align 8
  %3 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %6 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %5, i32 0, i32 1
  store i32 -1, i32* %6, align 8
  %7 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %8 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %7, i32 0, i32 2
  store i8 0, i8* %8, align 4
  %9 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %10 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %9, i32 0, i32 3
  store i64 1, i64* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7z_RangeEnc_FlushData(%struct.CPpmd7z_RangeEnc* noundef %0) #0 {
  %2 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %3 = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %8)
  br label %9

9:                                                ; preds = %7
  %10 = load i32, i32* %3, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %0) #0 {
  %2 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %3 = alloca i8, align 1
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %2, align 8
  %4 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %5 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = icmp ult i32 %7, -16777216
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %11 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %9, %1
  %17 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %18 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %17, i32 0, i32 2
  %19 = load i8, i8* %18, align 4
  store i8 %19, i8* %3, align 1
  br label %20

20:                                               ; preds = %40, %16
  %21 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %22 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %21, i32 0, i32 4
  %23 = load %struct.IByteOut*, %struct.IByteOut** %22, align 8
  %24 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %23, i32 0, i32 0
  %25 = load void (i8*, i8)*, void (i8*, i8)** %24, align 8
  %26 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %27 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %26, i32 0, i32 4
  %28 = load %struct.IByteOut*, %struct.IByteOut** %27, align 8
  %29 = bitcast %struct.IByteOut* %28 to i8*
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %33 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i8
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %31, %37
  %39 = trunc i32 %38 to i8
  call void %25(i8* noundef %29, i8 noundef zeroext %39)
  store i8 -1, i8* %3, align 1
  br label %40

40:                                               ; preds = %20
  %41 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %42 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %20, label %46, !llvm.loop !6

46:                                               ; preds = %40
  %47 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %48 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = lshr i32 %50, 24
  %52 = trunc i32 %51 to i8
  %53 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %54 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %53, i32 0, i32 2
  store i8 %52, i8* %54, align 4
  br label %55

55:                                               ; preds = %46, %9
  %56 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %57 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %61 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 8
  %65 = zext i32 %64 to i64
  %66 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %2, align 8
  %67 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7_EncodeSymbol(%struct.CPpmd7* noundef %0, %struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.CPpmd7*, align 8
  %5 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i64], align 16
  %8 = alloca %struct.CPpmd_State*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca %struct.CPpmd_State*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.CPpmd_See*, align 8
  %17 = alloca %struct.CPpmd_State*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd7* %0, %struct.CPpmd7** %4, align 8
  store %struct.CPpmd7z_RangeEnc* %1, %struct.CPpmd7z_RangeEnc** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %25 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %24, i32 0, i32 0
  %26 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %25, align 8
  %27 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 4
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %214

31:                                               ; preds = %3
  %32 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %33 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %32, i32 0, i32 12
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %36 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %35, i32 0, i32 0
  %37 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %36, align 8
  %38 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  %42 = bitcast i8* %41 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %42, %struct.CPpmd_State** %8, align 8
  %43 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %31
  %50 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %51 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %52 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %56 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %55, i32 0, i32 0
  %57 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %56, align 8
  %58 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %57, i32 0, i32 1
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %50, i32 noundef 0, i32 noundef %54, i32 noundef %60)
  %61 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %62 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %63 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %62, i32 0, i32 2
  store %struct.CPpmd_State* %61, %struct.CPpmd_State** %63, align 8
  %64 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update1_0(%struct.CPpmd7* noundef %64)
  br label %584

65:                                               ; preds = %31
  %66 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %67 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %66, i32 0, i32 5
  store i32 0, i32* %67, align 8
  %68 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %69 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %68, i32 0, i32 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %73 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %72, i32 0, i32 0
  %74 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %73, align 8
  %75 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 4
  %77 = zext i16 %76 to i32
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %111, %65
  %80 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %81 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %80, i32 1
  store %struct.CPpmd_State* %81, %struct.CPpmd_State** %8, align 8
  %82 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %79
  %88 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %91 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %90, i32 0, i32 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %95 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %94, i32 0, i32 0
  %96 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %95, align 8
  %97 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %88, i32 noundef %89, i32 noundef %93, i32 noundef %99)
  %100 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %101 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %102 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %101, i32 0, i32 2
  store %struct.CPpmd_State* %100, %struct.CPpmd_State** %102, align 8
  %103 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update1(%struct.CPpmd7* noundef %103)
  br label %584

104:                                              ; preds = %79
  %105 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %106 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, -1
  store i32 %113, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %79, label %115, !llvm.loop !7

115:                                              ; preds = %111
  %116 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %117 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %116, i32 0, i32 23
  %118 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %119 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %118, i32 0, i32 2
  %120 = load %struct.CPpmd_State*, %struct.CPpmd_State** %119, align 8
  %121 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %117, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %128 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %166, %115
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %131, 32
  br i1 %132, label %133, label %169

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %134, 0
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %136
  store i64 -1, i64* %137, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %140
  store i64 -1, i64* %141, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 2
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %144
  store i64 -1, i64* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 3
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %148
  store i64 -1, i64* %149, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %152
  store i64 -1, i64* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, 5
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %156
  store i64 -1, i64* %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 6
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %160
  store i64 -1, i64* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %162, 7
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %164
  store i64 -1, i64* %165, align 8
  br label %166

166:                                              ; preds = %133
  %167 = load i32, i32* %11, align 4
  %168 = add i32 %167, 8
  store i32 %168, i32* %11, align 4
  br label %129, !llvm.loop !8

169:                                              ; preds = %129
  %170 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %171 = bitcast i64* %170 to i8*
  %172 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %173 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %172, i32 0, i32 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds i8, i8* %171, i64 %175
  store i8 0, i8* %176, align 1
  %177 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %178 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %177, i32 0, i32 0
  %179 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %178, align 8
  %180 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %179, i32 0, i32 0
  %181 = load i16, i16* %180, align 4
  %182 = zext i16 %181 to i32
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %193, %169
  %185 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %186 = bitcast i64* %185 to i8*
  %187 = load %struct.CPpmd_State*, %struct.CPpmd_State** %8, align 8
  %188 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %187, i32 -1
  store %struct.CPpmd_State* %188, %struct.CPpmd_State** %8, align 8
  %189 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i8, i8* %186, i64 %191
  store i8 0, i8* %192, align 1
  br label %193

193:                                              ; preds = %184
  %194 = load i32, i32* %10, align 4
  %195 = add i32 %194, -1
  store i32 %195, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %184, label %197, !llvm.loop !9

197:                                              ; preds = %193
  %198 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %201 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %200, i32 0, i32 0
  %202 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %201, align 8
  %203 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %202, i32 0, i32 1
  %204 = load i16, i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = load i32, i32* %9, align 4
  %207 = sub i32 %205, %206
  %208 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %209 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %208, i32 0, i32 0
  %210 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %209, align 8
  %211 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %210, i32 0, i32 1
  %212 = load i16, i16* %211, align 2
  %213 = zext i16 %212 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %198, i32 noundef %199, i32 noundef %207, i32 noundef %213)
  br label %399

214:                                              ; preds = %3
  %215 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %216 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %215, i32 0, i32 26
  %217 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %218 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %217, i32 0, i32 0
  %219 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %218, align 8
  %220 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %219, i32 0, i32 1
  %221 = bitcast i16* %220 to %struct.CPpmd_State*
  %222 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %221, i32 0, i32 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [128 x [64 x i16]], [128 x [64 x i16]]* %216, i64 0, i64 %226
  %228 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %229 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %232 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %231, i32 0, i32 22
  %233 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %234 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %233, i32 0, i32 12
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %237 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %236, i32 0, i32 0
  %238 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %237, align 8
  %239 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %235, i64 %241
  %243 = bitcast i8* %242 to %struct.CPpmd7_Context_*
  %244 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %243, i32 0, i32 0
  %245 = load i16, i16* %244, align 4
  %246 = zext i16 %245 to i32
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [256 x i8], [256 x i8]* %232, i64 0, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = add i32 %230, %251
  %253 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %254 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %253, i32 0, i32 23
  %255 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %256 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %255, i32 0, i32 2
  %257 = load %struct.CPpmd_State*, %struct.CPpmd_State** %256, align 8
  %258 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %257, i32 0, i32 0
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %254, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %265 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 8
  %266 = add i32 %252, %263
  %267 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %268 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %267, i32 0, i32 23
  %269 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %270 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %269, i32 0, i32 0
  %271 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %270, align 8
  %272 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %271, i32 0, i32 1
  %273 = bitcast i16* %272 to %struct.CPpmd_State*
  %274 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %273, i32 0, i32 0
  %275 = load i8, i8* %274, align 2
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %268, i64 0, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = mul nsw i32 2, %279
  %281 = add i32 %266, %280
  %282 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %283 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 4
  %285 = ashr i32 %284, 26
  %286 = and i32 %285, 32
  %287 = add i32 %281, %286
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [64 x i16], [64 x i16]* %227, i64 0, i64 %288
  store i16* %289, i16** %12, align 8
  %290 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %291 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %290, i32 0, i32 0
  %292 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %291, align 8
  %293 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %292, i32 0, i32 1
  %294 = bitcast i16* %293 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %294, %struct.CPpmd_State** %13, align 8
  %295 = load %struct.CPpmd_State*, %struct.CPpmd_State** %13, align 8
  %296 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %295, i32 0, i32 0
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = load i32, i32* %6, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %322

301:                                              ; preds = %214
  %302 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %303 = load i16*, i16** %12, align 8
  %304 = load i16, i16* %303, align 2
  %305 = zext i16 %304 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* noundef %302, i32 noundef %305)
  %306 = load i16*, i16** %12, align 8
  %307 = load i16, i16* %306, align 2
  %308 = zext i16 %307 to i32
  %309 = add nsw i32 %308, 128
  %310 = load i16*, i16** %12, align 8
  %311 = load i16, i16* %310, align 2
  %312 = zext i16 %311 to i32
  %313 = add nsw i32 %312, 32
  %314 = ashr i32 %313, 7
  %315 = sub nsw i32 %309, %314
  %316 = trunc i32 %315 to i16
  %317 = load i16*, i16** %12, align 8
  store i16 %316, i16* %317, align 2
  %318 = load %struct.CPpmd_State*, %struct.CPpmd_State** %13, align 8
  %319 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %320 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %319, i32 0, i32 2
  store %struct.CPpmd_State* %318, %struct.CPpmd_State** %320, align 8
  %321 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef %321)
  br label %584

322:                                              ; preds = %214
  %323 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %324 = load i16*, i16** %12, align 8
  %325 = load i16, i16* %324, align 2
  %326 = zext i16 %325 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* noundef %323, i32 noundef %326)
  %327 = load i16*, i16** %12, align 8
  %328 = load i16, i16* %327, align 2
  %329 = zext i16 %328 to i32
  %330 = load i16*, i16** %12, align 8
  %331 = load i16, i16* %330, align 2
  %332 = zext i16 %331 to i32
  %333 = add nsw i32 %332, 32
  %334 = ashr i32 %333, 7
  %335 = sub nsw i32 %329, %334
  %336 = trunc i32 %335 to i16
  %337 = load i16*, i16** %12, align 8
  store i16 %336, i16* %337, align 2
  %338 = load i16*, i16** %12, align 8
  %339 = load i16, i16* %338, align 2
  %340 = zext i16 %339 to i32
  %341 = ashr i32 %340, 10
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i64 0, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %347 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 4
  store i32 0, i32* %14, align 4
  br label %348

348:                                              ; preds = %385, %322
  %349 = load i32, i32* %14, align 4
  %350 = zext i32 %349 to i64
  %351 = icmp ult i64 %350, 32
  br i1 %351, label %352, label %388

352:                                              ; preds = %348
  %353 = load i32, i32* %14, align 4
  %354 = add i32 %353, 0
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %355
  store i64 -1, i64* %356, align 8
  %357 = load i32, i32* %14, align 4
  %358 = add i32 %357, 1
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %359
  store i64 -1, i64* %360, align 8
  %361 = load i32, i32* %14, align 4
  %362 = add i32 %361, 2
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %363
  store i64 -1, i64* %364, align 8
  %365 = load i32, i32* %14, align 4
  %366 = add i32 %365, 3
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %367
  store i64 -1, i64* %368, align 8
  %369 = load i32, i32* %14, align 4
  %370 = add i32 %369, 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %371
  store i64 -1, i64* %372, align 8
  %373 = load i32, i32* %14, align 4
  %374 = add i32 %373, 5
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %375
  store i64 -1, i64* %376, align 8
  %377 = load i32, i32* %14, align 4
  %378 = add i32 %377, 6
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %379
  store i64 -1, i64* %380, align 8
  %381 = load i32, i32* %14, align 4
  %382 = add i32 %381, 7
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %383
  store i64 -1, i64* %384, align 8
  br label %385

385:                                              ; preds = %352
  %386 = load i32, i32* %14, align 4
  %387 = add i32 %386, 8
  store i32 %387, i32* %14, align 4
  br label %348, !llvm.loop !10

388:                                              ; preds = %348
  %389 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %390 = bitcast i64* %389 to i8*
  %391 = load %struct.CPpmd_State*, %struct.CPpmd_State** %13, align 8
  %392 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %391, i32 0, i32 0
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds i8, i8* %390, i64 %394
  store i8 0, i8* %395, align 1
  %396 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %397 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %396, i32 0, i32 5
  store i32 0, i32* %397, align 8
  br label %398

398:                                              ; preds = %388
  br label %399

399:                                              ; preds = %398, %197
  br label %400

400:                                              ; preds = %566, %399
  %401 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %402 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %401, i32 0, i32 0
  %403 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %402, align 8
  %404 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %403, i32 0, i32 0
  %405 = load i16, i16* %404, align 4
  %406 = zext i16 %405 to i32
  store i32 %406, i32* %20, align 4
  br label %407

407:                                              ; preds = %433, %400
  %408 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %409 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = add i32 %410, 1
  store i32 %411, i32* %409, align 8
  %412 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %413 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %412, i32 0, i32 0
  %414 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %413, align 8
  %415 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %407
  br label %584

419:                                              ; preds = %407
  %420 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %421 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %420, i32 0, i32 12
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %424 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %423, i32 0, i32 0
  %425 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %424, align 8
  %426 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %422, i64 %428
  %430 = bitcast i8* %429 to %struct.CPpmd7_Context_*
  %431 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %432 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %431, i32 0, i32 0
  store %struct.CPpmd7_Context_* %430, %struct.CPpmd7_Context_** %432, align 8
  br label %433

433:                                              ; preds = %419
  %434 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %435 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %434, i32 0, i32 0
  %436 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %435, align 8
  %437 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %436, i32 0, i32 0
  %438 = load i16, i16* %437, align 4
  %439 = zext i16 %438 to i32
  %440 = load i32, i32* %20, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %407, label %442, !llvm.loop !11

442:                                              ; preds = %433
  %443 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %444 = load i32, i32* %20, align 4
  %445 = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef %443, i32 noundef %444, i32* noundef %15)
  store %struct.CPpmd_See* %445, %struct.CPpmd_See** %16, align 8
  %446 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %447 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %446, i32 0, i32 12
  %448 = load i8*, i8** %447, align 8
  %449 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %450 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %449, i32 0, i32 0
  %451 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %450, align 8
  %452 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %448, i64 %454
  %456 = bitcast i8* %455 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %456, %struct.CPpmd_State** %17, align 8
  store i32 0, i32* %18, align 4
  %457 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %458 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %457, i32 0, i32 0
  %459 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %458, align 8
  %460 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %459, i32 0, i32 0
  %461 = load i16, i16* %460, align 4
  %462 = zext i16 %461 to i32
  store i32 %462, i32* %19, align 4
  br label %463

463:                                              ; preds = %562, %442
  %464 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %465 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %464, i32 0, i32 0
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  store i32 %467, i32* %21, align 4
  %468 = load i32, i32* %21, align 4
  %469 = load i32, i32* %6, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %540

471:                                              ; preds = %463
  %472 = load i32, i32* %18, align 4
  store i32 %472, i32* %22, align 4
  %473 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  store %struct.CPpmd_State* %473, %struct.CPpmd_State** %23, align 8
  br label %474

474:                                              ; preds = %493, %471
  %475 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %476 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %475, i32 0, i32 1
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  %479 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %480 = bitcast i64* %479 to i8*
  %481 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %482 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %481, i32 0, i32 0
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i64
  %485 = getelementptr inbounds i8, i8* %480, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = and i32 %478, %487
  %489 = load i32, i32* %18, align 4
  %490 = add i32 %489, %488
  store i32 %490, i32* %18, align 4
  %491 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %492 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %491, i32 1
  store %struct.CPpmd_State* %492, %struct.CPpmd_State** %17, align 8
  br label %493

493:                                              ; preds = %474
  %494 = load i32, i32* %19, align 4
  %495 = add i32 %494, -1
  store i32 %495, i32* %19, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %474, label %497, !llvm.loop !12

497:                                              ; preds = %493
  %498 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %499 = load i32, i32* %22, align 4
  %500 = load %struct.CPpmd_State*, %struct.CPpmd_State** %23, align 8
  %501 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %500, i32 0, i32 1
  %502 = load i8, i8* %501, align 1
  %503 = zext i8 %502 to i32
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* %15, align 4
  %506 = add i32 %504, %505
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %498, i32 noundef %499, i32 noundef %503, i32 noundef %506)
  %507 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %508 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %507, i32 0, i32 1
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp slt i32 %510, 7
  br i1 %511, label %512, label %535

512:                                              ; preds = %497
  %513 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %514 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %513, i32 0, i32 2
  %515 = load i8, i8* %514, align 1
  %516 = add i8 %515, -1
  store i8 %516, i8* %514, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %535

519:                                              ; preds = %512
  %520 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %521 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %520, i32 0, i32 0
  %522 = load i16, i16* %521, align 1
  %523 = zext i16 %522 to i32
  %524 = shl i32 %523, 1
  %525 = trunc i32 %524 to i16
  store i16 %525, i16* %521, align 1
  %526 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %527 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %526, i32 0, i32 1
  %528 = load i8, i8* %527, align 1
  %529 = add i8 %528, 1
  store i8 %529, i8* %527, align 1
  %530 = zext i8 %528 to i32
  %531 = shl i32 3, %530
  %532 = trunc i32 %531 to i8
  %533 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %534 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %533, i32 0, i32 2
  store i8 %532, i8* %534, align 1
  br label %535

535:                                              ; preds = %519, %512, %497
  %536 = load %struct.CPpmd_State*, %struct.CPpmd_State** %23, align 8
  %537 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %538 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %537, i32 0, i32 2
  store %struct.CPpmd_State* %536, %struct.CPpmd_State** %538, align 8
  %539 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update2(%struct.CPpmd7* noundef %539)
  br label %584

540:                                              ; preds = %463
  %541 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %542 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %541, i32 0, i32 1
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  %545 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %546 = bitcast i64* %545 to i8*
  %547 = load i32, i32* %21, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, i8* %546, i64 %548
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = and i32 %544, %551
  %553 = load i32, i32* %18, align 4
  %554 = add i32 %553, %552
  store i32 %554, i32* %18, align 4
  %555 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %556 = bitcast i64* %555 to i8*
  %557 = load i32, i32* %21, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, i8* %556, i64 %558
  store i8 0, i8* %559, align 1
  %560 = load %struct.CPpmd_State*, %struct.CPpmd_State** %17, align 8
  %561 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %560, i32 1
  store %struct.CPpmd_State* %561, %struct.CPpmd_State** %17, align 8
  br label %562

562:                                              ; preds = %540
  %563 = load i32, i32* %19, align 4
  %564 = add i32 %563, -1
  store i32 %564, i32* %19, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %463, label %566, !llvm.loop !13

566:                                              ; preds = %562
  %567 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %568 = load i32, i32* %18, align 4
  %569 = load i32, i32* %15, align 4
  %570 = load i32, i32* %18, align 4
  %571 = load i32, i32* %15, align 4
  %572 = add i32 %570, %571
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %567, i32 noundef %568, i32 noundef %569, i32 noundef %572)
  %573 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %574 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %573, i32 0, i32 0
  %575 = load i16, i16* %574, align 1
  %576 = zext i16 %575 to i32
  %577 = load i32, i32* %18, align 4
  %578 = add i32 %576, %577
  %579 = load i32, i32* %15, align 4
  %580 = add i32 %578, %579
  %581 = trunc i32 %580 to i16
  %582 = load %struct.CPpmd_See*, %struct.CPpmd_See** %16, align 8
  %583 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %582, i32 0, i32 0
  store i16 %581, i16* %583, align 1
  br label %400

584:                                              ; preds = %535, %418, %301, %87, %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %12 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = udiv i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = mul i32 %9, %14
  %16 = zext i32 %15 to i64
  %17 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %18 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %23 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = mul i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %31, %4
  %27 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %28 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %29, 16777216
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  %33 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 8
  store i32 %35, i32* %33, align 8
  %36 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %5, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %36)
  br label %26, !llvm.loop !14

37:                                               ; preds = %26
  ret void
}

declare dso_local void @Ppmd7_Update1_0(%struct.CPpmd7* noundef) #1

declare dso_local void @Ppmd7_Update1(%struct.CPpmd7* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %4 = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %6 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 14
  %9 = load i32, i32* %4, align 4
  %10 = mul i32 %8, %9
  %11 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %12 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %18, %2
  %14 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %15 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %16, 16777216
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %20 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 8
  store i32 %22, i32* %20, align 8
  %23 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %23)
  br label %13, !llvm.loop !15

24:                                               ; preds = %13
  ret void
}

declare dso_local void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %0, %struct.CPpmd7z_RangeEnc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %7 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = lshr i32 %8, 14
  %10 = load i32, i32* %4, align 4
  %11 = mul i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %15 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %20 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %25 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %26, 16777216
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  %30 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 8
  store i32 %32, i32* %30, align 8
  %33 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %3, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %33)
  br label %23, !llvm.loop !16

34:                                               ; preds = %23
  ret void
}

declare dso_local %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef, i32 noundef, i32* noundef) #1

declare dso_local void @Ppmd7_Update2(%struct.CPpmd7* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
