; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020508-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020508-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i8 52, align 1
@s = dso_local global i16 4660, align 2
@i = dso_local global i32 4660, align 4
@l = dso_local global i64 305419896, align 8
@ll = dso_local global i64 81985529234382576, align 8
@shift1 = dso_local global i32 4, align 4
@shift2 = dso_local global i32 60, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* @c, align 1
  %3 = sext i8 %2 to i32
  %4 = load i32, i32* @shift1, align 4
  %5 = ashr i32 %3, %4
  %6 = load i8, i8* @c, align 1
  %7 = sext i8 %6 to i32
  %8 = load i32, i32* @shift1, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %7, %11
  %13 = or i32 %5, %12
  %14 = icmp ne i32 %13, 835
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %0
  %17 = load i8, i8* @c, align 1
  %18 = sext i8 %17 to i32
  %19 = ashr i32 %18, 4
  %20 = load i8, i8* @c, align 1
  %21 = sext i8 %20 to i32
  %22 = shl i32 %21, 4
  %23 = or i32 %19, %22
  %24 = icmp ne i32 %23, 835
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  call void @abort() #2
  unreachable

26:                                               ; preds = %16
  %27 = load i16, i16* @s, align 2
  %28 = sext i16 %27 to i32
  %29 = load i32, i32* @shift1, align 4
  %30 = ashr i32 %28, %29
  %31 = load i16, i16* @s, align 2
  %32 = sext i16 %31 to i32
  %33 = load i32, i32* @shift1, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 16, %34
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %32, %36
  %38 = or i32 %30, %37
  %39 = icmp ne i32 %38, 19087651
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  call void @abort() #2
  unreachable

41:                                               ; preds = %26
  %42 = load i16, i16* @s, align 2
  %43 = sext i16 %42 to i32
  %44 = ashr i32 %43, 4
  %45 = load i16, i16* @s, align 2
  %46 = sext i16 %45 to i32
  %47 = shl i32 %46, 12
  %48 = or i32 %44, %47
  %49 = icmp ne i32 %48, 19087651
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  call void @abort() #2
  unreachable

51:                                               ; preds = %41
  %52 = load i32, i32* @i, align 4
  %53 = load i32, i32* @shift1, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* @i, align 4
  %56 = load i32, i32* @shift1, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 32, %57
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %55, %59
  %61 = or i32 %54, %60
  %62 = icmp ne i32 %61, 1073742115
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  call void @abort() #2
  unreachable

64:                                               ; preds = %51
  %65 = load i32, i32* @i, align 4
  %66 = ashr i32 %65, 4
  %67 = load i32, i32* @i, align 4
  %68 = shl i32 %67, 28
  %69 = or i32 %66, %68
  %70 = icmp ne i32 %69, 1073742115
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  call void @abort() #2
  unreachable

72:                                               ; preds = %64
  %73 = load i64, i64* @l, align 8
  %74 = load i32, i32* @shift1, align 4
  %75 = zext i32 %74 to i64
  %76 = ashr i64 %73, %75
  %77 = load i64, i64* @l, align 8
  %78 = load i32, i32* @shift1, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 64, %79
  %81 = shl i64 %77, %80
  %82 = or i64 %76, %81
  %83 = icmp ne i64 %82, -9223372036835687065
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  call void @abort() #2
  unreachable

85:                                               ; preds = %72
  %86 = load i64, i64* @l, align 8
  %87 = ashr i64 %86, 4
  %88 = load i64, i64* @l, align 8
  %89 = shl i64 %88, 60
  %90 = or i64 %87, %89
  %91 = icmp ne i64 %90, -9223372036835687065
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  call void @abort() #2
  unreachable

93:                                               ; preds = %85
  %94 = load i64, i64* @ll, align 8
  %95 = load i32, i32* @shift1, align 4
  %96 = zext i32 %95 to i64
  %97 = ashr i64 %94, %96
  %98 = load i64, i64* @ll, align 8
  %99 = load i32, i32* @shift1, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 64, %100
  %102 = shl i64 %98, %101
  %103 = or i64 %97, %102
  %104 = icmp ne i64 %103, 5124095577148911
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  call void @abort() #2
  unreachable

106:                                              ; preds = %93
  %107 = load i64, i64* @ll, align 8
  %108 = ashr i64 %107, 4
  %109 = load i64, i64* @ll, align 8
  %110 = shl i64 %109, 60
  %111 = or i64 %108, %110
  %112 = icmp ne i64 %111, 5124095577148911
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  call void @abort() #2
  unreachable

114:                                              ; preds = %106
  %115 = load i64, i64* @ll, align 8
  %116 = load i32, i32* @shift2, align 4
  %117 = zext i32 %116 to i64
  %118 = ashr i64 %115, %117
  %119 = load i64, i64* @ll, align 8
  %120 = load i32, i32* @shift2, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 64, %121
  %123 = shl i64 %119, %122
  %124 = or i64 %118, %123
  %125 = icmp ne i64 %124, 1311768467750121216
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  call void @abort() #2
  unreachable

127:                                              ; preds = %114
  %128 = load i64, i64* @ll, align 8
  %129 = ashr i64 %128, 60
  %130 = load i64, i64* @ll, align 8
  %131 = shl i64 %130, 4
  %132 = or i64 %129, %131
  %133 = icmp ne i64 %132, 1311768467750121216
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  call void @abort() #2
  unreachable

