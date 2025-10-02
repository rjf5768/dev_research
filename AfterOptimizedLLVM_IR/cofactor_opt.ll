; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cofactor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cofactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@cdata = external dso_local global %struct.cdata_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"BINATE_SPLIT_SELECT: split against %d\0A\00", align 1
@verbose_debug = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cl=%s\0Acr=%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cofactor(i32** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i32**, i32*** %3, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to i32**
  %25 = load i32**, i32*** %3, align 8
  %26 = ptrtoint i32** %24 to i64
  %27 = ptrtoint i32** %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = sub nsw i64 %29, 3
  %31 = add nsw i64 %30, 5
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = call i8* @malloc(i64 noundef %35)
  %37 = bitcast i8* %36 to i32**
  store i32** %37, i32*** %7, align 8
  store i32** %37, i32*** %6, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %39 = icmp sle i32 %38, 32
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %43 = sub nsw i32 %42, 1
  %44 = ashr i32 %43, 5
  %45 = add nsw i32 %44, 1
  %46 = add nsw i32 %45, 1
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi i32 [ 2, %40 ], [ %46, %41 ]
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = call i8* @malloc(i64 noundef %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %54 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %52, i32 noundef %53)
  %55 = load i32**, i32*** %3, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %58, i32* noundef %59, i32* noundef %60)
  %62 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %54, i32* noundef %57, i32* noundef %61)
  %63 = load i32**, i32*** %7, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i32 1
  store i32** %64, i32*** %7, align 8
  store i32* %62, i32** %63, align 8
  %65 = load i32**, i32*** %7, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i32 1
  store i32** %66, i32*** %7, align 8
  %67 = load i32**, i32*** %3, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 2
  store i32** %68, i32*** %8, align 8
  br label %69

69:                                               ; preds = %192, %47
  %70 = load i32**, i32*** %8, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i32 1
  store i32** %71, i32*** %8, align 8
  %72 = load i32*, i32** %70, align 8
  store i32* %72, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %193

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %192

78:                                               ; preds = %74
  %79 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %79, i32* %12, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %132

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %86, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = lshr i32 %94, 1
  %96 = or i32 %93, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 8
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %81
  br label %191

102:                                              ; preds = %81
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %128, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %112, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = lshr i32 %120, 1
  %122 = or i32 %119, %121
  %123 = xor i32 %122, -1
  %124 = and i32 %123, 1431655765
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  br label %191

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %103, !llvm.loop !4

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %131, %78
  %133 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %184, %132
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %187

138:                                              ; preds = %134
  %139 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %17, align 8
  %144 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %179, %138
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %154
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %163, %168
  %170 = load i32*, i32** %17, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %169, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %158
  br label %183

178:                                              ; preds = %158
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %154, !llvm.loop !6

182:                                              ; preds = %154
  br label %191

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %134, !llvm.loop !7

187:                                              ; preds = %134
  %188 = load i32*, i32** %9, align 8
  %189 = load i32**, i32*** %7, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i32 1
  store i32** %190, i32*** %7, align 8
  store i32* %188, i32** %189, align 8
  br label %191

191:                                              ; preds = %187, %182, %126, %101
  br label %192

192:                                              ; preds = %191, %74
  br label %69, !llvm.loop !8

