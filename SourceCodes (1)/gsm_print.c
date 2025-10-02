; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_print.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [62 x i8] c"LARc:\09%2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"#1: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"\09%.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"#2: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"#3: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"#4: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gsm_print(%struct._IO_FILE* noundef %0, %struct.gsm_state* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.gsm_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i16], align 16
  %9 = alloca [4 x i16], align 2
  %10 = alloca [4 x i16], align 2
  %11 = alloca [4 x i16], align 2
  %12 = alloca [4 x i16], align 2
  %13 = alloca [52 x i16], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.gsm_state* %1, %struct.gsm_state** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 4
  %18 = and i32 %17, 15
  %19 = icmp ne i32 %18, 13
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %1052

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = shl i32 %26, 2
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  store i16 %28, i16* %29, align 16
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 6
  %34 = and i32 %33, 3
  %35 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  %36 = load i16, i16* %35, align 16
  %37 = sext i16 %36 to i32
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 16
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 63
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 1
  store i16 %45, i16* %46, align 2
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = ashr i32 %49, 3
  %51 = and i32 %50, 31
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 2
  store i16 %52, i16* %53, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 7
  %59 = shl i32 %58, 2
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 3
  store i16 %60, i16* %61, align 2
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = ashr i32 %64, 6
  %66 = and i32 %65, 3
  %67 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 3
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = or i32 %69, %66
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 2
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 2
  %76 = and i32 %75, 15
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 4
  store i16 %77, i16* %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 3
  %84 = shl i32 %83, 2
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 5
  store i16 %85, i16* %86, align 2
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 6
  %91 = and i32 %90, 3
  %92 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 5
  %93 = load i16, i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = or i32 %94, %91
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %92, align 2
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = ashr i32 %99, 3
  %101 = and i32 %100, 7
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 6
  store i16 %102, i16* %103, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  %106 = load i8, i8* %104, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 7
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 7
  store i16 %109, i16* %110, align 2
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 1
  %115 = and i32 %114, 127
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 0
  store i16 %116, i16* %117, align 2
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  %120 = load i8, i8* %118, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 1
  %123 = shl i32 %122, 1
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  store i16 %124, i16* %125, align 2
  %126 = load i8*, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 7
  %130 = and i32 %129, 1
  %131 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %132 = load i16, i16* %131, align 2
  %133 = sext i16 %132 to i32
  %134 = or i32 %133, %130
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %131, align 2
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 5
  %140 = and i32 %139, 3
  %141 = trunc i32 %140 to i16
  %142 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  store i16 %141, i16* %142, align 2
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 31
  %148 = shl i32 %147, 1
  %149 = trunc i32 %148 to i16
  %150 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 0
  store i16 %149, i16* %150, align 2
  %151 = load i8*, i8** %7, align 8
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = ashr i32 %153, 7
  %155 = and i32 %154, 1
  %156 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 0
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = or i32 %158, %155
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %156, align 2
  %161 = load i8*, i8** %7, align 8
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = ashr i32 %163, 4
  %165 = and i32 %164, 7
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 0
  store i16 %166, i16* %167, align 16
  %168 = load i8*, i8** %7, align 8
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = ashr i32 %170, 1
  %172 = and i32 %171, 7
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 1
  store i16 %173, i16* %174, align 2
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %7, align 8
  %177 = load i8, i8* %175, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 1
  %180 = shl i32 %179, 2
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 2
  store i16 %181, i16* %182, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = ashr i32 %185, 6
  %187 = and i32 %186, 3
  %188 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 2
  %189 = load i16, i16* %188, align 4
  %190 = sext i16 %189 to i32
  %191 = or i32 %190, %187
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %188, align 4
  %193 = load i8*, i8** %7, align 8
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = ashr i32 %195, 3
  %197 = and i32 %196, 7
  %198 = trunc i32 %197 to i16
  %199 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 3
  store i16 %198, i16* %199, align 2
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %7, align 8
  %202 = load i8, i8* %200, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 7
  %205 = trunc i32 %204 to i16
  %206 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 4
  store i16 %205, i16* %206, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = ashr i32 %209, 5
  %211 = and i32 %210, 7
  %212 = trunc i32 %211 to i16
  %213 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 5
  store i16 %212, i16* %213, align 2
  %214 = load i8*, i8** %7, align 8
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = ashr i32 %216, 2
  %218 = and i32 %217, 7
  %219 = trunc i32 %218 to i16
  %220 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 6
  store i16 %219, i16* %220, align 4
  %221 = load i8*, i8** %7, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %7, align 8
  %223 = load i8, i8* %221, align 1
  %224 = zext i8 %223 to i32
  %225 = and i32 %224, 3
  %226 = shl i32 %225, 1
  %227 = trunc i32 %226 to i16
  %228 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 7
  store i16 %227, i16* %228, align 2
  %229 = load i8*, i8** %7, align 8
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = ashr i32 %231, 7
  %233 = and i32 %232, 1
  %234 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 7
  %235 = load i16, i16* %234, align 2
  %236 = sext i16 %235 to i32
  %237 = or i32 %236, %233
  %238 = trunc i32 %237 to i16
  store i16 %238, i16* %234, align 2
  %239 = load i8*, i8** %7, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = ashr i32 %241, 4
  %243 = and i32 %242, 7
  %244 = trunc i32 %243 to i16
  %245 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 8
  store i16 %244, i16* %245, align 16
  %246 = load i8*, i8** %7, align 8
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = ashr i32 %248, 1
  %250 = and i32 %249, 7
  %251 = trunc i32 %250 to i16
  %252 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 9
  store i16 %251, i16* %252, align 2
  %253 = load i8*, i8** %7, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %7, align 8
  %255 = load i8, i8* %253, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %256, 1
  %258 = shl i32 %257, 2
  %259 = trunc i32 %258 to i16
  %260 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 10
  store i16 %259, i16* %260, align 4
  %261 = load i8*, i8** %7, align 8
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = ashr i32 %263, 6
  %265 = and i32 %264, 3
  %266 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 10
  %267 = load i16, i16* %266, align 4
  %268 = sext i16 %267 to i32
  %269 = or i32 %268, %265
  %270 = trunc i32 %269 to i16
  store i16 %270, i16* %266, align 4
  %271 = load i8*, i8** %7, align 8
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = ashr i32 %273, 3
  %275 = and i32 %274, 7
  %276 = trunc i32 %275 to i16
  %277 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 11
  store i16 %276, i16* %277, align 2
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %7, align 8
  %280 = load i8, i8* %278, align 1
  %281 = zext i8 %280 to i32
  %282 = and i32 %281, 7
  %283 = trunc i32 %282 to i16
  %284 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 12
  store i16 %283, i16* %284, align 8
  %285 = load i8*, i8** %7, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = ashr i32 %287, 1
  %289 = and i32 %288, 127
  %290 = trunc i32 %289 to i16
  %291 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 1
  store i16 %290, i16* %291, align 2
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %7, align 8
  %294 = load i8, i8* %292, align 1
  %295 = zext i8 %294 to i32
  %296 = and i32 %295, 1
  %297 = shl i32 %296, 1
  %298 = trunc i32 %297 to i16
  %299 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 1
  store i16 %298, i16* %299, align 2
  %300 = load i8*, i8** %7, align 8
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = ashr i32 %302, 7
  %304 = and i32 %303, 1
  %305 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 1
  %306 = load i16, i16* %305, align 2
  %307 = sext i16 %306 to i32
  %308 = or i32 %307, %304
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* %305, align 2
  %310 = load i8*, i8** %7, align 8
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = ashr i32 %312, 5
  %314 = and i32 %313, 3
  %315 = trunc i32 %314 to i16
  %316 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 1
  store i16 %315, i16* %316, align 2
  %317 = load i8*, i8** %7, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %7, align 8
  %319 = load i8, i8* %317, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %320, 31
  %322 = shl i32 %321, 1
  %323 = trunc i32 %322 to i16
  %324 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 1
  store i16 %323, i16* %324, align 2
  %325 = load i8*, i8** %7, align 8
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = ashr i32 %327, 7
  %329 = and i32 %328, 1
  %330 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 1
  %331 = load i16, i16* %330, align 2
  %332 = sext i16 %331 to i32
  %333 = or i32 %332, %329
  %334 = trunc i32 %333 to i16
  store i16 %334, i16* %330, align 2
  %335 = load i8*, i8** %7, align 8
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = ashr i32 %337, 4
  %339 = and i32 %338, 7
  %340 = trunc i32 %339 to i16
  %341 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 13
  store i16 %340, i16* %341, align 2
  %342 = load i8*, i8** %7, align 8
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = ashr i32 %344, 1
  %346 = and i32 %345, 7
  %347 = trunc i32 %346 to i16
  %348 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 14
  store i16 %347, i16* %348, align 4
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %7, align 8
  %351 = load i8, i8* %349, align 1
  %352 = zext i8 %351 to i32
  %353 = and i32 %352, 1
  %354 = shl i32 %353, 2
  %355 = trunc i32 %354 to i16
  %356 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 15
  store i16 %355, i16* %356, align 2
  %357 = load i8*, i8** %7, align 8
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = ashr i32 %359, 6
  %361 = and i32 %360, 3
  %362 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 15
  %363 = load i16, i16* %362, align 2
  %364 = sext i16 %363 to i32
  %365 = or i32 %364, %361
  %366 = trunc i32 %365 to i16
  store i16 %366, i16* %362, align 2
  %367 = load i8*, i8** %7, align 8
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = ashr i32 %369, 3
  %371 = and i32 %370, 7
  %372 = trunc i32 %371 to i16
  %373 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 16
  store i16 %372, i16* %373, align 16
  %374 = load i8*, i8** %7, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %7, align 8
  %376 = load i8, i8* %374, align 1
  %377 = zext i8 %376 to i32
  %378 = and i32 %377, 7
  %379 = trunc i32 %378 to i16
  %380 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 17
  store i16 %379, i16* %380, align 2
  %381 = load i8*, i8** %7, align 8
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = ashr i32 %383, 5
  %385 = and i32 %384, 7
  %386 = trunc i32 %385 to i16
  %387 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 18
  store i16 %386, i16* %387, align 4
  %388 = load i8*, i8** %7, align 8
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = ashr i32 %390, 2
  %392 = and i32 %391, 7
  %393 = trunc i32 %392 to i16
  %394 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 19
  store i16 %393, i16* %394, align 2
  %395 = load i8*, i8** %7, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %7, align 8
  %397 = load i8, i8* %395, align 1
  %398 = zext i8 %397 to i32
  %399 = and i32 %398, 3
  %400 = shl i32 %399, 1
  %401 = trunc i32 %400 to i16
  %402 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 20
  store i16 %401, i16* %402, align 8
  %403 = load i8*, i8** %7, align 8
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = ashr i32 %405, 7
  %407 = and i32 %406, 1
  %408 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 20
  %409 = load i16, i16* %408, align 8
  %410 = sext i16 %409 to i32
  %411 = or i32 %410, %407
  %412 = trunc i32 %411 to i16
  store i16 %412, i16* %408, align 8
  %413 = load i8*, i8** %7, align 8
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = ashr i32 %415, 4
  %417 = and i32 %416, 7
  %418 = trunc i32 %417 to i16
  %419 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 21
  store i16 %418, i16* %419, align 2
  %420 = load i8*, i8** %7, align 8
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = ashr i32 %422, 1
  %424 = and i32 %423, 7
  %425 = trunc i32 %424 to i16
  %426 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 22
  store i16 %425, i16* %426, align 4
  %427 = load i8*, i8** %7, align 8
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %7, align 8
  %429 = load i8, i8* %427, align 1
  %430 = zext i8 %429 to i32
  %431 = and i32 %430, 1
  %432 = shl i32 %431, 2
  %433 = trunc i32 %432 to i16
  %434 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 23
  store i16 %433, i16* %434, align 2
  %435 = load i8*, i8** %7, align 8
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i32
  %438 = ashr i32 %437, 6
  %439 = and i32 %438, 3
  %440 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 23
  %441 = load i16, i16* %440, align 2
  %442 = sext i16 %441 to i32
  %443 = or i32 %442, %439
  %444 = trunc i32 %443 to i16
  store i16 %444, i16* %440, align 2
  %445 = load i8*, i8** %7, align 8
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = ashr i32 %447, 3
  %449 = and i32 %448, 7
  %450 = trunc i32 %449 to i16
  %451 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 24
  store i16 %450, i16* %451, align 16
  %452 = load i8*, i8** %7, align 8
  %453 = getelementptr inbounds i8, i8* %452, i32 1
  store i8* %453, i8** %7, align 8
  %454 = load i8, i8* %452, align 1
  %455 = zext i8 %454 to i32
  %456 = and i32 %455, 7
  %457 = trunc i32 %456 to i16
  %458 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 25
  store i16 %457, i16* %458, align 2
  %459 = load i8*, i8** %7, align 8
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = ashr i32 %461, 1
  %463 = and i32 %462, 127
  %464 = trunc i32 %463 to i16
  %465 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 2
  store i16 %464, i16* %465, align 2
  %466 = load i8*, i8** %7, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %7, align 8
  %468 = load i8, i8* %466, align 1
  %469 = zext i8 %468 to i32
  %470 = and i32 %469, 1
  %471 = shl i32 %470, 1
  %472 = trunc i32 %471 to i16
  %473 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 2
  store i16 %472, i16* %473, align 2
  %474 = load i8*, i8** %7, align 8
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i32
  %477 = ashr i32 %476, 7
  %478 = and i32 %477, 1
  %479 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 2
  %480 = load i16, i16* %479, align 2
  %481 = sext i16 %480 to i32
  %482 = or i32 %481, %478
  %483 = trunc i32 %482 to i16
  store i16 %483, i16* %479, align 2
  %484 = load i8*, i8** %7, align 8
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i32
  %487 = ashr i32 %486, 5
  %488 = and i32 %487, 3
  %489 = trunc i32 %488 to i16
  %490 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 2
  store i16 %489, i16* %490, align 2
  %491 = load i8*, i8** %7, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %7, align 8
  %493 = load i8, i8* %491, align 1
  %494 = zext i8 %493 to i32
  %495 = and i32 %494, 31
  %496 = shl i32 %495, 1
  %497 = trunc i32 %496 to i16
  %498 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 2
  store i16 %497, i16* %498, align 2
  %499 = load i8*, i8** %7, align 8
  %500 = load i8, i8* %499, align 1
  %501 = zext i8 %500 to i32
  %502 = ashr i32 %501, 7
  %503 = and i32 %502, 1
  %504 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 2
  %505 = load i16, i16* %504, align 2
  %506 = sext i16 %505 to i32
  %507 = or i32 %506, %503
  %508 = trunc i32 %507 to i16
  store i16 %508, i16* %504, align 2
  %509 = load i8*, i8** %7, align 8
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i32
  %512 = ashr i32 %511, 4
  %513 = and i32 %512, 7
  %514 = trunc i32 %513 to i16
  %515 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 26
  store i16 %514, i16* %515, align 4
  %516 = load i8*, i8** %7, align 8
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = ashr i32 %518, 1
  %520 = and i32 %519, 7
  %521 = trunc i32 %520 to i16
  %522 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 27
  store i16 %521, i16* %522, align 2
  %523 = load i8*, i8** %7, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %7, align 8
  %525 = load i8, i8* %523, align 1
  %526 = zext i8 %525 to i32
  %527 = and i32 %526, 1
  %528 = shl i32 %527, 2
  %529 = trunc i32 %528 to i16
  %530 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 28
  store i16 %529, i16* %530, align 8
  %531 = load i8*, i8** %7, align 8
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i32
  %534 = ashr i32 %533, 6
  %535 = and i32 %534, 3
  %536 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 28
  %537 = load i16, i16* %536, align 8
  %538 = sext i16 %537 to i32
  %539 = or i32 %538, %535
  %540 = trunc i32 %539 to i16
  store i16 %540, i16* %536, align 8
  %541 = load i8*, i8** %7, align 8
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = ashr i32 %543, 3
  %545 = and i32 %544, 7
  %546 = trunc i32 %545 to i16
  %547 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 29
  store i16 %546, i16* %547, align 2
  %548 = load i8*, i8** %7, align 8
  %549 = getelementptr inbounds i8, i8* %548, i32 1
  store i8* %549, i8** %7, align 8
  %550 = load i8, i8* %548, align 1
  %551 = zext i8 %550 to i32
  %552 = and i32 %551, 7
  %553 = trunc i32 %552 to i16
  %554 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 30
  store i16 %553, i16* %554, align 4
  %555 = load i8*, i8** %7, align 8
  %556 = load i8, i8* %555, align 1
  %557 = zext i8 %556 to i32
  %558 = ashr i32 %557, 5
  %559 = and i32 %558, 7
  %560 = trunc i32 %559 to i16
  %561 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 31
  store i16 %560, i16* %561, align 2
  %562 = load i8*, i8** %7, align 8
  %563 = load i8, i8* %562, align 1
  %564 = zext i8 %563 to i32
  %565 = ashr i32 %564, 2
  %566 = and i32 %565, 7
  %567 = trunc i32 %566 to i16
  %568 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 32
  store i16 %567, i16* %568, align 16
  %569 = load i8*, i8** %7, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %7, align 8
  %571 = load i8, i8* %569, align 1
  %572 = zext i8 %571 to i32
  %573 = and i32 %572, 3
  %574 = shl i32 %573, 1
  %575 = trunc i32 %574 to i16
  %576 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 33
  store i16 %575, i16* %576, align 2
  %577 = load i8*, i8** %7, align 8
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = ashr i32 %579, 7
  %581 = and i32 %580, 1
  %582 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 33
  %583 = load i16, i16* %582, align 2
  %584 = sext i16 %583 to i32
  %585 = or i32 %584, %581
  %586 = trunc i32 %585 to i16
  store i16 %586, i16* %582, align 2
  %587 = load i8*, i8** %7, align 8
  %588 = load i8, i8* %587, align 1
  %589 = zext i8 %588 to i32
  %590 = ashr i32 %589, 4
  %591 = and i32 %590, 7
  %592 = trunc i32 %591 to i16
  %593 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 34
  store i16 %592, i16* %593, align 4
  %594 = load i8*, i8** %7, align 8
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i32
  %597 = ashr i32 %596, 1
  %598 = and i32 %597, 7
  %599 = trunc i32 %598 to i16
  %600 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 35
  store i16 %599, i16* %600, align 2
  %601 = load i8*, i8** %7, align 8
  %602 = getelementptr inbounds i8, i8* %601, i32 1
  store i8* %602, i8** %7, align 8
  %603 = load i8, i8* %601, align 1
  %604 = zext i8 %603 to i32
  %605 = and i32 %604, 1
  %606 = shl i32 %605, 2
  %607 = trunc i32 %606 to i16
  %608 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 36
  store i16 %607, i16* %608, align 8
  %609 = load i8*, i8** %7, align 8
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = ashr i32 %611, 6
  %613 = and i32 %612, 3
  %614 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 36
  %615 = load i16, i16* %614, align 8
  %616 = sext i16 %615 to i32
  %617 = or i32 %616, %613
  %618 = trunc i32 %617 to i16
  store i16 %618, i16* %614, align 8
  %619 = load i8*, i8** %7, align 8
  %620 = load i8, i8* %619, align 1
  %621 = zext i8 %620 to i32
  %622 = ashr i32 %621, 3
  %623 = and i32 %622, 7
  %624 = trunc i32 %623 to i16
  %625 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 37
  store i16 %624, i16* %625, align 2
  %626 = load i8*, i8** %7, align 8
  %627 = getelementptr inbounds i8, i8* %626, i32 1
  store i8* %627, i8** %7, align 8
  %628 = load i8, i8* %626, align 1
  %629 = zext i8 %628 to i32
  %630 = and i32 %629, 7
  %631 = trunc i32 %630 to i16
  %632 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 38
  store i16 %631, i16* %632, align 4
  %633 = load i8*, i8** %7, align 8
  %634 = load i8, i8* %633, align 1
  %635 = zext i8 %634 to i32
  %636 = ashr i32 %635, 1
  %637 = and i32 %636, 127
  %638 = trunc i32 %637 to i16
  %639 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 3
  store i16 %638, i16* %639, align 2
  %640 = load i8*, i8** %7, align 8
  %641 = getelementptr inbounds i8, i8* %640, i32 1
  store i8* %641, i8** %7, align 8
  %642 = load i8, i8* %640, align 1
  %643 = zext i8 %642 to i32
  %644 = and i32 %643, 1
  %645 = shl i32 %644, 1
  %646 = trunc i32 %645 to i16
  %647 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 3
  store i16 %646, i16* %647, align 2
  %648 = load i8*, i8** %7, align 8
  %649 = load i8, i8* %648, align 1
  %650 = zext i8 %649 to i32
  %651 = ashr i32 %650, 7
  %652 = and i32 %651, 1
  %653 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 3
  %654 = load i16, i16* %653, align 2
  %655 = sext i16 %654 to i32
  %656 = or i32 %655, %652
  %657 = trunc i32 %656 to i16
  store i16 %657, i16* %653, align 2
  %658 = load i8*, i8** %7, align 8
  %659 = load i8, i8* %658, align 1
  %660 = zext i8 %659 to i32
  %661 = ashr i32 %660, 5
  %662 = and i32 %661, 3
  %663 = trunc i32 %662 to i16
  %664 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 3
  store i16 %663, i16* %664, align 2
  %665 = load i8*, i8** %7, align 8
  %666 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %666, i8** %7, align 8
  %667 = load i8, i8* %665, align 1
  %668 = zext i8 %667 to i32
  %669 = and i32 %668, 31
  %670 = shl i32 %669, 1
  %671 = trunc i32 %670 to i16
  %672 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 3
  store i16 %671, i16* %672, align 2
  %673 = load i8*, i8** %7, align 8
  %674 = load i8, i8* %673, align 1
  %675 = zext i8 %674 to i32
  %676 = ashr i32 %675, 7
  %677 = and i32 %676, 1
  %678 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 3
  %679 = load i16, i16* %678, align 2
  %680 = sext i16 %679 to i32
  %681 = or i32 %680, %677
  %682 = trunc i32 %681 to i16
  store i16 %682, i16* %678, align 2
  %683 = load i8*, i8** %7, align 8
  %684 = load i8, i8* %683, align 1
  %685 = zext i8 %684 to i32
  %686 = ashr i32 %685, 4
  %687 = and i32 %686, 7
  %688 = trunc i32 %687 to i16
  %689 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 39
  store i16 %688, i16* %689, align 2
  %690 = load i8*, i8** %7, align 8
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  %693 = ashr i32 %692, 1
  %694 = and i32 %693, 7
  %695 = trunc i32 %694 to i16
  %696 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 40
  store i16 %695, i16* %696, align 16
  %697 = load i8*, i8** %7, align 8
  %698 = getelementptr inbounds i8, i8* %697, i32 1
  store i8* %698, i8** %7, align 8
  %699 = load i8, i8* %697, align 1
  %700 = zext i8 %699 to i32
  %701 = and i32 %700, 1
  %702 = shl i32 %701, 2
  %703 = trunc i32 %702 to i16
  %704 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 41
  store i16 %703, i16* %704, align 2
  %705 = load i8*, i8** %7, align 8
  %706 = load i8, i8* %705, align 1
  %707 = zext i8 %706 to i32
  %708 = ashr i32 %707, 6
  %709 = and i32 %708, 3
  %710 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 41
  %711 = load i16, i16* %710, align 2
  %712 = sext i16 %711 to i32
  %713 = or i32 %712, %709
  %714 = trunc i32 %713 to i16
  store i16 %714, i16* %710, align 2
  %715 = load i8*, i8** %7, align 8
  %716 = load i8, i8* %715, align 1
  %717 = zext i8 %716 to i32
  %718 = ashr i32 %717, 3
  %719 = and i32 %718, 7
  %720 = trunc i32 %719 to i16
  %721 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 42
  store i16 %720, i16* %721, align 4
  %722 = load i8*, i8** %7, align 8
  %723 = getelementptr inbounds i8, i8* %722, i32 1
  store i8* %723, i8** %7, align 8
  %724 = load i8, i8* %722, align 1
  %725 = zext i8 %724 to i32
  %726 = and i32 %725, 7
  %727 = trunc i32 %726 to i16
  %728 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 43
  store i16 %727, i16* %728, align 2
  %729 = load i8*, i8** %7, align 8
  %730 = load i8, i8* %729, align 1
  %731 = zext i8 %730 to i32
  %732 = ashr i32 %731, 5
  %733 = and i32 %732, 7
  %734 = trunc i32 %733 to i16
  %735 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 44
  store i16 %734, i16* %735, align 8
  %736 = load i8*, i8** %7, align 8
  %737 = load i8, i8* %736, align 1
  %738 = zext i8 %737 to i32
  %739 = ashr i32 %738, 2
  %740 = and i32 %739, 7
  %741 = trunc i32 %740 to i16
  %742 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 45
  store i16 %741, i16* %742, align 2
  %743 = load i8*, i8** %7, align 8
  %744 = getelementptr inbounds i8, i8* %743, i32 1
  store i8* %744, i8** %7, align 8
  %745 = load i8, i8* %743, align 1
  %746 = zext i8 %745 to i32
  %747 = and i32 %746, 3
  %748 = shl i32 %747, 1
  %749 = trunc i32 %748 to i16
  %750 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 46
  store i16 %749, i16* %750, align 4
  %751 = load i8*, i8** %7, align 8
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i32
  %754 = ashr i32 %753, 7
  %755 = and i32 %754, 1
  %756 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 46
  %757 = load i16, i16* %756, align 4
  %758 = sext i16 %757 to i32
  %759 = or i32 %758, %755
  %760 = trunc i32 %759 to i16
  store i16 %760, i16* %756, align 4
  %761 = load i8*, i8** %7, align 8
  %762 = load i8, i8* %761, align 1
  %763 = zext i8 %762 to i32
  %764 = ashr i32 %763, 4
  %765 = and i32 %764, 7
  %766 = trunc i32 %765 to i16
  %767 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 47
  store i16 %766, i16* %767, align 2
  %768 = load i8*, i8** %7, align 8
  %769 = load i8, i8* %768, align 1
  %770 = zext i8 %769 to i32
  %771 = ashr i32 %770, 1
  %772 = and i32 %771, 7
  %773 = trunc i32 %772 to i16
  %774 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 48
  store i16 %773, i16* %774, align 16
  %775 = load i8*, i8** %7, align 8
  %776 = getelementptr inbounds i8, i8* %775, i32 1
  store i8* %776, i8** %7, align 8
  %777 = load i8, i8* %775, align 1
  %778 = zext i8 %777 to i32
  %779 = and i32 %778, 1
  %780 = shl i32 %779, 2
  %781 = trunc i32 %780 to i16
  %782 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 49
  store i16 %781, i16* %782, align 2
  %783 = load i8*, i8** %7, align 8
  %784 = load i8, i8* %783, align 1
  %785 = zext i8 %784 to i32
  %786 = ashr i32 %785, 6
  %787 = and i32 %786, 3
  %788 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 49
  %789 = load i16, i16* %788, align 2
  %790 = sext i16 %789 to i32
  %791 = or i32 %790, %787
  %792 = trunc i32 %791 to i16
  store i16 %792, i16* %788, align 2
  %793 = load i8*, i8** %7, align 8
  %794 = load i8, i8* %793, align 1
  %795 = zext i8 %794 to i32
  %796 = ashr i32 %795, 3
  %797 = and i32 %796, 7
  %798 = trunc i32 %797 to i16
  %799 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 50
  store i16 %798, i16* %799, align 4
  %800 = load i8*, i8** %7, align 8
  %801 = load i8, i8* %800, align 1
  %802 = zext i8 %801 to i32
  %803 = and i32 %802, 7
  %804 = trunc i32 %803 to i16
  %805 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 51
  store i16 %804, i16* %805, align 2
  %806 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %807 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  %808 = load i16, i16* %807, align 16
  %809 = sext i16 %808 to i32
  %810 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 1
  %811 = load i16, i16* %810, align 2
  %812 = sext i16 %811 to i32
  %813 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 2
  %814 = load i16, i16* %813, align 4
  %815 = sext i16 %814 to i32
  %816 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 3
  %817 = load i16, i16* %816, align 2
  %818 = sext i16 %817 to i32
  %819 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 4
  %820 = load i16, i16* %819, align 8
  %821 = sext i16 %820 to i32
  %822 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 5
  %823 = load i16, i16* %822, align 2
  %824 = sext i16 %823 to i32
  %825 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 6
  %826 = load i16, i16* %825, align 4
  %827 = sext i16 %826 to i32
  %828 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 7
  %829 = load i16, i16* %828, align 2
  %830 = sext i16 %829 to i32
  %831 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %806, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %809, i32 noundef %812, i32 noundef %815, i32 noundef %818, i32 noundef %821, i32 noundef %824, i32 noundef %827, i32 noundef %830)
  %832 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %833 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 0
  %834 = load i16, i16* %833, align 2
  %835 = sext i16 %834 to i32
  %836 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %837 = load i16, i16* %836, align 2
  %838 = sext i16 %837 to i32
  %839 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  %840 = load i16, i16* %839, align 2
  %841 = sext i16 %840 to i32
  %842 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 0
  %843 = load i16, i16* %842, align 2
  %844 = sext i16 %843 to i32
  %845 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %832, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %835, i32 noundef %838, i32 noundef %841, i32 noundef %844)
  %846 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %847 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 0
  %848 = load i16, i16* %847, align 16
  %849 = sext i16 %848 to i32
  %850 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 1
  %851 = load i16, i16* %850, align 2
  %852 = sext i16 %851 to i32
  %853 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 2
  %854 = load i16, i16* %853, align 4
  %855 = sext i16 %854 to i32
  %856 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 3
  %857 = load i16, i16* %856, align 2
  %858 = sext i16 %857 to i32
  %859 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 4
  %860 = load i16, i16* %859, align 8
  %861 = sext i16 %860 to i32
  %862 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 5
  %863 = load i16, i16* %862, align 2
  %864 = sext i16 %863 to i32
  %865 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 6
  %866 = load i16, i16* %865, align 4
  %867 = sext i16 %866 to i32
  %868 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 7
  %869 = load i16, i16* %868, align 2
  %870 = sext i16 %869 to i32
  %871 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 8
  %872 = load i16, i16* %871, align 16
  %873 = sext i16 %872 to i32
  %874 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 9
  %875 = load i16, i16* %874, align 2
  %876 = sext i16 %875 to i32
  %877 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 10
  %878 = load i16, i16* %877, align 4
  %879 = sext i16 %878 to i32
  %880 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 11
  %881 = load i16, i16* %880, align 2
  %882 = sext i16 %881 to i32
  %883 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 12
  %884 = load i16, i16* %883, align 8
  %885 = sext i16 %884 to i32
  %886 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %846, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %849, i32 noundef %852, i32 noundef %855, i32 noundef %858, i32 noundef %861, i32 noundef %864, i32 noundef %867, i32 noundef %870, i32 noundef %873, i32 noundef %876, i32 noundef %879, i32 noundef %882, i32 noundef %885)
  %887 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %888 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 1
  %889 = load i16, i16* %888, align 2
  %890 = sext i16 %889 to i32
  %891 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 1
  %892 = load i16, i16* %891, align 2
  %893 = sext i16 %892 to i32
  %894 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 1
  %895 = load i16, i16* %894, align 2
  %896 = sext i16 %895 to i32
  %897 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 1
  %898 = load i16, i16* %897, align 2
  %899 = sext i16 %898 to i32
  %900 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %887, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 noundef %890, i32 noundef %893, i32 noundef %896, i32 noundef %899)
  %901 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %902 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 13
  %903 = load i16, i16* %902, align 2
  %904 = sext i16 %903 to i32
  %905 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 14
  %906 = load i16, i16* %905, align 4
  %907 = sext i16 %906 to i32
  %908 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 15
  %909 = load i16, i16* %908, align 2
  %910 = sext i16 %909 to i32
  %911 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 16
  %912 = load i16, i16* %911, align 16
  %913 = sext i16 %912 to i32
  %914 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 17
  %915 = load i16, i16* %914, align 2
  %916 = sext i16 %915 to i32
  %917 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 18
  %918 = load i16, i16* %917, align 4
  %919 = sext i16 %918 to i32
  %920 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 19
  %921 = load i16, i16* %920, align 2
  %922 = sext i16 %921 to i32
  %923 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 20
  %924 = load i16, i16* %923, align 8
  %925 = sext i16 %924 to i32
  %926 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 21
  %927 = load i16, i16* %926, align 2
  %928 = sext i16 %927 to i32
  %929 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 22
  %930 = load i16, i16* %929, align 4
  %931 = sext i16 %930 to i32
  %932 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 23
  %933 = load i16, i16* %932, align 2
  %934 = sext i16 %933 to i32
  %935 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 24
  %936 = load i16, i16* %935, align 16
  %937 = sext i16 %936 to i32
  %938 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 25
  %939 = load i16, i16* %938, align 2
  %940 = sext i16 %939 to i32
  %941 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %901, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %904, i32 noundef %907, i32 noundef %910, i32 noundef %913, i32 noundef %916, i32 noundef %919, i32 noundef %922, i32 noundef %925, i32 noundef %928, i32 noundef %931, i32 noundef %934, i32 noundef %937, i32 noundef %940)
  %942 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %943 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 2
  %944 = load i16, i16* %943, align 2
  %945 = sext i16 %944 to i32
  %946 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 2
  %947 = load i16, i16* %946, align 2
  %948 = sext i16 %947 to i32
  %949 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 2
  %950 = load i16, i16* %949, align 2
  %951 = sext i16 %950 to i32
  %952 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 2
  %953 = load i16, i16* %952, align 2
  %954 = sext i16 %953 to i32
  %955 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %942, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 noundef %945, i32 noundef %948, i32 noundef %951, i32 noundef %954)
  %956 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %957 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 26
  %958 = load i16, i16* %957, align 4
  %959 = sext i16 %958 to i32
  %960 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 27
  %961 = load i16, i16* %960, align 2
  %962 = sext i16 %961 to i32
  %963 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 28
  %964 = load i16, i16* %963, align 8
  %965 = sext i16 %964 to i32
  %966 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 29
  %967 = load i16, i16* %966, align 2
  %968 = sext i16 %967 to i32
  %969 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 30
  %970 = load i16, i16* %969, align 4
  %971 = sext i16 %970 to i32
  %972 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 31
  %973 = load i16, i16* %972, align 2
  %974 = sext i16 %973 to i32
  %975 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 32
  %976 = load i16, i16* %975, align 16
  %977 = sext i16 %976 to i32
  %978 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 33
  %979 = load i16, i16* %978, align 2
  %980 = sext i16 %979 to i32
  %981 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 34
  %982 = load i16, i16* %981, align 4
  %983 = sext i16 %982 to i32
  %984 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 35
  %985 = load i16, i16* %984, align 2
  %986 = sext i16 %985 to i32
  %987 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 36
  %988 = load i16, i16* %987, align 8
  %989 = sext i16 %988 to i32
  %990 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 37
  %991 = load i16, i16* %990, align 2
  %992 = sext i16 %991 to i32
  %993 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 38
  %994 = load i16, i16* %993, align 4
  %995 = sext i16 %994 to i32
  %996 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %956, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %959, i32 noundef %962, i32 noundef %965, i32 noundef %968, i32 noundef %971, i32 noundef %974, i32 noundef %977, i32 noundef %980, i32 noundef %983, i32 noundef %986, i32 noundef %989, i32 noundef %992, i32 noundef %995)
  %997 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %998 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 3
  %999 = load i16, i16* %998, align 2
  %1000 = sext i16 %999 to i32
  %1001 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 3
  %1002 = load i16, i16* %1001, align 2
  %1003 = sext i16 %1002 to i32
  %1004 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 3
  %1005 = load i16, i16* %1004, align 2
  %1006 = sext i16 %1005 to i32
  %1007 = getelementptr inbounds [4 x i16], [4 x i16]* %12, i64 0, i64 3
  %1008 = load i16, i16* %1007, align 2
  %1009 = sext i16 %1008 to i32
  %1010 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %997, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 noundef %1000, i32 noundef %1003, i32 noundef %1006, i32 noundef %1009)
  %1011 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %1012 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 39
  %1013 = load i16, i16* %1012, align 2
  %1014 = sext i16 %1013 to i32
  %1015 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 40
  %1016 = load i16, i16* %1015, align 16
  %1017 = sext i16 %1016 to i32
  %1018 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 41
  %1019 = load i16, i16* %1018, align 2
  %1020 = sext i16 %1019 to i32
  %1021 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 42
  %1022 = load i16, i16* %1021, align 4
  %1023 = sext i16 %1022 to i32
  %1024 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 43
  %1025 = load i16, i16* %1024, align 2
  %1026 = sext i16 %1025 to i32
  %1027 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 44
  %1028 = load i16, i16* %1027, align 8
  %1029 = sext i16 %1028 to i32
  %1030 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 45
  %1031 = load i16, i16* %1030, align 2
  %1032 = sext i16 %1031 to i32
  %1033 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 46
  %1034 = load i16, i16* %1033, align 4
  %1035 = sext i16 %1034 to i32
  %1036 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 47
  %1037 = load i16, i16* %1036, align 2
  %1038 = sext i16 %1037 to i32
  %1039 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 48
  %1040 = load i16, i16* %1039, align 16
  %1041 = sext i16 %1040 to i32
  %1042 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 49
  %1043 = load i16, i16* %1042, align 2
  %1044 = sext i16 %1043 to i32
  %1045 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 50
  %1046 = load i16, i16* %1045, align 4
  %1047 = sext i16 %1046 to i32
  %1048 = getelementptr inbounds [52 x i16], [52 x i16]* %13, i64 0, i64 51
  %1049 = load i16, i16* %1048, align 2
  %1050 = sext i16 %1049 to i32
  %1051 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1011, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %1014, i32 noundef %1017, i32 noundef %1020, i32 noundef %1023, i32 noundef %1026, i32 noundef %1029, i32 noundef %1032, i32 noundef %1035, i32 noundef %1038, i32 noundef %1041, i32 noundef %1044, i32 noundef %1047, i32 noundef %1050)
  store i32 0, i32* %4, align 4
  br label %1052

1052:                                             ; preds = %21, %20
  %1053 = load i32, i32* %4, align 4
  ret i32 %1053
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
