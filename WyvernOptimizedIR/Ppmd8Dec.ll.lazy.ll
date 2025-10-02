; ModuleID = './Ppmd8Dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd8Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd8 = type { %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, %union.anon, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%struct.CPpmd8_Context_ = type { i8, i8, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%union.anon = type { %struct.IByteIn* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD8_kExpEscape = external dso_local constant [16 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd8_RangeDec_Init(%struct.CPpmd8* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  store i32 -1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %.0 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 21, i32 0
  %12 = load %struct.IByteIn*, %struct.IByteIn** %11, align 8
  %13 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %12, i64 0, i32 0
  %14 = load i8 (i8*)*, i8 (i8*)** %13, align 8
  %.cast = bitcast %struct.IByteIn* %12 to i8*
  %15 = call zeroext i8 %14(i8* noundef %.cast) #3
  %16 = zext i8 %15 to i32
  %17 = or i32 %10, %16
  %18 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %7
  %20 = add i32 %.0, 1
  br label %5, !llvm.loop !4

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd8_DecodeSymbol(%struct.CPpmd8* noundef %0) #0 {
  %2 = alloca [32 x i64], align 16
  %3 = alloca [256 x %struct.CPpmd_State*], align 16
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %6 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %5, align 8
  %7 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %6, i64 0, i32 0
  %8 = load i8, i8* %7, align 4
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %125, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %13 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %12, align 8
  %14 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  %18 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i64 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* noundef %0, i32 noundef %20)
  %22 = getelementptr inbounds i8, i8* %17, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = getelementptr inbounds i8, i8* %17, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef 0, i32 noundef %29)
  %30 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  %31 = bitcast %struct.CPpmd_State** %30 to i8**
  store i8* %17, i8** %31, align 8
  %32 = load i8, i8* %17, align 1
  call void @Ppmd8_Update1_0(%struct.CPpmd8* noundef %0) #3
  %33 = zext i8 %32 to i32
  br label %387

34:                                               ; preds = %9
  %35 = bitcast i8* %17 to %struct.CPpmd_State*
  %36 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %38 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %37, align 8
  %39 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %38, i64 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %60, %34
  %.07 = phi i32 [ %24, %34 ], [ %47, %60 ]
  %.03 = phi i32 [ %41, %34 ], [ %61, %60 ]
  %.02 = phi %struct.CPpmd_State* [ %35, %34 ], [ %43, %60 ]
  %43 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.02, i64 1
  %44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.02, i64 1, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add i32 %.07, %46
  %48 = icmp ugt i32 %47, %21
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.02, i64 1, i32 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = sub i32 %47, %52
  %54 = zext i8 %51 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %53, i32 noundef %54)
  %55 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  store %struct.CPpmd_State* %43, %struct.CPpmd_State** %55, align 8
  %56 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %43, i64 0, i32 0
  %57 = load i8, i8* %56, align 1
  call void @Ppmd8_Update1(%struct.CPpmd8* noundef %0) #3
  %58 = zext i8 %57 to i32
  br label %387

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = add i32 %.03, -1
  %.not28 = icmp eq i32 %61, 0
  br i1 %.not28, label %62, label %42, !llvm.loop !6

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %64 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %63, align 8
  %65 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %64, i64 0, i32 2
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %.not29 = icmp ult i32 %21, %67
  br i1 %.not29, label %69, label %68

68:                                               ; preds = %62
  br label %387

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %71 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %70, align 8
  %72 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %71, i64 0, i32 2
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = sub i32 %74, %47
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %47, i32 noundef %75)
  br label %76

76:                                               ; preds = %102, %69
  %.011 = phi i32 [ 0, %69 ], [ %103, %102 ]
  %77 = icmp ult i32 %.011, 32
  br i1 %77, label %78, label %104

78:                                               ; preds = %76
  %79 = zext i32 %.011 to i64
  %80 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %79
  store i64 -1, i64* %80, align 16
  %81 = or i32 %.011, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %82
  store i64 -1, i64* %83, align 8
  %84 = or i32 %.011, 2
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %85
  store i64 -1, i64* %86, align 16
  %87 = or i32 %.011, 3
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %88
  store i64 -1, i64* %89, align 8
  %90 = or i32 %.011, 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %91
  store i64 -1, i64* %92, align 16
  %93 = or i32 %.011, 5
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %94
  store i64 -1, i64* %95, align 8
  %96 = or i32 %.011, 6
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %97
  store i64 -1, i64* %98, align 16
  %99 = or i32 %.011, 7
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %100
  store i64 -1, i64* %101, align 8
  br label %102

102:                                              ; preds = %78
  %103 = add i32 %.011, 8
  br label %76, !llvm.loop !7

