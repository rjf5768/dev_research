; ModuleID = './gsm_print.ll'
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
define dso_local i32 @gsm_print(%struct._IO_FILE* noundef %0, %struct.gsm_state* nocapture noundef readnone %1, i8* nocapture noundef readonly %2) #0 {
  %4 = alloca [8 x i16], align 16
  %5 = alloca [4 x i16], align 2
  %6 = alloca [4 x i16], align 2
  %7 = alloca [4 x i16], align 2
  %8 = alloca [4 x i16], align 2
  %9 = alloca [52 x i16], align 16
  %10 = load i8, i8* %2, align 1
  %.mask = and i8 %10, -16
  %.not = icmp eq i8 %.mask, -48
  br i1 %.not, label %12, label %11

11:                                               ; preds = %3
  br label %727

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %2, i64 1
  %14 = load i8, i8* %2, align 1
  %15 = shl i8 %14, 2
  %16 = and i8 %15, 60
  %17 = zext i8 %16 to i16
  %18 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  store i16 %17, i16* %18, align 16
  %19 = load i8, i8* %13, align 1
  %20 = lshr i8 %19, 6
  %21 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  %22 = or i8 %16, %20
  %23 = zext i8 %22 to i16
  store i16 %23, i16* %21, align 16
  %24 = getelementptr inbounds i8, i8* %2, i64 2
  %25 = load i8, i8* %13, align 1
  %26 = and i8 %25, 63
  %27 = zext i8 %26 to i16
  %28 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 1
  store i16 %27, i16* %28, align 2
  %29 = load i8, i8* %24, align 1
  %30 = lshr i8 %29, 3
  %31 = zext i8 %30 to i16
  %32 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 2
  store i16 %31, i16* %32, align 4
  %33 = getelementptr inbounds i8, i8* %2, i64 3
  %34 = shl i8 %29, 2
  %35 = and i8 %34, 28
  %36 = zext i8 %35 to i16
  %37 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 3
  store i16 %36, i16* %37, align 2
  %38 = load i8, i8* %33, align 1
  %39 = lshr i8 %38, 6
  %40 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 3
  %41 = or i8 %35, %39
  %42 = zext i8 %41 to i16
  store i16 %42, i16* %40, align 2
  %43 = lshr i8 %38, 2
  %44 = and i8 %43, 15
  %45 = zext i8 %44 to i16
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 4
  store i16 %45, i16* %46, align 8
  %47 = getelementptr inbounds i8, i8* %2, i64 4
  %48 = load i8, i8* %33, align 1
  %49 = shl i8 %48, 2
  %50 = and i8 %49, 12
  %51 = zext i8 %50 to i16
  %52 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 5
  store i16 %51, i16* %52, align 2
  %53 = load i8, i8* %47, align 1
  %54 = lshr i8 %53, 6
  %55 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 5
  %56 = or i8 %50, %54
  %57 = zext i8 %56 to i16
  store i16 %57, i16* %55, align 2
  %58 = lshr i8 %53, 3
  %59 = and i8 %58, 7
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 6
  store i16 %60, i16* %61, align 4
  %62 = getelementptr inbounds i8, i8* %2, i64 5
  %63 = load i8, i8* %47, align 1
  %64 = and i8 %63, 7
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 7
  store i16 %65, i16* %66, align 2
  %67 = load i8, i8* %62, align 1
  %68 = lshr i8 %67, 1
  %69 = zext i8 %68 to i16
  %70 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  store i16 %69, i16* %70, align 2
  %71 = getelementptr inbounds i8, i8* %2, i64 6
  %72 = shl i8 %67, 1
  %73 = and i8 %72, 2
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 0
  store i16 %74, i16* %75, align 2
  %76 = load i8, i8* %71, align 1
  %77 = lshr i8 %76, 7
  %78 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 0
  %79 = or i8 %73, %77
  %80 = zext i8 %79 to i16
  store i16 %80, i16* %78, align 2
  %81 = lshr i8 %76, 5
  %82 = and i8 %81, 3
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 0
  store i16 %83, i16* %84, align 2
  %85 = getelementptr inbounds i8, i8* %2, i64 7
  %86 = load i8, i8* %71, align 1
  %87 = shl i8 %86, 1
  %88 = and i8 %87, 62
  %89 = zext i8 %88 to i16
  %90 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  store i16 %89, i16* %90, align 2
  %91 = load i8, i8* %85, align 1
  %92 = lshr i8 %91, 7
  %93 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  %94 = or i8 %88, %92
  %95 = zext i8 %94 to i16
  store i16 %95, i16* %93, align 2
  %96 = lshr i8 %91, 4
  %97 = and i8 %96, 7
  %98 = zext i8 %97 to i16
  %99 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 0
  store i16 %98, i16* %99, align 16
  %100 = load i8, i8* %85, align 1
  %101 = lshr i8 %100, 1
  %102 = and i8 %101, 7
  %103 = zext i8 %102 to i16
  %104 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 1
  store i16 %103, i16* %104, align 2
  %105 = getelementptr inbounds i8, i8* %2, i64 8
  %106 = load i8, i8* %85, align 1
  %107 = shl i8 %106, 2
  %108 = and i8 %107, 4
  %109 = zext i8 %108 to i16
  %110 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 2
  store i16 %109, i16* %110, align 4
  %111 = load i8, i8* %105, align 1
  %112 = lshr i8 %111, 6
  %113 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 2
  %114 = or i8 %108, %112
  %115 = zext i8 %114 to i16
  store i16 %115, i16* %113, align 4
  %116 = lshr i8 %111, 3
  %117 = and i8 %116, 7
  %118 = zext i8 %117 to i16
  %119 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 3
  store i16 %118, i16* %119, align 2
  %120 = getelementptr inbounds i8, i8* %2, i64 9
  %121 = load i8, i8* %105, align 1
  %122 = and i8 %121, 7
  %123 = zext i8 %122 to i16
  %124 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 4
  store i16 %123, i16* %124, align 8
  %125 = load i8, i8* %120, align 1
  %126 = lshr i8 %125, 5
  %127 = zext i8 %126 to i16
  %128 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 5
  store i16 %127, i16* %128, align 2
  %129 = lshr i8 %125, 2
  %130 = and i8 %129, 7
  %131 = zext i8 %130 to i16
  %132 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 6
  store i16 %131, i16* %132, align 4
  %133 = getelementptr inbounds i8, i8* %2, i64 10
  %134 = load i8, i8* %120, align 1
  %135 = shl i8 %134, 1
  %136 = and i8 %135, 6
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 7
  store i16 %137, i16* %138, align 2
  %139 = load i8, i8* %133, align 1
  %140 = lshr i8 %139, 7
  %141 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 7
  %142 = or i8 %136, %140
  %143 = zext i8 %142 to i16
  store i16 %143, i16* %141, align 2
  %144 = lshr i8 %139, 4
  %145 = and i8 %144, 7
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 8
  store i16 %146, i16* %147, align 16
  %148 = load i8, i8* %133, align 1
  %149 = lshr i8 %148, 1
  %150 = and i8 %149, 7
  %151 = zext i8 %150 to i16
  %152 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 9
  store i16 %151, i16* %152, align 2
  %153 = getelementptr inbounds i8, i8* %2, i64 11
  %154 = load i8, i8* %133, align 1
  %155 = shl i8 %154, 2
  %156 = and i8 %155, 4
  %157 = zext i8 %156 to i16
  %158 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 10
  store i16 %157, i16* %158, align 4
  %159 = load i8, i8* %153, align 1
  %160 = lshr i8 %159, 6
  %161 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 10
  %162 = or i8 %156, %160
  %163 = zext i8 %162 to i16
  store i16 %163, i16* %161, align 4
  %164 = lshr i8 %159, 3
  %165 = and i8 %164, 7
  %166 = zext i8 %165 to i16
  %167 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 11
  store i16 %166, i16* %167, align 2
  %168 = getelementptr inbounds i8, i8* %2, i64 12
  %169 = load i8, i8* %153, align 1
  %170 = and i8 %169, 7
  %171 = zext i8 %170 to i16
  %172 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 12
  store i16 %171, i16* %172, align 8
  %173 = load i8, i8* %168, align 1
  %174 = lshr i8 %173, 1
  %175 = zext i8 %174 to i16
  %176 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 1
  store i16 %175, i16* %176, align 2
  %177 = getelementptr inbounds i8, i8* %2, i64 13
  %178 = shl i8 %173, 1
  %179 = and i8 %178, 2
  %180 = zext i8 %179 to i16
  %181 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 1
  store i16 %180, i16* %181, align 2
  %182 = load i8, i8* %177, align 1
  %183 = lshr i8 %182, 7
  %184 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 1
  %185 = or i8 %179, %183
  %186 = zext i8 %185 to i16
  store i16 %186, i16* %184, align 2
  %187 = lshr i8 %182, 5
  %188 = and i8 %187, 3
  %189 = zext i8 %188 to i16
  %190 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 1
  store i16 %189, i16* %190, align 2
  %191 = getelementptr inbounds i8, i8* %2, i64 14
  %192 = load i8, i8* %177, align 1
  %193 = shl i8 %192, 1
  %194 = and i8 %193, 62
  %195 = zext i8 %194 to i16
  %196 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 1
  store i16 %195, i16* %196, align 2
  %197 = load i8, i8* %191, align 1
  %198 = lshr i8 %197, 7
  %199 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 1
  %200 = or i8 %194, %198
  %201 = zext i8 %200 to i16
  store i16 %201, i16* %199, align 2
  %202 = lshr i8 %197, 4
  %203 = and i8 %202, 7
  %204 = zext i8 %203 to i16
  %205 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 13
  store i16 %204, i16* %205, align 2
  %206 = load i8, i8* %191, align 1
  %207 = lshr i8 %206, 1
  %208 = and i8 %207, 7
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 14
  store i16 %209, i16* %210, align 4
  %211 = getelementptr inbounds i8, i8* %2, i64 15
  %212 = load i8, i8* %191, align 1
  %213 = shl i8 %212, 2
  %214 = and i8 %213, 4
  %215 = zext i8 %214 to i16
  %216 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 15
  store i16 %215, i16* %216, align 2
  %217 = load i8, i8* %211, align 1
  %218 = lshr i8 %217, 6
  %219 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 15
  %220 = or i8 %214, %218
  %221 = zext i8 %220 to i16
  store i16 %221, i16* %219, align 2
  %222 = lshr i8 %217, 3
  %223 = and i8 %222, 7
  %224 = zext i8 %223 to i16
  %225 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 16
  store i16 %224, i16* %225, align 16
  %226 = getelementptr inbounds i8, i8* %2, i64 16
  %227 = load i8, i8* %211, align 1
  %228 = and i8 %227, 7
  %229 = zext i8 %228 to i16
  %230 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 17
  store i16 %229, i16* %230, align 2
  %231 = load i8, i8* %226, align 1
  %232 = lshr i8 %231, 5
  %233 = zext i8 %232 to i16
  %234 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 18
  store i16 %233, i16* %234, align 4
  %235 = lshr i8 %231, 2
  %236 = and i8 %235, 7
  %237 = zext i8 %236 to i16
  %238 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 19
  store i16 %237, i16* %238, align 2
  %239 = getelementptr inbounds i8, i8* %2, i64 17
  %240 = load i8, i8* %226, align 1
  %241 = shl i8 %240, 1
  %242 = and i8 %241, 6
  %243 = zext i8 %242 to i16
  %244 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 20
  store i16 %243, i16* %244, align 8
  %245 = load i8, i8* %239, align 1
  %246 = lshr i8 %245, 7
  %247 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 20
  %248 = or i8 %242, %246
  %249 = zext i8 %248 to i16
  store i16 %249, i16* %247, align 8
  %250 = lshr i8 %245, 4
  %251 = and i8 %250, 7
  %252 = zext i8 %251 to i16
  %253 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 21
  store i16 %252, i16* %253, align 2
  %254 = load i8, i8* %239, align 1
  %255 = lshr i8 %254, 1
  %256 = and i8 %255, 7
  %257 = zext i8 %256 to i16
  %258 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 22
  store i16 %257, i16* %258, align 4
  %259 = getelementptr inbounds i8, i8* %2, i64 18
  %260 = load i8, i8* %239, align 1
  %261 = shl i8 %260, 2
  %262 = and i8 %261, 4
  %263 = zext i8 %262 to i16
  %264 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 23
  store i16 %263, i16* %264, align 2
  %265 = load i8, i8* %259, align 1
  %266 = lshr i8 %265, 6
  %267 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 23
  %268 = or i8 %262, %266
  %269 = zext i8 %268 to i16
  store i16 %269, i16* %267, align 2
  %270 = lshr i8 %265, 3
  %271 = and i8 %270, 7
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 24
  store i16 %272, i16* %273, align 16
  %274 = getelementptr inbounds i8, i8* %2, i64 19
  %275 = load i8, i8* %259, align 1
  %276 = and i8 %275, 7
  %277 = zext i8 %276 to i16
  %278 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 25
  store i16 %277, i16* %278, align 2
  %279 = load i8, i8* %274, align 1
  %280 = lshr i8 %279, 1
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 2
  store i16 %281, i16* %282, align 2
  %283 = getelementptr inbounds i8, i8* %2, i64 20
  %284 = shl i8 %279, 1
  %285 = and i8 %284, 2
  %286 = zext i8 %285 to i16
  %287 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 2
  store i16 %286, i16* %287, align 2
  %288 = load i8, i8* %283, align 1
  %289 = lshr i8 %288, 7
  %290 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 2
  %291 = or i8 %285, %289
  %292 = zext i8 %291 to i16
  store i16 %292, i16* %290, align 2
  %293 = lshr i8 %288, 5
  %294 = and i8 %293, 3
  %295 = zext i8 %294 to i16
  %296 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 2
  store i16 %295, i16* %296, align 2
  %297 = getelementptr inbounds i8, i8* %2, i64 21
  %298 = load i8, i8* %283, align 1
  %299 = shl i8 %298, 1
  %300 = and i8 %299, 62
  %301 = zext i8 %300 to i16
  %302 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 2
  store i16 %301, i16* %302, align 2
  %303 = load i8, i8* %297, align 1
  %304 = lshr i8 %303, 7
  %305 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 2
  %306 = or i8 %300, %304
  %307 = zext i8 %306 to i16
  store i16 %307, i16* %305, align 2
  %308 = lshr i8 %303, 4
  %309 = and i8 %308, 7
  %310 = zext i8 %309 to i16
  %311 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 26
  store i16 %310, i16* %311, align 4
  %312 = load i8, i8* %297, align 1
  %313 = lshr i8 %312, 1
  %314 = and i8 %313, 7
  %315 = zext i8 %314 to i16
  %316 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 27
  store i16 %315, i16* %316, align 2
  %317 = getelementptr inbounds i8, i8* %2, i64 22
  %318 = load i8, i8* %297, align 1
  %319 = shl i8 %318, 2
  %320 = and i8 %319, 4
  %321 = zext i8 %320 to i16
  %322 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 28
  store i16 %321, i16* %322, align 8
  %323 = load i8, i8* %317, align 1
  %324 = lshr i8 %323, 6
  %325 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 28
  %326 = or i8 %320, %324
  %327 = zext i8 %326 to i16
  store i16 %327, i16* %325, align 8
  %328 = lshr i8 %323, 3
  %329 = and i8 %328, 7
  %330 = zext i8 %329 to i16
  %331 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 29
  store i16 %330, i16* %331, align 2
  %332 = getelementptr inbounds i8, i8* %2, i64 23
  %333 = load i8, i8* %317, align 1
  %334 = and i8 %333, 7
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 30
  store i16 %335, i16* %336, align 4
  %337 = load i8, i8* %332, align 1
  %338 = lshr i8 %337, 5
  %339 = zext i8 %338 to i16
  %340 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 31
  store i16 %339, i16* %340, align 2
  %341 = lshr i8 %337, 2
  %342 = and i8 %341, 7
  %343 = zext i8 %342 to i16
  %344 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 32
  store i16 %343, i16* %344, align 16
  %345 = getelementptr inbounds i8, i8* %2, i64 24
  %346 = load i8, i8* %332, align 1
  %347 = shl i8 %346, 1
  %348 = and i8 %347, 6
  %349 = zext i8 %348 to i16
  %350 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 33
  store i16 %349, i16* %350, align 2
  %351 = load i8, i8* %345, align 1
  %352 = lshr i8 %351, 7
  %353 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 33
  %354 = or i8 %348, %352
  %355 = zext i8 %354 to i16
  store i16 %355, i16* %353, align 2
  %356 = lshr i8 %351, 4
  %357 = and i8 %356, 7
  %358 = zext i8 %357 to i16
  %359 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 34
  store i16 %358, i16* %359, align 4
  %360 = load i8, i8* %345, align 1
  %361 = lshr i8 %360, 1
  %362 = and i8 %361, 7
  %363 = zext i8 %362 to i16
  %364 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 35
  store i16 %363, i16* %364, align 2
  %365 = getelementptr inbounds i8, i8* %2, i64 25
  %366 = load i8, i8* %345, align 1
  %367 = shl i8 %366, 2
  %368 = and i8 %367, 4
  %369 = zext i8 %368 to i16
  %370 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 36
  store i16 %369, i16* %370, align 8
  %371 = load i8, i8* %365, align 1
  %372 = lshr i8 %371, 6
  %373 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 36
  %374 = or i8 %368, %372
  %375 = zext i8 %374 to i16
  store i16 %375, i16* %373, align 8
  %376 = lshr i8 %371, 3
  %377 = and i8 %376, 7
  %378 = zext i8 %377 to i16
  %379 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 37
  store i16 %378, i16* %379, align 2
  %380 = getelementptr inbounds i8, i8* %2, i64 26
  %381 = load i8, i8* %365, align 1
  %382 = and i8 %381, 7
  %383 = zext i8 %382 to i16
  %384 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 38
  store i16 %383, i16* %384, align 4
  %385 = load i8, i8* %380, align 1
  %386 = lshr i8 %385, 1
  %387 = zext i8 %386 to i16
  %388 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 3
  store i16 %387, i16* %388, align 2
  %389 = getelementptr inbounds i8, i8* %2, i64 27
  %390 = shl i8 %385, 1
  %391 = and i8 %390, 2
  %392 = zext i8 %391 to i16
  %393 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 3
  store i16 %392, i16* %393, align 2
  %394 = load i8, i8* %389, align 1
  %395 = lshr i8 %394, 7
  %396 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 3
  %397 = or i8 %391, %395
  %398 = zext i8 %397 to i16
  store i16 %398, i16* %396, align 2
  %399 = lshr i8 %394, 5
  %400 = and i8 %399, 3
  %401 = zext i8 %400 to i16
  %402 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 3
  store i16 %401, i16* %402, align 2
  %403 = getelementptr inbounds i8, i8* %2, i64 28
  %404 = load i8, i8* %389, align 1
  %405 = shl i8 %404, 1
  %406 = and i8 %405, 62
  %407 = zext i8 %406 to i16
  %408 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 3
  store i16 %407, i16* %408, align 2
  %409 = load i8, i8* %403, align 1
  %410 = lshr i8 %409, 7
  %411 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 3
  %412 = or i8 %406, %410
  %413 = zext i8 %412 to i16
  store i16 %413, i16* %411, align 2
  %414 = lshr i8 %409, 4
  %415 = and i8 %414, 7
  %416 = zext i8 %415 to i16
  %417 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 39
  store i16 %416, i16* %417, align 2
  %418 = load i8, i8* %403, align 1
  %419 = lshr i8 %418, 1
  %420 = and i8 %419, 7
  %421 = zext i8 %420 to i16
  %422 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 40
  store i16 %421, i16* %422, align 16
  %423 = getelementptr inbounds i8, i8* %2, i64 29
  %424 = load i8, i8* %403, align 1
  %425 = shl i8 %424, 2
  %426 = and i8 %425, 4
  %427 = zext i8 %426 to i16
  %428 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 41
  store i16 %427, i16* %428, align 2
  %429 = load i8, i8* %423, align 1
  %430 = lshr i8 %429, 6
  %431 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 41
  %432 = or i8 %426, %430
  %433 = zext i8 %432 to i16
  store i16 %433, i16* %431, align 2
  %434 = lshr i8 %429, 3
  %435 = and i8 %434, 7
  %436 = zext i8 %435 to i16
  %437 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 42
  store i16 %436, i16* %437, align 4
  %438 = getelementptr inbounds i8, i8* %2, i64 30
  %439 = load i8, i8* %423, align 1
  %440 = and i8 %439, 7
  %441 = zext i8 %440 to i16
  %442 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 43
  store i16 %441, i16* %442, align 2
  %443 = load i8, i8* %438, align 1
  %444 = lshr i8 %443, 5
  %445 = zext i8 %444 to i16
  %446 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 44
  store i16 %445, i16* %446, align 8
  %447 = lshr i8 %443, 2
  %448 = and i8 %447, 7
  %449 = zext i8 %448 to i16
  %450 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 45
  store i16 %449, i16* %450, align 2
  %451 = getelementptr inbounds i8, i8* %2, i64 31
  %452 = load i8, i8* %438, align 1
  %453 = shl i8 %452, 1
  %454 = and i8 %453, 6
  %455 = zext i8 %454 to i16
  %456 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 46
  store i16 %455, i16* %456, align 4
  %457 = load i8, i8* %451, align 1
  %458 = lshr i8 %457, 7
  %459 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 46
  %460 = or i8 %454, %458
  %461 = zext i8 %460 to i16
  store i16 %461, i16* %459, align 4
  %462 = lshr i8 %457, 4
  %463 = and i8 %462, 7
  %464 = zext i8 %463 to i16
  %465 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 47
  store i16 %464, i16* %465, align 2
  %466 = load i8, i8* %451, align 1
  %467 = lshr i8 %466, 1
  %468 = and i8 %467, 7
  %469 = zext i8 %468 to i16
  %470 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 48
  store i16 %469, i16* %470, align 16
  %471 = getelementptr inbounds i8, i8* %2, i64 32
  %472 = load i8, i8* %451, align 1
  %473 = shl i8 %472, 2
  %474 = and i8 %473, 4
  %475 = zext i8 %474 to i16
  %476 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 49
  store i16 %475, i16* %476, align 2
  %477 = load i8, i8* %471, align 1
  %478 = lshr i8 %477, 6
  %479 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 49
  %480 = or i8 %474, %478
  %481 = zext i8 %480 to i16
  store i16 %481, i16* %479, align 2
  %482 = lshr i8 %477, 3
  %483 = and i8 %482, 7
  %484 = zext i8 %483 to i16
  %485 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 50
  store i16 %484, i16* %485, align 4
  %486 = load i8, i8* %471, align 1
  %487 = and i8 %486, 7
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 51
  store i16 %488, i16* %489, align 2
  %490 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  %491 = load i16, i16* %490, align 16
  %492 = sext i16 %491 to i32
  %493 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 1
  %494 = load i16, i16* %493, align 2
  %495 = sext i16 %494 to i32
  %496 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 2
  %497 = load i16, i16* %496, align 4
  %498 = sext i16 %497 to i32
  %499 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 3
  %500 = load i16, i16* %499, align 2
  %501 = sext i16 %500 to i32
  %502 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 4
  %503 = load i16, i16* %502, align 8
  %504 = sext i16 %503 to i32
  %505 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 5
  %506 = load i16, i16* %505, align 2
  %507 = sext i16 %506 to i32
  %508 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 6
  %509 = load i16, i16* %508, align 4
  %510 = sext i16 %509 to i32
  %511 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 7
  %512 = load i16, i16* %511, align 2
  %513 = sext i16 %512 to i32
  %514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %492, i32 noundef %495, i32 noundef %498, i32 noundef %501, i32 noundef %504, i32 noundef %507, i32 noundef %510, i32 noundef %513) #2
  %515 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %516 = load i16, i16* %515, align 2
  %517 = sext i16 %516 to i32
  %518 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 0
  %519 = load i16, i16* %518, align 2
  %520 = sext i16 %519 to i32
  %521 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 0
  %522 = load i16, i16* %521, align 2
  %523 = sext i16 %522 to i32
  %524 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  %525 = load i16, i16* %524, align 2
  %526 = sext i16 %525 to i32
  %527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %517, i32 noundef %520, i32 noundef %523, i32 noundef %526) #2
  %528 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 0
  %529 = load i16, i16* %528, align 16
  %530 = sext i16 %529 to i32
  %531 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 1
  %532 = load i16, i16* %531, align 2
  %533 = sext i16 %532 to i32
  %534 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 2
  %535 = load i16, i16* %534, align 4
  %536 = sext i16 %535 to i32
  %537 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 3
  %538 = load i16, i16* %537, align 2
  %539 = sext i16 %538 to i32
  %540 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 4
  %541 = load i16, i16* %540, align 8
  %542 = sext i16 %541 to i32
  %543 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 5
  %544 = load i16, i16* %543, align 2
  %545 = sext i16 %544 to i32
  %546 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 6
  %547 = load i16, i16* %546, align 4
  %548 = sext i16 %547 to i32
  %549 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 7
  %550 = load i16, i16* %549, align 2
  %551 = sext i16 %550 to i32
  %552 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 8
  %553 = load i16, i16* %552, align 16
  %554 = sext i16 %553 to i32
  %555 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 9
  %556 = load i16, i16* %555, align 2
  %557 = sext i16 %556 to i32
  %558 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 10
  %559 = load i16, i16* %558, align 4
  %560 = sext i16 %559 to i32
  %561 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 11
  %562 = load i16, i16* %561, align 2
  %563 = sext i16 %562 to i32
  %564 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 12
  %565 = load i16, i16* %564, align 8
  %566 = sext i16 %565 to i32
  %567 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %530, i32 noundef %533, i32 noundef %536, i32 noundef %539, i32 noundef %542, i32 noundef %545, i32 noundef %548, i32 noundef %551, i32 noundef %554, i32 noundef %557, i32 noundef %560, i32 noundef %563, i32 noundef %566) #2
  %568 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 1
  %569 = load i16, i16* %568, align 2
  %570 = sext i16 %569 to i32
  %571 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 1
  %572 = load i16, i16* %571, align 2
  %573 = sext i16 %572 to i32
  %574 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 1
  %575 = load i16, i16* %574, align 2
  %576 = sext i16 %575 to i32
  %577 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 1
  %578 = load i16, i16* %577, align 2
  %579 = sext i16 %578 to i32
  %580 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 noundef %570, i32 noundef %573, i32 noundef %576, i32 noundef %579) #2
  %581 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 13
  %582 = load i16, i16* %581, align 2
  %583 = sext i16 %582 to i32
  %584 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 14
  %585 = load i16, i16* %584, align 4
  %586 = sext i16 %585 to i32
  %587 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 15
  %588 = load i16, i16* %587, align 2
  %589 = sext i16 %588 to i32
  %590 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 16
  %591 = load i16, i16* %590, align 16
  %592 = sext i16 %591 to i32
  %593 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 17
  %594 = load i16, i16* %593, align 2
  %595 = sext i16 %594 to i32
  %596 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 18
  %597 = load i16, i16* %596, align 4
  %598 = sext i16 %597 to i32
  %599 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 19
  %600 = load i16, i16* %599, align 2
  %601 = sext i16 %600 to i32
  %602 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 20
  %603 = load i16, i16* %602, align 8
  %604 = sext i16 %603 to i32
  %605 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 21
  %606 = load i16, i16* %605, align 2
  %607 = sext i16 %606 to i32
  %608 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 22
  %609 = load i16, i16* %608, align 4
  %610 = sext i16 %609 to i32
  %611 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 23
  %612 = load i16, i16* %611, align 2
  %613 = sext i16 %612 to i32
  %614 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 24
  %615 = load i16, i16* %614, align 16
  %616 = sext i16 %615 to i32
  %617 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 25
  %618 = load i16, i16* %617, align 2
  %619 = sext i16 %618 to i32
  %620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %583, i32 noundef %586, i32 noundef %589, i32 noundef %592, i32 noundef %595, i32 noundef %598, i32 noundef %601, i32 noundef %604, i32 noundef %607, i32 noundef %610, i32 noundef %613, i32 noundef %616, i32 noundef %619) #2
  %621 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 2
  %622 = load i16, i16* %621, align 2
  %623 = sext i16 %622 to i32
  %624 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 2
  %625 = load i16, i16* %624, align 2
  %626 = sext i16 %625 to i32
  %627 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 2
  %628 = load i16, i16* %627, align 2
  %629 = sext i16 %628 to i32
  %630 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 2
  %631 = load i16, i16* %630, align 2
  %632 = sext i16 %631 to i32
  %633 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 noundef %623, i32 noundef %626, i32 noundef %629, i32 noundef %632) #2
  %634 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 26
  %635 = load i16, i16* %634, align 4
  %636 = sext i16 %635 to i32
  %637 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 27
  %638 = load i16, i16* %637, align 2
  %639 = sext i16 %638 to i32
  %640 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 28
  %641 = load i16, i16* %640, align 8
  %642 = sext i16 %641 to i32
  %643 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 29
  %644 = load i16, i16* %643, align 2
  %645 = sext i16 %644 to i32
  %646 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 30
  %647 = load i16, i16* %646, align 4
  %648 = sext i16 %647 to i32
  %649 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 31
  %650 = load i16, i16* %649, align 2
  %651 = sext i16 %650 to i32
  %652 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 32
  %653 = load i16, i16* %652, align 16
  %654 = sext i16 %653 to i32
  %655 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 33
  %656 = load i16, i16* %655, align 2
  %657 = sext i16 %656 to i32
  %658 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 34
  %659 = load i16, i16* %658, align 4
  %660 = sext i16 %659 to i32
  %661 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 35
  %662 = load i16, i16* %661, align 2
  %663 = sext i16 %662 to i32
  %664 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 36
  %665 = load i16, i16* %664, align 8
  %666 = sext i16 %665 to i32
  %667 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 37
  %668 = load i16, i16* %667, align 2
  %669 = sext i16 %668 to i32
  %670 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 38
  %671 = load i16, i16* %670, align 4
  %672 = sext i16 %671 to i32
  %673 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %636, i32 noundef %639, i32 noundef %642, i32 noundef %645, i32 noundef %648, i32 noundef %651, i32 noundef %654, i32 noundef %657, i32 noundef %660, i32 noundef %663, i32 noundef %666, i32 noundef %669, i32 noundef %672) #2
  %674 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 3
  %675 = load i16, i16* %674, align 2
  %676 = sext i16 %675 to i32
  %677 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 3
  %678 = load i16, i16* %677, align 2
  %679 = sext i16 %678 to i32
  %680 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 3
  %681 = load i16, i16* %680, align 2
  %682 = sext i16 %681 to i32
  %683 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 3
  %684 = load i16, i16* %683, align 2
  %685 = sext i16 %684 to i32
  %686 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 noundef %676, i32 noundef %679, i32 noundef %682, i32 noundef %685) #2
  %687 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 39
  %688 = load i16, i16* %687, align 2
  %689 = sext i16 %688 to i32
  %690 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 40
  %691 = load i16, i16* %690, align 16
  %692 = sext i16 %691 to i32
  %693 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 41
  %694 = load i16, i16* %693, align 2
  %695 = sext i16 %694 to i32
  %696 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 42
  %697 = load i16, i16* %696, align 4
  %698 = sext i16 %697 to i32
  %699 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 43
  %700 = load i16, i16* %699, align 2
  %701 = sext i16 %700 to i32
  %702 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 44
  %703 = load i16, i16* %702, align 8
  %704 = sext i16 %703 to i32
  %705 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 45
  %706 = load i16, i16* %705, align 2
  %707 = sext i16 %706 to i32
  %708 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 46
  %709 = load i16, i16* %708, align 4
  %710 = sext i16 %709 to i32
  %711 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 47
  %712 = load i16, i16* %711, align 2
  %713 = sext i16 %712 to i32
  %714 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 48
  %715 = load i16, i16* %714, align 16
  %716 = sext i16 %715 to i32
  %717 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 49
  %718 = load i16, i16* %717, align 2
  %719 = sext i16 %718 to i32
  %720 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 50
  %721 = load i16, i16* %720, align 4
  %722 = sext i16 %721 to i32
  %723 = getelementptr inbounds [52 x i16], [52 x i16]* %9, i64 0, i64 51
  %724 = load i16, i16* %723, align 2
  %725 = sext i16 %724 to i32
  %726 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef %689, i32 noundef %692, i32 noundef %695, i32 noundef %698, i32 noundef %701, i32 noundef %704, i32 noundef %707, i32 noundef %710, i32 noundef %713, i32 noundef %716, i32 noundef %719, i32 noundef %722, i32 noundef %725) #2
  br label %727

727:                                              ; preds = %12, %11
  %.0 = phi i32 [ -1, %11 ], [ 0, %12 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
