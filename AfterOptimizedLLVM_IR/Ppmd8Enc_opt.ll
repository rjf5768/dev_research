; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd8Enc.c'
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
define dso_local void @Ppmd8_RangeEnc_FlushData(%struct.CPpmd8* noundef %0) #0 {
  %2 = alloca %struct.CPpmd8*, align 8
  %3 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 21
  %10 = bitcast %union.anon* %9 to %struct.IByteOut**
  %11 = load %struct.IByteOut*, %struct.IByteOut** %10, align 8
  %12 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %11, i32 0, i32 0
  %13 = load void (i8*, i8)*, void (i8*, i8)** %12, align 8
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 21
  %16 = bitcast %union.anon* %15 to %struct.IByteOut**
  %17 = load %struct.IByteOut*, %struct.IByteOut** %16, align 8
  %18 = bitcast %struct.IByteOut* %17 to i8*
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %20 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 20
  %21 = load i32, i32* %20, align 8
  %22 = lshr i32 %21, 24
  %23 = trunc i32 %22 to i8
  call void %13(i8* noundef %18, i8 noundef zeroext %23)
  br label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %28 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 20
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 8
  store i32 %30, i32* %28, align 8
  br label %4, !llvm.loop !4

31:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ppmd8_EncodeSymbol(%struct.CPpmd8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i64], align 16
  %6 = alloca %struct.CPpmd_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca %struct.CPpmd_State*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.CPpmd_See*, align 8
  %15 = alloca %struct.CPpmd_State*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %0, %struct.CPpmd8** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %23 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %22, i32 0, i32 0
  %24 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %23, align 8
  %25 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %197

29:                                               ; preds = %2
  %30 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %31 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %30, i32 0, i32 11
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %34 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %33, i32 0, i32 0
  %35 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %34, align 8
  %36 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = bitcast i8* %39 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %40, %struct.CPpmd_State** %6, align 8
  %41 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %42 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %29
  %48 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %49 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %50 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %54 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %53, i32 0, i32 0
  %55 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %54, align 8
  %56 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %48, i32 noundef 0, i32 noundef %52, i32 noundef %58)
  %59 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %60 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %61 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %60, i32 0, i32 2
  store %struct.CPpmd_State* %59, %struct.CPpmd_State** %61, align 8
  %62 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update1_0(%struct.CPpmd8* noundef %62)
  br label %549

63:                                               ; preds = %29
  %64 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %65 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %64, i32 0, i32 5
  store i32 0, i32* %65, align 8
  %66 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %67 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %71 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %70, i32 0, i32 0
  %72 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %71, align 8
  %73 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 4
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %108, %63
  %77 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %78 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %77, i32 1
  store %struct.CPpmd_State* %78, %struct.CPpmd_State** %6, align 8
  %79 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %88 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %87, i32 0, i32 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %92 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %91, i32 0, i32 0
  %93 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %92, align 8
  %94 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %93, i32 0, i32 2
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %85, i32 noundef %86, i32 noundef %90, i32 noundef %96)
  %97 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %98 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %99 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %98, i32 0, i32 2
  store %struct.CPpmd_State* %97, %struct.CPpmd_State** %99, align 8
  %100 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update1(%struct.CPpmd8* noundef %100)
  br label %549

101:                                              ; preds = %76
  %102 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %103 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, -1
  store i32 %110, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %76, label %112, !llvm.loop !6

112:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %150, %112
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %115, 32
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, 0
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %120
  store i64 -1, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %124
  store i64 -1, i64* %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 2
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %128
  store i64 -1, i64* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 3
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %132
  store i64 -1, i64* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %136
  store i64 -1, i64* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, 5
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %140
  store i64 -1, i64* %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, 6
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %144
  store i64 -1, i64* %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 7
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %148
  store i64 -1, i64* %149, align 8
  br label %150

150:                                              ; preds = %117
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 8
  store i32 %152, i32* %9, align 4
  br label %113, !llvm.loop !7

153:                                              ; preds = %113
  %154 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %155 = bitcast i64* %154 to i8*
  %156 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %157 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  store i8 0, i8* %160, align 1
  %161 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %162 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %161, i32 0, i32 0
  %163 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %162, align 8
  %164 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %163, i32 0, i32 0
  %165 = load i8, i8* %164, align 4
  %166 = zext i8 %165 to i32
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %176, %153
  %168 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %169 = bitcast i64* %168 to i8*
  %170 = load %struct.CPpmd_State*, %struct.CPpmd_State** %6, align 8
  %171 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %170, i32 -1
  store %struct.CPpmd_State* %171, %struct.CPpmd_State** %6, align 8
  %172 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds i8, i8* %169, i64 %174
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, -1
  store i32 %178, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %167, label %180, !llvm.loop !8

