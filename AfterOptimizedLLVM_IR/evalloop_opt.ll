; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/evalloop.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/evalloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = dso_local global i32 0, align 4
@eval.dispatch = internal global [32 x i8*] [i8* blockaddress(@eval, %8), i8* blockaddress(@eval, %12), i8* blockaddress(@eval, %21), i8* blockaddress(@eval, %30), i8* blockaddress(@eval, %39), i8* blockaddress(@eval, %48), i8* blockaddress(@eval, %57), i8* blockaddress(@eval, %66), i8* blockaddress(@eval, %75), i8* blockaddress(@eval, %84), i8* blockaddress(@eval, %93), i8* blockaddress(@eval, %102), i8* blockaddress(@eval, %111), i8* blockaddress(@eval, %120), i8* blockaddress(@eval, %129), i8* blockaddress(@eval, %138), i8* blockaddress(@eval, %147), i8* blockaddress(@eval, %156), i8* blockaddress(@eval, %165), i8* blockaddress(@eval, %174), i8* blockaddress(@eval, %183), i8* blockaddress(@eval, %192), i8* blockaddress(@eval, %201), i8* blockaddress(@eval, %210), i8* blockaddress(@eval, %219), i8* blockaddress(@eval, %228), i8* blockaddress(@eval, %237), i8* blockaddress(@eval, %246), i8* blockaddress(@eval, %255), i8* blockaddress(@eval, %264), i8* blockaddress(@eval, %273), i8* blockaddress(@eval, %282)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @sum, align 4
  %5 = add i32 %4, %3
  store i32 %5, i32* @sum, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eval(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1, %291
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %6, i32** %2, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %291 [
    i32 0, label %9
    i32 1, label %13
    i32 2, label %22
    i32 3, label %31
    i32 4, label %40
    i32 5, label %49
    i32 6, label %58
    i32 7, label %67
    i32 8, label %76
    i32 9, label %85
    i32 10, label %94
    i32 11, label %103
    i32 12, label %112
    i32 13, label %121
    i32 14, label %130
    i32 15, label %139
    i32 16, label %148
    i32 17, label %157
    i32 18, label %166
    i32 19, label %175
    i32 20, label %184
    i32 21, label %193
    i32 22, label %202
    i32 23, label %211
    i32 24, label %220
    i32 25, label %229
    i32 26, label %238
    i32 27, label %247
    i32 28, label %256
    i32 29, label %265
    i32 30, label %274
    i32 31, label %283
  ]

8:                                                ; preds = %10
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %4, %8
  ret void

10:                                               ; preds = %283, %274, %265, %256, %247, %238, %229, %220, %211, %202, %193, %184, %175, %166, %157, %148, %139, %130, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %11 = phi i8* [ %20, %13 ], [ %29, %22 ], [ %38, %31 ], [ %47, %40 ], [ %56, %49 ], [ %65, %58 ], [ %74, %67 ], [ %83, %76 ], [ %92, %85 ], [ %101, %94 ], [ %110, %103 ], [ %119, %112 ], [ %128, %121 ], [ %137, %130 ], [ %146, %139 ], [ %155, %148 ], [ %164, %157 ], [ %173, %166 ], [ %182, %175 ], [ %191, %184 ], [ %200, %193 ], [ %209, %202 ], [ %218, %211 ], [ %227, %220 ], [ %236, %229 ], [ %245, %238 ], [ %254, %247 ], [ %263, %256 ], [ %272, %265 ], [ %281, %274 ], [ %290, %283 ]
  indirectbr i8* %11, [label %8, label %12, label %21, label %30, label %39, label %48, label %57, label %66, label %75, label %84, label %93, label %102, label %111, label %120, label %129, label %138, label %147, label %156, label %165, label %174, label %183, label %192, label %201, label %210, label %219, label %228, label %237, label %246, label %255, label %264, label %273, label %282]

12:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %4, %12
  %14 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %14)
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %2, align 8
  %17 = load i32, i32* %15, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  br label %10

21:                                               ; preds = %10
  store i32 2, i32* %3, align 4
  br label %22

22:                                               ; preds = %4, %21
  %23 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %23)
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %2, align 8
  %26 = load i32, i32* %24, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  br label %10

30:                                               ; preds = %10
  store i32 3, i32* %3, align 4
  br label %31

31:                                               ; preds = %4, %30
  %32 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %32)
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %2, align 8
  %35 = load i32, i32* %33, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  br label %10

