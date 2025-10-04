; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/uint64_to_float.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/uint64_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.float_bits = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error detected @ 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09Expected result: %a (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09Observed result: %a (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"to nearest\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"towards zero\00", align 1
@__const.main.modeNames = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [55 x i8] c"Testing uint64_t --> float conversions in round %s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Finished Testing.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @floatundisf(i64 noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.float_bits, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %80

11:                                               ; preds = %1
  store i32 64, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @llvm.ctlz.i64(i64 %12, i1 true)
  %14 = trunc i64 %13 to i32
  %15 = sub i32 64, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 24
  br i1 %19, label %20, label %63

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %26 [
    i32 25, label %22
    i32 26, label %25
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* %3, align 8
  %24 = shl i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %42

25:                                               ; preds = %20
  br label %42

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 26
  %30 = zext i32 %29 to i64
  %31 = lshr i64 %27, %30
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 90, %33
  %35 = zext i32 %34 to i64
  %36 = lshr i64 -1, %35
  %37 = and i64 %32, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = or i64 %31, %40
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %26, %25, %22
  %43 = load i64, i64* %3, align 8
  %44 = and i64 %43, 4
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %3, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = lshr i64 %52, 2
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = and i64 %54, 16777216
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load i64, i64* %3, align 8
  %59 = lshr i64 %58, 1
  store i64 %59, i64* %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %42
  br label %69

63:                                               ; preds = %11
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 24, %64
  %66 = load i64, i64* %3, align 8
  %67 = zext i32 %65 to i64
  %68 = shl i64 %66, %67
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 127
  %72 = shl i32 %71, 23
  %73 = load i64, i64* %3, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 8388607
  %76 = or i32 %72, %75
  %77 = bitcast %union.float_bits* %7 to i32*
  store i32 %76, i32* %77, align 4
  %78 = bitcast %union.float_bits* %7 to float*
  %79 = load float, float* %78, align 4
  store float %79, float* %2, align 4
  br label %80

80:                                               ; preds = %69, %10
  %81 = load float, float* %2, align 4
  ret float %81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.float_bits, align 4
  %4 = alloca %union.float_bits, align 4
  store i64 %0, i64* %2, align 8
  %5 = bitcast %union.float_bits* %3 to float*
  %6 = load i64, i64* %2, align 8
  %7 = call float @floatundisf(i64 noundef %6)
  store float %7, float* %5, align 4
  %8 = bitcast %union.float_bits* %4 to float*
  %9 = load i64, i64* %2, align 8
  %10 = uitofp i64 %9 to float
  store float %10, float* %8, align 4
  %11 = bitcast %union.float_bits* %3 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.float_bits* %4 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %17)
  %19 = bitcast %union.float_bits* %3 to float*
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = bitcast %union.float_bits* %3 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), double noundef %21, i32 noundef %23)
  %25 = bitcast %union.float_bits* %4 to float*
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = bitcast %union.float_bits* %4 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double noundef %27, i32 noundef %29)
  br label %31

31:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 1, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  %15 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = bitcast [4 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i8*]* @__const.main.modeNames to i8*), i64 32, i1 false)
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %426, %2
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %429

