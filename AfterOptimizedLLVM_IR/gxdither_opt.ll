; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxdither.c'
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
  %4 = alloca %struct.gs_color_s*, align 8
  %5 = alloca %struct.gx_device_color_s*, align 8
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca %struct.device_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gx_device_s*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i16, align 2
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i16, align 2
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store %struct.gs_color_s* %0, %struct.gs_color_s** %4, align 8
  store %struct.gx_device_color_s* %1, %struct.gx_device_color_s** %5, align 8
  store %struct.gs_state_s* %2, %struct.gs_state_s** %6, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 22
  %41 = load %struct.device_s*, %struct.device_s** %40, align 8
  store %struct.device_s* %41, %struct.device_s** %7, align 8
  %42 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %43 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 2
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %3
  %47 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %48 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %47, i32 0, i32 3
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.device_s*, %struct.device_s** %7, align 8
  %54 = getelementptr inbounds %struct.device_s, %struct.device_s* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %57 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %59 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %58, i32 0, i32 1
  store i64 %55, i64* %59, align 8
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %61 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  br label %573

62:                                               ; preds = %46
  %63 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %64 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %63, i32 0, i32 3
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 65535
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.device_s*, %struct.device_s** %7, align 8
  %70 = getelementptr inbounds %struct.device_s, %struct.device_s* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %73 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %75 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %74, i32 0, i32 1
  store i64 %71, i64* %75, align 8
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %77 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  br label %573

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %3
  %81 = load %struct.device_s*, %struct.device_s** %7, align 8
  %82 = getelementptr inbounds %struct.device_s, %struct.device_s* %81, i32 0, i32 0
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %82, align 8
  store %struct.gx_device_s* %83, %struct.gx_device_s** %11, align 8
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %85 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 8
  %86 = load i16, i16* %85, align 4
  %87 = zext i16 %86 to i64
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp uge i64 %90, 255
  br i1 %91, label %92, label %133

92:                                               ; preds = %80
  %93 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %94 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %93, i32 0, i32 0
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = mul i64 %96, %97
  %99 = udiv i64 %98, 65536
  %100 = trunc i64 %99 to i16
  store i16 %100, i16* %12, align 2
  %101 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %102 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %101, i32 0, i32 1
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i64
  %105 = load i64, i64* %9, align 8
  %106 = mul i64 %104, %105
  %107 = udiv i64 %106, 65536
  %108 = trunc i64 %107 to i16
  store i16 %108, i16* %13, align 2
  %109 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %110 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %109, i32 0, i32 2
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = mul i64 %112, %113
  %115 = udiv i64 %114, 65536
  %116 = trunc i64 %115 to i16
  store i16 %116, i16* %14, align 2
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 1
  %119 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %118, align 8
  %120 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %119, i32 0, i32 5
  %121 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %120, align 8
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %123 = load i16, i16* %12, align 2
  %124 = load i16, i16* %13, align 2
  %125 = load i16, i16* %14, align 2
  %126 = call i64 %121(%struct.gx_device_s* noundef %122, i16 noundef zeroext %123, i16 noundef zeroext %124, i16 noundef zeroext %125)
  %127 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %128 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %130 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %129, i32 0, i32 1
  store i64 %126, i64* %130, align 8
  %131 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %132 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  br label %573

133:                                              ; preds = %80
  %134 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %135 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %134, i32 0, i32 11
  %136 = load %struct.halftone_s*, %struct.halftone_s** %135, align 8
  %137 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %10, align 8
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %141 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %146 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %145, i32 0, i32 4
  %147 = load i8, i8* %146, align 2
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %225

150:                                              ; preds = %144, %133
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %8, align 8
  %153 = mul i64 %151, %152
  %154 = add i64 %153, 1
  store i64 %154, i64* %15, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %157 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %156, i32 0, i32 5
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %150
  %162 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %163 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %162, i32 0, i32 3
  %164 = load i16, i16* %163, align 2
  %165 = zext i16 %164 to i32
  br label %170