39:                                               ; preds = %10
  store i32 4, i32* %3, align 4
  br label %40

40:                                               ; preds = %4, %39
  %41 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %41)
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %2, align 8
  %44 = load i32, i32* %42, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  br label %10

48:                                               ; preds = %10
  store i32 5, i32* %3, align 4
  br label %49

49:                                               ; preds = %4, %48
  %50 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %50)
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %2, align 8
  %53 = load i32, i32* %51, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  br label %10

57:                                               ; preds = %10
  store i32 6, i32* %3, align 4
  br label %58

58:                                               ; preds = %4, %57
  %59 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %59)
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %2, align 8
  %62 = load i32, i32* %60, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  br label %10

66:                                               ; preds = %10
  store i32 7, i32* %3, align 4
  br label %67

67:                                               ; preds = %4, %66
  %68 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %68)
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %2, align 8
  %71 = load i32, i32* %69, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  br label %10

75:                                               ; preds = %10
  store i32 8, i32* %3, align 4
  br label %76

76:                                               ; preds = %4, %75
  %77 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %77)
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %2, align 8
  %80 = load i32, i32* %78, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  br label %10

84:                                               ; preds = %10
  store i32 9, i32* %3, align 4
  br label %85

85:                                               ; preds = %4, %84
  %86 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %86)
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %2, align 8
  %89 = load i32, i32* %87, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  br label %10

93:                                               ; preds = %10
  store i32 10, i32* %3, align 4
  br label %94

94:                                               ; preds = %4, %93
  %95 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %95)
  %96 = load i32*, i32** %2, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %2, align 8
  %98 = load i32, i32* %96, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  br label %10

102:                                              ; preds = %10
  store i32 11, i32* %3, align 4
  br label %103

103:                                              ; preds = %4, %102
  %104 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %104)
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %2, align 8
  %107 = load i32, i32* %105, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  br label %10

111:                                              ; preds = %10
  store i32 12, i32* %3, align 4
  br label %112

112:                                              ; preds = %4, %111
  %113 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %113)
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %2, align 8
  %116 = load i32, i32* %114, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  br label %10

120:                                              ; preds = %10
  store i32 13, i32* %3, align 4
  br label %121

121:                                              ; preds = %4, %120
  %122 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %122)
  %123 = load i32*, i32** %2, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %2, align 8
  %125 = load i32, i32* %123, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %126
  %128 = load i8*, i8** %127, align 8
  br label %10

129:                                              ; preds = %10
  store i32 14, i32* %3, align 4
  br label %130

130:                                              ; preds = %4, %129
  %131 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %131)
  %132 = load i32*, i32** %2, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %2, align 8
  %134 = load i32, i32* %132, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %135
  %137 = load i8*, i8** %136, align 8
  br label %10

138:                                              ; preds = %10
  store i32 15, i32* %3, align 4
  br label %139

139:                                              ; preds = %4, %138
  %140 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %140)
  %141 = load i32*, i32** %2, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %2, align 8
  %143 = load i32, i32* %141, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  br label %10

147:                                              ; preds = %10
  store i32 16, i32* %3, align 4
  br label %148

148:                                              ; preds = %4, %147
  %149 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %149)
  %150 = load i32*, i32** %2, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %2, align 8
  %152 = load i32, i32* %150, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %153
  %155 = load i8*, i8** %154, align 8
  br label %10

156:                                              ; preds = %10
  store i32 17, i32* %3, align 4
  br label %157

157:                                              ; preds = %4, %156
  %158 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %158)
  %159 = load i32*, i32** %2, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %2, align 8
  %161 = load i32, i32* %159, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %162
  %164 = load i8*, i8** %163, align 8
  br label %10

165:                                              ; preds = %10
  store i32 18, i32* %3, align 4
  br label %166

166:                                              ; preds = %4, %165
  %167 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %167)
  %168 = load i32*, i32** %2, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %2, align 8
  %170 = load i32, i32* %168, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  br label %10

174:                                              ; preds = %10
  store i32 19, i32* %3, align 4
  br label %175

175:                                              ; preds = %4, %174
  %176 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %176)
  %177 = load i32*, i32** %2, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %2, align 8
  %179 = load i32, i32* %177, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %180
  %182 = load i8*, i8** %181, align 8
  br label %10

183:                                              ; preds = %10
  store i32 20, i32* %3, align 4
  br label %184