104:                                              ; preds = %76
  %105 = bitcast [32 x i64]* %2 to i8*
  %106 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %43, i64 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 0, i8* %109, align 1
  %110 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %111 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %110, align 8
  %112 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %111, i64 0, i32 0
  %113 = load i8, i8* %112, align 4
  %114 = zext i8 %113 to i32
  br label %115

115:                                              ; preds = %122, %104
  %.14 = phi i32 [ %114, %104 ], [ %123, %122 ]
  %.1 = phi %struct.CPpmd_State* [ %43, %104 ], [ %117, %122 ]
  %116 = bitcast [32 x i64]* %2 to i8*
  %117 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.1, i64 -1
  %118 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %117, i64 0, i32 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %115
  %123 = add i32 %.14, -1
  %.not30 = icmp eq i32 %123, 0
  br i1 %.not30, label %124, label %115, !llvm.loop !8

124:                                              ; preds = %122
  br label %249

125:                                              ; preds = %1
  %126 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %127 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %126, align 8
  %128 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %127, i64 0, i32 2
  %129 = bitcast i16* %128 to %struct.CPpmd_State*
  %130 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %129, i64 0, i32 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i64
  %133 = add nsw i64 %132, -1
  %134 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 27, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %140 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %139, align 8
  %141 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %140, i64 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  %145 = load i8, i8* %144, align 4
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 26, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = add i32 %151, %149
  %153 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %154 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %153, align 8
  %155 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %154, i64 0, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add i32 %152, %157
  %159 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = lshr i32 %160, 26
  %162 = and i32 %161, 32
  %163 = add i32 %158, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 30, i64 %136, i64 %164
  %166 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %169 = load i32, i32* %168, align 8
  %170 = lshr i32 %169, 14
  store i32 %170, i32* %168, align 8
  %171 = udiv i32 %167, %170
  %172 = load i16, i16* %165, align 2
  %173 = zext i16 %172 to i32
  %174 = icmp ult i32 %171, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %125
  %176 = load i16, i16* %165, align 2
  %177 = zext i16 %176 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef 0, i32 noundef %177)
  %178 = load i16, i16* %165, align 2
  %179 = zext i16 %178 to i32
  %180 = add nuw nsw i32 %179, 128
  %181 = zext i16 %178 to i32
  %182 = add nuw nsw i32 %181, 32
  %183 = lshr i32 %182, 7
  %184 = sub nsw i32 %180, %183
  %185 = trunc i32 %184 to i16
  store i16 %185, i16* %165, align 2
  %186 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %187 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %186, align 8
  %188 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %187, i64 0, i32 2
  %189 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  %190 = bitcast %struct.CPpmd_State** %189 to i16**
  store i16* %188, i16** %190, align 8
  %191 = bitcast i16* %188 to i8*
  %192 = load i8, i8* %191, align 1
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef %0) #3
  %193 = zext i8 %192 to i32
  br label %387

194:                                              ; preds = %125
  %195 = load i16, i16* %165, align 2
  %196 = zext i16 %195 to i32
  %197 = zext i16 %195 to i32
  %198 = sub nsw i32 16384, %197
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %196, i32 noundef %198)
  %199 = load i16, i16* %165, align 2
  %200 = zext i16 %199 to i32
  %201 = add nuw nsw i32 %200, 32
  %202 = lshr i32 %201, 7
  %203 = trunc i32 %202 to i16
  %204 = sub i16 %199, %203
  store i16 %204, i16* %165, align 2
  %205 = lshr i16 %204, 10
  %206 = zext i16 %205 to i64
  %207 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 4
  store i32 %209, i32* %210, align 4
  br label %211

211:                                              ; preds = %237, %194
  %.012 = phi i32 [ 0, %194 ], [ %238, %237 ]
  %212 = icmp ult i32 %.012, 32
  br i1 %212, label %213, label %239

213:                                              ; preds = %211
  %214 = zext i32 %.012 to i64
  %215 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %214
  store i64 -1, i64* %215, align 16
  %216 = or i32 %.012, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %217
  store i64 -1, i64* %218, align 8
  %219 = or i32 %.012, 2
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %220
  store i64 -1, i64* %221, align 16
  %222 = or i32 %.012, 3
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %223
  store i64 -1, i64* %224, align 8
  %225 = or i32 %.012, 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %226
  store i64 -1, i64* %227, align 16
  %228 = or i32 %.012, 5
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %229
  store i64 -1, i64* %230, align 8
  %231 = or i32 %.012, 6
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %232
  store i64 -1, i64* %233, align 16
  %234 = or i32 %.012, 7
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [32 x i64], [32 x i64]* %2, i64 0, i64 %235
  store i64 -1, i64* %236, align 8
  br label %237

