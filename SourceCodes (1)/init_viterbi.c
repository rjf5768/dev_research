; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Unsupported coderate\22\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c\00", align 1
@__PRETTY_FUNCTION__.init_viterbi = private unnamed_addr constant [50 x i8] c"void init_viterbi(param_viterbi_t *, coderate_tt)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_viterbi(%struct.param_viterbi_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.param_viterbi_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x [128 x i8]], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.param_viterbi_t* %0, %struct.param_viterbi_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %9 = bitcast %struct.param_viterbi_t* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 19632, i1 false)
  %10 = bitcast [7 x [128 x i8]]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 896, i1 false)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %135 [
    i32 1, label %12
    i32 2, label %21
    i32 3, label %36
    i32 4, label %57
    i32 5, label %90
  ]

12:                                               ; preds = %2
  %13 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %14 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %13, i32 0, i32 3
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  store i8 1, i8* %15, align 8
  %16 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %17 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %16, i32 0, i32 4
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  store i8 1, i8* %18, align 1
  %19 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %20 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %19, i32 0, i32 5
  store i64 1, i64* %20, align 8
  br label %136

21:                                               ; preds = %2
  %22 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %23 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %22, i32 0, i32 3
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 0
  store i8 1, i8* %24, align 8
  %25 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %26 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %25, i32 0, i32 3
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %26, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %29 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %28, i32 0, i32 4
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i64 0, i64 0
  store i8 1, i8* %30, align 1
  %31 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %32 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %31, i32 0, i32 4
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %32, i64 0, i64 1
  store i8 1, i8* %33, align 1
  %34 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %35 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %34, i32 0, i32 5
  store i64 2, i64* %35, align 8
  br label %136

36:                                               ; preds = %2
  %37 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %38 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %37, i32 0, i32 3
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %38, i64 0, i64 0
  store i8 1, i8* %39, align 8
  %40 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %41 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %40, i32 0, i32 3
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %41, i64 0, i64 1
  store i8 0, i8* %42, align 1
  %43 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %44 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %43, i32 0, i32 3
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* %44, i64 0, i64 2
  store i8 1, i8* %45, align 2
  %46 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %47 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %46, i32 0, i32 4
  %48 = getelementptr inbounds [7 x i8], [7 x i8]* %47, i64 0, i64 0
  store i8 1, i8* %48, align 1
  %49 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %50 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %49, i32 0, i32 4
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %50, i64 0, i64 1
  store i8 1, i8* %51, align 1
  %52 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %53 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %52, i32 0, i32 4
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %53, i64 0, i64 2
  store i8 0, i8* %54, align 1
  %55 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %56 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %55, i32 0, i32 5
  store i64 3, i64* %56, align 8
  br label %136

57:                                               ; preds = %2
  %58 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %59 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %58, i32 0, i32 3
  %60 = getelementptr inbounds [7 x i8], [7 x i8]* %59, i64 0, i64 0
  store i8 1, i8* %60, align 8
  %61 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %62 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %61, i32 0, i32 3
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* %62, i64 0, i64 1
  store i8 0, i8* %63, align 1
  %64 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %65 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %64, i32 0, i32 3
  %66 = getelementptr inbounds [7 x i8], [7 x i8]* %65, i64 0, i64 2
  store i8 1, i8* %66, align 2
  %67 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %68 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %67, i32 0, i32 3
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* %68, i64 0, i64 3
  store i8 0, i8* %69, align 1
  %70 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %71 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %70, i32 0, i32 3
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* %71, i64 0, i64 4
  store i8 1, i8* %72, align 4
  %73 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %74 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %73, i32 0, i32 4
  %75 = getelementptr inbounds [7 x i8], [7 x i8]* %74, i64 0, i64 0
  store i8 1, i8* %75, align 1
  %76 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %77 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %76, i32 0, i32 4
  %78 = getelementptr inbounds [7 x i8], [7 x i8]* %77, i64 0, i64 1
  store i8 1, i8* %78, align 1
  %79 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %80 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %79, i32 0, i32 4
  %81 = getelementptr inbounds [7 x i8], [7 x i8]* %80, i64 0, i64 2
  store i8 0, i8* %81, align 1
  %82 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %83 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %82, i32 0, i32 4
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %83, i64 0, i64 3
  store i8 1, i8* %84, align 1
  %85 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %86 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %85, i32 0, i32 4
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* %86, i64 0, i64 4
  store i8 0, i8* %87, align 1
  %88 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %89 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %88, i32 0, i32 5
  store i64 5, i64* %89, align 8
  br label %136

