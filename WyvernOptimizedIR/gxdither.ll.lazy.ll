; ModuleID = './gxdither.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxdither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@lum = internal global [8 x i16] [i16 0, i16 30, i16 59, i16 89, i16 11, i16 41, i16 70, i16 100], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_color_render(%struct.gs_color_s* noundef %0, %struct.gx_device_color_s* noundef %1, %struct.gs_state_s* noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i64 0, i32 22
  %5 = load %struct.device_s*, %struct.device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 4
  %7 = load i8, i8* %6, align 2
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 3
  %10 = load i16, i16* %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device_s, %struct.device_s* %5, i64 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 0, i32* %17, align 8
  br label %288

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 3
  %20 = load i16, i16* %19, align 2
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.device_s, %struct.device_s* %5, i64 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 0, i32* %27, align 8
  br label %288

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %3
  %31 = getelementptr inbounds %struct.device_s, %struct.device_s* %5, i64 0, i32 0
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %31, align 8
  %33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 8
  %34 = load i16, i16* %33, align 4
  %35 = zext i16 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %37 = icmp ugt i16 %34, 254
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i64
  %42 = mul nuw nsw i64 %36, %41
  %43 = lshr i64 %42, 16
  %44 = trunc i64 %43 to i16
  %45 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 1
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i64
  %48 = mul nuw nsw i64 %36, %47
  %49 = lshr i64 %48, 16
  %50 = trunc i64 %49 to i16
  %51 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 2
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i64
  %54 = mul nuw nsw i64 %36, %53
  %55 = lshr i64 %54, 16
  %56 = trunc i64 %55 to i16
  %57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %58 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %57, align 8
  %59 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %58, i64 0, i32 5
  %60 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %59, align 8
  %61 = call i64 %60(%struct.gx_device_s* noundef %32, i16 noundef zeroext %44, i16 noundef zeroext %50, i16 noundef zeroext %56) #2
  %62 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 0, i32* %64, align 8
  br label %288

65:                                               ; preds = %30
  %66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i64 0, i32 11
  %67 = load %struct.halftone_s*, %struct.halftone_s** %66, align 8
  %68 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %67, i64 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 7
  %72 = load i32, i32* %71, align 8
  %.not28 = icmp eq i32 %72, 0
  br i1 %.not28, label %76, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 4
  %75 = load i8, i8* %74, align 2
  %.not30 = icmp eq i8 %75, 0
  br i1 %.not30, label %117, label %76

76:                                               ; preds = %73, %65
  %77 = mul nuw nsw i64 %70, %35
  %78 = add nuw nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 5
  %80 = load i8, i8* %79, align 1
  %.not29 = icmp eq i8 %80, 0
  br i1 %.not29, label %84, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 3
  %83 = load i16, i16* %82, align 2
  br label %86

84:                                               ; preds = %76
  %85 = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef %0) #2
  br label %86

86:                                               ; preds = %84, %81
  %.in = phi i16 [ %83, %81 ], [ %85, %84 ]
  %87 = zext i16 %.in to i64
  %88 = mul i64 %78, %87
  %89 = lshr i64 %88, 16
  %90 = udiv i64 %89, %70
  %91 = trunc i64 %90 to i16
  %92 = urem i64 %89, %70
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %96 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %95, align 8
  %97 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %96, i64 0, i32 5
  %98 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %97, align 8
  %99 = call i64 %98(%struct.gx_device_s* noundef %32, i16 noundef zeroext %91, i16 noundef zeroext %91, i16 noundef zeroext %91) #2
  %100 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %106, i64* %107, align 8
  br label %116

108:                                              ; preds = %86
  %109 = add i16 %91, 1
  %110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %111 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %110, align 8
  %112 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %111, i64 0, i32 5
  %113 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %112, align 8
  %114 = call i64 %113(%struct.gx_device_s* noundef %32, i16 noundef zeroext %109, i16 noundef zeroext %109, i16 noundef zeroext %109) #2
  %115 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %114, i64* %115, align 8
  call void @gx_color_load(%struct.gx_device_color_s* noundef %1, %struct.gs_state_s* noundef %2) #2
  br label %116

116:                                              ; preds = %108, %104
  br label %288

117:                                              ; preds = %73
  %118 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 0
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i64
  %121 = mul nuw nsw i64 %120, %35
  %122 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 1
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i64
  %125 = mul nuw nsw i64 %124, %35
  %126 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 2
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i64
  %129 = mul nuw nsw i64 %128, %35
  %130 = udiv i64 %121, 65535
  %131 = trunc i64 %130 to i16
  %132 = udiv i64 %125, 65535
  %133 = trunc i64 %132 to i16
  %134 = udiv i64 %129, 65535
  %135 = trunc i64 %134 to i16
  %136 = trunc i64 %121 to i16
  %137 = trunc i64 %130 to i16
  %138 = add i16 %137, %136
  %139 = trunc i64 %125 to i16
  %140 = trunc i64 %132 to i16
  %141 = add i16 %140, %139
  %142 = trunc i64 %129 to i16
  %143 = trunc i64 %134 to i16
  %144 = add i16 %143, %142
  %145 = or i16 %138, %141
  %146 = or i16 %145, %144
  %.not31 = icmp eq i16 %146, 0
  br i1 %.not31, label %147, label %156

