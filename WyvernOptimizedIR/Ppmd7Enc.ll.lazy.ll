; ModuleID = './Ppmd7Enc.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Ppmd7z_RangeEnc_Init(%struct.CPpmd7z_RangeEnc* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  store i32 -1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 2
  store i8 0, i8* %4, align 4
  %5 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 3
  store i64 1, i64* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7z_RangeEnc_FlushData(%struct.CPpmd7z_RangeEnc* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, 5
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %0)
  br label %5

5:                                                ; preds = %4
  %6 = add i32 %.0, 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 4278190080
  %.not = icmp eq i64 %4, 4278190080
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %.not1 = icmp ult i64 %7, 4294967296
  br i1 %.not1, label %31, label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 2
  %10 = load i8, i8* %9, align 4
  %11 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %22, %8
  %.0 = phi i8 [ %10, %8 ], [ -1, %22 ]
  %13 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 4
  %14 = load %struct.IByteOut*, %struct.IByteOut** %13, align 8
  %15 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %14, i64 0, i32 0
  %16 = load void (i8*, i8)*, void (i8*, i8)** %15, align 8
  %.cast = bitcast %struct.IByteOut* %14 to i8*
  %17 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i8
  %21 = add i8 %.0, %20
  call void %16(i8* noundef %.cast, i8 noundef zeroext %21) #3
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %11, align 8
  %.not2 = icmp eq i64 %24, 0
  br i1 %.not2, label %25, label %12, !llvm.loop !6

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %27, 24
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 2
  store i8 %29, i8* %30, align 4
  br label %31

31:                                               ; preds = %25, %5
  %32 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = shl i64 %36, 8
  %38 = and i64 %37, 4294967040
  %39 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  store i64 %38, i64* %39, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd7_EncodeSymbol(%struct.CPpmd7* noundef %0, %struct.CPpmd7z_RangeEnc* nocapture noundef %1, i32 noundef %2) #1 {
  %4 = alloca [32 x i64], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %7 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %6, align 8
  %8 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %7, i64 0, i32 0
  %9 = load i16, i16* %8, align 4
  %.not = icmp eq i16 %9, 1
  br i1 %.not, label %135, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %14 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %13, align 8
  %15 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %14, i64 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = getelementptr inbounds i8, i8* %18, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %27 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %26, align 8
  %28 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %27, i64 0, i32 1
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef 0, i32 noundef %25, i32 noundef %30)
  %31 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %32 = bitcast %struct.CPpmd_State** %31 to i8**
  store i8* %18, i8** %32, align 8
  call void @Ppmd7_Update1_0(%struct.CPpmd7* noundef %0) #3
  br label %386

33:                                               ; preds = %10
  %34 = bitcast i8* %18 to %struct.CPpmd_State*
  %35 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds i8, i8* %18, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %40 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %39, align 8
  %41 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %40, i64 0, i32 0
  %42 = load i16, i16* %41, align 4
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, -1
  br label %45

45:                                               ; preds = %66, %33
  %.08 = phi i32 [ %44, %33 ], [ %67, %66 ]
  %.07 = phi i32 [ %38, %33 ], [ %65, %66 ]
  %.05 = phi %struct.CPpmd_State* [ %34, %33 ], [ %46, %66 ]
  %46 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.05, i64 1
  %47 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i64 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.05, i64 1, i32 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %56 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %55, align 8
  %57 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %56, i64 0, i32 1
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %.07, i32 noundef %54, i32 noundef %59)
  %60 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  store %struct.CPpmd_State* %46, %struct.CPpmd_State** %60, align 8
  call void @Ppmd7_Update1(%struct.CPpmd7* noundef %0) #3
  br label %386

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.05, i64 1, i32 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add i32 %.07, %64
  br label %66

66:                                               ; preds = %61
  %67 = add i32 %.08, -1
  %.not24 = icmp eq i32 %67, 0
  br i1 %.not24, label %68, label %45, !llvm.loop !7

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %70 = load %struct.CPpmd_State*, %struct.CPpmd_State** %69, align 8
  %71 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %70, i64 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 7
  store i32 %76, i32* %77, align 8
  br label %78

78:                                               ; preds = %104, %68
  %.010 = phi i32 [ 0, %68 ], [ %105, %104 ]
  %79 = icmp ult i32 %.010, 32
  br i1 %79, label %80, label %106