90:                                               ; preds = %2
  %91 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %92 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %91, i32 0, i32 3
  %93 = getelementptr inbounds [7 x i8], [7 x i8]* %92, i64 0, i64 0
  store i8 1, i8* %93, align 8
  %94 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %95 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %94, i32 0, i32 3
  %96 = getelementptr inbounds [7 x i8], [7 x i8]* %95, i64 0, i64 1
  store i8 0, i8* %96, align 1
  %97 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %98 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %97, i32 0, i32 3
  %99 = getelementptr inbounds [7 x i8], [7 x i8]* %98, i64 0, i64 2
  store i8 0, i8* %99, align 2
  %100 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %101 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %100, i32 0, i32 3
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* %101, i64 0, i64 3
  store i8 0, i8* %102, align 1
  %103 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %104 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %103, i32 0, i32 3
  %105 = getelementptr inbounds [7 x i8], [7 x i8]* %104, i64 0, i64 4
  store i8 1, i8* %105, align 4
  %106 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %107 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %106, i32 0, i32 3
  %108 = getelementptr inbounds [7 x i8], [7 x i8]* %107, i64 0, i64 5
  store i8 0, i8* %108, align 1
  %109 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %110 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %109, i32 0, i32 3
  %111 = getelementptr inbounds [7 x i8], [7 x i8]* %110, i64 0, i64 6
  store i8 1, i8* %111, align 2
  %112 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %113 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %112, i32 0, i32 4
  %114 = getelementptr inbounds [7 x i8], [7 x i8]* %113, i64 0, i64 0
  store i8 1, i8* %114, align 1
  %115 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %116 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %115, i32 0, i32 4
  %117 = getelementptr inbounds [7 x i8], [7 x i8]* %116, i64 0, i64 1
  store i8 1, i8* %117, align 1
  %118 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %119 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %118, i32 0, i32 4
  %120 = getelementptr inbounds [7 x i8], [7 x i8]* %119, i64 0, i64 2
  store i8 1, i8* %120, align 1
  %121 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %122 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %121, i32 0, i32 4
  %123 = getelementptr inbounds [7 x i8], [7 x i8]* %122, i64 0, i64 3
  store i8 1, i8* %123, align 1
  %124 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %125 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %124, i32 0, i32 4
  %126 = getelementptr inbounds [7 x i8], [7 x i8]* %125, i64 0, i64 4
  store i8 0, i8* %126, align 1
  %127 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %128 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %127, i32 0, i32 4
  %129 = getelementptr inbounds [7 x i8], [7 x i8]* %128, i64 0, i64 5
  store i8 1, i8* %129, align 1
  %130 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %131 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %130, i32 0, i32 4
  %132 = getelementptr inbounds [7 x i8], [7 x i8]* %131, i64 0, i64 6
  store i8 0, i8* %132, align 1
  %133 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %134 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %133, i32 0, i32 5
  store i64 7, i64* %134, align 8
  br label %136

135:                                              ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.init_viterbi, i64 0, i64 0)) #3
  unreachable

136:                                              ; preds = %90, %57, %36, %21, %12
  %137 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %138 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %137, i32 0, i32 0
  store i64 7, i64* %138, align 8
  %139 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %140 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %146 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %148 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %147, i32 0, i32 2
  store i64 150, i64* %148, align 8
  store i64 0, i64* %6, align 8
  br label %149

