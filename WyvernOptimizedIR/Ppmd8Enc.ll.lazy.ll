; ModuleID = './Ppmd8Enc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd8Enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd8 = type { %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, %union.anon, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%struct.CPpmd8_Context_ = type { i8, i8, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%union.anon = type { %struct.IByteIn* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.IByteOut = type { void (i8*, i8)* }

@PPMD8_kExpEscape = external dso_local constant [16 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd8_RangeEnc_FlushData(%struct.CPpmd8* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %14, %1
  %.0 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %3 = icmp ult i32 %.0, 4
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 21
  %6 = bitcast %union.anon* %5 to %struct.IByteOut**
  %7 = load %struct.IByteOut*, %struct.IByteOut** %6, align 8
  %8 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %7, i64 0, i32 0
  %9 = load void (i8*, i8)*, void (i8*, i8)** %8, align 8
  %.cast = bitcast %struct.IByteOut* %7 to i8*
  %10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %11 = load i32, i32* %10, align 8
  %12 = lshr i32 %11, 24
  %13 = trunc i32 %12 to i8
  call void %9(i8* noundef %.cast, i8 noundef zeroext %13) #2
  br label %14

14:                                               ; preds = %4
  %15 = add i32 %.0, 1
  %16 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 8
  store i32 %18, i32* %16, align 8
  br label %2, !llvm.loop !4

19:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd8_EncodeSymbol(%struct.CPpmd8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [32 x i64], align 16
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %6 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %5, align 8
  %7 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %6, i64 0, i32 0
  %8 = load i8, i8* %7, align 4
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %123, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %13 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %12, align 8
  %14 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %32

21:                                               ; preds = %9
  %22 = getelementptr inbounds i8, i8* %17, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %26 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %25, align 8
  %27 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %26, i64 0, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef 0, i32 noundef %24, i32 noundef %29)
  %30 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  %31 = bitcast %struct.CPpmd_State** %30 to i8**
  store i8* %17, i8** %31, align 8
  call void @Ppmd8_Update1_0(%struct.CPpmd8* noundef %0) #2
  br label %361

32:                                               ; preds = %9
  %33 = bitcast i8* %17 to %struct.CPpmd_State*
  %34 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds i8, i8* %17, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %39 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %38, align 8
  %40 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %39, i64 0, i32 0
  %41 = load i8, i8* %40, align 4
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %64, %32
  %.06 = phi i32 [ %42, %32 ], [ %65, %64 ]
  %.05 = phi i32 [ %37, %32 ], [ %63, %64 ]
  %.03 = phi %struct.CPpmd_State* [ %33, %32 ], [ %44, %64 ]
  %44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1
  %45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %44, i64 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1, i32 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %54 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %53, align 8
  %55 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %54, i64 0, i32 2
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef %.05, i32 noundef %52, i32 noundef %57)
  %58 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  store %struct.CPpmd_State* %44, %struct.CPpmd_State** %58, align 8
  call void @Ppmd8_Update1(%struct.CPpmd8* noundef %0) #2
  br label %361

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.03, i64 1, i32 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add i32 %.05, %62
  br label %64

64:                                               ; preds = %59
  %65 = add i32 %.06, -1
  %.not24 = icmp eq i32 %65, 0
  br i1 %.not24, label %66, label %43, !llvm.loop !6

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %93, %66
  %.08 = phi i32 [ 0, %66 ], [ %94, %93 ]
  %68 = icmp ult i32 %.08, 32
  br i1 %68, label %69, label %95

69:                                               ; preds = %67
  %70 = zext i32 %.08 to i64
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %70
  store i64 -1, i64* %71, align 16
  %72 = or i32 %.08, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %73
  store i64 -1, i64* %74, align 8
  %75 = or i32 %.08, 2
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %76
  store i64 -1, i64* %77, align 16
  %78 = or i32 %.08, 3
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %79
  store i64 -1, i64* %80, align 8
  %81 = or i32 %.08, 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %82
  store i64 -1, i64* %83, align 16
  %84 = or i32 %.08, 5
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %85
  store i64 -1, i64* %86, align 8
  %87 = or i32 %.08, 6
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %88
  store i64 -1, i64* %89, align 16
  %90 = or i32 %.08, 7
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %91
  store i64 -1, i64* %92, align 8
  br label %93

93:                                               ; preds = %69
  %94 = add i32 %.08, 8
  br label %67, !llvm.loop !7

95:                                               ; preds = %67
  %96 = bitcast [32 x i64]* %3 to i8*
  %97 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %44, i64 0, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %102 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %101, align 8
  %103 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %102, i64 0, i32 0
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %113, %95
  %.17 = phi i32 [ %105, %95 ], [ %114, %113 ]
  %.14 = phi %struct.CPpmd_State* [ %44, %95 ], [ %108, %113 ]
  %107 = bitcast [32 x i64]* %3 to i8*
  %108 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.14, i64 -1
  %109 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %108, i64 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %106
  %114 = add i32 %.17, -1
  %.not25 = icmp eq i32 %114, 0
  br i1 %.not25, label %115, label %106, !llvm.loop !8

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %117 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %116, align 8
  %118 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %117, i64 0, i32 2
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  %121 = sub i32 %120, %63
  %122 = zext i16 %119 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef %63, i32 noundef %121, i32 noundef %122)
  br label %235