80:                                               ; preds = %78
  %81 = zext i32 %.010 to i64
  %82 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %81
  store i64 -1, i64* %82, align 16
  %83 = or i32 %.010, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %84
  store i64 -1, i64* %85, align 8
  %86 = or i32 %.010, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %87
  store i64 -1, i64* %88, align 16
  %89 = or i32 %.010, 3
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %90
  store i64 -1, i64* %91, align 8
  %92 = or i32 %.010, 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %93
  store i64 -1, i64* %94, align 16
  %95 = or i32 %.010, 5
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %96
  store i64 -1, i64* %97, align 8
  %98 = or i32 %.010, 6
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %99
  store i64 -1, i64* %100, align 16
  %101 = or i32 %.010, 7
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %102
  store i64 -1, i64* %103, align 8
  br label %104

104:                                              ; preds = %80
  %105 = add i32 %.010, 8
  br label %78, !llvm.loop !8

106:                                              ; preds = %78
  %107 = bitcast [32 x i64]* %4 to i8*
  %108 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i64 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %113 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %112, align 8
  %114 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %113, i64 0, i32 0
  %115 = load i16, i16* %114, align 4
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, -1
  br label %118

118:                                              ; preds = %125, %106
  %.19 = phi i32 [ %117, %106 ], [ %126, %125 ]
  %.16 = phi %struct.CPpmd_State* [ %46, %106 ], [ %120, %125 ]
  %119 = bitcast [32 x i64]* %4 to i8*
  %120 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.16, i64 -1
  %121 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %120, i64 0, i32 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %118
  %126 = add i32 %.19, -1
  %.not25 = icmp eq i32 %126, 0
  br i1 %.not25, label %127, label %118, !llvm.loop !9

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %129 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %128, align 8
  %130 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %129, i64 0, i32 1
  %131 = load i16, i16* %130, align 2
  %132 = zext i16 %131 to i32
  %133 = sub i32 %132, %65
  %134 = zext i16 %131 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %65, i32 noundef %133, i32 noundef %134)
  br label %261

135:                                              ; preds = %3
  %136 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %137 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %136, align 8
  %138 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %137, i64 0, i32 1
  %139 = bitcast i16* %138 to %struct.CPpmd_State*
  %140 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %139, i64 0, i32 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i64
  %143 = add nsw i64 %142, -1
  %144 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %149 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %148, align 8
  %150 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %149, i64 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  %154 = bitcast i8* %153 to i16*
  %155 = load i16, i16* %154, align 4
  %156 = zext i16 %155 to i64
  %157 = add nsw i64 %156, -1
  %158 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 22, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add i32 %145, %160
  %162 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %163 = load %struct.CPpmd_State*, %struct.CPpmd_State** %162, align 8
  %164 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %163, i64 0, i32 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 7
  store i32 %169, i32* %170, align 8
  %171 = add i32 %161, %169
  %172 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %173 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %172, align 8
  %174 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %173, i64 0, i32 1
  %175 = bitcast i16* %174 to i8*
  %176 = load i8, i8* %175, align 2
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 23, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 1
  %182 = add i32 %171, %181
  %183 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = lshr i32 %184, 26
  %186 = and i32 %185, 32
  %187 = add i32 %182, %186
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 26, i64 %143, i64 %188
  %190 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %191 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %190, align 8
  %192 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %191, i64 0, i32 1
  %193 = bitcast i16* %192 to i8*
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, %2
  br i1 %196, label %197, label %210

197:                                              ; preds = %135
  %198 = load i16, i16* %189, align 2
  %199 = zext i16 %198 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %199)
  %200 = load i16, i16* %189, align 2
  %201 = zext i16 %200 to i32
  %202 = add nuw nsw i32 %201, 128
  %203 = zext i16 %200 to i32
  %204 = add nuw nsw i32 %203, 32
  %205 = lshr i32 %204, 7
  %206 = sub nsw i32 %202, %205
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %189, align 2
  %208 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  %209 = bitcast %struct.CPpmd_State** %208 to i16**
  store i16* %192, i16** %209, align 8
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef %0) #3
  br label %386