193:                                              ; preds = %69
  %194 = load i32**, i32*** %7, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i32 1
  store i32** %195, i32*** %7, align 8
  store i32* null, i32** %194, align 8
  %196 = load i32**, i32*** %7, align 8
  %197 = bitcast i32** %196 to i32*
  %198 = load i32**, i32*** %6, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 1
  store i32* %197, i32** %199, align 8
  %200 = load i32**, i32*** %6, align 8
  ret i32** %200
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_or(...) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i32* @set_diff(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @scofactor(i32** noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32**, i32*** %4, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i32**
  %33 = load i32**, i32*** %4, align 8
  %34 = ptrtoint i32** %32 to i64
  %35 = ptrtoint i32** %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = sub nsw i64 %37, 3
  %39 = add nsw i64 %38, 5
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = call i8* @malloc(i64 noundef %43)
  %45 = bitcast i8* %44 to i32**
  store i32** %45, i32*** %7, align 8
  store i32** %45, i32*** %8, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %47 = icmp sle i32 %46, 32
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %55

49:                                               ; preds = %3
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %51 = sub nsw i32 %50, 1
  %52 = ashr i32 %51, 5
  %53 = add nsw i32 %52, 1
  %54 = add nsw i32 %53, 1
  br label %55

55:                                               ; preds = %49, %48
  %56 = phi i32 [ 2, %48 ], [ %54, %49 ]
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = call i8* @malloc(i64 noundef %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %62 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %60, i32 noundef %61)
  %63 = load i32**, i32*** %4, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %66, i32* noundef %67, i32* noundef %68)
  %70 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %62, i32* noundef %65, i32* noundef %69)
  %71 = load i32**, i32*** %7, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i32 1
  store i32** %72, i32*** %7, align 8
  store i32* %70, i32** %71, align 8
  %73 = load i32**, i32*** %7, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i32 1
  store i32** %74, i32*** %7, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %75, i32* noundef %80, i32* noundef %81)
  %83 = load i32**, i32*** %4, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 2
  store i32** %84, i32*** %11, align 8
  br label %85

85:                                               ; preds = %120, %55
  %86 = load i32**, i32*** %11, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i32 1
  store i32** %87, i32*** %11, align 8
  %88 = load i32*, i32** %86, align 8
  store i32* %88, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = icmp ne i32* %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %114, %94
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %101, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load i32*, i32** %9, align 8
  %111 = load i32**, i32*** %7, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i32 1
  store i32** %112, i32*** %7, align 8
  store i32* %110, i32** %111, align 8
  br label %119

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %96, label %119, !llvm.loop !9

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %90
  br label %85, !llvm.loop !10

121:                                              ; preds = %85
  %122 = load i32**, i32*** %7, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i32 1
  store i32** %123, i32*** %7, align 8
  store i32* null, i32** %122, align 8
  %124 = load i32**, i32*** %7, align 8
  %125 = bitcast i32** %124 to i32*
  %126 = load i32**, i32*** %8, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* %125, i32** %127, align 8
  %128 = load i32**, i32*** %8, align 8
  ret i32** %128
}