180:                                              ; preds = %176
  %181 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %184 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %183, i32 0, i32 0
  %185 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %184, align 8
  %186 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %185, i32 0, i32 2
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = load i32, i32* %7, align 4
  %190 = sub i32 %188, %189
  %191 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %192 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %191, i32 0, i32 0
  %193 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %192, align 8
  %194 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %193, i32 0, i32 2
  %195 = load i16, i16* %194, align 2
  %196 = zext i16 %195 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %181, i32 noundef %182, i32 noundef %190, i32 noundef %196)
  br label %363

197:                                              ; preds = %2
  %198 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %199 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %198, i32 0, i32 30
  %200 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %201 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %200, i32 0, i32 27
  %202 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %203 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %202, i32 0, i32 0
  %204 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %203, align 8
  %205 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %204, i32 0, i32 2
  %206 = bitcast i16* %205 to %struct.CPpmd_State*
  %207 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %206, i32 0, i32 1
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [260 x i8], [260 x i8]* %201, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds [25 x [64 x i16]], [25 x [64 x i16]]* %199, i64 0, i64 %214
  %216 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %217 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %216, i32 0, i32 26
  %218 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %219 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %218, i32 0, i32 11
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %222 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %221, i32 0, i32 0
  %223 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %222, align 8
  %224 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %220, i64 %226
  %228 = bitcast i8* %227 to %struct.CPpmd8_Context_*
  %229 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %228, i32 0, i32 0
  %230 = load i8, i8* %229, align 4
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %217, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %236 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = add i32 %234, %237
  %239 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %240 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %239, i32 0, i32 0
  %241 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %240, align 8
  %242 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %241, i32 0, i32 1
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = add i32 %238, %244
  %246 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %247 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = ashr i32 %248, 26
  %250 = and i32 %249, 32
  %251 = add i32 %245, %250
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [64 x i16], [64 x i16]* %215, i64 0, i64 %252
  store i16* %253, i16** %10, align 8
  %254 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %255 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %254, i32 0, i32 0
  %256 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %255, align 8
  %257 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %256, i32 0, i32 2
  %258 = bitcast i16* %257 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %258, %struct.CPpmd_State** %11, align 8
  %259 = load %struct.CPpmd_State*, %struct.CPpmd_State** %11, align 8
  %260 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %259, i32 0, i32 0
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = load i32, i32* %4, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %286

265:                                              ; preds = %197
  %266 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %267 = load i16*, i16** %10, align 8
  %268 = load i16, i16* %267, align 2
  %269 = zext i16 %268 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd8* noundef %266, i32 noundef %269)
  %270 = load i16*, i16** %10, align 8
  %271 = load i16, i16* %270, align 2
  %272 = zext i16 %271 to i32
  %273 = add nsw i32 %272, 128
  %274 = load i16*, i16** %10, align 8
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = add nsw i32 %276, 32
  %278 = ashr i32 %277, 7
  %279 = sub nsw i32 %273, %278
  %280 = trunc i32 %279 to i16
  %281 = load i16*, i16** %10, align 8
  store i16 %280, i16* %281, align 2
  %282 = load %struct.CPpmd_State*, %struct.CPpmd_State** %11, align 8
  %283 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %284 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %283, i32 0, i32 2
  store %struct.CPpmd_State* %282, %struct.CPpmd_State** %284, align 8
  %285 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef %285)
  br label %549

286:                                              ; preds = %197
  %287 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %288 = load i16*, i16** %10, align 8
  %289 = load i16, i16* %288, align 2
  %290 = zext i16 %289 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd8* noundef %287, i32 noundef %290)
  %291 = load i16*, i16** %10, align 8
  %292 = load i16, i16* %291, align 2
  %293 = zext i16 %292 to i32
  %294 = load i16*, i16** %10, align 8
  %295 = load i16, i16* %294, align 2
  %296 = zext i16 %295 to i32
  %297 = add nsw i32 %296, 32
  %298 = ashr i32 %297, 7
  %299 = sub nsw i32 %293, %298
  %300 = trunc i32 %299 to i16
  %301 = load i16*, i16** %10, align 8
  store i16 %300, i16* %301, align 2
  %302 = load i16*, i16** %10, align 8
  %303 = load i16, i16* %302, align 2
  %304 = zext i16 %303 to i32
  %305 = ashr i32 %304, 10
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %311 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 4
  store i32 0, i32* %12, align 4
  br label %312

