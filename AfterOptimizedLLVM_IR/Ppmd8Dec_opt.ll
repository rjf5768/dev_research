; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Ppmd8Dec.c'
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
define dso_local i32 @Ppmd8_RangeDec_Init(%struct.CPpmd8* noundef %0) #0 {
  %2 = alloca %struct.CPpmd8*, align 8
  %3 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %2, align 8
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 20
  store i32 0, i32* %5, align 8
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 18
  store i32 -1, i32* %7, align 8
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 21
  %20 = bitcast %union.anon* %19 to %struct.IByteIn**
  %21 = load %struct.IByteIn*, %struct.IByteIn** %20, align 8
  %22 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %21, i32 0, i32 0
  %23 = load i8 (i8*)*, i8 (i8*)** %22, align 8
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 21
  %26 = bitcast %union.anon* %25 to %struct.IByteIn**
  %27 = load %struct.IByteIn*, %struct.IByteIn** %26, align 8
  %28 = bitcast %struct.IByteIn* %27 to i8*
  %29 = call zeroext i8 %23(i8* noundef %28)
  %30 = zext i8 %29 to i32
  %31 = or i32 %17, %30
  %32 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %33 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10, !llvm.loop !4

37:                                               ; preds = %10
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %2, align 8
  %39 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %38, i32 0, i32 19
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %40, -1
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Ppmd8_DecodeSymbol(%struct.CPpmd8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CPpmd8*, align 8
  %4 = alloca [32 x i64], align 16
  %5 = alloca %struct.CPpmd_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca [256 x %struct.CPpmd_State*], align 16
  %16 = alloca %struct.CPpmd_State*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.CPpmd_See*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca %struct.CPpmd_State**, align 8
  store %struct.CPpmd8* %0, %struct.CPpmd8** %3, align 8
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %28 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 0
  %29 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %28, align 8
  %30 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %208

34:                                               ; preds = %1
  %35 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %36 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %35, i32 0, i32 11
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %39 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %38, i32 0, i32 0
  %40 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %39, align 8
  %41 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %37, i64 %43
  %45 = bitcast i8* %44 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %45, %struct.CPpmd_State** %5, align 8
  %46 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %47 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %48 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %47, i32 0, i32 0
  %49 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %48, align 8
  %50 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %49, i32 0, i32 2
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* noundef %46, i32 noundef %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %55 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = icmp ult i32 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %34
  %60 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %61 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %62 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %60, i32 noundef 0, i32 noundef %64)
  %65 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %66 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %67 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %66, i32 0, i32 2
  store %struct.CPpmd_State* %65, %struct.CPpmd_State** %67, align 8
  %68 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %69 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %9, align 1
  %71 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update1_0(%struct.CPpmd8* noundef %71)
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %600

74:                                               ; preds = %34
  %75 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %76 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  %77 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %78 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %77, i32 0, i32 0
  %79 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %78, align 8
  %80 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 4
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %115, %74
  %84 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %85 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %84, i32 1
  store %struct.CPpmd_State* %85, %struct.CPpmd_State** %5, align 8
  %86 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %85, i32 0, i32 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %83
  %94 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %97 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %96, i32 0, i32 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sub i32 %95, %99
  %101 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %102 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %94, i32 noundef %100, i32 noundef %104)
  %105 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %106 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %107 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %106, i32 0, i32 2
  store %struct.CPpmd_State* %105, %struct.CPpmd_State** %107, align 8
  %108 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %109 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %10, align 1
  %111 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update1(%struct.CPpmd8* noundef %111)
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %600

114:                                              ; preds = %83
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, -1
  store i32 %117, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %83, label %119, !llvm.loop !6

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %122 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %121, i32 0, i32 0
  %123 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %122, align 8
  %124 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %123, i32 0, i32 2
  %125 = load i16, i16* %124, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp uge i32 %120, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i32 -2, i32* %2, align 4
  br label %600