20:                                               ; preds = %17
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = call i32 @fesetround(i32 noundef %22) #6
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef %27)
  call void @test(i64 noundef 0)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %422, %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %425

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  call void @test(i64 noundef %35)
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 -1, %37
  call void @test(i64 noundef %38)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %418, %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %421

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = add i64 %46, %49
  call void @test(i64 noundef %50)
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 -1, %55
  %57 = add i64 %53, %56
  call void @test(i64 noundef %57)
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 -1, %59
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = shl i64 1, %62
  %64 = add i64 %60, %63
  call void @test(i64 noundef %64)
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 -1, %66
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 -1, %69
  %71 = add i64 %67, %70
  call void @test(i64 noundef %71)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %414, %43
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %417

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = shl i64 1, %81
  %83 = add i64 %79, %82
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = shl i64 1, %85
  %87 = add i64 %83, %86
  call void @test(i64 noundef %87)
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = shl i64 1, %89
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 1, %92
  %94 = add i64 %90, %93
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = shl i64 -1, %96
  %98 = add i64 %94, %97
  call void @test(i64 noundef %98)
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 1, %100
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = shl i64 -1, %103
  %105 = add i64 %101, %104
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 1, %107
  %109 = add i64 %105, %108
  call void @test(i64 noundef %109)
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = shl i64 1, %111
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 -1, %114
  %116 = add i64 %112, %115
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = shl i64 -1, %118
  %120 = add i64 %116, %119
  call void @test(i64 noundef %120)
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 -1, %122
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = shl i64 1, %125
  %127 = add i64 %123, %126
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = shl i64 1, %129
  %131 = add i64 %127, %130
  call void @test(i64 noundef %131)
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = shl i64 -1, %133
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = shl i64 1, %136
  %138 = add i64 %134, %137
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = shl i64 -1, %140
  %142 = add i64 %138, %141
  call void @test(i64 noundef %142)
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 -1, %144
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = shl i64 -1, %147
  %149 = add i64 %145, %148
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = shl i64 1, %151
  %153 = add i64 %149, %152
  call void @test(i64 noundef %153)
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = shl i64 -1, %155
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = shl i64 -1, %158
  %160 = add i64 %156, %159
  %161 = load i32, i32* %8, align 4
  %162 = zext i32 %161 to i64
  %163 = shl i64 -1, %162
  %164 = add i64 %160, %163
  call void @test(i64 noundef %164)
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %410, %76
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %413

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  %171 = zext i32 %170 to i64
  %172 = shl i64 1, %171
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = shl i64 1, %174
  %176 = add i64 %172, %175
  %177 = load i32, i32* %8, align 4
  %178 = zext i32 %177 to i64
  %179 = shl i64 1, %178
  %180 = add i64 %176, %179
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = shl i64 1, %182
  %184 = add i64 %180, %183
  call void @test(i64 noundef %184)
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = shl i64 1, %186
  %188 = load i32, i32* %7, align 4
  %189 = zext i32 %188 to i64
  %190 = shl i64 1, %189
  %191 = add i64 %187, %190
  %192 = load i32, i32* %8, align 4
  %193 = zext i32 %192 to i64
  %194 = shl i64 1, %193
  %195 = add i64 %191, %194
  %196 = load i32, i32* %9, align 4
  %197 = zext i32 %196 to i64
  %198 = shl i64 -1, %197
  %199 = add i64 %195, %198
  call void @test(i64 noundef %199)
  %200 = load i32, i32* %6, align 4
  %201 = zext i32 %200 to i64
  %202 = shl i64 1, %201
  %203 = load i32, i32* %7, align 4
  %204 = zext i32 %203 to i64
  %205 = shl i64 1, %204
  %206 = add i64 %202, %205
  %207 = load i32, i32* %8, align 4
  %208 = zext i32 %207 to i64
  %209 = shl i64 -1, %208
  %210 = add i64 %206, %209
  %211 = load i32, i32* %9, align 4
  %212 = zext i32 %211 to i64
  %213 = shl i64 1, %212
  %214 = add i64 %210, %213
  call void @test(i64 noundef %214)
  %215 = load i32, i32* %6, align 4
  %216 = zext i32 %215 to i64
  %217 = shl i64 1, %216
  %218 = load i32, i32* %7, align 4
  %219 = zext i32 %218 to i64
  %220 = shl i64 1, %219
  %221 = add i64 %217, %220
  %222 = load i32, i32* %8, align 4
  %223 = zext i32 %222 to i64
  %224 = shl i64 -1, %223
  %225 = add i64 %221, %224
  %226 = load i32, i32* %9, align 4
  %227 = zext i32 %226 to i64
  %228 = shl i64 -1, %227
  %229 = add i64 %225, %228
  call void @test(i64 noundef %229)
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = shl i64 1, %231
  %233 = load i32, i32* %7, align 4
  %234 = zext i32 %233 to i64
  %235 = shl i64 -1, %234
  %236 = add i64 %232, %235
  %237 = load i32, i32* %8, align 4
  %238 = zext i32 %237 to i64
  %239 = shl i64 1, %238
  %240 = add i64 %236, %239
  %241 = load i32, i32* %9, align 4
  %242 = zext i32 %241 to i64
  %243 = shl i64 1, %242
  %244 = add i64 %240, %243
  call void @test(i64 noundef %244)
  %245 = load i32, i32* %6, align 4
  %246 = zext i32 %245 to i64
  %247 = shl i64 1, %246
  %248 = load i32, i32* %7, align 4
  %249 = zext i32 %248 to i64
  %250 = shl i64 -1, %249
  %251 = add i64 %247, %250
  %252 = load i32, i32* %8, align 4
  %253 = zext i32 %252 to i64
  %254 = shl i64 1, %253
  %255 = add i64 %251, %254
  %256 = load i32, i32* %9, align 4
  %257 = zext i32 %256 to i64
  %258 = shl i64 -1, %257
  %259 = add i64 %255, %258
  call void @test(i64 noundef %259)
  %260 = load i32, i32* %6, align 4
  %261 = zext i32 %260 to i64
  %262 = shl i64 1, %261
  %263 = load i32, i32* %7, align 4
  %264 = zext i32 %263 to i64
  %265 = shl i64 -1, %264
  %266 = add i64 %262, %265
  %267 = load i32, i32* %8, align 4
  %268 = zext i32 %267 to i64
  %269 = shl i64 -1, %268
  %270 = add i64 %266, %269
  %271 = load i32, i32* %9, align 4
  %272 = zext i32 %271 to i64
  %273 = shl i64 1, %272
  %274 = add i64 %270, %273
  call void @test(i64 noundef %274)
  %275 = load i32, i32* %6, align 4
  %276 = zext i32 %275 to i64
  %277 = shl i64 1, %276
  %278 = load i32, i32* %7, align 4
  %279 = zext i32 %278 to i64
  %280 = shl i64 -1, %279
  %281 = add i64 %277, %280
  %282 = load i32, i32* %8, align 4
  %283 = zext i32 %282 to i64
  %284 = shl i64 -1, %283
  %285 = add i64 %281, %284
  %286 = load i32, i32* %9, align 4
  %287 = zext i32 %286 to i64
  %288 = shl i64 -1, %287
  %289 = add i64 %285, %288
  call void @test(i64 noundef %289)
  %290 = load i32, i32* %6, align 4
  %291 = zext i32 %290 to i64
  %292 = shl i64 -1, %291
  %293 = load i32, i32* %7, align 4
  %294 = zext i32 %293 to i64
  %295 = shl i64 1, %294
  %296 = add i64 %292, %295
  %297 = load i32, i32* %8, align 4
  %298 = zext i32 %297 to i64
  %299 = shl i64 1, %298
  %300 = add i64 %296, %299
  %301 = load i32, i32* %9, align 4
  %302 = zext i32 %301 to i64
  %303 = shl i64 1, %302
  %304 = add i64 %300, %303
  call void @test(i64 noundef %304)
  %305 = load i32, i32* %6, align 4
  %306 = zext i32 %305 to i64
  %307 = shl i64 -1, %306
  %308 = load i32, i32* %7, align 4
  %309 = zext i32 %308 to i64
  %310 = shl i64 1, %309
  %311 = add i64 %307, %310
  %312 = load i32, i32* %8, align 4
  %313 = zext i32 %312 to i64
  %314 = shl i64 1, %313
  %315 = add i64 %311, %314
  %316 = load i32, i32* %9, align 4
  %317 = zext i32 %316 to i64
  %318 = shl i64 -1, %317
  %319 = add i64 %315, %318
  call void @test(i64 noundef %319)
  %320 = load i32, i32* %6, align 4
  %321 = zext i32 %320 to i64
  %322 = shl i64 -1, %321
  %323 = load i32, i32* %7, align 4
  %324 = zext i32 %323 to i64
  %325 = shl i64 1, %324
  %326 = add i64 %322, %325
  %327 = load i32, i32* %8, align 4
  %328 = zext i32 %327 to i64
  %329 = shl i64 -1, %328
  %330 = add i64 %326, %329
  %331 = load i32, i32* %9, align 4
  %332 = zext i32 %331 to i64
  %333 = shl i64 1, %332
  %334 = add i64 %330, %333
  call void @test(i64 noundef %334)
  %335 = load i32, i32* %6, align 4
  %336 = zext i32 %335 to i64
  %337 = shl i64 -1, %336
  %338 = load i32, i32* %7, align 4
  %339 = zext i32 %338 to i64
  %340 = shl i64 1, %339
  %341 = add i64 %337, %340
  %342 = load i32, i32* %8, align 4
  %343 = zext i32 %342 to i64
  %344 = shl i64 -1, %343
  %345 = add i64 %341, %344
  %346 = load i32, i32* %9, align 4
  %347 = zext i32 %346 to i64
  %348 = shl i64 -1, %347
  %349 = add i64 %345, %348
  call void @test(i64 noundef %349)
  %350 = load i32, i32* %6, align 4
  %351 = zext i32 %350 to i64
  %352 = shl i64 -1, %351
  %353 = load i32, i32* %7, align 4
  %354 = zext i32 %353 to i64
  %355 = shl i64 -1, %354
  %356 = add i64 %352, %355
  %357 = load i32, i32* %8, align 4
  %358 = zext i32 %357 to i64
  %359 = shl i64 1, %358
  %360 = add i64 %356, %359
  %361 = load i32, i32* %9, align 4
  %362 = zext i32 %361 to i64
  %363 = shl i64 1, %362
  %364 = add i64 %360, %363
  call void @test(i64 noundef %364)
  %365 = load i32, i32* %6, align 4
  %366 = zext i32 %365 to i64
  %367 = shl i64 -1, %366
  %368 = load i32, i32* %7, align 4
  %369 = zext i32 %368 to i64
  %370 = shl i64 -1, %369
  %371 = add i64 %367, %370
  %372 = load i32, i32* %8, align 4
  %373 = zext i32 %372 to i64
  %374 = shl i64 1, %373
  %375 = add i64 %371, %374
  %376 = load i32, i32* %9, align 4
  %377 = zext i32 %376 to i64
  %378 = shl i64 -1, %377
  %379 = add i64 %375, %378
  call void @test(i64 noundef %379)
  %380 = load i32, i32* %6, align 4
  %381 = zext i32 %380 to i64
  %382 = shl i64 -1, %381
  %383 = load i32, i32* %7, align 4
  %384 = zext i32 %383 to i64
  %385 = shl i64 -1, %384
  %386 = add i64 %382, %385
  %387 = load i32, i32* %8, align 4
  %388 = zext i32 %387 to i64
  %389 = shl i64 -1, %388
  %390 = add i64 %386, %389
  %391 = load i32, i32* %9, align 4
  %392 = zext i32 %391 to i64
  %393 = shl i64 1, %392
  %394 = add i64 %390, %393
  call void @test(i64 noundef %394)
  %395 = load i32, i32* %6, align 4
  %396 = zext i32 %395 to i64
  %397 = shl i64 -1, %396
  %398 = load i32, i32* %7, align 4
  %399 = zext i32 %398 to i64
  %400 = shl i64 -1, %399
  %401 = add i64 %397, %400
  %402 = load i32, i32* %8, align 4
  %403 = zext i32 %402 to i64
  %404 = shl i64 -1, %403
  %405 = add i64 %401, %404
  %406 = load i32, i32* %9, align 4
  %407 = zext i32 %406 to i64
  %408 = shl i64 -1, %407
  %409 = add i64 %405, %408
  call void @test(i64 noundef %409)
  br label %410

410:                                              ; preds = %169
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %9, align 4
  br label %165, !llvm.loop !4

413:                                              ; preds = %165
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %8, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %8, align 4
  br label %72, !llvm.loop !6

417:                                              ; preds = %72
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %7, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %7, align 4
  br label %39, !llvm.loop !7

421:                                              ; preds = %39
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %6, align 4
  br label %29, !llvm.loop !8

425:                                              ; preds = %29
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %17, !llvm.loop !9

429:                                              ; preds = %17
  %430 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @fesetround(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