166:                                              ; preds = %150
  %167 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %168 = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef %167)
  %169 = zext i16 %168 to i32
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi i32 [ %165, %161 ], [ %169, %166 ]
  %172 = sext i32 %171 to i64
  %173 = mul i64 %155, %172
  %174 = udiv i64 %173, 65536
  store i64 %174, i64* %16, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* %10, align 8
  %177 = udiv i64 %175, %176
  %178 = trunc i64 %177 to i16
  store i16 %178, i16* %17, align 2
  %179 = load i64, i64* %16, align 8
  %180 = load i64, i64* %10, align 8
  %181 = urem i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %184 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %186 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %185, i32 0, i32 1
  %187 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %186, align 8
  %188 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %187, i32 0, i32 5
  %189 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %188, align 8
  %190 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %191 = load i16, i16* %17, align 2
  %192 = load i16, i16* %17, align 2
  %193 = load i16, i16* %17, align 2
  %194 = call i64 %189(%struct.gx_device_s* noundef %190, i16 noundef zeroext %191, i16 noundef zeroext %192, i16 noundef zeroext %193)
  %195 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %196 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %198 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %170
  %202 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %203 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %206 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %224

207:                                              ; preds = %170
  %208 = load i16, i16* %17, align 2
  %209 = add i16 %208, 1
  store i16 %209, i16* %17, align 2
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %211 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %210, i32 0, i32 1
  %212 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %211, align 8
  %213 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %212, i32 0, i32 5
  %214 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %213, align 8
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %216 = load i16, i16* %17, align 2
  %217 = load i16, i16* %17, align 2
  %218 = load i16, i16* %17, align 2
  %219 = call i64 %214(%struct.gx_device_s* noundef %215, i16 noundef zeroext %216, i16 noundef zeroext %217, i16 noundef zeroext %218)
  %220 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %221 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  %222 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %223 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  call void @gx_color_load(%struct.gx_device_color_s* noundef %222, %struct.gs_state_s* noundef %223)
  br label %224

224:                                              ; preds = %207, %201
  br label %573

225:                                              ; preds = %144
  %226 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %227 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %226, i32 0, i32 0
  %228 = load i16, i16* %227, align 2
  %229 = zext i16 %228 to i64
  %230 = load i64, i64* %8, align 8
  %231 = mul i64 %229, %230
  store i64 %231, i64* %18, align 8
  %232 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %233 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %232, i32 0, i32 1
  %234 = load i16, i16* %233, align 2
  %235 = zext i16 %234 to i64
  %236 = load i64, i64* %8, align 8
  %237 = mul i64 %235, %236
  store i64 %237, i64* %19, align 8
  %238 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %239 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %238, i32 0, i32 2
  %240 = load i16, i16* %239, align 2
  %241 = zext i16 %240 to i64
  %242 = load i64, i64* %8, align 8
  %243 = mul i64 %241, %242
  store i64 %243, i64* %20, align 8
  %244 = load i64, i64* %18, align 8
  %245 = udiv i64 %244, 65535
  %246 = trunc i64 %245 to i16
  store i16 %246, i16* %21, align 2
  %247 = load i64, i64* %19, align 8
  %248 = udiv i64 %247, 65535
  %249 = trunc i64 %248 to i16
  store i16 %249, i16* %22, align 2
  %250 = load i64, i64* %20, align 8
  %251 = udiv i64 %250, 65535
  %252 = trunc i64 %251 to i16
  store i16 %252, i16* %23, align 2
  %253 = load i64, i64* %18, align 8
  %254 = trunc i64 %253 to i16
  %255 = zext i16 %254 to i32
  %256 = load i16, i16* %21, align 2
  %257 = zext i16 %256 to i32
  %258 = mul nsw i32 %257, 65535
  %259 = sub nsw i32 %255, %258
  %260 = trunc i32 %259 to i16
  store i16 %260, i16* %24, align 2
  %261 = load i64, i64* %19, align 8
  %262 = trunc i64 %261 to i16
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* %22, align 2
  %265 = zext i16 %264 to i32
  %266 = mul nsw i32 %265, 65535
  %267 = sub nsw i32 %263, %266
  %268 = trunc i32 %267 to i16
  store i16 %268, i16* %25, align 2
  %269 = load i64, i64* %20, align 8
  %270 = trunc i64 %269 to i16
  %271 = zext i16 %270 to i32
  %272 = load i16, i16* %23, align 2
  %273 = zext i16 %272 to i32
  %274 = mul nsw i32 %273, 65535
  %275 = sub nsw i32 %271, %274
  %276 = trunc i32 %275 to i16
  store i16 %276, i16* %26, align 2
  %277 = load i16, i16* %24, align 2
  %278 = zext i16 %277 to i32
  %279 = load i16, i16* %25, align 2
  %280 = zext i16 %279 to i32
  %281 = or i32 %278, %280
  %282 = load i16, i16* %26, align 2
  %283 = zext i16 %282 to i32
  %284 = or i32 %281, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %225
  %287 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %288 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %287, i32 0, i32 1
  %289 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %288, align 8
  %290 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %289, i32 0, i32 5
  %291 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %290, align 8
  %292 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %293 = load i16, i16* %21, align 2
  %294 = load i16, i16* %22, align 2
  %295 = load i16, i16* %23, align 2
  %296 = call i64 %291(%struct.gx_device_s* noundef %292, i16 noundef zeroext %293, i16 noundef zeroext %294, i16 noundef zeroext %295)
  %297 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %298 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %300 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %299, i32 0, i32 1
  store i64 %296, i64* %300, align 8
  %301 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %302 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %301, i32 0, i32 2
  store i32 0, i32* %302, align 8
  br label %573