312:                                              ; preds = %349, %286
  %313 = load i32, i32* %12, align 4
  %314 = zext i32 %313 to i64
  %315 = icmp ult i64 %314, 32
  br i1 %315, label %316, label %352

316:                                              ; preds = %312
  %317 = load i32, i32* %12, align 4
  %318 = add i32 %317, 0
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %319
  store i64 -1, i64* %320, align 8
  %321 = load i32, i32* %12, align 4
  %322 = add i32 %321, 1
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %323
  store i64 -1, i64* %324, align 8
  %325 = load i32, i32* %12, align 4
  %326 = add i32 %325, 2
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %327
  store i64 -1, i64* %328, align 8
  %329 = load i32, i32* %12, align 4
  %330 = add i32 %329, 3
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %331
  store i64 -1, i64* %332, align 8
  %333 = load i32, i32* %12, align 4
  %334 = add i32 %333, 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %335
  store i64 -1, i64* %336, align 8
  %337 = load i32, i32* %12, align 4
  %338 = add i32 %337, 5
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %339
  store i64 -1, i64* %340, align 8
  %341 = load i32, i32* %12, align 4
  %342 = add i32 %341, 6
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %343
  store i64 -1, i64* %344, align 8
  %345 = load i32, i32* %12, align 4
  %346 = add i32 %345, 7
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %347
  store i64 -1, i64* %348, align 8
  br label %349

349:                                              ; preds = %316
  %350 = load i32, i32* %12, align 4
  %351 = add i32 %350, 8
  store i32 %351, i32* %12, align 4
  br label %312, !llvm.loop !9

352:                                              ; preds = %312
  %353 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %354 = bitcast i64* %353 to i8*
  %355 = load %struct.CPpmd_State*, %struct.CPpmd_State** %11, align 8
  %356 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %355, i32 0, i32 0
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i64
  %359 = getelementptr inbounds i8, i8* %354, i64 %358
  store i8 0, i8* %359, align 1
  %360 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %361 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %360, i32 0, i32 5
  store i32 0, i32* %361, align 8
  br label %362

362:                                              ; preds = %352
  br label %363

363:                                              ; preds = %362, %180
  br label %364

364:                                              ; preds = %531, %363
  %365 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %366 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %365, i32 0, i32 0
  %367 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %366, align 8
  %368 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %367, i32 0, i32 0
  %369 = load i8, i8* %368, align 4
  %370 = zext i8 %369 to i32
  store i32 %370, i32* %18, align 4
  br label %371

371:                                              ; preds = %397, %364
  %372 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %373 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = add i32 %374, 1
  store i32 %375, i32* %373, align 8
  %376 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %377 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %376, i32 0, i32 0
  %378 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %377, align 8
  %379 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %371
  br label %549

383:                                              ; preds = %371
  %384 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %385 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %384, i32 0, i32 11
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %388 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %387, i32 0, i32 0
  %389 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %388, align 8
  %390 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %386, i64 %392
  %394 = bitcast i8* %393 to %struct.CPpmd8_Context_*
  %395 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %396 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %395, i32 0, i32 0
  store %struct.CPpmd8_Context_* %394, %struct.CPpmd8_Context_** %396, align 8
  br label %397

397:                                              ; preds = %383
  %398 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %399 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %398, i32 0, i32 0
  %400 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %399, align 8
  %401 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %400, i32 0, i32 0
  %402 = load i8, i8* %401, align 4
  %403 = zext i8 %402 to i32
  %404 = load i32, i32* %18, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %371, label %406, !llvm.loop !10