237:                                              ; preds = %213
  %238 = add i32 %.012, 8
  br label %211, !llvm.loop !9

239:                                              ; preds = %211
  %240 = bitcast [32 x i64]* %2 to i8*
  %241 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %242 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %241, align 8
  %243 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %242, i64 0, i32 2
  %244 = bitcast i16* %243 to i8*
  %245 = load i8, i8* %244, align 2
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds i8, i8* %240, i64 %246
  store i8 0, i8* %247, align 1
  %248 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 5
  store i32 0, i32* %248, align 8
  br label %249

249:                                              ; preds = %239, %124
  br label %250

250:                                              ; preds = %386, %249
  %251 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %252 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %251, align 8
  %253 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %252, i64 0, i32 0
  %254 = load i8, i8* %253, align 4
  %255 = zext i8 %254 to i32
  br label %256

256:                                              ; preds = %275, %250
  %257 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = add i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %261 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %260, align 8
  %262 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %261, i64 0, i32 4
  %263 = load i32, i32* %262, align 4
  %.not23 = icmp eq i32 %263, 0
  br i1 %.not23, label %264, label %265

264:                                              ; preds = %256
  br label %387

265:                                              ; preds = %256
  %266 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %269 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %268, align 8
  %270 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %269, i64 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %267, i64 %272
  %274 = bitcast %struct.CPpmd8* %0 to i8**
  store i8* %273, i8** %274, align 8
  br label %275

275:                                              ; preds = %265
  %276 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %277 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %276, align 8
  %278 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %277, i64 0, i32 0
  %279 = load i8, i8* %278, align 4
  %280 = icmp eq i8 %279, %254
  br i1 %280, label %256, label %281, !llvm.loop !10

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 11
  %283 = load i8*, i8** %282, align 8
  %284 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %285 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %284, align 8
  %286 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %285, i64 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %283, i64 %288
  %290 = bitcast i8* %289 to %struct.CPpmd_State*
  %291 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 0
  %292 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %291, align 8
  %293 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %292, i64 0, i32 0
  %294 = load i8, i8* %293, align 4
  %295 = zext i8 %294 to i32
  %296 = sub nsw i32 %295, %255
  br label %297

297:                                              ; preds = %313, %281
  %.010 = phi %struct.CPpmd_State* [ %290, %281 ], [ %314, %313 ]
  %.08 = phi i32 [ 0, %281 ], [ %309, %313 ]
  %.05 = phi i32 [ 0, %281 ], [ %312, %313 ]
  %298 = bitcast [32 x i64]* %2 to i8*
  %299 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 0, i32 0
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds i8, i8* %298, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 0, i32 1
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = and i32 %307, %304
  %309 = add i32 %.08, %308
  %310 = zext i32 %.05 to i64
  %311 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %3, i64 0, i64 %310
  store %struct.CPpmd_State* %.010, %struct.CPpmd_State** %311, align 8
  %312 = sub i32 %.05, %304
  br label %313

313:                                              ; preds = %297
  %314 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %.010, i64 1
  %.not24 = icmp eq i32 %312, %296
  br i1 %.not24, label %315, label %297, !llvm.loop !11

315:                                              ; preds = %313
  %316 = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef %0, i32 noundef %255, i32* noundef nonnull %4) #3
  %317 = load i32, i32* %4, align 4
  %318 = add i32 %317, %309
  store i32 %318, i32* %4, align 4
  %319 = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* noundef %0, i32 noundef %318)
  %320 = icmp ult i32 %319, %309
  br i1 %320, label %321, label %363

321:                                              ; preds = %315
  %322 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %3, i64 0, i64 0
  br label %323

323:                                              ; preds = %330, %321
  %.19 = phi i32 [ 0, %321 ], [ %328, %330 ]
  %.01 = phi %struct.CPpmd_State** [ %322, %321 ], [ %331, %330 ]
  %324 = load %struct.CPpmd_State*, %struct.CPpmd_State** %.01, align 8
  %325 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %324, i64 0, i32 1
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = add i32 %.19, %327
  %.not27 = icmp ugt i32 %328, %319
  br i1 %.not27, label %332, label %329

329:                                              ; preds = %323
  br label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %.01, i64 1
  br label %323, !llvm.loop !12

332:                                              ; preds = %323
  %333 = load %struct.CPpmd_State*, %struct.CPpmd_State** %.01, align 8
  %334 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %333, i64 0, i32 1
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = sub i32 %328, %336
  %338 = zext i8 %335 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %337, i32 noundef %338)
  %339 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 1
  %340 = load i8, i8* %339, align 1
  %341 = icmp ult i8 %340, 7
  br i1 %341, label %342, label %358

