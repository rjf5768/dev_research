; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/format.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY = external dso_local global i8*, align 8
@REGISTER = external dso_local global [10 x i32], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @FORMAT2(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i8*, i8** @MEMORY, align 8
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %11)
  %13 = sdiv i32 %12, 16
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** @MEMORY, align 8
  %16 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 16
  %26 = sub nsw i32 %22, %25
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  ret void
}

declare dso_local i32 @INT(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FORMAT3_4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %14 = add nsw i32 %13, 2
  %15 = icmp sge i32 %14, 1048576
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load i8*, i8** @MEMORY, align 8
  %19 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %23)
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %24, i32 noundef 1, i32* noundef %25)
  %26 = load i8*, i8** @MEMORY, align 8
  %27 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %32)
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 8
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %33, i32 noundef 1, i32* noundef %34)
  %35 = load i8*, i8** @MEMORY, align 8
  %36 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %41)
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 16
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %42, i32 noundef 1, i32* noundef %43)
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 11
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %71

47:                                               ; preds = %17
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 7
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %57 = add nsw i32 %56, 3
  %58 = icmp sge i32 %57, 1048576
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** @MEMORY, align 8
  %62 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %63 = add nsw i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %67)
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 24
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %68, i32 noundef 1, i32* noundef %69)
  store i32 4, i32* %8, align 4
  br label %70

70:                                               ; preds = %60, %59
  br label %71

71:                                               ; preds = %70, %51, %17
  br label %72

72:                                               ; preds = %71, %16
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 2)
  store i32 0, i32* %3, align 4
  br label %307

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 12
  %89 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef %88, i32 noundef 12)
  store i32 %89, i32* %9, align 4
  br label %159

90:                                               ; preds = %83, %76
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %138

93:                                               ; preds = %90
  %94 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 12
  %95 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef %94, i32 noundef 12)
  store i32 %95, i32* %9, align 4
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 9
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 10
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  store i32 0, i32* %3, align 4
  br label %307

104:                                              ; preds = %99, %93
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 8
  %106 = load i32, i32* %105, align 16
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 9
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 3), align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 10
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp sge i32 %125, 2048
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 4096
  %130 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %9, align 4
  br label %136

132:                                              ; preds = %124
  %133 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %132, %127
  br label %137

137:                                              ; preds = %136, %120
  br label %158

138:                                              ; preds = %90
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 9
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 10
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %138
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  store i32 0, i32* %3, align 4
  br label %307

147:                                              ; preds = %142
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 12
  %149 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef %148, i32 noundef 20)
  store i32 %149, i32* %9, align 4
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 8
  %151 = load i32, i32* %150, align 16
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %158, %87
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %209

163:                                              ; preds = %159
  %164 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %209

167:                                              ; preds = %163
  %168 = load i32, i32* %4, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %207

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 2
  %176 = icmp sge i32 %175, 1048576
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %170
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  store i32 0, i32* %3, align 4
  br label %307

178:                                              ; preds = %173
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %196, %178
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load i32, i32* %10, align 4
  %185 = mul nsw i32 %184, 256
  %186 = load i8*, i8** @MEMORY, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %186, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %193)
  %195 = add nsw i32 %185, %194
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %183
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %179, !llvm.loop !4

199:                                              ; preds = %179
  %200 = load i32, i32* %10, align 4
  %201 = call double @pow(double noundef 2.000000e+00, double noundef 2.400000e+01) #3
  %202 = fptosi double %201 to i32
  %203 = icmp sge i32 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 0, i32* %10, align 4
  br label %205

205:                                              ; preds = %204, %199
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %3, align 4
  br label %307

207:                                              ; preds = %167
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %307

209:                                              ; preds = %163, %159
  %210 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 6
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %290

213:                                              ; preds = %209
  %214 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 7
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %290

217:                                              ; preds = %213
  %218 = load i32, i32* %9, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 2
  %223 = icmp sge i32 %222, 1048576
  br i1 %223, label %224, label %225

224:                                              ; preds = %220, %217
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  store i32 0, i32* %3, align 4
  br label %307

225:                                              ; preds = %220
  %226 = load i8*, i8** @MEMORY, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %231)
  %233 = mul nsw i32 %232, 256
  %234 = load i8*, i8** @MEMORY, align 8
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %240)
  %242 = add nsw i32 %233, %241
  %243 = mul nsw i32 %242, 256
  %244 = load i8*, i8** @MEMORY, align 8
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %250)
  %252 = add nsw i32 %243, %251
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %4, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %288

255:                                              ; preds = %225
  %256 = load i32, i32* %9, align 4
  %257 = icmp sgt i32 %256, 1048576
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 2)
  store i32 0, i32* %3, align 4
  br label %307

259:                                              ; preds = %255
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %260

260:                                              ; preds = %277, %259
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %5, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %280

264:                                              ; preds = %260
  %265 = load i32, i32* %10, align 4
  %266 = mul nsw i32 %265, 256
  %267 = load i8*, i8** @MEMORY, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %274)
  %276 = add nsw i32 %266, %275
  store i32 %276, i32* %10, align 4
  br label %277

277:                                              ; preds = %264
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %260, !llvm.loop !6

280:                                              ; preds = %260
  %281 = load i32, i32* %10, align 4
  %282 = call double @pow(double noundef 2.000000e+00, double noundef 2.400000e+01) #3
  %283 = fptosi double %282 to i32
  %284 = icmp sge i32 %281, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store i32 0, i32* %10, align 4
  br label %286

286:                                              ; preds = %285, %280
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %3, align 4
  br label %307

288:                                              ; preds = %225
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %3, align 4
  br label %307

290:                                              ; preds = %213, %209
  %291 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 6
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %290
  %295 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 7
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load i32, i32* %9, align 4
  %300 = call double @pow(double noundef 2.000000e+00, double noundef 2.400000e+01) #3
  %301 = fptosi double %300 to i32
  %302 = icmp sge i32 %299, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  store i32 0, i32* %3, align 4
  br label %307

304:                                              ; preds = %298
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %3, align 4
  br label %307

306:                                              ; preds = %294, %290
  store i32 0, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %304, %303, %288, %286, %258, %224, %207, %205, %177, %146, %103, %75
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local void @BYTES_TO_BITS(...) #1

declare dso_local void @SIGNAL_INTERUPT(...) #1

declare dso_local i32 @BITS_TO_BYTE(...) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