123:                                              ; preds = %2
  %124 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %125 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %124, align 8
  %126 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %125, i64 0, i32 2
  %127 = bitcast i16* %126 to %struct.CPpmd_State*
  %128 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %127, i64 0, i32 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i64
  %131 = add nsw i64 %130, -1
  %132 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 27, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %138 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %137, align 8
  %139 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %138, i64 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %136, i64 %141
  %143 = load i8, i8* %142, align 4
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 26, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %147
  %151 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %152 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %151, align 8
  %153 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %152, i64 0, i32 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add i32 %150, %155
  %157 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = lshr i32 %158, 26
  %160 = and i32 %159, 32
  %161 = add i32 %156, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 30, i64 %134, i64 %162
  %164 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %165 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %164, align 8
  %166 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %165, i64 0, i32 2
  %167 = bitcast i16* %166 to i8*
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, %1
  br i1 %170, label %171, label %184

171:                                              ; preds = %123
  %172 = load i16, i16* %163, align 2
  %173 = zext i16 %172 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd8* noundef %0, i32 noundef %173)
  %174 = load i16, i16* %163, align 2
  %175 = zext i16 %174 to i32
  %176 = add nuw nsw i32 %175, 128
  %177 = zext i16 %174 to i32
  %178 = add nuw nsw i32 %177, 32
  %179 = lshr i32 %178, 7
  %180 = sub nsw i32 %176, %179
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %163, align 2
  %182 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  %183 = bitcast %struct.CPpmd_State** %182 to i16**
  store i16* %166, i16** %183, align 8
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef %0) #2
  br label %361

184:                                              ; preds = %123
  %185 = load i16, i16* %163, align 2
  %186 = zext i16 %185 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd8* noundef %0, i32 noundef %186)
  %187 = load i16, i16* %163, align 2
  %188 = zext i16 %187 to i32
  %189 = add nuw nsw i32 %188, 32
  %190 = lshr i32 %189, 7
  %191 = trunc i32 %190 to i16
  %192 = sub i16 %187, %191
  store i16 %192, i16* %163, align 2
  %193 = lshr i16 %192, 10
  %194 = zext i16 %193 to i64
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 4
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %225, %184
  %.011 = phi i32 [ 0, %184 ], [ %226, %225 ]
  %200 = icmp ult i32 %.011, 32
  br i1 %200, label %201, label %227

201:                                              ; preds = %199
  %202 = zext i32 %.011 to i64
  %203 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %202
  store i64 -1, i64* %203, align 16
  %204 = or i32 %.011, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %205
  store i64 -1, i64* %206, align 8
  %207 = or i32 %.011, 2
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %208
  store i64 -1, i64* %209, align 16
  %210 = or i32 %.011, 3
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %211
  store i64 -1, i64* %212, align 8
  %213 = or i32 %.011, 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %214
  store i64 -1, i64* %215, align 16
  %216 = or i32 %.011, 5
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %217
  store i64 -1, i64* %218, align 8
  %219 = or i32 %.011, 6
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %220
  store i64 -1, i64* %221, align 16
  %222 = or i32 %.011, 7
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [32 x i64], [32 x i64]* %3, i64 0, i64 %223
  store i64 -1, i64* %224, align 8
  br label %225