135:                                              ; preds = %127
  %136 = load i8, i8* @c, align 1
  %137 = sext i8 %136 to i32
  %138 = load i32, i32* @shift1, align 4
  %139 = shl i32 %137, %138
  %140 = load i8, i8* @c, align 1
  %141 = sext i8 %140 to i32
  %142 = load i32, i32* @shift1, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 8, %143
  %145 = trunc i64 %144 to i32
  %146 = ashr i32 %141, %145
  %147 = or i32 %139, %146
  %148 = icmp ne i32 %147, 835
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  call void @abort() #2
  unreachable

150:                                              ; preds = %135
  %151 = load i8, i8* @c, align 1
  %152 = sext i8 %151 to i32
  %153 = shl i32 %152, 4
  %154 = load i8, i8* @c, align 1
  %155 = sext i8 %154 to i32
  %156 = ashr i32 %155, 4
  %157 = or i32 %153, %156
  %158 = icmp ne i32 %157, 835
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  call void @abort() #2
  unreachable

160:                                              ; preds = %150
  %161 = load i16, i16* @s, align 2
  %162 = sext i16 %161 to i32
  %163 = load i32, i32* @shift1, align 4
  %164 = shl i32 %162, %163
  %165 = load i16, i16* @s, align 2
  %166 = sext i16 %165 to i32
  %167 = load i32, i32* @shift1, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 16, %168
  %170 = trunc i64 %169 to i32
  %171 = ashr i32 %166, %170
  %172 = or i32 %164, %171
  %173 = icmp ne i32 %172, 74561
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  call void @abort() #2
  unreachable

175:                                              ; preds = %160
  %176 = load i16, i16* @s, align 2
  %177 = sext i16 %176 to i32
  %178 = shl i32 %177, 4
  %179 = load i16, i16* @s, align 2
  %180 = sext i16 %179 to i32
  %181 = ashr i32 %180, 12
  %182 = or i32 %178, %181
  %183 = icmp ne i32 %182, 74561
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  call void @abort() #2
  unreachable

185:                                              ; preds = %175
  %186 = load i32, i32* @i, align 4
  %187 = load i32, i32* @shift1, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* @i, align 4
  %190 = load i32, i32* @shift1, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 32, %191
  %193 = trunc i64 %192 to i32
  %194 = ashr i32 %189, %193
  %195 = or i32 %188, %194
  %196 = icmp ne i32 %195, 74560
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  call void @abort() #2
  unreachable

198:                                              ; preds = %185
  %199 = load i32, i32* @i, align 4
  %200 = shl i32 %199, 4
  %201 = load i32, i32* @i, align 4
  %202 = ashr i32 %201, 28
  %203 = or i32 %200, %202
  %204 = icmp ne i32 %203, 74560
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  call void @abort() #2
  unreachable

206:                                              ; preds = %198
  %207 = load i64, i64* @l, align 8
  %208 = load i32, i32* @shift1, align 4
  %209 = zext i32 %208 to i64
  %210 = shl i64 %207, %209
  %211 = load i64, i64* @l, align 8
  %212 = load i32, i32* @shift1, align 4
  %213 = sext i32 %212 to i64
  %214 = sub i64 64, %213
  %215 = ashr i64 %211, %214
  %216 = or i64 %210, %215
  %217 = icmp ne i64 %216, 4886718336
  br i1 %217, label %218, label %219

218:                                              ; preds = %206
  call void @abort() #2
  unreachable

219:                                              ; preds = %206
  %220 = load i64, i64* @l, align 8
  %221 = shl i64 %220, 4
  %222 = load i64, i64* @l, align 8
  %223 = ashr i64 %222, 60
  %224 = or i64 %221, %223
  %225 = icmp ne i64 %224, 4886718336
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  call void @abort() #2
  unreachable

227:                                              ; preds = %219
  %228 = load i64, i64* @ll, align 8
  %229 = load i32, i32* @shift1, align 4
  %230 = zext i32 %229 to i64
  %231 = shl i64 %228, %230
  %232 = load i64, i64* @ll, align 8
  %233 = load i32, i32* @shift1, align 4
  %234 = sext i32 %233 to i64
  %235 = sub i64 64, %234
  %236 = ashr i64 %232, %235
  %237 = or i64 %231, %236
  %238 = icmp ne i64 %237, 1311768467750121216
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  call void @abort() #2
  unreachable

240:                                              ; preds = %227
  %241 = load i64, i64* @ll, align 8
  %242 = shl i64 %241, 4
  %243 = load i64, i64* @ll, align 8
  %244 = ashr i64 %243, 60
  %245 = or i64 %242, %244
  %246 = icmp ne i64 %245, 1311768467750121216
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  call void @abort() #2
  unreachable

248:                                              ; preds = %240
  %249 = load i64, i64* @ll, align 8
  %250 = load i32, i32* @shift2, align 4
  %251 = zext i32 %250 to i64
  %252 = shl i64 %249, %251
  %253 = load i64, i64* @ll, align 8
  %254 = load i32, i32* @shift2, align 4
  %255 = sext i32 %254 to i64
  %256 = sub i64 64, %255
  %257 = ashr i64 %253, %256
  %258 = or i64 %252, %257
  %259 = icmp ne i64 %258, 5124095577148911
  br i1 %259, label %260, label %261

260:                                              ; preds = %248
  call void @abort() #2
  unreachable

261:                                              ; preds = %248
  %262 = load i64, i64* @ll, align 8
  %263 = shl i64 %262, 60
  %264 = load i64, i64* @ll, align 8
  %265 = ashr i64 %264, 4
  %266 = or i64 %263, %265
  %267 = icmp ne i64 %266, 5124095577148911
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  call void @abort() #2
  unreachable

269:                                              ; preds = %261
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