406:                                              ; preds = %397
  %407 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %408 = load i32, i32* %18, align 4
  %409 = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef %407, i32 noundef %408, i32* noundef %13)
  store %struct.CPpmd_See* %409, %struct.CPpmd_See** %14, align 8
  %410 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %411 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %410, i32 0, i32 11
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %414 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %413, i32 0, i32 0
  %415 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %414, align 8
  %416 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %412, i64 %418
  %420 = bitcast i8* %419 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %420, %struct.CPpmd_State** %15, align 8
  store i32 0, i32* %16, align 4
  %421 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %422 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %421, i32 0, i32 0
  %423 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %422, align 8
  %424 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %423, i32 0, i32 0
  %425 = load i8, i8* %424, align 4
  %426 = zext i8 %425 to i32
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %17, align 4
  br label %428

428:                                              ; preds = %527, %406
  %429 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %430 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %429, i32 0, i32 0
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  store i32 %432, i32* %19, align 4
  %433 = load i32, i32* %19, align 4
  %434 = load i32, i32* %4, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %505

436:                                              ; preds = %428
  %437 = load i32, i32* %16, align 4
  store i32 %437, i32* %20, align 4
  %438 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  store %struct.CPpmd_State* %438, %struct.CPpmd_State** %21, align 8
  br label %439

439:                                              ; preds = %458, %436
  %440 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %441 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %440, i32 0, i32 1
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %445 = bitcast i64* %444 to i8*
  %446 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %447 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %446, i32 0, i32 0
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i64
  %450 = getelementptr inbounds i8, i8* %445, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = and i32 %443, %452
  %454 = load i32, i32* %16, align 4
  %455 = add i32 %454, %453
  store i32 %455, i32* %16, align 4
  %456 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %457 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %456, i32 1
  store %struct.CPpmd_State* %457, %struct.CPpmd_State** %15, align 8
  br label %458

458:                                              ; preds = %439
  %459 = load i32, i32* %17, align 4
  %460 = add i32 %459, -1
  store i32 %460, i32* %17, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %439, label %462, !llvm.loop !11

462:                                              ; preds = %458
  %463 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %464 = load i32, i32* %20, align 4
  %465 = load %struct.CPpmd_State*, %struct.CPpmd_State** %21, align 8
  %466 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %465, i32 0, i32 1
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = load i32, i32* %16, align 4
  %470 = load i32, i32* %13, align 4
  %471 = add i32 %469, %470
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %463, i32 noundef %464, i32 noundef %468, i32 noundef %471)
  %472 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %473 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %472, i32 0, i32 1
  %474 = load i8, i8* %473, align 1
  %475 = zext i8 %474 to i32
  %476 = icmp slt i32 %475, 7
  br i1 %476, label %477, label %500

477:                                              ; preds = %462
  %478 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %479 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %478, i32 0, i32 2
  %480 = load i8, i8* %479, align 1
  %481 = add i8 %480, -1
  store i8 %481, i8* %479, align 1
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %500

484:                                              ; preds = %477
  %485 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %486 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %485, i32 0, i32 0
  %487 = load i16, i16* %486, align 1
  %488 = zext i16 %487 to i32
  %489 = shl i32 %488, 1
  %490 = trunc i32 %489 to i16
  store i16 %490, i16* %486, align 1
  %491 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %492 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %491, i32 0, i32 1
  %493 = load i8, i8* %492, align 1
  %494 = add i8 %493, 1
  store i8 %494, i8* %492, align 1
  %495 = zext i8 %493 to i32
  %496 = shl i32 3, %495
  %497 = trunc i32 %496 to i8
  %498 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %499 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %498, i32 0, i32 2
  store i8 %497, i8* %499, align 1
  br label %500

500:                                              ; preds = %484, %477, %462
  %501 = load %struct.CPpmd_State*, %struct.CPpmd_State** %21, align 8
  %502 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %503 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %502, i32 0, i32 2
  store %struct.CPpmd_State* %501, %struct.CPpmd_State** %503, align 8
  %504 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update2(%struct.CPpmd8* noundef %504)
  br label %549

505:                                              ; preds = %428
  %506 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %507 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %506, i32 0, i32 1
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i32
  %510 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %511 = bitcast i64* %510 to i8*
  %512 = load i32, i32* %19, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %511, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = sext i8 %515 to i32
  %517 = and i32 %509, %516
  %518 = load i32, i32* %16, align 4
  %519 = add i32 %518, %517
  store i32 %519, i32* %16, align 4
  %520 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %521 = bitcast i64* %520 to i8*
  %522 = load i32, i32* %19, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  store i8 0, i8* %524, align 1
  %525 = load %struct.CPpmd_State*, %struct.CPpmd_State** %15, align 8
  %526 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %525, i32 1
  store %struct.CPpmd_State* %526, %struct.CPpmd_State** %15, align 8
  br label %527