149:                                              ; preds = %178, %136
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %152 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %149
  store i64 0, i64* %7, align 8
  br label %156

156:                                              ; preds = %174, %155
  %157 = load i64, i64* %7, align 8
  %158 = icmp ult i64 %157, 7
  br i1 %158, label %159, label %177

159:                                              ; preds = %156
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = trunc i64 %161 to i32
  %163 = shl i32 1, %162
  %164 = sext i32 %163 to i64
  %165 = and i64 %160, %164
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i32
  %168 = trunc i32 %167 to i8
  %169 = load i64, i64* %7, align 8
  %170 = sub i64 6, %169
  %171 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 %170
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds [128 x i8], [128 x i8]* %171, i64 0, i64 %172
  store i8 %168, i8* %173, align 1
  br label %174

174:                                              ; preds = %159
  %175 = load i64, i64* %7, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %156, !llvm.loop !4

177:                                              ; preds = %156
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %6, align 8
  br label %149, !llvm.loop !6

181:                                              ; preds = %149
  store i64 0, i64* %6, align 8
  br label %182

182:                                              ; preds = %245, %181
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %185 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %248

188:                                              ; preds = %182
  %189 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 0
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds [128 x i8], [128 x i8]* %189, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 1
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds [128 x i8], [128 x i8]* %194, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = xor i32 %193, %198
  %200 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 2
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds [128 x i8], [128 x i8]* %200, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = xor i32 %199, %204
  %206 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 5
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds [128 x i8], [128 x i8]* %206, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = xor i32 %205, %210
  %212 = trunc i32 %211 to i8
  %213 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %214 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %213, i32 0, i32 6
  %215 = load i64, i64* %6, align 8
  %216 = getelementptr inbounds [128 x i8], [128 x i8]* %214, i64 0, i64 %215
  store i8 %212, i8* %216, align 1
  %217 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 1
  %218 = load i64, i64* %6, align 8
  %219 = getelementptr inbounds [128 x i8], [128 x i8]* %217, i64 0, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 2
  %223 = load i64, i64* %6, align 8
  %224 = getelementptr inbounds [128 x i8], [128 x i8]* %222, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = xor i32 %221, %226
  %228 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 4
  %229 = load i64, i64* %6, align 8
  %230 = getelementptr inbounds [128 x i8], [128 x i8]* %228, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = xor i32 %227, %232
  %234 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %5, i64 0, i64 5
  %235 = load i64, i64* %6, align 8
  %236 = getelementptr inbounds [128 x i8], [128 x i8]* %234, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = xor i32 %233, %238
  %240 = trunc i32 %239 to i8
  %241 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %242 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %241, i32 0, i32 7
  %243 = load i64, i64* %6, align 8
  %244 = getelementptr inbounds [128 x i8], [128 x i8]* %242, i64 0, i64 %243
  store i8 %240, i8* %244, align 1
  br label %245

245:                                              ; preds = %188
  %246 = load i64, i64* %6, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %6, align 8
  br label %182, !llvm.loop !7

248:                                              ; preds = %182
  store i64 0, i64* %6, align 8
  br label %249

249:                                              ; preds = %260, %248
  %250 = load i64, i64* %6, align 8
  %251 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %252 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ult i64 %250, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %249
  %256 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %257 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %256, i32 0, i32 8
  %258 = load i64, i64* %6, align 8
  %259 = getelementptr inbounds [128 x double], [128 x double]* %257, i64 0, i64 %258
  store double 1.000000e+06, double* %259, align 8
  br label %260

260:                                              ; preds = %255
  %261 = load i64, i64* %6, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %6, align 8
  br label %249, !llvm.loop !8

263:                                              ; preds = %249
  %264 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %3, align 8
  %265 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %264, i32 0, i32 8
  %266 = getelementptr inbounds [128 x double], [128 x double]* %265, i64 0, i64 0
  store double 0.000000e+00, double* %266, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