303:                                              ; preds = %225
  store i16 0, i16* %34, align 2
  %304 = load i16, i16* %24, align 2
  %305 = zext i16 %304 to i32
  %306 = icmp sgt i32 %305, 32767
  br i1 %306, label %307, label %318

307:                                              ; preds = %303
  %308 = load i16, i16* %24, align 2
  %309 = zext i16 %308 to i32
  %310 = sub nsw i32 65535, %309
  %311 = trunc i32 %310 to i16
  store i16 %311, i16* %24, align 2
  store i32 -1, i32* %27, align 4
  %312 = load i16, i16* %21, align 2
  %313 = add i16 %312, 1
  store i16 %313, i16* %21, align 2
  %314 = load i16, i16* %34, align 2
  %315 = zext i16 %314 to i32
  %316 = add nsw i32 %315, 30
  %317 = trunc i32 %316 to i16
  store i16 %317, i16* %34, align 2
  br label %319

318:                                              ; preds = %303
  store i32 1, i32* %27, align 4
  br label %319

319:                                              ; preds = %318, %307
  %320 = load i16, i16* %25, align 2
  %321 = zext i16 %320 to i32
  %322 = icmp sgt i32 %321, 32767
  br i1 %322, label %323, label %334

323:                                              ; preds = %319
  %324 = load i16, i16* %25, align 2
  %325 = zext i16 %324 to i32
  %326 = sub nsw i32 65535, %325
  %327 = trunc i32 %326 to i16
  store i16 %327, i16* %25, align 2
  store i32 -1, i32* %29, align 4
  %328 = load i16, i16* %22, align 2
  %329 = add i16 %328, 1
  store i16 %329, i16* %22, align 2
  %330 = load i16, i16* %34, align 2
  %331 = zext i16 %330 to i32
  %332 = add nsw i32 %331, 59
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* %34, align 2
  br label %335

334:                                              ; preds = %319
  store i32 1, i32* %29, align 4
  br label %335

335:                                              ; preds = %334, %323
  %336 = load i16, i16* %26, align 2
  %337 = zext i16 %336 to i32
  %338 = icmp sgt i32 %337, 32767
  br i1 %338, label %339, label %350