147:                                              ; preds = %117
  %148 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %149 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %148, align 8
  %150 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %149, i64 0, i32 5
  %151 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %150, align 8
  %152 = call i64 %151(%struct.gx_device_s* noundef %32, i16 noundef zeroext %131, i16 noundef zeroext %133, i16 noundef zeroext %135) #2
  %153 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %152, i64* %153, align 8
  %154 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 0, i32* %155, align 8
  br label %288

156:                                              ; preds = %117
  %157 = icmp slt i16 %138, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = xor i16 %138, -1
  %160 = add i16 %131, 1
  br label %162

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %158
  %.026 = phi i16 [ %160, %158 ], [ %131, %161 ]
  %.021 = phi i16 [ %159, %158 ], [ %138, %161 ]
  %.018 = phi i16 [ -1, %158 ], [ 1, %161 ]
  %.01 = phi i16 [ 30, %158 ], [ 0, %161 ]
  %163 = icmp slt i16 %141, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = xor i16 %141, -1
  %166 = add i16 %133, 1
  %narrow = add nuw nsw i16 %.01, 59
  br label %168

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %164
  %.024 = phi i16 [ %166, %164 ], [ %133, %167 ]
  %.020 = phi i16 [ %165, %164 ], [ %141, %167 ]
  %.016 = phi i16 [ -1, %164 ], [ 1, %167 ]
  %.12 = phi i16 [ %narrow, %164 ], [ %.01, %167 ]
  %169 = icmp slt i16 %144, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  %171 = xor i16 %144, -1
  %172 = add i16 %135, 1
  %173 = add nsw i16 %.12, 11
  br label %175

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %170
  %.022 = phi i16 [ %172, %170 ], [ %135, %174 ]
  %.019 = phi i16 [ %171, %170 ], [ %144, %174 ]
  %.017 = phi i16 [ -1, %170 ], [ 1, %174 ]
  %.23 = phi i16 [ %173, %170 ], [ %.12, %174 ]
  %176 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %177 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %176, align 8
  %178 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %177, i64 0, i32 5
  %179 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %178, align 8
  %180 = call i64 %179(%struct.gx_device_s* noundef %32, i16 noundef zeroext %.026, i16 noundef zeroext %.024, i16 noundef zeroext %.022) #2
  %181 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %180, i64* %181, align 8
  %182 = icmp ugt i16 %.020, %.021
  br i1 %182, label %183, label %198

183:                                              ; preds = %175
  %184 = icmp ugt i16 %.019, %.020
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  br label %187

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %186, %185
  %.013 = phi i16 [ %.019, %185 ], [ %.020, %186 ]
  %.07 = phi i32 [ 4, %185 ], [ 2, %186 ]
  %188 = icmp ugt i16 %.019, %.021
  br i1 %188, label %189, label %193

189:                                              ; preds = %187
  %190 = zext i16 %.020 to i64
  %191 = zext i16 %.019 to i64
  %192 = add nuw nsw i64 %190, %191
  br label %197

193:                                              ; preds = %187
  %194 = zext i16 %.021 to i64
  %195 = zext i16 %.020 to i64
  %196 = add nuw nsw i64 %194, %195
  br label %197

197:                                              ; preds = %193, %189
  %.010 = phi i64 [ %192, %189 ], [ %196, %193 ]
  %.04 = phi i32 [ 6, %189 ], [ 3, %193 ]
  br label %213

198:                                              ; preds = %175
  %199 = icmp ugt i16 %.019, %.021
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  br label %202

201:                                              ; preds = %198
  br label %202

202:                                              ; preds = %201, %200
  %.114 = phi i16 [ %.019, %200 ], [ %.021, %201 ]
  %.18 = phi i32 [ 4, %200 ], [ 1, %201 ]
  %203 = icmp ugt i16 %.019, %.020
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = zext i16 %.019 to i64
  %206 = zext i16 %.021 to i64
  %207 = add nuw nsw i64 %205, %206
  br label %212

208:                                              ; preds = %202
  %209 = zext i16 %.021 to i64
  %210 = zext i16 %.020 to i64
  %211 = add nuw nsw i64 %209, %210
  br label %212

212:                                              ; preds = %208, %204
  %.111 = phi i64 [ %207, %204 ], [ %211, %208 ]
  %.15 = phi i32 [ 5, %204 ], [ 3, %208 ]
  br label %213

