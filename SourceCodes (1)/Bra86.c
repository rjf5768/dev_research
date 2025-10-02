; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Bra86.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Bra86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaskToAllowedStatus = dso_local constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@kMaskToBitNumber = dso_local constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @x86_Convert(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %249

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 5
  store i32 %30, i32* %9, align 4
  store i64 -1, i64* %13, align 8
  br label %31

31:                                               ; preds = %230, %104, %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -4
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %51, %31
  %40 = load i8*, i8** %15, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i8*, i8** %15, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 254
  %48 = icmp eq i32 %47, 232
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %15, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %15, align 8
  br label %39, !llvm.loop !4

54:                                               ; preds = %49, %39
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  store i64 %59, i64* %12, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp uge i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %231

64:                                               ; preds = %54
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ugt i64 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %114

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 %72, %75
  %77 = and i32 %76, 7
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %71
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %81, i64 %88
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %17, align 1
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToAllowedStatus, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %80
  %97 = load i8, i8* %17, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8, i8* %17, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %112

104:                                              ; preds = %100, %96, %80
  %105 = load i64, i64* %12, align 8
  store i64 %105, i64* %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = shl i32 %106, 1
  %108 = and i32 %107, 7
  %109 = or i32 %108, 1
  store i32 %109, i32* %14, align 4
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %31

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %71
  br label %114

114:                                              ; preds = %113, %70
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %13, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %114
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 255
  br i1 %126, label %127, label %223

127:                                              ; preds = %121, %114
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 24
  %133 = load i8*, i8** %15, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = shl i32 %136, 16
  %138 = or i32 %132, %137
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl i32 %142, 8
  %144 = or i32 %138, %143
  %145 = load i8*, i8** %15, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %144, %148
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %191, %127
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = load i64, i64* %12, align 8
  %156 = trunc i64 %155 to i32
  %157 = add i32 %154, %156
  %158 = load i32, i32* %18, align 4
  %159 = add i32 %157, %158
  store i32 %159, i32* %19, align 4
  br label %167

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i64, i64* %12, align 8
  %164 = trunc i64 %163 to i32
  %165 = add i32 %162, %164
  %166 = sub i32 %161, %165
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %160, %153
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %198

171:                                              ; preds = %167
  %172 = load i32, i32* %14, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = mul nsw i32 %176, 8
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %21, align 4
  %180 = sub nsw i32 24, %179
  %181 = lshr i32 %178, %180
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %20, align 1
  %183 = load i8, i8* %20, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %171
  %187 = load i8, i8* %20, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 255
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  br label %198

191:                                              ; preds = %186, %171
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %21, align 4
  %194 = sub nsw i32 32, %193
  %195 = shl i32 1, %194
  %196 = sub nsw i32 %195, 1
  %197 = xor i32 %192, %196
  store i32 %197, i32* %18, align 4
  br label %150

198:                                              ; preds = %190, %170
  %199 = load i32, i32* %19, align 4
  %200 = lshr i32 %199, 24
  %201 = and i32 %200, 1
  %202 = sub i32 %201, 1
  %203 = xor i32 %202, -1
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %15, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 4
  store i8 %204, i8* %206, align 1
  %207 = load i32, i32* %19, align 4
  %208 = lshr i32 %207, 16
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %15, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 3
  store i8 %209, i8* %211, align 1
  %212 = load i32, i32* %19, align 4
  %213 = lshr i32 %212, 8
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  store i8 %214, i8* %216, align 1
  %217 = load i32, i32* %19, align 4
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %15, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  store i8 %218, i8* %220, align 1
  %221 = load i64, i64* %12, align 8
  %222 = add i64 %221, 5
  store i64 %222, i64* %12, align 8
  br label %230

223:                                              ; preds = %121
  %224 = load i32, i32* %14, align 4
  %225 = shl i32 %224, 1
  %226 = and i32 %225, 7
  %227 = or i32 %226, 1
  store i32 %227, i32* %14, align 4
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %230

230:                                              ; preds = %223, %198
  br label %31

231:                                              ; preds = %63
  %232 = load i64, i64* %12, align 8
  %233 = load i64, i64* %13, align 8
  %234 = sub i64 %232, %233
  store i64 %234, i64* %13, align 8
  %235 = load i64, i64* %13, align 8
  %236 = icmp ugt i64 %235, 3
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %245

238:                                              ; preds = %231
  %239 = load i32, i32* %14, align 4
  %240 = load i64, i64* %13, align 8
  %241 = trunc i64 %240 to i32
  %242 = sub nsw i32 %241, 1
  %243 = shl i32 %239, %242
  %244 = and i32 %243, 7
  br label %245

245:                                              ; preds = %238, %237
  %246 = phi i32 [ 0, %237 ], [ %244, %238 ]
  %247 = load i32*, i32** %10, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i64, i64* %12, align 8
  store i64 %248, i64* %6, align 8
  br label %249

249:                                              ; preds = %245, %27
  %250 = load i64, i64* %6, align 8
  ret i64 %250
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