declare dso_local i32* @set_and(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @massive_count(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %32, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %24, !llvm.loop !11

35:                                               ; preds = %24
  %36 = load i32**, i32*** %2, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32* %39, i32** %11, align 8
  %40 = load i32**, i32*** %2, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 2
  store i32** %41, i32*** %4, align 8
  br label %42

42:                                               ; preds = %394, %35
  %43 = load i32**, i32*** %4, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %4, align 8
  %45 = load i32*, i32** %43, align 8
  store i32* %45, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %395

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1023
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %391, %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %394

55:                                               ; preds = %52
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %65, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %60, %72
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %390

75:                                               ; preds = %55
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, -16777216
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %158

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, -2147483648
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 31
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 1073741824
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 30
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 536870912
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 29
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, 268435456
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 28
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, 134217728
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 27
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %125, %121
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, 67108864
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 26
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %130
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 33554432
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 25
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, 16777216
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 24
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157, %75
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, 16711680
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %235

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, 8388608
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 23
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %162
  %172 = load i32, i32* %8, align 4
  %173 = and i32 %172, 4194304
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 22
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %175, %171
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 2097152
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 21
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %180
  %190 = load i32, i32* %8, align 4
  %191 = and i32 %190, 1048576
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 20
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %193, %189
  %199 = load i32, i32* %8, align 4
  %200 = and i32 %199, 524288
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 19
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %202, %198
  %208 = load i32, i32* %8, align 4
  %209 = and i32 %208, 262144
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32*, i32** %7, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 18
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %211, %207
  %217 = load i32, i32* %8, align 4
  %218 = and i32 %217, 131072
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i32*, i32** %7, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 17
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %220, %216
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, 65536
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32*, i32** %7, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 16
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %225
  br label %235

235:                                              ; preds = %234, %158
  %236 = load i32, i32* %8, align 4
  %237 = and i32 %236, 65280
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %312

239:                                              ; preds = %235
  %240 = load i32, i32* %8, align 4
  %241 = and i32 %240, 32768
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 15
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %243, %239
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, 16384
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 14
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %248
  %258 = load i32, i32* %8, align 4
  %259 = and i32 %258, 8192
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 13
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %261, %257
  %267 = load i32, i32* %8, align 4
  %268 = and i32 %267, 4096
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 12
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %270, %266
  %276 = load i32, i32* %8, align 4
  %277 = and i32 %276, 2048
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load i32*, i32** %7, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 11
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %279, %275
  %285 = load i32, i32* %8, align 4
  %286 = and i32 %285, 1024
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i32*, i32** %7, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 10
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %288, %284
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 512
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i32*, i32** %7, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 9
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %297, %293
  %303 = load i32, i32* %8, align 4
  %304 = and i32 %303, 256
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 8
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %306, %302
  br label %312

312:                                              ; preds = %311, %235
  %313 = load i32, i32* %8, align 4
  %314 = and i32 %313, 255
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %389

316:                                              ; preds = %312
  %317 = load i32, i32* %8, align 4
  %318 = and i32 %317, 128
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = load i32*, i32** %7, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 7
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %320, %316
  %326 = load i32, i32* %8, align 4
  %327 = and i32 %326, 64
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  %330 = load i32*, i32** %7, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 6
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %329, %325
  %335 = load i32, i32* %8, align 4
  %336 = and i32 %335, 32
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load i32*, i32** %7, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 5
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %338, %334
  %344 = load i32, i32* %8, align 4
  %345 = and i32 %344, 16
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %343
  %348 = load i32*, i32** %7, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 4
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %347, %343
  %353 = load i32, i32* %8, align 4
  %354 = and i32 %353, 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %352
  %357 = load i32*, i32** %7, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %356, %352
  %362 = load i32, i32* %8, align 4
  %363 = and i32 %362, 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %361
  %366 = load i32*, i32** %7, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %365, %361
  %371 = load i32, i32* %8, align 4
  %372 = and i32 %371, 2
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = load i32*, i32** %7, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %374, %370
  %380 = load i32, i32* %8, align 4
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = load i32*, i32** %7, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %385, align 4
  br label %388

388:                                              ; preds = %383, %379
  br label %389

389:                                              ; preds = %388, %312
  br label %390

390:                                              ; preds = %389, %55
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %6, align 4
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %6, align 4
  br label %52, !llvm.loop !12

394:                                              ; preds = %52
  br label %42, !llvm.loop !13

395:                                              ; preds = %42
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 32000, i32* %20, align 4
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  store i32 0, i32* %12, align 4
  br label %396

396:                                              ; preds = %566, %395
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %569

400:                                              ; preds = %396
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %441

404:                                              ; preds = %400
  %405 = load i32*, i32** %3, align 8
  %406 = load i32, i32* %12, align 4
  %407 = mul nsw i32 %406, 2
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %13, align 4
  %411 = load i32*, i32** %3, align 8
  %412 = load i32, i32* %12, align 4
  %413 = mul nsw i32 %412, 2
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %411, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %14, align 4
  %418 = load i32, i32* %13, align 4
  %419 = icmp sgt i32 %418, 0
  %420 = zext i1 %419 to i32
  %421 = load i32, i32* %14, align 4
  %422 = icmp sgt i32 %421, 0
  %423 = zext i1 %422 to i32
  %424 = add nsw i32 %420, %423
  store i32 %424, i32* %15, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* %14, align 4
  %427 = add nsw i32 %425, %426
  %428 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %429 = load i32, i32* %12, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  store i32 %427, i32* %431, align 4
  %432 = load i32, i32* %13, align 4
  %433 = load i32, i32* %14, align 4
  %434 = icmp sgt i32 %432, %433
  br i1 %434, label %435, label %437

435:                                              ; preds = %404
  %436 = load i32, i32* %13, align 4
  br label %439

437:                                              ; preds = %404
  %438 = load i32, i32* %14, align 4
  br label %439

439:                                              ; preds = %437, %435
  %440 = phi i32 [ %436, %435 ], [ %438, %437 ]
  store i32 %440, i32* %16, align 4
  br label %491

441:                                              ; preds = %400
  %442 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  store i32 0, i32* %445, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %446 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %447 = load i32, i32* %12, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  store i32 %450, i32* %14, align 4
  %451 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %13, align 4
  br label %456

456:                                              ; preds = %487, %441
  %457 = load i32, i32* %13, align 4
  %458 = load i32, i32* %14, align 4
  %459 = icmp sle i32 %457, %458
  br i1 %459, label %460, label %490

460:                                              ; preds = %456
  %461 = load i32*, i32** %3, align 8
  %462 = load i32, i32* %13, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %467 = load i32, i32* %12, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %470, %465
  store i32 %471, i32* %469, align 4
  %472 = load i32*, i32** %3, align 8
  %473 = load i32, i32* %13, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp sgt i32 %476, 0
  %478 = zext i1 %477 to i32
  %479 = load i32, i32* %15, align 4
  %480 = add nsw i32 %479, %478
  store i32 %480, i32* %15, align 4
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* %16, align 4
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %460
  %485 = load i32, i32* %15, align 4
  store i32 %485, i32* %16, align 4
  br label %486

486:                                              ; preds = %484, %460
  br label %487

487:                                              ; preds = %486
  %488 = load i32, i32* %13, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %13, align 4
  br label %456, !llvm.loop !14

490:                                              ; preds = %456
  br label %491

491:                                              ; preds = %490, %439
  %492 = load i32, i32* %15, align 4
  %493 = load i32, i32* %18, align 4
  %494 = icmp sgt i32 %492, %493
  br i1 %494, label %495, label %504

495:                                              ; preds = %491
  %496 = load i32, i32* %12, align 4
  store i32 %496, i32* %17, align 4
  %497 = load i32, i32* %15, align 4
  store i32 %497, i32* %18, align 4
  %498 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %499 = load i32, i32* %17, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  store i32 %502, i32* %19, align 4
  %503 = load i32, i32* %16, align 4
  store i32 %503, i32* %20, align 4
  br label %543

504:                                              ; preds = %491
  %505 = load i32, i32* %15, align 4
  %506 = load i32, i32* %18, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %542

508:                                              ; preds = %504
  %509 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %510 = load i32, i32* %12, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %19, align 4
  %515 = icmp sgt i32 %513, %514
  br i1 %515, label %516, label %524

516:                                              ; preds = %508
  %517 = load i32, i32* %12, align 4
  store i32 %517, i32* %17, align 4
  %518 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %519 = load i32, i32* %17, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  store i32 %522, i32* %19, align 4
  %523 = load i32, i32* %16, align 4
  store i32 %523, i32* %20, align 4
  br label %541

524:                                              ; preds = %508
  %525 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %526 = load i32, i32* %12, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* %19, align 4
  %531 = icmp eq i32 %529, %530
  br i1 %531, label %532, label %540

532:                                              ; preds = %524
  %533 = load i32, i32* %16, align 4
  %534 = load i32, i32* %20, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %539

536:                                              ; preds = %532
  %537 = load i32, i32* %12, align 4
  store i32 %537, i32* %17, align 4
  %538 = load i32, i32* %16, align 4
  store i32 %538, i32* %20, align 4
  br label %539

539:                                              ; preds = %536, %532
  br label %540

540:                                              ; preds = %539, %524
  br label %541

541:                                              ; preds = %540, %516
  br label %542

542:                                              ; preds = %541, %504
  br label %543

543:                                              ; preds = %542, %495
  %544 = load i32, i32* %15, align 4
  %545 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %546 = load i32, i32* %12, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  store i32 %544, i32* %548, align 4
  %549 = load i32, i32* %15, align 4
  %550 = icmp eq i32 %549, 1
  %551 = zext i1 %550 to i32
  %552 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %553 = load i32, i32* %12, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  store i32 %551, i32* %555, align 4
  %556 = load i32, i32* %15, align 4
  %557 = icmp sgt i32 %556, 0
  %558 = zext i1 %557 to i32
  %559 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 8
  %560 = add nsw i32 %559, %558
  store i32 %560, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 8
  %561 = load i32, i32* %15, align 4
  %562 = icmp eq i32 %561, 1
  %563 = zext i1 %562 to i32
  %564 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %565 = add nsw i32 %564, %563
  store i32 %565, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  br label %566

566:                                              ; preds = %543
  %567 = load i32, i32* %12, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %12, align 4
  br label %396, !llvm.loop !15

569:                                              ; preds = %396
  %570 = load i32, i32* %17, align 4
  store i32 %570, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @binate_split_select(i32** noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32**, i32*** %5, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %25 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %23, i32* noundef %24, i32* noundef %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %33 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %31, i32* noundef %32, i32* noundef %37)
  %39 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %65, %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 5
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 31
  %58 = shl i32 1, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %44, !llvm.loop !16

68:                                               ; preds = %44
  %69 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %107, %68
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 5
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 31
  %89 = shl i32 1, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 31
  %97 = shl i32 1, %96
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = ashr i32 %99, 5
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %97
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %92, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %76, !llvm.loop !17

110:                                              ; preds = %76
  br label %111

111:                                              ; preds = %141, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %10, align 4
  %118 = ashr i32 %117, 5
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 31
  %125 = shl i32 1, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 31
  %131 = shl i32 1, %130
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = ashr i32 %133, 5
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %131
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %128, %115
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %111, !llvm.loop !18

144:                                              ; preds = %111
  %145 = load i32, i32* @debug, align 4
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %150)
  %152 = load i32, i32* @verbose_debug, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32*, i32** %6, align 8
  %156 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* noundef %157)
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* noundef %156, i8* noundef %158)
  br label %160