339:                                              ; preds = %335
  %340 = load i16, i16* %26, align 2
  %341 = zext i16 %340 to i32
  %342 = sub nsw i32 65535, %341
  %343 = trunc i32 %342 to i16
  store i16 %343, i16* %26, align 2
  store i32 -1, i32* %28, align 4
  %344 = load i16, i16* %23, align 2
  %345 = add i16 %344, 1
  store i16 %345, i16* %23, align 2
  %346 = load i16, i16* %34, align 2
  %347 = zext i16 %346 to i32
  %348 = add nsw i32 %347, 11
  %349 = trunc i32 %348 to i16
  store i16 %349, i16* %34, align 2
  br label %351

350:                                              ; preds = %335
  store i32 1, i32* %28, align 4
  br label %351

351:                                              ; preds = %350, %339
  %352 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %353 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %352, i32 0, i32 1
  %354 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %353, align 8
  %355 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %354, i32 0, i32 5
  %356 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %355, align 8
  %357 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %358 = load i16, i16* %21, align 2
  %359 = load i16, i16* %22, align 2
  %360 = load i16, i16* %23, align 2
  %361 = call i64 %356(%struct.gx_device_s* noundef %357, i16 noundef zeroext %358, i16 noundef zeroext %359, i16 noundef zeroext %360)
  %362 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %363 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  %364 = load i16, i16* %25, align 2
  %365 = zext i16 %364 to i32
  %366 = load i16, i16* %24, align 2
  %367 = zext i16 %366 to i32
  %368 = icmp sgt i32 %365, %367
  br i1 %368, label %369, label %398

369:                                              ; preds = %351
  %370 = load i16, i16* %26, align 2
  %371 = zext i16 %370 to i32
  %372 = load i16, i16* %25, align 2
  %373 = zext i16 %372 to i32
  %374 = icmp sgt i32 %371, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %369
  %376 = load i16, i16* %26, align 2
  store i16 %376, i16* %30, align 2
  store i32 4, i32* %32, align 4
  br label %379

377:                                              ; preds = %369
  %378 = load i16, i16* %25, align 2
  store i16 %378, i16* %30, align 2
  store i32 2, i32* %32, align 4
  br label %379

379:                                              ; preds = %377, %375
  %380 = load i16, i16* %26, align 2
  %381 = zext i16 %380 to i32
  %382 = load i16, i16* %24, align 2
  %383 = zext i16 %382 to i32
  %384 = icmp sgt i32 %381, %383
  br i1 %384, label %385, label %391

385:                                              ; preds = %379
  %386 = load i16, i16* %25, align 2
  %387 = zext i16 %386 to i64
  %388 = load i16, i16* %26, align 2
  %389 = zext i16 %388 to i64
  %390 = add i64 %387, %389
  store i64 %390, i64* %31, align 8
  store i32 6, i32* %33, align 4
  br label %397

391:                                              ; preds = %379
  %392 = load i16, i16* %24, align 2
  %393 = zext i16 %392 to i64
  %394 = load i16, i16* %25, align 2
  %395 = zext i16 %394 to i64
  %396 = add i64 %393, %395
  store i64 %396, i64* %31, align 8
  store i32 3, i32* %33, align 4
  br label %397

397:                                              ; preds = %391, %385
  br label %427

398:                                              ; preds = %351
  %399 = load i16, i16* %26, align 2
  %400 = zext i16 %399 to i32
  %401 = load i16, i16* %24, align 2
  %402 = zext i16 %401 to i32
  %403 = icmp sgt i32 %400, %402
  br i1 %403, label %404, label %406

404:                                              ; preds = %398
  %405 = load i16, i16* %26, align 2
  store i16 %405, i16* %30, align 2
  store i32 4, i32* %32, align 4
  br label %408

406:                                              ; preds = %398
  %407 = load i16, i16* %24, align 2
  store i16 %407, i16* %30, align 2
  store i32 1, i32* %32, align 4
  br label %408

408:                                              ; preds = %406, %404
  %409 = load i16, i16* %26, align 2
  %410 = zext i16 %409 to i32
  %411 = load i16, i16* %25, align 2
  %412 = zext i16 %411 to i32
  %413 = icmp sgt i32 %410, %412
  br i1 %413, label %414, label %420