210:                                              ; preds = %135
  %211 = load i16, i16* %189, align 2
  %212 = zext i16 %211 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %212)
  %213 = load i16, i16* %189, align 2
  %214 = zext i16 %213 to i32
  %215 = add nuw nsw i32 %214, 32
  %216 = lshr i32 %215, 7
  %217 = trunc i32 %216 to i16
  %218 = sub i16 %213, %217
  store i16 %218, i16* %189, align 2
  %219 = lshr i16 %218, 10
  %220 = zext i16 %219 to i64
  %221 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 4
  store i32 %223, i32* %224, align 4
  br label %225

225:                                              ; preds = %251, %210
  %.011 = phi i32 [ 0, %210 ], [ %252, %251 ]
  %226 = icmp ult i32 %.011, 32
  br i1 %226, label %227, label %253

227:                                              ; preds = %225
  %228 = zext i32 %.011 to i64
  %229 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %228
  store i64 -1, i64* %229, align 16
  %230 = or i32 %.011, 1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %231
  store i64 -1, i64* %232, align 8
  %233 = or i32 %.011, 2
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %234
  store i64 -1, i64* %235, align 16
  %236 = or i32 %.011, 3
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %237
  store i64 -1, i64* %238, align 8
  %239 = or i32 %.011, 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %240
  store i64 -1, i64* %241, align 16
  %242 = or i32 %.011, 5
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %243
  store i64 -1, i64* %244, align 8
  %245 = or i32 %.011, 6
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %246
  store i64 -1, i64* %247, align 16
  %248 = or i32 %.011, 7
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %249
  store i64 -1, i64* %250, align 8
  br label %251

251:                                              ; preds = %227
  %252 = add i32 %.011, 8
  br label %225, !llvm.loop !10

253:                                              ; preds = %225
  %254 = bitcast [32 x i64]* %4 to i8*
  %255 = bitcast i16* %192 to i8*
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  store i8 0, i8* %258, align 1
  %259 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 5
  store i32 0, i32* %259, align 8
  br label %260

260:                                              ; preds = %253
  br label %261

261:                                              ; preds = %260, %127
  br label %262

262:                                              ; preds = %375, %261
  %263 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %264 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %263, align 8
  %265 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %264, i64 0, i32 0
  %266 = load i16, i16* %265, align 4
  %267 = zext i16 %266 to i32
  br label %268

268:                                              ; preds = %287, %262
  %269 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = add i32 %270, 1
  store i32 %271, i32* %269, align 8
  %272 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %273 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %272, align 8
  %274 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %273, i64 0, i32 3
  %275 = load i32, i32* %274, align 4
  %.not21 = icmp eq i32 %275, 0
  br i1 %.not21, label %276, label %277

276:                                              ; preds = %268
  br label %386

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %281 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %280, align 8
  %282 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %281, i64 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %279, i64 %284
  %286 = bitcast %struct.CPpmd7* %0 to i8**
  store i8* %285, i8** %286, align 8
  br label %287

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %289 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %288, align 8
  %290 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %289, i64 0, i32 0
  %291 = load i16, i16* %290, align 4
  %292 = icmp eq i16 %291, %266
  br i1 %292, label %268, label %293, !llvm.loop !11

293:                                              ; preds = %287
  %294 = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef %0, i32 noundef %267, i32* noundef nonnull %5) #3
  %295 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 12
  %296 = load i8*, i8** %295, align 8
  %297 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %298 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %297, align 8
  %299 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %298, i64 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %296, i64 %301
  %303 = bitcast i8* %302 to %struct.CPpmd_State*
  %304 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 0
  %305 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %304, align 8
  %306 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %305, i64 0, i32 0
  %307 = load i16, i16* %306, align 4
  %308 = zext i16 %307 to i32
  br label %309

309:                                              ; preds = %372, %293
  %.03 = phi %struct.CPpmd_State* [ %303, %293 ], [ %373, %372 ]
  %.01 = phi i32 [ 0, %293 ], [ %368, %372 ]
  %.0 = phi i32 [ %308, %293 ], [ %374, %372 ]
  %310 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 0, i32 0
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp eq i32 %312, %2
  br i1 %313, label %314, label %358

314:                                              ; preds = %309
  br label %315

315:                                              ; preds = %328, %314
  %.14 = phi %struct.CPpmd_State* [ %.03, %314 ], [ %329, %328 ]
  %.12 = phi i32 [ %.01, %314 ], [ %327, %328 ]
  %.1 = phi i32 [ %.0, %314 ], [ %330, %328 ]
  %316 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.14, i64 0, i32 1
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = bitcast [32 x i64]* %4 to i8*
  %320 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.14, i64 0, i32 0
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = and i32 %318, %325
  %327 = add i32 %.12, %326
  br label %328

