; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd7Dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd7Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd7z_RangeDec = type { %struct.IPpmd7_RangeDec, i32, i32, %struct.IByteIn* }
%struct.IPpmd7_RangeDec = type { i32 (i8*, i32)*, void (i8*, i32, i32)*, i32 (i8*, i32)* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD7_kExpEscape = external dso_local constant [16 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd7z_RangeDec_Init(%struct.CPpmd7z_RangeDec* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CPpmd7z_RangeDec*, align 8
  %4 = alloca i32, align 4
  store %struct.CPpmd7z_RangeDec* %0, %struct.CPpmd7z_RangeDec** %3, align 8
  %5 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %6 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %5, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %8 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %7, i32 0, i32 1
  store i32 -1, i32* %8, align 8
  %9 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %10 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %9, i32 0, i32 3
  %11 = load %struct.IByteIn*, %struct.IByteIn** %10, align 8
  %12 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %11, i32 0, i32 0
  %13 = load i8 (i8*)*, i8 (i8*)** %12, align 8
  %14 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %15 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %14, i32 0, i32 3
  %16 = load %struct.IByteIn*, %struct.IByteIn** %15, align 8
  %17 = bitcast %struct.IByteIn* %16 to i8*
  %18 = call zeroext i8 %13(i8* noundef %17)
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %28 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %32 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %31, i32 0, i32 3
  %33 = load %struct.IByteIn*, %struct.IByteIn** %32, align 8
  %34 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %33, i32 0, i32 0
  %35 = load i8 (i8*)*, i8 (i8*)** %34, align 8
  %36 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %37 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %36, i32 0, i32 3
  %38 = load %struct.IByteIn*, %struct.IByteIn** %37, align 8
  %39 = bitcast %struct.IByteIn* %38 to i8*
  %40 = call zeroext i8 %35(i8* noundef %39)
  %41 = zext i8 %40 to i32
  %42 = or i32 %30, %41
  %43 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %44 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %23, !llvm.loop !4

48:                                               ; preds = %23
  %49 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %3, align 8
  %50 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %51, -1
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7z_RangeDec_CreateVTable(%struct.CPpmd7z_RangeDec* noundef %0) #0 {
  %2 = alloca %struct.CPpmd7z_RangeDec*, align 8
  store %struct.CPpmd7z_RangeDec* %0, %struct.CPpmd7z_RangeDec** %2, align 8
  %3 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %4, i32 0, i32 0
  store i32 (i8*, i32)* @Range_GetThreshold, i32 (i8*, i32)** %5, align 8
  %6 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %7 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %7, i32 0, i32 1
  store void (i8*, i32, i32)* @Range_Decode, void (i8*, i32, i32)** %8, align 8
  %9 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %10 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %10, i32 0, i32 2
  store i32 (i8*, i32)* @Range_DecodeBit, i32 (i8*, i32)** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Range_GetThreshold(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.CPpmd7z_RangeDec*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %7, %struct.CPpmd7z_RangeDec** %5, align 8
  %8 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %9 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %13 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = udiv i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = udiv i32 %10, %15
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal void @Range_Decode(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CPpmd7z_RangeDec*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %9, %struct.CPpmd7z_RangeDec** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %7, align 8
  %12 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = mul i32 %10, %13
  %15 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %7, align 8
  %16 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %7, align 8
  %21 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = mul i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %7, align 8
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* noundef %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Range_DecodeBit(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.CPpmd7z_RangeDec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %9, %struct.CPpmd7z_RangeDec** %5, align 8
  %10 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %11 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = lshr i32 %12, 14
  %14 = load i32, i32* %4, align 4
  %15 = mul i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %17 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %24 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %36

25:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %28 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  %33 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %25, %21
  %37 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %5, align 8
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* noundef %37)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd7_DecodeSymbol(%struct.CPpmd7* noundef %0, %struct.IPpmd7_RangeDec* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CPpmd7*, align 8
  %5 = alloca %struct.IPpmd7_RangeDec*, align 8
  %6 = alloca [32 x i64], align 16
  %7 = alloca %struct.CPpmd_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca [256 x %struct.CPpmd_State*], align 16
  %18 = alloca %struct.CPpmd_State*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.CPpmd_See*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca %struct.CPpmd_State**, align 8
  store %struct.CPpmd7* %0, %struct.CPpmd7** %4, align 8
  store %struct.IPpmd7_RangeDec* %1, %struct.IPpmd7_RangeDec** %5, align 8
  %29 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %30 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %29, i32 0, i32 0
  %31 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %30, align 8
  %32 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %241

36:                                               ; preds = %2
  %37 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %38 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %37, i32 0, i32 12
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %41 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %40, i32 0, i32 0
  %42 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %41, align 8
  %43 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  %47 = bitcast i8* %46 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %47, %struct.CPpmd_State** %7, align 8
  %48 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %49 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %48, i32 0, i32 0
  %50 = load i32 (i8*, i32)*, i32 (i8*, i32)** %49, align 8
  %51 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %52 = bitcast %struct.IPpmd7_RangeDec* %51 to i8*
  %53 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %54 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %53, i32 0, i32 0
  %55 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %54, align 8
  %56 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %55, i32 0, i32 1
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = call i32 %50(i8* noundef %52, i32 noundef %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %61 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %36
  %66 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %67 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %66, i32 0, i32 1
  %68 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %67, align 8
  %69 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %70 = bitcast %struct.IPpmd7_RangeDec* %69 to i8*
  %71 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %72 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  call void %68(i8* noundef %70, i32 noundef 0, i32 noundef %74)
  %75 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %76 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %77 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %76, i32 0, i32 2
  store %struct.CPpmd_State* %75, %struct.CPpmd_State** %77, align 8
  %78 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %79 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %11, align 1
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update1_0(%struct.CPpmd7* noundef %81)
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %650

84:                                               ; preds = %36
  %85 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %86 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %85, i32 0, i32 5
  store i32 0, i32* %86, align 8
  %87 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %88 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %87, i32 0, i32 0
  %89 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %88, align 8
  %90 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %89, i32 0, i32 0
  %91 = load i16, i16* %90, align 4
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %130, %84
  %95 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %96 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %95, i32 1
  store %struct.CPpmd_State* %96, %struct.CPpmd_State** %7, align 8
  %97 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %96, i32 0, i32 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %94
  %105 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %106 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %105, i32 0, i32 1
  %107 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %106, align 8
  %108 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %109 = bitcast %struct.IPpmd7_RangeDec* %108 to i8*
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %112 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %111, i32 0, i32 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sub i32 %110, %114
  %116 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %117 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  call void %107(i8* noundef %109, i32 noundef %115, i32 noundef %119)
  %120 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %121 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %122 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %121, i32 0, i32 2
  store %struct.CPpmd_State* %120, %struct.CPpmd_State** %122, align 8
  %123 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %124 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %12, align 1
  %126 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update1(%struct.CPpmd7* noundef %126)
  %127 = load i8, i8* %12, align 1
  %128 = zext i8 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %650

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %94, label %134, !llvm.loop !6

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %137 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %136, i32 0, i32 0
  %138 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %137, align 8
  %139 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %138, i32 0, i32 1
  %140 = load i16, i16* %139, align 2
  %141 = zext i16 %140 to i32
  %142 = icmp uge i32 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 -2, i32* %3, align 4
  br label %650

144:                                              ; preds = %134
  %145 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %146 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %145, i32 0, i32 23
  %147 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %148 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %147, i32 0, i32 2
  %149 = load %struct.CPpmd_State*, %struct.CPpmd_State** %148, align 8
  %150 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %149, i32 0, i32 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %146, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %157 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %159 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %158, i32 0, i32 1
  %160 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %159, align 8
  %161 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %162 = bitcast %struct.IPpmd7_RangeDec* %161 to i8*
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %165 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %164, i32 0, i32 0
  %166 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %165, align 8
  %167 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %166, i32 0, i32 1
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = load i32, i32* %10, align 4
  %171 = sub i32 %169, %170
  call void %160(i8* noundef %162, i32 noundef %163, i32 noundef %171)
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %209, %144
  %173 = load i32, i32* %13, align 4
  %174 = zext i32 %173 to i64
  %175 = icmp ult i64 %174, 32
  br i1 %175, label %176, label %212

176:                                              ; preds = %172
  %177 = load i32, i32* %13, align 4
  %178 = add i32 %177, 0
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %179
  store i64 -1, i64* %180, align 8
  %181 = load i32, i32* %13, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %183
  store i64 -1, i64* %184, align 8
  %185 = load i32, i32* %13, align 4
  %186 = add i32 %185, 2
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %187
  store i64 -1, i64* %188, align 8
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 3
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %191
  store i64 -1, i64* %192, align 8
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %193, 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %195
  store i64 -1, i64* %196, align 8
  %197 = load i32, i32* %13, align 4
  %198 = add i32 %197, 5
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %199
  store i64 -1, i64* %200, align 8
  %201 = load i32, i32* %13, align 4
  %202 = add i32 %201, 6
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %203
  store i64 -1, i64* %204, align 8
  %205 = load i32, i32* %13, align 4
  %206 = add i32 %205, 7
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %207
  store i64 -1, i64* %208, align 8
  br label %209

209:                                              ; preds = %176
  %210 = load i32, i32* %13, align 4
  %211 = add i32 %210, 8
  store i32 %211, i32* %13, align 4
  br label %172, !llvm.loop !7

212:                                              ; preds = %172
  %213 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %214 = bitcast i64* %213 to i8*
  %215 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %216 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %215, i32 0, i32 0
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds i8, i8* %214, i64 %218
  store i8 0, i8* %219, align 1
  %220 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %221 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %220, i32 0, i32 0
  %222 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %221, align 8
  %223 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %222, i32 0, i32 0
  %224 = load i16, i16* %223, align 4
  %225 = zext i16 %224 to i32
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %236, %212
  %228 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %229 = bitcast i64* %228 to i8*
  %230 = load %struct.CPpmd_State*, %struct.CPpmd_State** %7, align 8
  %231 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %230, i32 -1
  store %struct.CPpmd_State* %231, %struct.CPpmd_State** %7, align 8
  %232 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %231, i32 0, i32 0
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  store i8 0, i8* %235, align 1
  br label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %8, align 4
  %238 = add i32 %237, -1
  store i32 %238, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %227, label %240, !llvm.loop !8

240:                                              ; preds = %236
  br label %428

241:                                              ; preds = %2
  %242 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %243 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %242, i32 0, i32 26
  %244 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %245 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %244, i32 0, i32 0
  %246 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %245, align 8
  %247 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %246, i32 0, i32 1
  %248 = bitcast i16* %247 to %struct.CPpmd_State*
  %249 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %248, i32 0, i32 1
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [128 x [64 x i16]], [128 x [64 x i16]]* %243, i64 0, i64 %253
  %255 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %256 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %259 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %258, i32 0, i32 22
  %260 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %261 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %260, i32 0, i32 12
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %264 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %263, i32 0, i32 0
  %265 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %264, align 8
  %266 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %262, i64 %268
  %270 = bitcast i8* %269 to %struct.CPpmd7_Context_*
  %271 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %270, i32 0, i32 0
  %272 = load i16, i16* %271, align 4
  %273 = zext i16 %272 to i32
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %259, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = add i32 %257, %278
  %280 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %281 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %280, i32 0, i32 23
  %282 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %283 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %282, i32 0, i32 2
  %284 = load %struct.CPpmd_State*, %struct.CPpmd_State** %283, align 8
  %285 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %284, i32 0, i32 0
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i64
  %288 = getelementptr inbounds [256 x i8], [256 x i8]* %281, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %292 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %291, i32 0, i32 7
  store i32 %290, i32* %292, align 8
  %293 = add i32 %279, %290
  %294 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %295 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %294, i32 0, i32 23
  %296 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %297 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %296, i32 0, i32 0
  %298 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %297, align 8
  %299 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %298, i32 0, i32 1
  %300 = bitcast i16* %299 to %struct.CPpmd_State*
  %301 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %300, i32 0, i32 0
  %302 = load i8, i8* %301, align 2
  %303 = zext i8 %302 to i64
  %304 = getelementptr inbounds [256 x i8], [256 x i8]* %295, i64 0, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = mul nsw i32 2, %306
  %308 = add i32 %293, %307
  %309 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %310 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 4
  %312 = ashr i32 %311, 26
  %313 = and i32 %312, 32
  %314 = add i32 %308, %313
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [64 x i16], [64 x i16]* %254, i64 0, i64 %315
  store i16* %316, i16** %14, align 8
  %317 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %318 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %317, i32 0, i32 2
  %319 = load i32 (i8*, i32)*, i32 (i8*, i32)** %318, align 8
  %320 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %321 = bitcast %struct.IPpmd7_RangeDec* %320 to i8*
  %322 = load i16*, i16** %14, align 8
  %323 = load i16, i16* %322, align 2
  %324 = zext i16 %323 to i32
  %325 = call i32 %319(i8* noundef %321, i32 noundef %324)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %352

327:                                              ; preds = %241
  %328 = load i16*, i16** %14, align 8
  %329 = load i16, i16* %328, align 2
  %330 = zext i16 %329 to i32
  %331 = add nsw i32 %330, 128
  %332 = load i16*, i16** %14, align 8
  %333 = load i16, i16* %332, align 2
  %334 = zext i16 %333 to i32
  %335 = add nsw i32 %334, 32
  %336 = ashr i32 %335, 7
  %337 = sub nsw i32 %331, %336
  %338 = trunc i32 %337 to i16
  %339 = load i16*, i16** %14, align 8
  store i16 %338, i16* %339, align 2
  %340 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %341 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %340, i32 0, i32 0
  %342 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %341, align 8
  %343 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %342, i32 0, i32 1
  %344 = bitcast i16* %343 to %struct.CPpmd_State*
  %345 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %346 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %345, i32 0, i32 2
  store %struct.CPpmd_State* %344, %struct.CPpmd_State** %346, align 8
  %347 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %344, i32 0, i32 0
  %348 = load i8, i8* %347, align 1
  store i8 %348, i8* %15, align 1
  %349 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef %349)
  %350 = load i8, i8* %15, align 1
  %351 = zext i8 %350 to i32
  store i32 %351, i32* %3, align 4
  br label %650

352:                                              ; preds = %241
  %353 = load i16*, i16** %14, align 8
  %354 = load i16, i16* %353, align 2
  %355 = zext i16 %354 to i32
  %356 = load i16*, i16** %14, align 8
  %357 = load i16, i16* %356, align 2
  %358 = zext i16 %357 to i32
  %359 = add nsw i32 %358, 32
  %360 = ashr i32 %359, 7
  %361 = sub nsw i32 %355, %360
  %362 = trunc i32 %361 to i16
  %363 = load i16*, i16** %14, align 8
  store i16 %362, i16* %363, align 2
  %364 = load i16*, i16** %14, align 8
  %365 = load i16, i16* %364, align 2
  %366 = zext i16 %365 to i32
  %367 = ashr i32 %366, 10
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i64 0, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %373 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %372, i32 0, i32 4
  store i32 %371, i32* %373, align 4
  store i32 0, i32* %16, align 4
  br label %374

374:                                              ; preds = %411, %352
  %375 = load i32, i32* %16, align 4
  %376 = zext i32 %375 to i64
  %377 = icmp ult i64 %376, 32
  br i1 %377, label %378, label %414

378:                                              ; preds = %374
  %379 = load i32, i32* %16, align 4
  %380 = add i32 %379, 0
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %381
  store i64 -1, i64* %382, align 8
  %383 = load i32, i32* %16, align 4
  %384 = add i32 %383, 1
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %385
  store i64 -1, i64* %386, align 8
  %387 = load i32, i32* %16, align 4
  %388 = add i32 %387, 2
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %389
  store i64 -1, i64* %390, align 8
  %391 = load i32, i32* %16, align 4
  %392 = add i32 %391, 3
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %393
  store i64 -1, i64* %394, align 8
  %395 = load i32, i32* %16, align 4
  %396 = add i32 %395, 4
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %397
  store i64 -1, i64* %398, align 8
  %399 = load i32, i32* %16, align 4
  %400 = add i32 %399, 5
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %401
  store i64 -1, i64* %402, align 8
  %403 = load i32, i32* %16, align 4
  %404 = add i32 %403, 6
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %405
  store i64 -1, i64* %406, align 8
  %407 = load i32, i32* %16, align 4
  %408 = add i32 %407, 7
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %409
  store i64 -1, i64* %410, align 8
  br label %411

411:                                              ; preds = %378
  %412 = load i32, i32* %16, align 4
  %413 = add i32 %412, 8
  store i32 %413, i32* %16, align 4
  br label %374, !llvm.loop !9

414:                                              ; preds = %374
  %415 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %416 = bitcast i64* %415 to i8*
  %417 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %418 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %417, i32 0, i32 0
  %419 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %418, align 8
  %420 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %419, i32 0, i32 1
  %421 = bitcast i16* %420 to %struct.CPpmd_State*
  %422 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %421, i32 0, i32 0
  %423 = load i8, i8* %422, align 2
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds i8, i8* %416, i64 %424
  store i8 0, i8* %425, align 1
  %426 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %427 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %426, i32 0, i32 5
  store i32 0, i32* %427, align 8
  br label %428

428:                                              ; preds = %414, %240
  br label %429

429:                                              ; preds = %649, %428
  %430 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %431 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %430, i32 0, i32 0
  %432 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %431, align 8
  %433 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %432, i32 0, i32 0
  %434 = load i16, i16* %433, align 4
  %435 = zext i16 %434 to i32
  store i32 %435, i32* %25, align 4
  br label %436

436:                                              ; preds = %462, %429
  %437 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %438 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 8
  %440 = add i32 %439, 1
  store i32 %440, i32* %438, align 8
  %441 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %442 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %441, i32 0, i32 0
  %443 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %442, align 8
  %444 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %436
  store i32 -1, i32* %3, align 4
  br label %650

448:                                              ; preds = %436
  %449 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %450 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %449, i32 0, i32 12
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %453 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %452, i32 0, i32 0
  %454 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %453, align 8
  %455 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %451, i64 %457
  %459 = bitcast i8* %458 to %struct.CPpmd7_Context_*
  %460 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %461 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %460, i32 0, i32 0
  store %struct.CPpmd7_Context_* %459, %struct.CPpmd7_Context_** %461, align 8
  br label %462

462:                                              ; preds = %448
  %463 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %464 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %463, i32 0, i32 0
  %465 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %464, align 8
  %466 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %465, i32 0, i32 0
  %467 = load i16, i16* %466, align 4
  %468 = zext i16 %467 to i32
  %469 = load i32, i32* %25, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %436, label %471, !llvm.loop !10

471:                                              ; preds = %462
  store i32 0, i32* %21, align 4
  %472 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %473 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %472, i32 0, i32 12
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %476 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %475, i32 0, i32 0
  %477 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %476, align 8
  %478 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds i8, i8* %474, i64 %480
  %482 = bitcast i8* %481 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %482, %struct.CPpmd_State** %18, align 8
  store i32 0, i32* %23, align 4
  %483 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %484 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %483, i32 0, i32 0
  %485 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %484, align 8
  %486 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %485, i32 0, i32 0
  %487 = load i16, i16* %486, align 4
  %488 = zext i16 %487 to i32
  %489 = load i32, i32* %25, align 4
  %490 = sub i32 %488, %489
  store i32 %490, i32* %24, align 4
  br label %491

491:                                              ; preds = %517, %471
  %492 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %493 = bitcast i64* %492 to i8*
  %494 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %495 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %494, i32 0, i32 0
  %496 = load i8, i8* %495, align 1
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds i8, i8* %493, i64 %497
  %499 = load i8, i8* %498, align 1
  %500 = sext i8 %499 to i32
  store i32 %500, i32* %26, align 4
  %501 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %502 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %501, i32 0, i32 1
  %503 = load i8, i8* %502, align 1
  %504 = zext i8 %503 to i32
  %505 = load i32, i32* %26, align 4
  %506 = and i32 %504, %505
  %507 = load i32, i32* %21, align 4
  %508 = add i32 %507, %506
  store i32 %508, i32* %21, align 4
  %509 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %510 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %509, i32 1
  store %struct.CPpmd_State* %510, %struct.CPpmd_State** %18, align 8
  %511 = load i32, i32* %23, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %17, i64 0, i64 %512
  store %struct.CPpmd_State* %509, %struct.CPpmd_State** %513, align 8
  %514 = load i32, i32* %26, align 4
  %515 = load i32, i32* %23, align 4
  %516 = sub i32 %515, %514
  store i32 %516, i32* %23, align 4
  br label %517

517:                                              ; preds = %491
  %518 = load i32, i32* %23, align 4
  %519 = load i32, i32* %24, align 4
  %520 = icmp ne i32 %518, %519
  br i1 %520, label %491, label %521, !llvm.loop !11

521:                                              ; preds = %517
  %522 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %523 = load i32, i32* %25, align 4
  %524 = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef %522, i32 noundef %523, i32* noundef %19)
  store %struct.CPpmd_See* %524, %struct.CPpmd_See** %22, align 8
  %525 = load i32, i32* %21, align 4
  %526 = load i32, i32* %19, align 4
  %527 = add i32 %526, %525
  store i32 %527, i32* %19, align 4
  %528 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %529 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %528, i32 0, i32 0
  %530 = load i32 (i8*, i32)*, i32 (i8*, i32)** %529, align 8
  %531 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %532 = bitcast %struct.IPpmd7_RangeDec* %531 to i8*
  %533 = load i32, i32* %19, align 4
  %534 = call i32 %530(i8* noundef %532, i32 noundef %533)
  store i32 %534, i32* %20, align 4
  %535 = load i32, i32* %20, align 4
  %536 = load i32, i32* %21, align 4
  %537 = icmp ult i32 %535, %536
  br i1 %537, label %538, label %610

538:                                              ; preds = %521
  %539 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %17, i64 0, i64 0
  store %struct.CPpmd_State** %539, %struct.CPpmd_State*** %28, align 8
  store i32 0, i32* %21, align 4
  br label %540

540:                                              ; preds = %551, %538
  %541 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %28, align 8
  %542 = load %struct.CPpmd_State*, %struct.CPpmd_State** %541, align 8
  %543 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %542, i32 0, i32 1
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = load i32, i32* %21, align 4
  %547 = add i32 %546, %545
  store i32 %547, i32* %21, align 4
  %548 = load i32, i32* %20, align 4
  %549 = icmp ule i32 %547, %548
  br i1 %549, label %550, label %554

550:                                              ; preds = %540
  br label %551

551:                                              ; preds = %550
  %552 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %28, align 8
  %553 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %552, i32 1
  store %struct.CPpmd_State** %553, %struct.CPpmd_State*** %28, align 8
  br label %540, !llvm.loop !12

554:                                              ; preds = %540
  %555 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %28, align 8
  %556 = load %struct.CPpmd_State*, %struct.CPpmd_State** %555, align 8
  store %struct.CPpmd_State* %556, %struct.CPpmd_State** %18, align 8
  %557 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %558 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %557, i32 0, i32 1
  %559 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %558, align 8
  %560 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %561 = bitcast %struct.IPpmd7_RangeDec* %560 to i8*
  %562 = load i32, i32* %21, align 4
  %563 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %564 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %563, i32 0, i32 1
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i32
  %567 = sub i32 %562, %566
  %568 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %569 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %568, i32 0, i32 1
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i32
  call void %559(i8* noundef %561, i32 noundef %567, i32 noundef %571)
  %572 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %573 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %572, i32 0, i32 1
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = icmp slt i32 %575, 7
  br i1 %576, label %577, label %600

577:                                              ; preds = %554
  %578 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %579 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %578, i32 0, i32 2
  %580 = load i8, i8* %579, align 1
  %581 = add i8 %580, -1
  store i8 %581, i8* %579, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %600

584:                                              ; preds = %577
  %585 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %586 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %585, i32 0, i32 0
  %587 = load i16, i16* %586, align 1
  %588 = zext i16 %587 to i32
  %589 = shl i32 %588, 1
  %590 = trunc i32 %589 to i16
  store i16 %590, i16* %586, align 1
  %591 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %592 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %591, i32 0, i32 1
  %593 = load i8, i8* %592, align 1
  %594 = add i8 %593, 1
  store i8 %594, i8* %592, align 1
  %595 = zext i8 %593 to i32
  %596 = shl i32 3, %595
  %597 = trunc i32 %596 to i8
  %598 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %599 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %598, i32 0, i32 2
  store i8 %597, i8* %599, align 1
  br label %600

600:                                              ; preds = %584, %577, %554
  %601 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %602 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  %603 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %602, i32 0, i32 2
  store %struct.CPpmd_State* %601, %struct.CPpmd_State** %603, align 8
  %604 = load %struct.CPpmd_State*, %struct.CPpmd_State** %18, align 8
  %605 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %604, i32 0, i32 0
  %606 = load i8, i8* %605, align 1
  store i8 %606, i8* %27, align 1
  %607 = load %struct.CPpmd7*, %struct.CPpmd7** %4, align 8
  call void @Ppmd7_Update2(%struct.CPpmd7* noundef %607)
  %608 = load i8, i8* %27, align 1
  %609 = zext i8 %608 to i32
  store i32 %609, i32* %3, align 4
  br label %650

610:                                              ; preds = %521
  %611 = load i32, i32* %20, align 4
  %612 = load i32, i32* %19, align 4
  %613 = icmp uge i32 %611, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  store i32 -2, i32* %3, align 4
  br label %650

615:                                              ; preds = %610
  %616 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %617 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %616, i32 0, i32 1
  %618 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %617, align 8
  %619 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %5, align 8
  %620 = bitcast %struct.IPpmd7_RangeDec* %619 to i8*
  %621 = load i32, i32* %21, align 4
  %622 = load i32, i32* %19, align 4
  %623 = load i32, i32* %21, align 4
  %624 = sub i32 %622, %623
  call void %618(i8* noundef %620, i32 noundef %621, i32 noundef %624)
  %625 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %626 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %625, i32 0, i32 0
  %627 = load i16, i16* %626, align 1
  %628 = zext i16 %627 to i32
  %629 = load i32, i32* %19, align 4
  %630 = add i32 %628, %629
  %631 = trunc i32 %630 to i16
  %632 = load %struct.CPpmd_See*, %struct.CPpmd_See** %22, align 8
  %633 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %632, i32 0, i32 0
  store i16 %631, i16* %633, align 1
  br label %634

634:                                              ; preds = %646, %615
  %635 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %636 = bitcast i64* %635 to i8*
  %637 = load i32, i32* %23, align 4
  %638 = add i32 %637, -1
  store i32 %638, i32* %23, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %17, i64 0, i64 %639
  %641 = load %struct.CPpmd_State*, %struct.CPpmd_State** %640, align 8
  %642 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %641, i32 0, i32 0
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds i8, i8* %636, i64 %644
  store i8 0, i8* %645, align 1
  br label %646

646:                                              ; preds = %634
  %647 = load i32, i32* %23, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %634, label %649, !llvm.loop !13

649:                                              ; preds = %646
  br label %429

650:                                              ; preds = %614, %600, %447, %327, %143, %104, %65
  %651 = load i32, i32* %3, align 4
  ret i32 %651
}

declare dso_local void @Ppmd7_Update1_0(%struct.CPpmd7* noundef) #1

declare dso_local void @Ppmd7_Update1(%struct.CPpmd7* noundef) #1

declare dso_local void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef) #1

declare dso_local %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef, i32 noundef, i32* noundef) #1

declare dso_local void @Ppmd7_Update2(%struct.CPpmd7* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Range_Normalize(%struct.CPpmd7z_RangeDec* noundef %0) #0 {
  %2 = alloca %struct.CPpmd7z_RangeDec*, align 8
  store %struct.CPpmd7z_RangeDec* %0, %struct.CPpmd7z_RangeDec** %2, align 8
  %3 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ult i32 %5, 16777216
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %9 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %13 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %12, i32 0, i32 3
  %14 = load %struct.IByteIn*, %struct.IByteIn** %13, align 8
  %15 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %14, i32 0, i32 0
  %16 = load i8 (i8*)*, i8 (i8*)** %15, align 8
  %17 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %18 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %17, i32 0, i32 3
  %19 = load %struct.IByteIn*, %struct.IByteIn** %18, align 8
  %20 = bitcast %struct.IByteIn* %19 to i8*
  %21 = call zeroext i8 %16(i8* noundef %20)
  %22 = zext i8 %21 to i32
  %23 = or i32 %11, %22
  %24 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %25 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %27 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 8
  store i32 %29, i32* %27, align 8
  %30 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %31 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %32, 16777216
  br i1 %33, label %34, label %57

34:                                               ; preds = %7
  %35 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %36 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %40 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %39, i32 0, i32 3
  %41 = load %struct.IByteIn*, %struct.IByteIn** %40, align 8
  %42 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %41, i32 0, i32 0
  %43 = load i8 (i8*)*, i8 (i8*)** %42, align 8
  %44 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %45 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %44, i32 0, i32 3
  %46 = load %struct.IByteIn*, %struct.IByteIn** %45, align 8
  %47 = bitcast %struct.IByteIn* %46 to i8*
  %48 = call zeroext i8 %43(i8* noundef %47)
  %49 = zext i8 %48 to i32
  %50 = or i32 %38, %49
  %51 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %52 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %2, align 8
  %54 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 8
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %34, %7
  br label %58

58:                                               ; preds = %57, %1
  ret void
}

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