225:                                              ; preds = %201
  %226 = add i32 %.011, 8
  br label %199, !llvm.loop !9

227:                                              ; preds = %199
  %228 = bitcast [32 x i64]* %3 to i8*
  %229 = bitcast i16* %166 to i8*
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  store i8 0, i8* %232, align 1
  %233 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  store i32 0, i32* %233, align 8
  br label %234

234:                                              ; preds = %227
  br label %235

235:                                              ; preds = %234, %115
  br label %236

236:                                              ; preds = %350, %235
  %237 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %238 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %237, align 8
  %239 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %238, i64 0, i32 0
  %240 = load i8, i8* %239, align 4
  %241 = zext i8 %240 to i32
  br label %242

242:                                              ; preds = %261, %236
  %243 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = add i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %247 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %246, align 8
  %248 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %247, i64 0, i32 4
  %249 = load i32, i32* %248, align 4
  %.not21 = icmp eq i32 %249, 0
  br i1 %.not21, label %250, label %251

250:                                              ; preds = %242
  br label %361

251:                                              ; preds = %242
  %252 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %255 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %254, align 8
  %256 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %255, i64 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %253, i64 %258
  %260 = bitcast %struct.CPpmd8* %0 to i8**
  store i8* %259, i8** %260, align 8
  br label %261

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %263 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %262, align 8
  %264 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %263, i64 0, i32 0
  %265 = load i8, i8* %264, align 4
  %266 = icmp eq i8 %265, %240
  br i1 %266, label %242, label %267, !llvm.loop !10

267:                                              ; preds = %261
  %268 = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef %0, i32 noundef %241, i32* noundef nonnull %4) #2
  %269 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %272 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %271, align 8
  %273 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %272, i64 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %270, i64 %275
  %277 = bitcast i8* %276 to %struct.CPpmd_State*
  %278 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %279 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %278, align 8
  %280 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %279, i64 0, i32 0
  %281 = load i8, i8* %280, align 4
  %282 = zext i8 %281 to i32
  %283 = add nuw nsw i32 %282, 1
  br label %284

284:                                              ; preds = %347, %267
  %.09 = phi %struct.CPpmd_State* [ %277, %267 ], [ %348, %347 ]
  %.01 = phi i32 [ 0, %267 ], [ %343, %347 ]
  %.0 = phi i32 [ %283, %267 ], [ %349, %347 ]
  %285 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.09, i64 0, i32 0
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, %1
  br i1 %288, label %289, label %333

289:                                              ; preds = %284
  br label %290

290:                                              ; preds = %303, %289
  %.110 = phi %struct.CPpmd_State* [ %.09, %289 ], [ %304, %303 ]
  %.12 = phi i32 [ %.01, %289 ], [ %302, %303 ]
  %.1 = phi i32 [ %.0, %289 ], [ %305, %303 ]
  %291 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.110, i64 0, i32 1
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = bitcast [32 x i64]* %3 to i8*
  %295 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.110, i64 0, i32 0
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = and i32 %293, %300
  %302 = add i32 %.12, %301
  br label %303

303:                                              ; preds = %290
  %304 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.110, i64 1
  %305 = add i32 %.1, -1
  %.not23 = icmp eq i32 %305, 0
  br i1 %.not23, label %306, label %290, !llvm.loop !11

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.09, i64 0, i32 1
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = load i32, i32* %4, align 4
  %311 = add i32 %302, %310
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef %.01, i32 noundef %309, i32 noundef %311)
  %312 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 1
  %313 = load i8, i8* %312, align 1
  %314 = icmp ult i8 %313, 7
  br i1 %314, label %315, label %331

315:                                              ; preds = %306
  %316 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 2
  %317 = load i8, i8* %316, align 1
  %318 = add i8 %317, -1
  store i8 %318, i8* %316, align 1
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 0
  %322 = load i16, i16* %321, align 1
  %323 = shl i16 %322, 1
  store i16 %323, i16* %321, align 1
  %324 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 1
  %325 = load i8, i8* %324, align 1
  %326 = add i8 %325, 1
  store i8 %326, i8* %324, align 1
  %327 = zext i8 %325 to i32
  %328 = shl i32 3, %327
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 2
  store i8 %329, i8* %330, align 1
  br label %331