527:                                              ; preds = %505
  %528 = load i32, i32* %17, align 4
  %529 = add i32 %528, -1
  store i32 %529, i32* %17, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %428, label %531, !llvm.loop !12

531:                                              ; preds = %527
  %532 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %533 = load i32, i32* %16, align 4
  %534 = load i32, i32* %13, align 4
  %535 = load i32, i32* %16, align 4
  %536 = load i32, i32* %13, align 4
  %537 = add i32 %535, %536
  call void @RangeEnc_Encode(%struct.CPpmd8* noundef %532, i32 noundef %533, i32 noundef %534, i32 noundef %537)
  %538 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %539 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %538, i32 0, i32 0
  %540 = load i16, i16* %539, align 1
  %541 = zext i16 %540 to i32
  %542 = load i32, i32* %16, align 4
  %543 = add i32 %541, %542
  %544 = load i32, i32* %13, align 4
  %545 = add i32 %543, %544
  %546 = trunc i32 %545 to i16
  %547 = load %struct.CPpmd_See*, %struct.CPpmd_See** %14, align 8
  %548 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %547, i32 0, i32 0
  store i16 %546, i16* %548, align 1
  br label %364

549:                                              ; preds = %500, %382, %265, %84, %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.CPpmd8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %5, align 8
  %12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 8
  %14 = udiv i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = mul i32 %9, %14
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %5, align 8
  %17 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 20
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %5, align 8
  %22 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 8
  %24 = mul i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.CPpmd8*, %struct.CPpmd8** %5, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %25)
  ret void
}

declare dso_local void @Ppmd8_Update1_0(%struct.CPpmd8* noundef) #1

declare dso_local void @Ppmd8_Update1(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd8*, align 8
  %4 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 14
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = mul i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %14)
  ret void
}

declare dso_local void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd8*, align 8
  %4 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 18
  %8 = load i32, i32* %7, align 8
  %9 = lshr i32 %8, 14
  store i32 %9, i32* %7, align 8
  %10 = mul i32 %5, %9
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 8
  %14 = add i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub i32 16384, %15
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %18 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = mul i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* noundef %21)
  ret void
}

declare dso_local %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef, i32 noundef, i32* noundef) #1

declare dso_local void @Ppmd8_Update2(%struct.CPpmd8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @RangeEnc_Normalize(%struct.CPpmd8* noundef %0) #0 {
  %2 = alloca %struct.CPpmd8*, align 8
  store %struct.CPpmd8* %0, %struct.CPpmd8** %2, align 8
  br label %3

3:                                                ; preds = %33, %1
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 20
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 20
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = add i32 %9, %12
  %14 = xor i32 %6, %13
  %15 = icmp ult i32 %14, 16777216
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %18 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %19, 32768
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %23 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %22, i32 0, i32 20
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 0, %24
  %26 = and i32 %25, 32767
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %28 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = phi i1 [ false, %16 ], [ true, %21 ]
  br label %31

31:                                               ; preds = %29, %3
  %32 = phi i1 [ true, %3 ], [ %30, %29 ]
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %35 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %34, i32 0, i32 21
  %36 = bitcast %union.anon* %35 to %struct.IByteOut**
  %37 = load %struct.IByteOut*, %struct.IByteOut** %36, align 8
  %38 = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %37, i32 0, i32 0
  %39 = load void (i8*, i8)*, void (i8*, i8)** %38, align 8
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %41 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 21
  %42 = bitcast %union.anon* %41 to %struct.IByteOut**
  %43 = load %struct.IByteOut*, %struct.IByteOut** %42, align 8
  %44 = bitcast %struct.IByteOut* %43 to i8*
  %45 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %46 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %45, i32 0, i32 20
  %47 = load i32, i32* %46, align 8
  %48 = lshr i32 %47, 24
  %49 = trunc i32 %48 to i8
  call void %39(i8* noundef %44, i8 noundef zeroext %49)
  %50 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %51 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %50, i32 0, i32 18
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 8
  store i32 %53, i32* %51, align 8
  %54 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %55 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %54, i32 0, i32 20
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 8
  store i32 %57, i32* %55, align 8
  br label %3, !llvm.loop !13

58:                                               ; preds = %31
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
