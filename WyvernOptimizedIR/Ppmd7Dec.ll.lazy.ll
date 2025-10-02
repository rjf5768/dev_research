; ModuleID = './Ppmd7Dec.ll'
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
define dso_local i32 @Ppmd7z_RangeDec_Init(%struct.CPpmd7z_RangeDec* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 1
  store i32 -1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 3
  %5 = load %struct.IByteIn*, %struct.IByteIn** %4, align 8
  %6 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %5, i64 0, i32 0
  %7 = load i8 (i8*)*, i8 (i8*)** %6, align 8
  %.cast = bitcast %struct.IByteIn* %5 to i8*
  %8 = call zeroext i8 %7(i8* noundef %.cast) #4
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %25, %10
  %.01 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %12 = icmp ult i32 %.01, 4
  br i1 %12, label %13, label %27

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 3
  %18 = load %struct.IByteIn*, %struct.IByteIn** %17, align 8
  %19 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %18, i64 0, i32 0
  %20 = load i8 (i8*)*, i8 (i8*)** %19, align 8
  %.cast2 = bitcast %struct.IByteIn* %18 to i8*
  %21 = call zeroext i8 %20(i8* noundef %.cast2) #4
  %22 = zext i8 %21 to i32
  %23 = or i32 %16, %22
  %24 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %13
  %26 = add i32 %.01, 1
  br label %11, !llvm.loop !4

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %9
  %.0 = phi i32 [ 0, %9 ], [ %31, %27 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Ppmd7z_RangeDec_CreateVTable(%struct.CPpmd7z_RangeDec* nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 0, i32 0
  store i32 (i8*, i32)* @Range_GetThreshold, i32 (i8*, i32)** %2, align 8
  %3 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 0, i32 1
  store void (i8*, i32, i32)* @Range_Decode, void (i8*, i32, i32)** %3, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 0, i32 2
  store i32 (i8*, i32)* @Range_DecodeBit, i32 (i8*, i32)** %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @Range_GetThreshold(i8* nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds i8, i8* %0, i64 28
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds i8, i8* %0, i64 24
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = udiv i32 %8, %1
  store i32 %9, i32* %7, align 8
  %10 = udiv i32 %5, %9
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal void @Range_Decode(i8* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = bitcast i8* %0 to %struct.CPpmd7z_RangeDec*
  %5 = getelementptr inbounds i8, i8* %0, i64 24
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = mul i32 %7, %1
  %9 = getelementptr inbounds i8, i8* %0, i64 28
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds i8, i8* %0, i64 24
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = mul i32 %15, %2
  store i32 %16, i32* %14, align 8
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Range_DecodeBit(i8* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds i8, i8* %0, i64 24
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = lshr i32 %5, 14
  %7 = mul i32 %6, %1
  %8 = getelementptr inbounds i8, i8* %0, i64 28
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %10, %7
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, i8* %0, i64 24
  %14 = bitcast i8* %13 to i32*
  store i32 %7, i32* %14, align 8
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, i8* %0, i64 28
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %18, %7
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = sub i32 %22, %7
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %15, %12
  %.0 = phi i32 [ 0, %12 ], [ 1, %15 ]
  %25 = bitcast i8* %0 to %struct.CPpmd7z_RangeDec*
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* noundef %25)
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd7_DecodeSymbol(%struct.CPpmd7* noundef %0, %struct.IPpmd7_RangeDec* noundef %1) #0 {
  %3 = alloca [32 x i64], align 16
  %4 = alloca [256 x %struct.CPpmd_State*], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %7 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %6, align 8
  %8 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %7, i64 0, i32 0
  %9 = load i16, i16* %8, align 4
  %.not = icmp eq i16 %9, 1
  br i1 %.not, label %151, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %14 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %13, align 8
  %15 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %14, i64 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 0
  %20 = load i32 (i8*, i32)*, i32 (i8*, i32)** %19, align 8
  %21 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %22 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %23 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %22, align 8
  %24 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %23, i64 0, i32 1
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = call i32 %20(i8* noundef %21, i32 noundef %26) #4
  %28 = getelementptr inbounds i8, i8* %18, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 1
  %34 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %33, align 8
  %35 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %36 = getelementptr inbounds i8, i8* %18, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  call void %34(i8* noundef %35, i32 noundef 0, i32 noundef %38) #4
  %39 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %40 = bitcast %struct.CPpmd_State** %39 to i8**
  store i8* %18, i8** %40, align 8
  %41 = load i8, i8* %18, align 1
  call void @Ppmd7_Update1_0(%struct.CPpmd7* noundef %0) #4
  %42 = zext i8 %41 to i32
  br label %428

43:                                               ; preds = %10
  %44 = bitcast i8* %18 to %struct.CPpmd_State*
  %45 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %47 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %46, align 8
  %48 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %47, i64 0, i32 0
  %49 = load i16, i16* %48, align 4
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, -1
  br label %52

52:                                               ; preds = %73, %43
  %.09 = phi i32 [ %30, %43 ], [ %57, %73 ]
  %.05 = phi i32 [ %51, %43 ], [ %74, %73 ]
  %.03 = phi %struct.CPpmd_State* [ %44, %43 ], [ %53, %73 ]
  %53 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1
  %54 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1, i32 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %.09, %56
  %58 = icmp ugt i32 %57, %27
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 1
  %61 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %60, align 8
  %62 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %63 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1, i32 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = sub i32 %57, %65
  %67 = zext i8 %64 to i32
  call void %61(i8* noundef %62, i32 noundef %66, i32 noundef %67) #4
  %68 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  store %struct.CPpmd_State* %53, %struct.CPpmd_State** %68, align 8
  %69 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %53, i64 0, i32 0
  %70 = load i8, i8* %69, align 1
  call void @Ppmd7_Update1(%struct.CPpmd7* noundef %0) #4
  %71 = zext i8 %70 to i32
  br label %428

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = add i32 %.05, -1
  %.not28 = icmp eq i32 %74, 0
  br i1 %.not28, label %75, label %52, !llvm.loop !6

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %77 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %76, align 8
  %78 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %77, i64 0, i32 1
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %.not29 = icmp ult i32 %27, %80
  br i1 %.not29, label %82, label %81

81:                                               ; preds = %75
  br label %428

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %84 = load %struct.CPpmd_State*, %struct.CPpmd_State** %83, align 8
  %85 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %84, i64 0, i32 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 7
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 1
  %93 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %92, align 8
  %94 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %95 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %96 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %95, align 8
  %97 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %96, i64 0, i32 1
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  %100 = sub i32 %99, %57
  call void %93(i8* noundef %94, i32 noundef %57, i32 noundef %100) #4
  br label %101

101:                                              ; preds = %127, %82
  %.012 = phi i32 [ 0, %82 ], [ %128, %127 ]
  %102 = icmp ult i32 %.012, 32
  br i1 %102, label %103, label %129

103:                                              ; preds = %101
  %104 = zext i32 %.012 to i64
  %105 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %104
  store i64 -1, i64* %105, align 16
  %106 = or i32 %.012, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %107
  store i64 -1, i64* %108, align 8
  %109 = or i32 %.012, 2
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %110
  store i64 -1, i64* %111, align 16
  %112 = or i32 %.012, 3
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %113
  store i64 -1, i64* %114, align 8
  %115 = or i32 %.012, 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %116
  store i64 -1, i64* %117, align 16
  %118 = or i32 %.012, 5
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %119
  store i64 -1, i64* %120, align 8
  %121 = or i32 %.012, 6
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %122
  store i64 -1, i64* %123, align 16
  %124 = or i32 %.012, 7
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %125
  store i64 -1, i64* %126, align 8
  br label %127

127:                                              ; preds = %103
  %128 = add i32 %.012, 8
  br label %101, !llvm.loop !7

129:                                              ; preds = %101
  %130 = bitcast [32 x i64]* %3 to i8*
  %131 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %53, i64 0, i32 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 0, i8* %134, align 1
  %135 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %136 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %135, align 8
  %137 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %136, i64 0, i32 0
  %138 = load i16, i16* %137, align 4
  %139 = zext i16 %138 to i32
  %140 = add nsw i32 %139, -1
  br label %141

141:                                              ; preds = %148, %129
  %.16 = phi i32 [ %140, %129 ], [ %149, %148 ]
  %.14 = phi %struct.CPpmd_State* [ %53, %129 ], [ %143, %148 ]
  %142 = bitcast [32 x i64]* %3 to i8*
  %143 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.14, i64 -1
  %144 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %143, i64 0, i32 0
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  store i8 0, i8* %147, align 1
  br label %148

148:                                              ; preds = %141
  %149 = add i32 %.16, -1
  %.not30 = icmp eq i32 %149, 0
  br i1 %.not30, label %150, label %141, !llvm.loop !8

150:                                              ; preds = %148
  br label %281

151:                                              ; preds = %2
  %152 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %153 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %152, align 8
  %154 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %153, i64 0, i32 1
  %155 = bitcast i16* %154 to %struct.CPpmd_State*
  %156 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %155, i64 0, i32 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = add nsw i64 %158, -1
  %160 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %165 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %164, align 8
  %166 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %165, i64 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %163, i64 %168
  %170 = bitcast i8* %169 to i16*
  %171 = load i16, i16* %170, align 4
  %172 = zext i16 %171 to i64
  %173 = add nsw i64 %172, -1
  %174 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 22, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add i32 %161, %176
  %178 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %179 = load %struct.CPpmd_State*, %struct.CPpmd_State** %178, align 8
  %180 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %179, i64 0, i32 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 7
  store i32 %185, i32* %186, align 8
  %187 = add i32 %177, %185
  %188 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %189 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %188, align 8
  %190 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %189, i64 0, i32 1
  %191 = bitcast i16* %190 to i8*
  %192 = load i8, i8* %191, align 2
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl nuw nsw i32 %196, 1
  %198 = add i32 %187, %197
  %199 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = lshr i32 %200, 26
  %202 = and i32 %201, 32
  %203 = add i32 %198, %202
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 26, i64 %159, i64 %204
  %206 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 2
  %207 = load i32 (i8*, i32)*, i32 (i8*, i32)** %206, align 8
  %208 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %209 = load i16, i16* %205, align 2
  %210 = zext i16 %209 to i32
  %211 = call i32 %207(i8* noundef %208, i32 noundef %210) #4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %151
  %214 = load i16, i16* %205, align 2
  %215 = zext i16 %214 to i32
  %216 = add nuw nsw i32 %215, 128
  %217 = zext i16 %214 to i32
  %218 = add nuw nsw i32 %217, 32
  %219 = lshr i32 %218, 7
  %220 = sub nsw i32 %216, %219
  %221 = trunc i32 %220 to i16
  store i16 %221, i16* %205, align 2
  %222 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %223 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %222, align 8
  %224 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %223, i64 0, i32 1
  %225 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %226 = bitcast %struct.CPpmd_State** %225 to i16**
  store i16* %224, i16** %226, align 8
  %227 = bitcast i16* %224 to i8*
  %228 = load i8, i8* %227, align 1
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef %0) #4
  %229 = zext i8 %228 to i32
  br label %428

230:                                              ; preds = %151
  %231 = load i16, i16* %205, align 2
  %232 = zext i16 %231 to i32
  %233 = add nuw nsw i32 %232, 32
  %234 = lshr i32 %233, 7
  %235 = trunc i32 %234 to i16
  %236 = sub i16 %231, %235
  store i16 %236, i16* %205, align 2
  %237 = lshr i16 %236, 10
  %238 = zext i16 %237 to i64
  %239 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 4
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %269, %230
  %.011 = phi i32 [ 0, %230 ], [ %270, %269 ]
  %244 = icmp ult i32 %.011, 32
  br i1 %244, label %245, label %271

245:                                              ; preds = %243
  %246 = zext i32 %.011 to i64
  %247 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %246
  store i64 -1, i64* %247, align 16
  %248 = or i32 %.011, 1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %249
  store i64 -1, i64* %250, align 8
  %251 = or i32 %.011, 2
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %252
  store i64 -1, i64* %253, align 16
  %254 = or i32 %.011, 3
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %255
  store i64 -1, i64* %256, align 8
  %257 = or i32 %.011, 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %258
  store i64 -1, i64* %259, align 16
  %260 = or i32 %.011, 5
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %261
  store i64 -1, i64* %262, align 8
  %263 = or i32 %.011, 6
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %264
  store i64 -1, i64* %265, align 16
  %266 = or i32 %.011, 7
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %267
  store i64 -1, i64* %268, align 8
  br label %269

269:                                              ; preds = %245
  %270 = add i32 %.011, 8
  br label %243, !llvm.loop !9

271:                                              ; preds = %243
  %272 = bitcast [32 x i64]* %3 to i8*
  %273 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %274 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %273, align 8
  %275 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %274, i64 0, i32 1
  %276 = bitcast i16* %275 to i8*
  %277 = load i8, i8* %276, align 2
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds i8, i8* %272, i64 %278
  store i8 0, i8* %279, align 1
  %280 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  store i32 0, i32* %280, align 8
  br label %281

281:                                              ; preds = %271, %150
  br label %282

282:                                              ; preds = %427, %281
  %283 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %284 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %283, align 8
  %285 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %284, i64 0, i32 0
  %286 = load i16, i16* %285, align 4
  %287 = zext i16 %286 to i32
  br label %288

288:                                              ; preds = %307, %282
  %289 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = add i32 %290, 1
  store i32 %291, i32* %289, align 8
  %292 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %293 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %292, align 8
  %294 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %293, i64 0, i32 3
  %295 = load i32, i32* %294, align 4
  %.not23 = icmp eq i32 %295, 0
  br i1 %.not23, label %296, label %297

296:                                              ; preds = %288
  br label %428

297:                                              ; preds = %288
  %298 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %301 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %300, align 8
  %302 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %301, i64 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %299, i64 %304
  %306 = bitcast %struct.CPpmd7* %0 to i8**
  store i8* %305, i8** %306, align 8
  br label %307

307:                                              ; preds = %297
  %308 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %309 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %308, align 8
  %310 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %309, i64 0, i32 0
  %311 = load i16, i16* %310, align 4
  %312 = icmp eq i16 %311, %286
  br i1 %312, label %288, label %313, !llvm.loop !10

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %317 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %316, align 8
  %318 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %317, i64 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %315, i64 %320
  %322 = bitcast i8* %321 to %struct.CPpmd_State*
  %323 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %324 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %323, align 8
  %325 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %324, i64 0, i32 0
  %326 = load i16, i16* %325, align 4
  %327 = zext i16 %326 to i32
  %328 = sub nsw i32 %327, %287
  br label %329

329:                                              ; preds = %345, %313
  %.010 = phi %struct.CPpmd_State* [ %322, %313 ], [ %346, %345 ]
  %.07 = phi i32 [ 0, %313 ], [ %341, %345 ]
  %.02 = phi i32 [ 0, %313 ], [ %344, %345 ]
  %330 = bitcast [32 x i64]* %3 to i8*
  %331 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 0, i32 0
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i64
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 0, i32 1
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %339, %336
  %341 = add i32 %.07, %340
  %342 = zext i32 %.02 to i64
  %343 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %4, i64 0, i64 %342
  store %struct.CPpmd_State* %.010, %struct.CPpmd_State** %343, align 8
  %344 = sub i32 %.02, %336
  br label %345

345:                                              ; preds = %329
  %346 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 1
  %.not24 = icmp eq i32 %344, %328
  br i1 %.not24, label %347, label %329, !llvm.loop !11

347:                                              ; preds = %345
  %348 = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef %0, i32 noundef %287, i32* noundef nonnull %5) #4
  %349 = load i32, i32* %5, align 4
  %350 = add i32 %349, %341
  store i32 %350, i32* %5, align 4
  %351 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 0
  %352 = load i32 (i8*, i32)*, i32 (i8*, i32)** %351, align 8
  %353 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %354 = call i32 %352(i8* noundef %353, i32 noundef %350) #4
  %355 = icmp ult i32 %354, %341
  br i1 %355, label %356, label %401

356:                                              ; preds = %347
  %357 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %4, i64 0, i64 0
  br label %358

358:                                              ; preds = %365, %356
  %.18 = phi i32 [ 0, %356 ], [ %363, %365 ]
  %.01 = phi %struct.CPpmd_State** [ %357, %356 ], [ %366, %365 ]
  %359 = load %struct.CPpmd_State*, %struct.CPpmd_State** %.01, align 8
  %360 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %359, i64 0, i32 1
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  %363 = add i32 %.18, %362
  %.not27 = icmp ugt i32 %363, %354
  br i1 %.not27, label %367, label %364

364:                                              ; preds = %358
  br label %365

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %.01, i64 1
  br label %358, !llvm.loop !12

367:                                              ; preds = %358
  %368 = load %struct.CPpmd_State*, %struct.CPpmd_State** %.01, align 8
  %369 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 1
  %370 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %369, align 8
  %371 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %372 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %368, i64 0, i32 1
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = sub i32 %363, %374
  %376 = zext i8 %373 to i32
  call void %370(i8* noundef %371, i32 noundef %375, i32 noundef %376) #4
  %377 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 1
  %378 = load i8, i8* %377, align 1
  %379 = icmp ult i8 %378, 7
  br i1 %379, label %380, label %396

380:                                              ; preds = %367
  %381 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 2
  %382 = load i8, i8* %381, align 1
  %383 = add i8 %382, -1
  store i8 %383, i8* %381, align 1
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %396

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 0
  %387 = load i16, i16* %386, align 1
  %388 = shl i16 %387, 1
  store i16 %388, i16* %386, align 1
  %389 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 1
  %390 = load i8, i8* %389, align 1
  %391 = add i8 %390, 1
  store i8 %391, i8* %389, align 1
  %392 = zext i8 %390 to i32
  %393 = shl i32 3, %392
  %394 = trunc i32 %393 to i8
  %395 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 2
  store i8 %394, i8* %395, align 1
  br label %396

396:                                              ; preds = %385, %380, %367
  %397 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  store %struct.CPpmd_State* %368, %struct.CPpmd_State** %397, align 8
  %398 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %368, i64 0, i32 0
  %399 = load i8, i8* %398, align 1
  call void @Ppmd7_Update2(%struct.CPpmd7* noundef %0) #4
  %400 = zext i8 %399 to i32
  br label %428

401:                                              ; preds = %347
  %402 = load i32, i32* %5, align 4
  %.not25 = icmp ult i32 %354, %402
  br i1 %.not25, label %404, label %403

403:                                              ; preds = %401
  br label %428

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %1, i64 0, i32 1
  %406 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %405, align 8
  %407 = bitcast %struct.IPpmd7_RangeDec* %1 to i8*
  %408 = load i32, i32* %5, align 4
  %409 = sub i32 %408, %341
  call void %406(i8* noundef %407, i32 noundef %341, i32 noundef %409) #4
  %410 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 0
  %411 = load i16, i16* %410, align 1
  %412 = load i32, i32* %5, align 4
  %413 = trunc i32 %412 to i16
  %414 = add i16 %411, %413
  %415 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %348, i64 0, i32 0
  store i16 %414, i16* %415, align 1
  br label %416

416:                                              ; preds = %426, %404
  %.1 = phi i32 [ %344, %404 ], [ %418, %426 ]
  %417 = bitcast [32 x i64]* %3 to i8*
  %418 = add i32 %.1, -1
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %4, i64 0, i64 %419
  %421 = load %struct.CPpmd_State*, %struct.CPpmd_State** %420, align 8
  %422 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %421, i64 0, i32 0
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds i8, i8* %417, i64 %424
  store i8 0, i8* %425, align 1
  br label %426

426:                                              ; preds = %416
  %.not26 = icmp eq i32 %418, 0
  br i1 %.not26, label %427, label %416, !llvm.loop !13

427:                                              ; preds = %426
  br label %282

428:                                              ; preds = %403, %396, %296, %213, %81, %59, %32
  %.0 = phi i32 [ %42, %32 ], [ %71, %59 ], [ -2, %81 ], [ %400, %396 ], [ -2, %403 ], [ -1, %296 ], [ %229, %213 ]
  ret i32 %.0
}

declare dso_local void @Ppmd7_Update1_0(%struct.CPpmd7* noundef) #3

declare dso_local void @Ppmd7_Update1(%struct.CPpmd7* noundef) #3

declare dso_local void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef) #3

declare dso_local %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef, i32 noundef, i32* noundef) #3

declare dso_local void @Ppmd7_Update2(%struct.CPpmd7* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Range_Normalize(%struct.CPpmd7z_RangeDec* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = icmp ult i32 %3, 16777216
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 8
  %9 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 3
  %10 = load %struct.IByteIn*, %struct.IByteIn** %9, align 8
  %11 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %10, i64 0, i32 0
  %12 = load i8 (i8*)*, i8 (i8*)** %11, align 8
  %.cast = bitcast %struct.IByteIn* %10 to i8*
  %13 = call zeroext i8 %12(i8* noundef %.cast) #4
  %14 = zext i8 %13 to i32
  %15 = or i32 %8, %14
  %16 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 8
  store i32 %19, i32* %17, align 8
  %20 = icmp ult i32 %19, 16777216
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 3
  %26 = load %struct.IByteIn*, %struct.IByteIn** %25, align 8
  %27 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %26, i64 0, i32 0
  %28 = load i8 (i8*)*, i8 (i8*)** %27, align 8
  %.cast1 = bitcast %struct.IByteIn* %26 to i8*
  %29 = call zeroext i8 %28(i8* noundef %.cast1) #4
  %30 = zext i8 %29 to i32
  %31 = or i32 %24, %30
  %32 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i64 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 8
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %21, %5
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
