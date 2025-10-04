; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ofb64.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_ofb64_encrypt(i8* noundef %0, i8* noundef %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bf_key_st*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [8 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca [2 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %17, align 8
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %21, align 8
  %27 = load i8*, i8** %21, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %21, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i64
  %31 = shl i64 %30, 24
  store i64 %31, i64* %13, align 8
  %32 = load i8*, i8** %21, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %21, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 16
  %37 = load i64, i64* %13, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %13, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %21, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 8
  %44 = load i64, i64* %13, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i8*, i8** %21, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %21, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* %13, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %13, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %21, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i64
  %56 = shl i64 %55, 24
  store i64 %56, i64* %14, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %21, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  %61 = shl i64 %60, 16
  %62 = load i64, i64* %14, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %14, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %21, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i64
  %68 = shl i64 %67, 8
  %69 = load i64, i64* %14, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %14, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i64
  %75 = load i64, i64* %14, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %77, i64* %78, align 16
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8* %81, i8** %19, align 8
  %82 = load i64, i64* %13, align 8
  %83 = lshr i64 %82, 24
  %84 = and i64 %83, 255
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %19, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %19, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i64, i64* %13, align 8
  %89 = lshr i64 %88, 16
  %90 = and i64 %89, 255
  %91 = trunc i64 %90 to i8
  %92 = load i8*, i8** %19, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %19, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i64, i64* %13, align 8
  %95 = lshr i64 %94, 8
  %96 = and i64 %95, 255
  %97 = trunc i64 %96 to i8
  %98 = load i8*, i8** %19, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %19, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i64, i64* %13, align 8
  %101 = and i64 %100, 255
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %19, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i64, i64* %14, align 8
  %106 = lshr i64 %105, 24
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %19, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i64, i64* %14, align 8
  %112 = lshr i64 %111, 16
  %113 = and i64 %112, 255
  %114 = trunc i64 %113 to i8
  %115 = load i8*, i8** %19, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %19, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i64, i64* %14, align 8
  %118 = lshr i64 %117, 8
  %119 = and i64 %118, 255
  %120 = trunc i64 %119 to i8
  %121 = load i8*, i8** %19, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %19, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i64, i64* %14, align 8
  %124 = and i64 %123, 255
  %125 = trunc i64 %124 to i8
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %19, align 8
  store i8 %125, i8* %126, align 1
  br label %128

128:                                              ; preds = %191, %6
  %129 = load i64, i64* %17, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %17, align 8
  %131 = icmp ne i64 %129, 0
  br i1 %131, label %132, label %208

132:                                              ; preds = %128
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %191

135:                                              ; preds = %132
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %137 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 8
  call void @BF_encrypt(i64* noundef %136, %struct.bf_key_st* noundef %137, i32 noundef 1)
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8* %138, i8** %19, align 8
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = lshr i64 %141, 24
  %143 = and i64 %142, 255
  %144 = trunc i64 %143 to i8
  %145 = load i8*, i8** %19, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %19, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i64, i64* %15, align 8
  %148 = lshr i64 %147, 16
  %149 = and i64 %148, 255
  %150 = trunc i64 %149 to i8
  %151 = load i8*, i8** %19, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %19, align 8
  store i8 %150, i8* %151, align 1
  %153 = load i64, i64* %15, align 8
  %154 = lshr i64 %153, 8
  %155 = and i64 %154, 255
  %156 = trunc i64 %155 to i8
  %157 = load i8*, i8** %19, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %19, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i64, i64* %15, align 8
  %160 = and i64 %159, 255
  %161 = trunc i64 %160 to i8
  %162 = load i8*, i8** %19, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %19, align 8
  store i8 %161, i8* %162, align 1
  %164 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %15, align 8
  %166 = load i64, i64* %15, align 8
  %167 = lshr i64 %166, 24
  %168 = and i64 %167, 255
  %169 = trunc i64 %168 to i8
  %170 = load i8*, i8** %19, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %19, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i64, i64* %15, align 8
  %173 = lshr i64 %172, 16
  %174 = and i64 %173, 255
  %175 = trunc i64 %174 to i8
  %176 = load i8*, i8** %19, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %19, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i64, i64* %15, align 8
  %179 = lshr i64 %178, 8
  %180 = and i64 %179, 255
  %181 = trunc i64 %180 to i8
  %182 = load i8*, i8** %19, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %19, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i64, i64* %15, align 8
  %185 = and i64 %184, 255
  %186 = trunc i64 %185 to i8
  %187 = load i8*, i8** %19, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %19, align 8
  store i8 %186, i8* %187, align 1
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %22, align 4
  br label %191

191:                                              ; preds = %135, %132
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 8
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = xor i32 %195, %200
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %8, align 8
  store i8 %202, i8* %203, align 1
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  %207 = and i32 %206, 7
  store i32 %207, i32* %16, align 4
  br label %128, !llvm.loop !4

208:                                              ; preds = %128
  %209 = load i32, i32* %22, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %263

211:                                              ; preds = %208
  %212 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %213 = load i64, i64* %212, align 16
  store i64 %213, i64* %13, align 8
  %214 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %14, align 8
  %216 = load i8*, i8** %11, align 8
  store i8* %216, i8** %21, align 8
  %217 = load i64, i64* %13, align 8
  %218 = lshr i64 %217, 24
  %219 = and i64 %218, 255
  %220 = trunc i64 %219 to i8
  %221 = load i8*, i8** %21, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %21, align 8
  store i8 %220, i8* %221, align 1
  %223 = load i64, i64* %13, align 8
  %224 = lshr i64 %223, 16
  %225 = and i64 %224, 255
  %226 = trunc i64 %225 to i8
  %227 = load i8*, i8** %21, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %21, align 8
  store i8 %226, i8* %227, align 1
  %229 = load i64, i64* %13, align 8
  %230 = lshr i64 %229, 8
  %231 = and i64 %230, 255
  %232 = trunc i64 %231 to i8
  %233 = load i8*, i8** %21, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %21, align 8
  store i8 %232, i8* %233, align 1
  %235 = load i64, i64* %13, align 8
  %236 = and i64 %235, 255
  %237 = trunc i64 %236 to i8
  %238 = load i8*, i8** %21, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %21, align 8
  store i8 %237, i8* %238, align 1
  %240 = load i64, i64* %14, align 8
  %241 = lshr i64 %240, 24
  %242 = and i64 %241, 255
  %243 = trunc i64 %242 to i8
  %244 = load i8*, i8** %21, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %21, align 8
  store i8 %243, i8* %244, align 1
  %246 = load i64, i64* %14, align 8
  %247 = lshr i64 %246, 16
  %248 = and i64 %247, 255
  %249 = trunc i64 %248 to i8
  %250 = load i8*, i8** %21, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %21, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i64, i64* %14, align 8
  %253 = lshr i64 %252, 8
  %254 = and i64 %253, 255
  %255 = trunc i64 %254 to i8
  %256 = load i8*, i8** %21, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %21, align 8
  store i8 %255, i8* %256, align 1
  %258 = load i64, i64* %14, align 8
  %259 = and i64 %258, 255
  %260 = trunc i64 %259 to i8
  %261 = load i8*, i8** %21, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %21, align 8
  store i8 %260, i8* %261, align 1
  br label %263

263:                                              ; preds = %211, %208
  %264 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %264, align 8
  %265 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %265, align 16
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load i32*, i32** %12, align 8
  store i32 %266, i32* %267, align 4
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

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