328:                                              ; preds = %315
  %329 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.14, i64 1
  %330 = add i32 %.1, -1
  %.not23 = icmp eq i32 %330, 0
  br i1 %.not23, label %331, label %315, !llvm.loop !12

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 0, i32 1
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = load i32, i32* %5, align 4
  %336 = add i32 %327, %335
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %.01, i32 noundef %334, i32 noundef %336)
  %337 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 1
  %338 = load i8, i8* %337, align 1
  %339 = icmp ult i8 %338, 7
  br i1 %339, label %340, label %356

340:                                              ; preds = %331
  %341 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 2
  %342 = load i8, i8* %341, align 1
  %343 = add i8 %342, -1
  store i8 %343, i8* %341, align 1
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 0
  %347 = load i16, i16* %346, align 1
  %348 = shl i16 %347, 1
  store i16 %348, i16* %346, align 1
  %349 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 1
  %350 = load i8, i8* %349, align 1
  %351 = add i8 %350, 1
  store i8 %351, i8* %349, align 1
  %352 = zext i8 %350 to i32
  %353 = shl i32 3, %352
  %354 = trunc i32 %353 to i8
  %355 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 2
  store i8 %354, i8* %355, align 1
  br label %356

356:                                              ; preds = %345, %340, %331
  %357 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i64 0, i32 2
  store %struct.CPpmd_State* %.03, %struct.CPpmd_State** %357, align 8
  call void @Ppmd7_Update2(%struct.CPpmd7* noundef %0) #3
  br label %386

358:                                              ; preds = %309
  %359 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 0, i32 1
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = bitcast [32 x i64]* %4 to i8*
  %363 = zext i8 %311 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = and i32 %361, %366
  %368 = add i32 %.01, %367
  %369 = bitcast [32 x i64]* %4 to i8*
  %370 = zext i8 %311 to i64
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  store i8 0, i8* %371, align 1
  br label %372

372:                                              ; preds = %358
  %373 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1
  %374 = add i32 %.0, -1
  %.not22 = icmp eq i32 %374, 0
  br i1 %.not22, label %375, label %309, !llvm.loop !13

375:                                              ; preds = %372
  %376 = load i32, i32* %5, align 4
  %377 = add i32 %368, %376
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* noundef %1, i32 noundef %368, i32 noundef %376, i32 noundef %377)
  %378 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 0
  %379 = load i16, i16* %378, align 1
  %380 = zext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = load i32, i32* %5, align 4
  %383 = add i32 %381, %382
  %384 = trunc i32 %383 to i16
  %385 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %294, i64 0, i32 0
  store i16 %384, i16* %385, align 1
  br label %262

386:                                              ; preds = %356, %276, %197, %51, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = udiv i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = mul i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, %9
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = mul i32 %14, %2
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %20, %4
  %17 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %18, 16777216
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 8
  store i32 %23, i32* %21, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %0)
  br label %16, !llvm.loop !14

24:                                               ; preds = %16
  ret void
}

declare dso_local void @Ppmd7_Update1_0(%struct.CPpmd7* noundef) #2

declare dso_local void @Ppmd7_Update1(%struct.CPpmd7* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = lshr i32 %4, 14
  %6 = mul i32 %5, %1
  %7 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  store i32 %6, i32* %7, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %10, 16777216
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 8
  store i32 %15, i32* %13, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %0)
  br label %8, !llvm.loop !15

16:                                               ; preds = %8
  ret void
}

declare dso_local void @Ppmd7_UpdateBin(%struct.CPpmd7* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = lshr i32 %4, 14
  %6 = mul i32 %5, %1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %7
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 %12, %6
  store i32 %13, i32* %11, align 8
  br label %14

14:                                               ; preds = %18, %2
  %15 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %16, 16777216
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 8
  store i32 %21, i32* %19, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* noundef %0)
  br label %14, !llvm.loop !16

22:                                               ; preds = %14
  ret void
}

declare dso_local %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* noundef, i32 noundef, i32* noundef) #2

declare dso_local void @Ppmd7_Update2(%struct.CPpmd7* noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