129:                                              ; preds = %119
  %130 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %133 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %132, i32 0, i32 0
  %134 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %133, align 8
  %135 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %134, i32 0, i32 2
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = load i32, i32* %8, align 4
  %139 = sub i32 %137, %138
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %130, i32 noundef %131, i32 noundef %139)
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %177, %129
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = icmp ult i64 %142, 32
  br i1 %143, label %144, label %180

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 0
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %147
  store i64 -1, i64* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, 1
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %151
  store i64 -1, i64* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = add i32 %153, 2
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %155
  store i64 -1, i64* %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add i32 %157, 3
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %159
  store i64 -1, i64* %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = add i32 %161, 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %163
  store i64 -1, i64* %164, align 8
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %165, 5
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %167
  store i64 -1, i64* %168, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add i32 %169, 6
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %171
  store i64 -1, i64* %172, align 8
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 7
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %175
  store i64 -1, i64* %176, align 8
  br label %177

177:                                              ; preds = %144
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 8
  store i32 %179, i32* %11, align 4
  br label %140, !llvm.loop !7

180:                                              ; preds = %140
  %181 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %182 = bitcast i64* %181 to i8*
  %183 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %184 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %183, i32 0, i32 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %189 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %188, i32 0, i32 0
  %190 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %189, align 8
  %191 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %190, i32 0, i32 0
  %192 = load i8, i8* %191, align 4
  %193 = zext i8 %192 to i32
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %203, %180
  %195 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %196 = bitcast i64* %195 to i8*
  %197 = load %struct.CPpmd_State*, %struct.CPpmd_State** %5, align 8
  %198 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %197, i32 -1
  store %struct.CPpmd_State* %198, %struct.CPpmd_State** %5, align 8
  %199 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds i8, i8* %196, i64 %201
  store i8 0, i8* %202, align 1
  br label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %6, align 4
  %205 = add i32 %204, -1
  store i32 %205, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %194, label %207, !llvm.loop !8

207:                                              ; preds = %203
  br label %390

208:                                              ; preds = %1
  %209 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %210 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %209, i32 0, i32 30
  %211 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %212 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %211, i32 0, i32 27
  %213 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %214 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %213, i32 0, i32 0
  %215 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %214, align 8
  %216 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %215, i32 0, i32 2
  %217 = bitcast i16* %216 to %struct.CPpmd_State*
  %218 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %217, i32 0, i32 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [260 x i8], [260 x i8]* %212, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds [25 x [64 x i16]], [25 x [64 x i16]]* %210, i64 0, i64 %225
  %227 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %228 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %227, i32 0, i32 26
  %229 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %230 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %229, i32 0, i32 11
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %233 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %232, i32 0, i32 0
  %234 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %233, align 8
  %235 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %231, i64 %237
  %239 = bitcast i8* %238 to %struct.CPpmd8_Context_*
  %240 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %239, i32 0, i32 0
  %241 = load i8, i8* %240, align 4
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %228, i64 0, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %247 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = add i32 %245, %248
  %250 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %251 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %250, i32 0, i32 0
  %252 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %251, align 8
  %253 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %252, i32 0, i32 1
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = add i32 %249, %255
  %257 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %258 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = ashr i32 %259, 26
  %261 = and i32 %260, 32
  %262 = add i32 %256, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [64 x i16], [64 x i16]* %226, i64 0, i64 %263
  store i16* %264, i16** %12, align 8
  %265 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %266 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %265, i32 0, i32 19
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %269 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %268, i32 0, i32 18
  %270 = load i32, i32* %269, align 8
  %271 = lshr i32 %270, 14
  store i32 %271, i32* %269, align 8
  %272 = udiv i32 %267, %271
  %273 = load i16*, i16** %12, align 8
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = icmp ult i32 %272, %275
  br i1 %276, label %277, label %306