160:                                              ; preds = %154, %149
  br label %161

161:                                              ; preds = %160, %144
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i8* @pc2(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube1list(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %7 = load %struct.set_family*, %struct.set_family** %2, align 8
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 3
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = call i8* @malloc(i64 noundef %12)
  %14 = bitcast i8* %13 to i32**
  store i32** %14, i32*** %5, align 8
  store i32** %14, i32*** %6, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %16 = icmp sle i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %20 = sub nsw i32 %19, 1
  %21 = ashr i32 %20, 5
  %22 = add nsw i32 %21, 1
  %23 = add nsw i32 %22, 1
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ 2, %17 ], [ %23, %18 ]
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = call i8* @malloc(i64 noundef %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %31 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %29, i32 noundef %30)
  %32 = load i32**, i32*** %5, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i32 1
  store i32** %33, i32*** %5, align 8
  store i32* %31, i32** %32, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %35, i32*** %5, align 8
  %36 = load %struct.set_family*, %struct.set_family** %2, align 8
  %37 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.set_family*, %struct.set_family** %2, align 8
  %41 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.set_family*, %struct.set_family** %2, align 8
  %44 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %39, i64 %47
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %57, %24
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i32**, i32*** %5, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i32 1
  store i32** %56, i32*** %5, align 8
  store i32* %54, i32** %55, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load %struct.set_family*, %struct.set_family** %2, align 8
  %59 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %4, align 8
  br label %49, !llvm.loop !19

64:                                               ; preds = %49
  %65 = load i32**, i32*** %5, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i32 1
  store i32** %66, i32*** %5, align 8
  store i32* null, i32** %65, align 8
  %67 = load i32**, i32*** %5, align 8
  %68 = bitcast i32** %67 to i32*
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* %68, i32** %70, align 8
  %71 = load i32**, i32*** %6, align 8
  ret i32** %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube2list(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %9 = load %struct.set_family*, %struct.set_family** %3, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.set_family*, %struct.set_family** %4, align 8
  %13 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = add nsw i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = call i8* @malloc(i64 noundef %18)
  %20 = bitcast i8* %19 to i32**
  store i32** %20, i32*** %7, align 8
  store i32** %20, i32*** %8, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %22 = icmp sle i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %26 = sub nsw i32 %25, 1
  %27 = ashr i32 %26, 5
  %28 = add nsw i32 %27, 1
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi i32 [ 2, %23 ], [ %29, %24 ]
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = call i8* @malloc(i64 noundef %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %37 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %35, i32 noundef %36)
  %38 = load i32**, i32*** %7, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i32 1
  store i32** %41, i32*** %7, align 8
  %42 = load %struct.set_family*, %struct.set_family** %3, align 8
  %43 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.set_family*, %struct.set_family** %3, align 8
  %47 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.set_family*, %struct.set_family** %3, align 8
  %50 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %45, i64 %53
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %63, %30
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32**, i32*** %7, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i32 1
  store i32** %62, i32*** %7, align 8
  store i32* %60, i32** %61, align 8
  br label %63

63:                                               ; preds = %59
  %64 = load %struct.set_family*, %struct.set_family** %3, align 8
  %65 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %6, align 8
  br label %55, !llvm.loop !20

70:                                               ; preds = %55
  %71 = load %struct.set_family*, %struct.set_family** %4, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.set_family*, %struct.set_family** %4, align 8
  %76 = getelementptr inbounds %struct.set_family, %struct.set_family* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.set_family*, %struct.set_family** %4, align 8
  %79 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %92, %70
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ult i32* %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32**, i32*** %7, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i32 1
  store i32** %91, i32*** %7, align 8
  store i32* %89, i32** %90, align 8
  br label %92

92:                                               ; preds = %88
  %93 = load %struct.set_family*, %struct.set_family** %4, align 8
  %94 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %6, align 8
  br label %84, !llvm.loop !21

99:                                               ; preds = %84
  %100 = load i32**, i32*** %7, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i32 1
  store i32** %101, i32*** %7, align 8
  store i32* null, i32** %100, align 8
  %102 = load i32**, i32*** %7, align 8
  %103 = bitcast i32** %102 to i32*
  %104 = load i32**, i32*** %8, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* %103, i32** %105, align 8
  %106 = load i32**, i32*** %8, align 8
  ret i32** %106
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube3list(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  store %struct.set_family* %2, %struct.set_family** %6, align 8
  %11 = load %struct.set_family*, %struct.set_family** %4, align 8
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.set_family*, %struct.set_family** %5, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load %struct.set_family*, %struct.set_family** %6, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = add nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = call i8* @malloc(i64 noundef %24)
  %26 = bitcast i8* %25 to i32**
  store i32** %26, i32*** %9, align 8
  %27 = load i32**, i32*** %9, align 8
  store i32** %27, i32*** %10, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %33 = sub nsw i32 %32, 1
  %34 = ashr i32 %33, 5
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %35, 1
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ 2, %30 ], [ %36, %31 ]
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = call i8* @malloc(i64 noundef %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %44 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %42, i32 noundef %43)
  %45 = load i32**, i32*** %9, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i32 1
  store i32** %46, i32*** %9, align 8
  store i32* %44, i32** %45, align 8
  %47 = load i32**, i32*** %9, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i32 1
  store i32** %48, i32*** %9, align 8
  %49 = load %struct.set_family*, %struct.set_family** %4, align 8
  %50 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.set_family*, %struct.set_family** %4, align 8
  %54 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.set_family*, %struct.set_family** %4, align 8
  %57 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  store i32* %61, i32** %7, align 8
  br label %62

62:                                               ; preds = %70, %37
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ult i32* %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = load i32**, i32*** %9, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i32 1
  store i32** %69, i32*** %9, align 8
  store i32* %67, i32** %68, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load %struct.set_family*, %struct.set_family** %4, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %8, align 8
  br label %62, !llvm.loop !22

77:                                               ; preds = %62
  %78 = load %struct.set_family*, %struct.set_family** %5, align 8
  %79 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.set_family*, %struct.set_family** %5, align 8
  %83 = getelementptr inbounds %struct.set_family, %struct.set_family* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.set_family*, %struct.set_family** %5, align 8
  %86 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %81, i64 %89
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %99, %77
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = icmp ult i32* %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32*, i32** %8, align 8
  %97 = load i32**, i32*** %9, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i32 1
  store i32** %98, i32*** %9, align 8
  store i32* %96, i32** %97, align 8
  br label %99

99:                                               ; preds = %95
  %100 = load %struct.set_family*, %struct.set_family** %5, align 8
  %101 = getelementptr inbounds %struct.set_family, %struct.set_family* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  br label %91, !llvm.loop !23

106:                                              ; preds = %91
  %107 = load %struct.set_family*, %struct.set_family** %6, align 8
  %108 = getelementptr inbounds %struct.set_family, %struct.set_family* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %8, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.set_family*, %struct.set_family** %6, align 8
  %112 = getelementptr inbounds %struct.set_family, %struct.set_family* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.set_family*, %struct.set_family** %6, align 8
  %115 = getelementptr inbounds %struct.set_family, %struct.set_family* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %110, i64 %118
  store i32* %119, i32** %7, align 8
  br label %120

120:                                              ; preds = %128, %106
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ult i32* %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32*, i32** %8, align 8
  %126 = load i32**, i32*** %9, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i32 1
  store i32** %127, i32*** %9, align 8
  store i32* %125, i32** %126, align 8
  br label %128

128:                                              ; preds = %124
  %129 = load %struct.set_family*, %struct.set_family** %6, align 8
  %130 = getelementptr inbounds %struct.set_family, %struct.set_family* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %8, align 8
  br label %120, !llvm.loop !24

135:                                              ; preds = %120
  %136 = load i32**, i32*** %9, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i32 1
  store i32** %137, i32*** %9, align 8
  store i32* null, i32** %136, align 8
  %138 = load i32**, i32*** %9, align 8
  %139 = bitcast i32** %138 to i32*
  %140 = load i32**, i32*** %10, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  store i32* %139, i32** %141, align 8
  %142 = load i32**, i32*** %10, align 8
  ret i32** %142
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cubeunlist(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %9 = load i32**, i32*** %2, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32**, i32*** %2, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i32**
  %16 = load i32**, i32*** %2, align 8
  %17 = ptrtoint i32** %15 to i64
  %18 = ptrtoint i32** %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  %21 = sub nsw i64 %20, 3
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %23 = call %struct.set_family* (i64, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i64, i32, ...)*)(i64 noundef %21, i32 noundef %22)
  store %struct.set_family* %23, %struct.set_family** %7, align 8
  store i32 2, i32* %3, align 4
  br label %24

24:                                               ; preds = %77, %1
  %25 = load i32**, i32*** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %80

31:                                               ; preds = %24
  %32 = load %struct.set_family*, %struct.set_family** %7, align 8
  %33 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.set_family*, %struct.set_family** %7, align 8
  %36 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 2
  %40 = mul nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1023
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -1024
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %72, %31
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %61, %66
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %56, label %76, !llvm.loop !25

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %24, !llvm.loop !26

80:                                               ; preds = %24
  %81 = load i32**, i32*** %2, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to i32**
  %85 = load i32**, i32*** %2, align 8
  %86 = ptrtoint i32** %84 to i64
  %87 = ptrtoint i32** %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 8
  %90 = sub nsw i64 %89, 3
  %91 = trunc i64 %90 to i32
  %92 = load %struct.set_family*, %struct.set_family** %7, align 8
  %93 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %94
}

declare dso_local %struct.set_family* @sf_new(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @simplify_cubelist(i32** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %7 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %9, i32* noundef %12)
  %14 = load i32**, i32*** %3, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i32**
  %18 = load i32**, i32*** %3, align 8
  %19 = ptrtoint i32** %17 to i64
  %20 = ptrtoint i32** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = sub nsw i64 %22, 3
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32**, i32*** %3, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 2
  %27 = bitcast i32** %26 to i8*
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  call void @qsort(i8* noundef %27, i64 noundef %29, i64 noundef 8, i32 (i8*, i8*)* noundef bitcast (i32 (...)* @d1_order to i32 (i8*, i8*)*))
  %30 = load i32**, i32*** %3, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 2
  store i32** %31, i32*** %4, align 8
  store i32 3, i32* %5, align 4
  br label %32

32:                                               ; preds = %57, %1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32**, i32*** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32**, i32*** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = call i32 (i32**, i32**, ...) bitcast (i32 (...)* @d1_order to i32 (i32**, i32**, ...)*)(i32** noundef %41, i32** noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load i32**, i32*** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32**, i32*** %4, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i32 1
  store i32** %55, i32*** %4, align 8
  store i32* %53, i32** %54, align 8
  br label %56

56:                                               ; preds = %48, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %32, !llvm.loop !27

60:                                               ; preds = %32
  %61 = load i32**, i32*** %4, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i32 1
  store i32** %62, i32*** %4, align 8
  store i32* null, i32** %61, align 8
  %63 = load i32**, i32*** %4, align 8
  %64 = bitcast i32** %63 to i32*
  %65 = load i32**, i32*** %4, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @set_copy(...) #1

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

declare dso_local i32 @d1_order(...) #1

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!112, !5}
!112 = distinct !{!113, !5}
!113 = distinct !{!114, !5}
!114 = distinct !{!115, !5}
!115 = distinct !{!116, !5}
!116 = distinct !{!117, !5}
!117 = distinct !{!118, !5}
!118 = distinct !{!119, !5}
!119 = distinct !{!120, !5}
!121 = distinct !{!122, !5}
!122 = distinct !{!123, !5}
!123 = distinct !{!124, !5}
!124 = distinct !{!125, !5}
!125 = distinct !{!126, !5}
!126 = distinct !{!127, !5}
!127 = distinct !{!128, !5}
!128 = distinct !{!129, !5}
!129 = distinct !{!130, !5}
!131 = distinct !{!132, !5}
!132 = distinct !{!133, !5}
!133 = distinct !{!134, !5}
!135 = distinct !{!136, !5}
!136 = distinct !{!137, !5}
!138 = distinct !{!139, !5}
!139 = distinct !{!140, !5}
!141 = distinct !{!142, !5}
!142 = distinct !{!143, !5}
!144 = distinct !{!145, !5}
!146 = distinct !{!147, !5}
!148 = distinct !{!149, !5}
!149 = distinct !{!150, !5}
!151 = distinct !{!152, !5}
!152 = distinct !{!153, !5}
!153 = distinct !{!154, !5}
!154 = distinct !{!155, !5}
!155 = distinct !{!156, !5}
!157 = distinct !{!158, !5}
!158 = distinct !{!159, !5}
!159 = distinct !{!160, !5}
!161 = distinct !{!162, !5}
!162 = distinct !{!163, !5}
!163 = distinct !{!164, !5}
!164 = distinct !{!165, !5}
!165 = distinct !{!166, !5}
!166 = distinct !{!167, !5}
!167 = distinct !{!168, !5}
!168 = distinct !{!169, !5}
!169 = distinct !{!170, !5}