213:                                              ; preds = %212, %197
  %.215 = phi i16 [ %.013, %197 ], [ %.114, %212 ]
  %.212 = phi i64 [ %.010, %197 ], [ %.111, %212 ]
  %.29 = phi i32 [ %.07, %197 ], [ %.18, %212 ]
  %.26 = phi i32 [ %.04, %197 ], [ %.15, %212 ]
  %214 = zext i16 %.215 to i64
  %215 = mul nuw nsw i64 %214, 100
  %216 = mul nsw i64 %.212, 71
  %217 = zext i16 %.021 to i64
  %218 = zext i16 %.020 to i64
  %219 = add nuw nsw i64 %217, %218
  %220 = zext i16 %.019 to i64
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp ugt i64 %215, %216
  br i1 %222, label %223, label %234

223:                                              ; preds = %213
  %224 = mul nuw nsw i64 %221, 62
  %225 = icmp ugt i64 %224, %215
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = mul nuw nsw i64 %221, %70
  %228 = udiv i64 %227, 196605
  br label %233

229:                                              ; preds = %223
  %230 = zext i16 %.215 to i64
  %231 = mul nuw nsw i64 %70, %230
  %232 = udiv i64 %231, 65535
  br label %233

233:                                              ; preds = %229, %226
  %.3 = phi i32 [ 7, %226 ], [ %.29, %229 ]
  %.0.in = phi i64 [ %228, %226 ], [ %232, %229 ]
  br label %244

234:                                              ; preds = %213
  %235 = mul nuw nsw i64 %221, 62
  %236 = icmp ugt i64 %235, %216
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = mul nuw nsw i64 %221, %70
  %239 = udiv i64 %238, 196605
  br label %243

240:                                              ; preds = %234
  %241 = mul nsw i64 %.212, %70
  %242 = udiv i64 %241, 131070
  br label %243

243:                                              ; preds = %240, %237
  %.4 = phi i32 [ 7, %237 ], [ %.26, %240 ]
  %.1.in = phi i64 [ %239, %237 ], [ %242, %240 ]
  br label %244

244:                                              ; preds = %243, %233
  %.5 = phi i32 [ %.3, %233 ], [ %.4, %243 ]
  %.2.in = phi i64 [ %.0.in, %233 ], [ %.1.in, %243 ]
  %.2 = trunc i64 %.2.in to i32
  %245 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 %.2, i32* %245, align 8
  %246 = icmp eq i32 %.2, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %249, i64* %250, align 8
  br label %288

251:                                              ; preds = %244
  %252 = and i32 %.5, 1
  %.not32 = icmp eq i32 %252, 0
  br i1 %.not32, label %255, label %253

253:                                              ; preds = %251
  %254 = add i16 %.018, %.026
  br label %255

255:                                              ; preds = %253, %251
  %.127 = phi i16 [ %254, %253 ], [ %.026, %251 ]
  %256 = and i32 %.5, 2
  %.not33 = icmp eq i32 %256, 0
  br i1 %.not33, label %259, label %257

257:                                              ; preds = %255
  %258 = add i16 %.016, %.024
  br label %259

259:                                              ; preds = %257, %255
  %.125 = phi i16 [ %258, %257 ], [ %.024, %255 ]
  %260 = and i32 %.5, 4
  %.not34 = icmp eq i32 %260, 0
  br i1 %.not34, label %263, label %261

261:                                              ; preds = %259
  %262 = add i16 %.017, %.022
  br label %263

263:                                              ; preds = %261, %259
  %.123 = phi i16 [ %262, %261 ], [ %.022, %259 ]
  %264 = sext i32 %.5 to i64
  %265 = getelementptr inbounds [8 x i16], [8 x i16]* @lum, i64 0, i64 %264
  %266 = load i16, i16* %265, align 2
  %267 = icmp ult i16 %266, %.23
  br i1 %267, label %268, label %280

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %270, i64* %271, align 8
  %272 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %273 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %272, align 8
  %274 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %273, i64 0, i32 5
  %275 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %274, align 8
  %276 = call i64 %275(%struct.gx_device_s* noundef %32, i16 noundef zeroext %.127, i16 noundef zeroext %.125, i16 noundef zeroext %.123) #2
  %277 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 0
  store i64 %276, i64* %277, align 8
  %278 = sub i32 %69, %.2
  %279 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 2
  store i32 %278, i32* %279, align 8
  br label %287

280:                                              ; preds = %263
  %281 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i64 0, i32 1
  %282 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %281, align 8
  %283 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %282, i64 0, i32 5
  %284 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %283, align 8
  %285 = call i64 %284(%struct.gx_device_s* noundef %32, i16 noundef zeroext %.127, i16 noundef zeroext %.125, i16 noundef zeroext %.123) #2
  %286 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i64 0, i32 1
  store i64 %285, i64* %286, align 8
  br label %287

287:                                              ; preds = %280, %268
  call void @gx_color_load(%struct.gx_device_color_s* noundef %1, %struct.gs_state_s* noundef %2) #2
  br label %288

288:                                              ; preds = %287, %247, %147, %116, %38, %22, %12
  ret void
}

declare dso_local zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef) #1

declare dso_local void @gx_color_load(%struct.gx_device_color_s* noundef, %struct.gs_state_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