277:                                              ; preds = %208
  %278 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %279 = load i16*, i16** %12, align 8
  %280 = load i16, i16* %279, align 2
  %281 = zext i16 %280 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %278, i32 noundef 0, i32 noundef %281)
  %282 = load i16*, i16** %12, align 8
  %283 = load i16, i16* %282, align 2
  %284 = zext i16 %283 to i32
  %285 = add nsw i32 %284, 128
  %286 = load i16*, i16** %12, align 8
  %287 = load i16, i16* %286, align 2
  %288 = zext i16 %287 to i32
  %289 = add nsw i32 %288, 32
  %290 = ashr i32 %289, 7
  %291 = sub nsw i32 %285, %290
  %292 = trunc i32 %291 to i16
  %293 = load i16*, i16** %12, align 8
  store i16 %292, i16* %293, align 2
  %294 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %295 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %294, i32 0, i32 0
  %296 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %295, align 8
  %297 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %296, i32 0, i32 2
  %298 = bitcast i16* %297 to %struct.CPpmd_State*
  %299 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %300 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %299, i32 0, i32 2
  store %struct.CPpmd_State* %298, %struct.CPpmd_State** %300, align 8
  %301 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %298, i32 0, i32 0
  %302 = load i8, i8* %301, align 1
  store i8 %302, i8* %13, align 1
  %303 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef %303)
  %304 = load i8, i8* %13, align 1
  %305 = zext i8 %304 to i32
  store i32 %305, i32* %2, align 4
  br label %600

306:                                              ; preds = %208
  %307 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %308 = load i16*, i16** %12, align 8
  %309 = load i16, i16* %308, align 2
  %310 = zext i16 %309 to i32
  %311 = load i16*, i16** %12, align 8
  %312 = load i16, i16* %311, align 2
  %313 = zext i16 %312 to i32
  %314 = sub nsw i32 16384, %313
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %307, i32 noundef %310, i32 noundef %314)
  %315 = load i16*, i16** %12, align 8
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = load i16*, i16** %12, align 8
  %319 = load i16, i16* %318, align 2
  %320 = zext i16 %319 to i32
  %321 = add nsw i32 %320, 32
  %322 = ashr i32 %321, 7
  %323 = sub nsw i32 %317, %322
  %324 = trunc i32 %323 to i16
  %325 = load i16*, i16** %12, align 8
  store i16 %324, i16* %325, align 2
  %326 = load i16*, i16** %12, align 8
  %327 = load i16, i16* %326, align 2
  %328 = zext i16 %327 to i32
  %329 = ashr i32 %328, 10
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i64 0, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %335 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %334, i32 0, i32 4
  store i32 %333, i32* %335, align 4
  store i32 0, i32* %14, align 4
  br label %336

336:                                              ; preds = %373, %306
  %337 = load i32, i32* %14, align 4
  %338 = zext i32 %337 to i64
  %339 = icmp ult i64 %338, 32
  br i1 %339, label %340, label %376

340:                                              ; preds = %336
  %341 = load i32, i32* %14, align 4
  %342 = add i32 %341, 0
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %343
  store i64 -1, i64* %344, align 8
  %345 = load i32, i32* %14, align 4
  %346 = add i32 %345, 1
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %347
  store i64 -1, i64* %348, align 8
  %349 = load i32, i32* %14, align 4
  %350 = add i32 %349, 2
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %351
  store i64 -1, i64* %352, align 8
  %353 = load i32, i32* %14, align 4
  %354 = add i32 %353, 3
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %355
  store i64 -1, i64* %356, align 8
  %357 = load i32, i32* %14, align 4
  %358 = add i32 %357, 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %359
  store i64 -1, i64* %360, align 8
  %361 = load i32, i32* %14, align 4
  %362 = add i32 %361, 5
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %363
  store i64 -1, i64* %364, align 8
  %365 = load i32, i32* %14, align 4
  %366 = add i32 %365, 6
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %367
  store i64 -1, i64* %368, align 8
  %369 = load i32, i32* %14, align 4
  %370 = add i32 %369, 7
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 %371
  store i64 -1, i64* %372, align 8
  br label %373

373:                                              ; preds = %340
  %374 = load i32, i32* %14, align 4
  %375 = add i32 %374, 8
  store i32 %375, i32* %14, align 4
  br label %336, !llvm.loop !9

376:                                              ; preds = %336
  %377 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %378 = bitcast i64* %377 to i8*
  %379 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %380 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %379, i32 0, i32 0
  %381 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %380, align 8
  %382 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %381, i32 0, i32 2
  %383 = bitcast i16* %382 to %struct.CPpmd_State*
  %384 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %383, i32 0, i32 0
  %385 = load i8, i8* %384, align 2
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds i8, i8* %378, i64 %386
  store i8 0, i8* %387, align 1
  %388 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %389 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %388, i32 0, i32 5
  store i32 0, i32* %389, align 8
  br label %390

390:                                              ; preds = %376, %207
  br label %391