184:                                              ; preds = %4, %183
  %185 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %185)
  %186 = load i32*, i32** %2, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %2, align 8
  %188 = load i32, i32* %186, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %189
  %191 = load i8*, i8** %190, align 8
  br label %10

192:                                              ; preds = %10
  store i32 21, i32* %3, align 4
  br label %193

193:                                              ; preds = %4, %192
  %194 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %194)
  %195 = load i32*, i32** %2, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %2, align 8
  %197 = load i32, i32* %195, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %198
  %200 = load i8*, i8** %199, align 8
  br label %10

201:                                              ; preds = %10
  store i32 22, i32* %3, align 4
  br label %202

202:                                              ; preds = %4, %201
  %203 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %203)
  %204 = load i32*, i32** %2, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %2, align 8
  %206 = load i32, i32* %204, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %207
  %209 = load i8*, i8** %208, align 8
  br label %10

210:                                              ; preds = %10
  store i32 23, i32* %3, align 4
  br label %211

211:                                              ; preds = %4, %210
  %212 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %212)
  %213 = load i32*, i32** %2, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %2, align 8
  %215 = load i32, i32* %213, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %216
  %218 = load i8*, i8** %217, align 8
  br label %10

219:                                              ; preds = %10
  store i32 24, i32* %3, align 4
  br label %220

220:                                              ; preds = %4, %219
  %221 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %221)
  %222 = load i32*, i32** %2, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %2, align 8
  %224 = load i32, i32* %222, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %225
  %227 = load i8*, i8** %226, align 8
  br label %10

228:                                              ; preds = %10
  store i32 25, i32* %3, align 4
  br label %229

229:                                              ; preds = %4, %228
  %230 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %230)
  %231 = load i32*, i32** %2, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %2, align 8
  %233 = load i32, i32* %231, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %234
  %236 = load i8*, i8** %235, align 8
  br label %10

237:                                              ; preds = %10
  store i32 26, i32* %3, align 4
  br label %238

238:                                              ; preds = %4, %237
  %239 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %239)
  %240 = load i32*, i32** %2, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %2, align 8
  %242 = load i32, i32* %240, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %243
  %245 = load i8*, i8** %244, align 8
  br label %10

246:                                              ; preds = %10
  store i32 27, i32* %3, align 4
  br label %247

247:                                              ; preds = %4, %246
  %248 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %248)
  %249 = load i32*, i32** %2, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %2, align 8
  %251 = load i32, i32* %249, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %252
  %254 = load i8*, i8** %253, align 8
  br label %10

255:                                              ; preds = %10
  store i32 28, i32* %3, align 4
  br label %256

256:                                              ; preds = %4, %255
  %257 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %257)
  %258 = load i32*, i32** %2, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %2, align 8
  %260 = load i32, i32* %258, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %261
  %263 = load i8*, i8** %262, align 8
  br label %10

264:                                              ; preds = %10
  store i32 29, i32* %3, align 4
  br label %265

265:                                              ; preds = %4, %264
  %266 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %266)
  %267 = load i32*, i32** %2, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %2, align 8
  %269 = load i32, i32* %267, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %270
  %272 = load i8*, i8** %271, align 8
  br label %10

273:                                              ; preds = %10
  store i32 30, i32* %3, align 4
  br label %274

274:                                              ; preds = %4, %273
  %275 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %275)
  %276 = load i32*, i32** %2, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %2, align 8
  %278 = load i32, i32* %276, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %279
  %281 = load i8*, i8** %280, align 8
  br label %10

282:                                              ; preds = %10
  store i32 31, i32* %3, align 4
  br label %283

283:                                              ; preds = %4, %282
  %284 = load i32, i32* %3, align 4
  call void @execute(i32 noundef %284)
  %285 = load i32*, i32** %2, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %2, align 8
  %287 = load i32, i32* %285, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %288
  %290 = load i8*, i8** %289, align 8
  br label %10

291:                                              ; preds = %4
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2048, i32* %2, align 4
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %3, align 8
  %7 = alloca i32, i64 2048, align 16
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2047
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 31
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %7, i64 %16
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %8, !llvm.loop !4

21:                                               ; preds = %8
  %22 = getelementptr inbounds i32, i32* %7, i64 2047
  store i32 0, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %27, %21
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 100000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  call void @eval(i32* noundef %7)
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %23, !llvm.loop !6

30:                                               ; preds = %23
  %31 = load i32, i32* @sum, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef %31)
  store i32 0, i32* %1, align 4
  %33 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