331:                                              ; preds = %320, %315, %306
  %332 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  store %struct.CPpmd_State* %.09, %struct.CPpmd_State** %332, align 8
  call void @Ppmd8_Update2(%struct.CPpmd8* noundef %0) #2
  br label %361

333:                                              ; preds = %284
  %334 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.09, i64 0, i32 1
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = bitcast [32 x i64]* %3 to i8*
  %338 = zext i8 %286 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = and i32 %336, %341
  %343 = add i32 %.01, %342
  %344 = bitcast [32 x i64]* %3 to i8*
  %345 = zext i8 %286 to i64
  %346 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8 0, i8* %346, align 1
  br label %347

347:                                              ; preds = %333
  %348 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.09, i64 1
  %349 = add i32 %.0, -1
  %.not22 = icmp eq i32 %349, 0
  br i1 %.not22, label %350, label %284, !llvm.loop !12

350:                                              ; preds = %347
  %351 = load i32, i32* %4, align 4
  %352 = add i32 %343, %351
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef %343, i32 noundef %351, i32 noundef %352)
  %353 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 0
  %354 = load i16, i16* %353, align 1
  %355 = zext i16 %354 to i32
  %356 = add i32 %343, %355
  %357 = load i32, i32* %4, align 4
  %358 = add i32 %356, %357
  %359 = trunc i32 %358 to i16
  %360 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %268, i64 0, i32 0
  store i16 %359, i16* %360, align 1
  br label %236

361:                                              ; preds = %331, %250, %171, %49, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd8* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %6 = load i32, i32* %5, align 8
  %7 = udiv i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = mul i32 %7, %1
  %9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, %8
  store i32 %11, i32* %9, align 8
  %12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %13 = load i32, i32* %12, align 8
  %14 = mul i32 %13, %2
  store i32 %14, i32* %12, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %0)
  ret void
}

declare dso_local void @Ppmd8_Update1_0(%struct.CPpmd8* noundef) #1

declare dso_local void @Ppmd8_Update1(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd8* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %4 = load i32, i32* %3, align 8
  %5 = lshr i32 %4, 14
  %6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %7 = mul i32 %5, %1
  store i32 %7, i32* %6, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %0)
  ret void
}

declare dso_local void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd8* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %4 = load i32, i32* %3, align 8
  %5 = lshr i32 %4, 14
  store i32 %5, i32* %3, align 8
  %6 = mul i32 %5, %1
  %7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, %6
  store i32 %9, i32* %7, align 8
  %10 = sub i32 16384, %1
  %11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = mul i32 %12, %10
  store i32 %13, i32* %11, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %0)
  ret void
}

declare dso_local %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef, i32 noundef, i32* noundef) #1

declare dso_local void @Ppmd8_Update2(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Normalize(%struct.CPpmd8* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %6 = load i32, i32* %5, align 8
  %7 = add i32 %4, %6
  %8 = xor i32 %4, %7
  %9 = icmp ult i32 %8, 16777216
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %12, 32768
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 0, %16
  %18 = and i32 %17, 32767
  %19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  store i32 %18, i32* %19, align 8
  br label %20

20:                                               ; preds = %14, %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = phi i1 [ true, %2 ], [ %13, %20 ]
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 21
  %25 = bitcast %union.anon* %24 to %struct.IByteOut**
  %26 = load %struct.IByteOut*, %struct.IByteOut** %25, align 8
  %27 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %26, i64 0, i32 0
  %28 = load void (i8*, i8)*, void (i8*, i8)** %27, align 8
  %.cast = bitcast %struct.IByteOut* %26 to i8*
  %29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = lshr i32 %30, 24
  %32 = trunc i32 %31 to i8
  call void %28(i8* noundef %.cast, i8 noundef zeroext %32) #2
  %33 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 8
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 8
  store i32 %38, i32* %36, align 8
  br label %2, !llvm.loop !13

39:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