391:                                              ; preds = %599, %390
  %392 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %393 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %392, i32 0, i32 0
  %394 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %393, align 8
  %395 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %394, i32 0, i32 0
  %396 = load i8, i8* %395, align 4
  %397 = zext i8 %396 to i32
  store i32 %397, i32* %23, align 4
  br label %398

398:                                              ; preds = %424, %391
  %399 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %400 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = add i32 %401, 1
  store i32 %402, i32* %400, align 8
  %403 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %404 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %403, i32 0, i32 0
  %405 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %404, align 8
  %406 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %398
  store i32 -1, i32* %2, align 4
  br label %600

410:                                              ; preds = %398
  %411 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %412 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %411, i32 0, i32 11
  %413 = load i8*, i8** %412, align 8
  %414 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %415 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %414, i32 0, i32 0
  %416 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %415, align 8
  %417 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %413, i64 %419
  %421 = bitcast i8* %420 to %struct.CPpmd8_Context_*
  %422 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %423 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %422, i32 0, i32 0
  store %struct.CPpmd8_Context_* %421, %struct.CPpmd8_Context_** %423, align 8
  br label %424

424:                                              ; preds = %410
  %425 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %426 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %425, i32 0, i32 0
  %427 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %426, align 8
  %428 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %427, i32 0, i32 0
  %429 = load i8, i8* %428, align 4
  %430 = zext i8 %429 to i32
  %431 = load i32, i32* %23, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %398, label %433, !llvm.loop !10

433:                                              ; preds = %424
  store i32 0, i32* %19, align 4
  %434 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %435 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %434, i32 0, i32 11
  %436 = load i8*, i8** %435, align 8
  %437 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %438 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %437, i32 0, i32 0
  %439 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %438, align 8
  %440 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds i8, i8* %436, i64 %442
  %444 = bitcast i8* %443 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %444, %struct.CPpmd_State** %16, align 8
  store i32 0, i32* %21, align 4
  %445 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %446 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %445, i32 0, i32 0
  %447 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %446, align 8
  %448 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %447, i32 0, i32 0
  %449 = load i8, i8* %448, align 4
  %450 = zext i8 %449 to i32
  %451 = load i32, i32* %23, align 4
  %452 = sub i32 %450, %451
  store i32 %452, i32* %22, align 4
  br label %453

453:                                              ; preds = %479, %433
  %454 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %455 = bitcast i64* %454 to i8*
  %456 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %457 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %456, i32 0, i32 0
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i64
  %460 = getelementptr inbounds i8, i8* %455, i64 %459
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  store i32 %462, i32* %24, align 4
  %463 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %464 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %463, i32 0, i32 1
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i32
  %467 = load i32, i32* %24, align 4
  %468 = and i32 %466, %467
  %469 = load i32, i32* %19, align 4
  %470 = add i32 %469, %468
  store i32 %470, i32* %19, align 4
  %471 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %472 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %471, i32 1
  store %struct.CPpmd_State* %472, %struct.CPpmd_State** %16, align 8
  %473 = load i32, i32* %21, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %15, i64 0, i64 %474
  store %struct.CPpmd_State* %471, %struct.CPpmd_State** %475, align 8
  %476 = load i32, i32* %24, align 4
  %477 = load i32, i32* %21, align 4
  %478 = sub i32 %477, %476
  store i32 %478, i32* %21, align 4
  br label %479

479:                                              ; preds = %453
  %480 = load i32, i32* %21, align 4
  %481 = load i32, i32* %22, align 4
  %482 = icmp ne i32 %480, %481
  br i1 %482, label %453, label %483, !llvm.loop !11

483:                                              ; preds = %479
  %484 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %485 = load i32, i32* %23, align 4
  %486 = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef %484, i32 noundef %485, i32* noundef %17)
  store %struct.CPpmd_See* %486, %struct.CPpmd_See** %20, align 8
  %487 = load i32, i32* %19, align 4
  %488 = load i32, i32* %17, align 4
  %489 = add i32 %488, %487
  store i32 %489, i32* %17, align 4
  %490 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %491 = load i32, i32* %17, align 4
  %492 = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* noundef %490, i32 noundef %491)
  store i32 %492, i32* %18, align 4
  %493 = load i32, i32* %18, align 4
  %494 = load i32, i32* %19, align 4
  %495 = icmp ult i32 %493, %494
  br i1 %495, label %496, label %564