414:                                              ; preds = %408
  %415 = load i16, i16* %26, align 2
  %416 = zext i16 %415 to i64
  %417 = load i16, i16* %24, align 2
  %418 = zext i16 %417 to i64
  %419 = add i64 %416, %418
  store i64 %419, i64* %31, align 8
  store i32 5, i32* %33, align 4
  br label %426

420:                                              ; preds = %408
  %421 = load i16, i16* %24, align 2
  %422 = zext i16 %421 to i64
  %423 = load i16, i16* %25, align 2
  %424 = zext i16 %423 to i64
  %425 = add i64 %422, %424
  store i64 %425, i64* %31, align 8
  store i32 3, i32* %33, align 4
  br label %426

426:                                              ; preds = %420, %414
  br label %427

427:                                              ; preds = %426, %397
  %428 = load i16, i16* %30, align 2
  %429 = zext i16 %428 to i64
  %430 = mul i64 %429, 100
  store i64 %430, i64* %35, align 8
  %431 = load i64, i64* %31, align 8
  %432 = mul i64 %431, 71
  store i64 %432, i64* %36, align 8
  %433 = load i16, i16* %24, align 2
  %434 = zext i16 %433 to i64
  %435 = load i16, i16* %25, align 2
  %436 = zext i16 %435 to i64
  %437 = add i64 %434, %436
  %438 = load i16, i16* %26, align 2
  %439 = zext i16 %438 to i64
  %440 = add i64 %437, %439
  store i64 %440, i64* %37, align 8
  %441 = load i64, i64* %35, align 8
  %442 = load i64, i64* %36, align 8
  %443 = icmp ugt i64 %441, %442
  br i1 %443, label %444, label %464

444:                                              ; preds = %427
  %445 = load i64, i64* %37, align 8
  %446 = mul i64 %445, 62
  %447 = load i64, i64* %35, align 8
  %448 = icmp ugt i64 %446, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %444
  store i32 7, i32* %33, align 4
  %450 = load i64, i64* %10, align 8
  %451 = load i64, i64* %37, align 8
  %452 = mul i64 %450, %451
  %453 = udiv i64 %452, 196605
  %454 = trunc i64 %453 to i32
  store i32 %454, i32* %38, align 4
  br label %463

455:                                              ; preds = %444
  %456 = load i32, i32* %32, align 4
  store i32 %456, i32* %33, align 4
  %457 = load i64, i64* %10, align 8
  %458 = load i16, i16* %30, align 2
  %459 = zext i16 %458 to i64
  %460 = mul i64 %457, %459
  %461 = udiv i64 %460, 65535
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %38, align 4
  br label %463

463:                                              ; preds = %455, %449
  br label %482

464:                                              ; preds = %427
  %465 = load i64, i64* %37, align 8
  %466 = mul i64 %465, 62
  %467 = load i64, i64* %36, align 8
  %468 = icmp ugt i64 %466, %467
  br i1 %468, label %469, label %475

469:                                              ; preds = %464
  store i32 7, i32* %33, align 4
  %470 = load i64, i64* %10, align 8
  %471 = load i64, i64* %37, align 8
  %472 = mul i64 %470, %471
  %473 = udiv i64 %472, 196605
  %474 = trunc i64 %473 to i32
  store i32 %474, i32* %38, align 4
  br label %481

475:                                              ; preds = %464
  %476 = load i64, i64* %10, align 8
  %477 = load i64, i64* %31, align 8
  %478 = mul i64 %476, %477
  %479 = udiv i64 %478, 131070
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %38, align 4
  br label %481

481:                                              ; preds = %475, %469
  br label %482

482:                                              ; preds = %481, %463
  %483 = load i32, i32* %38, align 4
  %484 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %485 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %484, i32 0, i32 2
  store i32 %483, i32* %485, align 8
  %486 = icmp eq i32 %483, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %482
  %488 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %489 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %492 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %491, i32 0, i32 1
  store i64 %490, i64* %492, align 8
  br label %573