342:                                              ; preds = %332
  %343 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 2
  %344 = load i8, i8* %343, align 1
  %345 = add i8 %344, -1
  store i8 %345, i8* %343, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 0
  %349 = load i16, i16* %348, align 1
  %350 = shl i16 %349, 1
  store i16 %350, i16* %348, align 1
  %351 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 1
  %352 = load i8, i8* %351, align 1
  %353 = add i8 %352, 1
  store i8 %353, i8* %351, align 1
  %354 = zext i8 %352 to i32
  %355 = shl i32 3, %354
  %356 = trunc i32 %355 to i8
  %357 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 2
  store i8 %356, i8* %357, align 1
  br label %358

358:                                              ; preds = %347, %342, %332
  %359 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 2
  store %struct.CPpmd_State* %333, %struct.CPpmd_State** %359, align 8
  %360 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %333, i64 0, i32 0
  %361 = load i8, i8* %360, align 1
  call void @Ppmd8_Update2(%struct.CPpmd8* noundef %0) #3
  %362 = zext i8 %361 to i32
  br label %387

363:                                              ; preds = %315
  %364 = load i32, i32* %4, align 4
  %.not25 = icmp ult i32 %319, %364
  br i1 %.not25, label %366, label %365

365:                                              ; preds = %363
  br label %387

366:                                              ; preds = %363
  %367 = load i32, i32* %4, align 4
  %368 = sub i32 %367, %309
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %309, i32 noundef %368)
  %369 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 0
  %370 = load i16, i16* %369, align 1
  %371 = load i32, i32* %4, align 4
  %372 = trunc i32 %371 to i16
  %373 = add i16 %370, %372
  %374 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %316, i64 0, i32 0
  store i16 %373, i16* %374, align 1
  br label %375

375:                                              ; preds = %385, %366
  %.16 = phi i32 [ %312, %366 ], [ %377, %385 ]
  %376 = bitcast [32 x i64]* %2 to i8*
  %377 = add i32 %.16, -1
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %3, i64 0, i64 %378
  %380 = load %struct.CPpmd_State*, %struct.CPpmd_State** %379, align 8
  %381 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %380, i64 0, i32 0
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds i8, i8* %376, i64 %383
  store i8 0, i8* %384, align 1
  br label %385

385:                                              ; preds = %375
  %.not26 = icmp eq i32 %377, 0
  br i1 %.not26, label %386, label %375, !llvm.loop !13

386:                                              ; preds = %385
  br label %250

387:                                              ; preds = %365, %358, %264, %175, %68, %49, %26
  %.0 = phi i32 [ %33, %26 ], [ %58, %49 ], [ -2, %68 ], [ %362, %358 ], [ -2, %365 ], [ -1, %264 ], [ %193, %175 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @RangeDec_GetThreshold(%struct.CPpmd8* nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %6 = load i32, i32* %5, align 8
  %7 = udiv i32 %6, %1
  store i32 %7, i32* %5, align 8
  %8 = udiv i32 %4, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeDec_Decode(%struct.CPpmd8* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %5 = load i32, i32* %4, align 8
  %6 = mul i32 %5, %1
  %7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, %6
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %11, %6
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %14 = load i32, i32* %13, align 8
  %15 = mul i32 %14, %2
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %37, %3
  %17 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %18, %20
  %22 = xor i32 %18, %21
  %23 = icmp ult i32 %22, 16777216
  br i1 %23, label %35, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %26, 32768
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 0, %30
  %32 = and i32 %31, 32767
  %33 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %34, %16
  %36 = phi i1 [ true, %16 ], [ %27, %34 ]
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 21, i32 0
  %42 = load %struct.IByteIn*, %struct.IByteIn** %41, align 8
  %43 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %42, i64 0, i32 0
  %44 = load i8 (i8*)*, i8 (i8*)** %43, align 8
  %.cast = bitcast %struct.IByteIn* %42 to i8*
  %45 = call zeroext i8 %44(i8* noundef %.cast) #3
  %46 = zext i8 %45 to i32
  %47 = or i32 %40, %46
  %48 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 19
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 18
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 8
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i64 0, i32 20
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %53, 8
  store i32 %54, i32* %52, align 8
  br label %16, !llvm.loop !14

55:                                               ; preds = %35
  ret void
}

declare dso_local void @Ppmd8_Update1_0(%struct.CPpmd8* noundef) #2

declare dso_local void @Ppmd8_Update1(%struct.CPpmd8* noundef) #2

declare dso_local void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef) #2

declare dso_local %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef, i32 noundef, i32* noundef) #2

declare dso_local void @Ppmd8_Update2(%struct.CPpmd8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