496:                                              ; preds = %483
  %497 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %15, i64 0, i64 0
  store %struct.CPpmd_State** %497, %struct.CPpmd_State*** %26, align 8
  store i32 0, i32* %19, align 4
  br label %498

498:                                              ; preds = %509, %496
  %499 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %26, align 8
  %500 = load %struct.CPpmd_State*, %struct.CPpmd_State** %499, align 8
  %501 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %500, i32 0, i32 1
  %502 = load i8, i8* %501, align 1
  %503 = zext i8 %502 to i32
  %504 = load i32, i32* %19, align 4
  %505 = add i32 %504, %503
  store i32 %505, i32* %19, align 4
  %506 = load i32, i32* %18, align 4
  %507 = icmp ule i32 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %498
  br label %509

509:                                              ; preds = %508
  %510 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %26, align 8
  %511 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %510, i32 1
  store %struct.CPpmd_State** %511, %struct.CPpmd_State*** %26, align 8
  br label %498, !llvm.loop !12

512:                                              ; preds = %498
  %513 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %26, align 8
  %514 = load %struct.CPpmd_State*, %struct.CPpmd_State** %513, align 8
  store %struct.CPpmd_State* %514, %struct.CPpmd_State** %16, align 8
  %515 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %516 = load i32, i32* %19, align 4
  %517 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %518 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %517, i32 0, i32 1
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i32
  %521 = sub i32 %516, %520
  %522 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %523 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %522, i32 0, i32 1
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %515, i32 noundef %521, i32 noundef %525)
  %526 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %527 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %526, i32 0, i32 1
  %528 = load i8, i8* %527, align 1
  %529 = zext i8 %528 to i32
  %530 = icmp slt i32 %529, 7
  br i1 %530, label %531, label %554

531:                                              ; preds = %512
  %532 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %533 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %532, i32 0, i32 2
  %534 = load i8, i8* %533, align 1
  %535 = add i8 %534, -1
  store i8 %535, i8* %533, align 1
  %536 = zext i8 %535 to i32
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %554

538:                                              ; preds = %531
  %539 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %540 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %539, i32 0, i32 0
  %541 = load i16, i16* %540, align 1
  %542 = zext i16 %541 to i32
  %543 = shl i32 %542, 1
  %544 = trunc i32 %543 to i16
  store i16 %544, i16* %540, align 1
  %545 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %546 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %545, i32 0, i32 1
  %547 = load i8, i8* %546, align 1
  %548 = add i8 %547, 1
  store i8 %548, i8* %546, align 1
  %549 = zext i8 %547 to i32
  %550 = shl i32 3, %549
  %551 = trunc i32 %550 to i8
  %552 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %553 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %552, i32 0, i32 2
  store i8 %551, i8* %553, align 1
  br label %554

554:                                              ; preds = %538, %531, %512
  %555 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %556 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %557 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %556, i32 0, i32 2
  store %struct.CPpmd_State* %555, %struct.CPpmd_State** %557, align 8
  %558 = load %struct.CPpmd_State*, %struct.CPpmd_State** %16, align 8
  %559 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %558, i32 0, i32 0
  %560 = load i8, i8* %559, align 1
  store i8 %560, i8* %25, align 1
  %561 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  call void @Ppmd8_Update2(%struct.CPpmd8* noundef %561)
  %562 = load i8, i8* %25, align 1
  %563 = zext i8 %562 to i32
  store i32 %563, i32* %2, align 4
  br label %600

564:                                              ; preds = %483
  %565 = load i32, i32* %18, align 4
  %566 = load i32, i32* %17, align 4
  %567 = icmp uge i32 %565, %566
  br i1 %567, label %568, label %569

568:                                              ; preds = %564
  store i32 -2, i32* %2, align 4
  br label %600