493:                                              ; preds = %482
  %494 = load i32, i32* %33, align 4
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %493
  %498 = load i32, i32* %27, align 4
  %499 = load i16, i16* %21, align 2
  %500 = zext i16 %499 to i32
  %501 = add nsw i32 %500, %498
  %502 = trunc i32 %501 to i16
  store i16 %502, i16* %21, align 2
  br label %503

503:                                              ; preds = %497, %493
  %504 = load i32, i32* %33, align 4
  %505 = and i32 %504, 2
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %503
  %508 = load i32, i32* %29, align 4
  %509 = load i16, i16* %22, align 2
  %510 = zext i16 %509 to i32
  %511 = add nsw i32 %510, %508
  %512 = trunc i32 %511 to i16
  store i16 %512, i16* %22, align 2
  br label %513

513:                                              ; preds = %507, %503
  %514 = load i32, i32* %33, align 4
  %515 = and i32 %514, 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %513
  %518 = load i32, i32* %28, align 4
  %519 = load i16, i16* %23, align 2
  %520 = zext i16 %519 to i32
  %521 = add nsw i32 %520, %518
  %522 = trunc i32 %521 to i16
  store i16 %522, i16* %23, align 2
  br label %523

523:                                              ; preds = %517, %513
  %524 = load i32, i32* %33, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [8 x i16], [8 x i16]* @lum, i64 0, i64 %525
  %527 = load i16, i16* %526, align 2
  %528 = zext i16 %527 to i32
  %529 = load i16, i16* %34, align 2
  %530 = zext i16 %529 to i32
  %531 = icmp slt i32 %528, %530
  br i1 %531, label %532, label %557

532:                                              ; preds = %523
  %533 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %534 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %537 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %536, i32 0, i32 1
  store i64 %535, i64* %537, align 8
  %538 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %539 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %538, i32 0, i32 1
  %540 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %539, align 8
  %541 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %540, i32 0, i32 5
  %542 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %541, align 8
  %543 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %544 = load i16, i16* %21, align 2
  %545 = load i16, i16* %22, align 2
  %546 = load i16, i16* %23, align 2
  %547 = call i64 %542(%struct.gx_device_s* noundef %543, i16 noundef zeroext %544, i16 noundef zeroext %545, i16 noundef zeroext %546)
  %548 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %549 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %548, i32 0, i32 0
  store i64 %547, i64* %549, align 8
  %550 = load i64, i64* %10, align 8
  %551 = load i32, i32* %38, align 4
  %552 = sext i32 %551 to i64
  %553 = sub i64 %550, %552
  %554 = trunc i64 %553 to i32
  store i32 %554, i32* %38, align 4
  %555 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %556 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %555, i32 0, i32 2
  store i32 %554, i32* %556, align 8
  br label %570

557:                                              ; preds = %523
  %558 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %559 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %558, i32 0, i32 1
  %560 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %559, align 8
  %561 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %560, i32 0, i32 5
  %562 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %561, align 8
  %563 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %564 = load i16, i16* %21, align 2
  %565 = load i16, i16* %22, align 2
  %566 = load i16, i16* %23, align 2
  %567 = call i64 %562(%struct.gx_device_s* noundef %563, i16 noundef zeroext %564, i16 noundef zeroext %565, i16 noundef zeroext %566)
  %568 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %569 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %568, i32 0, i32 1
  store i64 %567, i64* %569, align 8
  br label %570

570:                                              ; preds = %557, %532
  %571 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %5, align 8
  %572 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  call void @gx_color_load(%struct.gx_device_color_s* noundef %571, %struct.gs_state_s* noundef %572)
  br label %573

573:                                              ; preds = %52, %68, %92, %224, %286, %570, %487
  ret void
}

declare dso_local zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef) #1

declare dso_local void @gx_color_load(%struct.gx_device_color_s* noundef, %struct.gs_state_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