569:                                              ; preds = %564
  %570 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %571 = load i32, i32* %19, align 4
  %572 = load i32, i32* %17, align 4
  %573 = load i32, i32* %19, align 4
  %574 = sub i32 %572, %573
  call void @RangeDec_Decode(%struct.CPpmd8* noundef %570, i32 noundef %571, i32 noundef %574)
  %575 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %576 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %575, i32 0, i32 0
  %577 = load i16, i16* %576, align 1
  %578 = zext i16 %577 to i32
  %579 = load i32, i32* %17, align 4
  %580 = add i32 %578, %579
  %581 = trunc i32 %580 to i16
  %582 = load %struct.CPpmd_See*, %struct.CPpmd_See** %20, align 8
  %583 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %582, i32 0, i32 0
  store i16 %581, i16* %583, align 1
  br label %584

584:                                              ; preds = %596, %569
  %585 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %586 = bitcast i64* %585 to i8*
  %587 = load i32, i32* %21, align 4
  %588 = add i32 %587, -1
  store i32 %588, i32* %21, align 4
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %15, i64 0, i64 %589
  %591 = load %struct.CPpmd_State*, %struct.CPpmd_State** %590, align 8
  %592 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %591, i32 0, i32 0
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i64
  %595 = getelementptr inbounds i8, i8* %586, i64 %594
  store i8 0, i8* %595, align 1
  br label %596

596:                                              ; preds = %584
  %597 = load i32, i32* %21, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %584, label %599, !llvm.loop !13

599:                                              ; preds = %596
  br label %391

600:                                              ; preds = %568, %554, %409, %277, %128, %93, %59
  %601 = load i32, i32* %2, align 4
  ret i32 %601
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @RangeDec_GetThreshold(%struct.CPpmd8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CPpmd8*, align 8
  %4 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 19
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %3, align 8
  %10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 8
  %12 = udiv i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = udiv i32 %7, %12
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @RangeDec_Decode(%struct.CPpmd8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.CPpmd8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CPpmd8* %0, %struct.CPpmd8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 18
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %14 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = add i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %24 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %23, i32 0, i32 18
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %57, %3
  %28 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %32 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %31, i32 0, i32 20
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %35 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %33, %36
  %38 = xor i32 %30, %37
  %39 = icmp ult i32 %38, 16777216
  br i1 %39, label %55, label %40

40:                                               ; preds = %27
  %41 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %42 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %41, i32 0, i32 18
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %43, 32768
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %47 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %46, i32 0, i32 20
  %48 = load i32, i32* %47, align 8
  %49 = sub i32 0, %48
  %50 = and i32 %49, 32767
  %51 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %52 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %51, i32 0, i32 18
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %40
  %54 = phi i1 [ false, %40 ], [ true, %45 ]
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i1 [ true, %27 ], [ %54, %53 ]
  br i1 %56, label %57, label %86

57:                                               ; preds = %55
  %58 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %59 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %58, i32 0, i32 19
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %63 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %62, i32 0, i32 21
  %64 = bitcast %union.anon* %63 to %struct.IByteIn**
  %65 = load %struct.IByteIn*, %struct.IByteIn** %64, align 8
  %66 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %65, i32 0, i32 0
  %67 = load i8 (i8*)*, i8 (i8*)** %66, align 8
  %68 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %69 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %68, i32 0, i32 21
  %70 = bitcast %union.anon* %69 to %struct.IByteIn**
  %71 = load %struct.IByteIn*, %struct.IByteIn** %70, align 8
  %72 = bitcast %struct.IByteIn* %71 to i8*
  %73 = call zeroext i8 %67(i8* noundef %72)
  %74 = zext i8 %73 to i32
  %75 = or i32 %61, %74
  %76 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %77 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %76, i32 0, i32 19
  store i32 %75, i32* %77, align 4
  %78 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %79 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 8
  store i32 %81, i32* %79, align 8
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %4, align 8
  %83 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 8
  store i32 %85, i32* %83, align 8
  br label %27, !llvm.loop !14

86:                                               ; preds = %55
  ret void
}

declare dso_local void @Ppmd8_Update1_0(%struct.CPpmd8* noundef) #1

declare dso_local void @Ppmd8_Update1(%struct.CPpmd8* noundef) #1

declare dso_local void @Ppmd8_UpdateBin(%struct.CPpmd8* noundef) #1

declare dso_local %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* noundef, i32 noundef, i32* noundef) #1

declare dso_local void @Ppmd8_Update2(%struct.CPpmd8* noundef) #1

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
