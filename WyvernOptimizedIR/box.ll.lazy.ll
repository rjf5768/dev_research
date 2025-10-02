; ModuleID = './box.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_type = type { double, %struct.anon, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, [27 x i32], double**, i64*, [2 x double*], i8* }
%struct.anon = type { i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32 }

@RandomPadding = dso_local global i32 -1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_box(%struct.box_type* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca double*, align 8
  %11 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 1, i32 0
  store i32 %2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 1, i32 1
  store i32 %3, i32* %13, align 4
  %14 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 1, i32 2
  store i32 %4, i32* %14, align 8
  %15 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 2, i32 0
  store i32 %5, i32* %15, align 4
  %16 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 2, i32 1
  store i32 %6, i32* %16, align 4
  %17 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 2, i32 2
  store i32 %7, i32* %17, align 4
  %18 = shl nsw i32 %8, 1
  %19 = add nsw i32 %18, %5
  %20 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 3, i32 0
  store i32 %19, i32* %20, align 8
  %21 = shl nsw i32 %8, 1
  %22 = add nsw i32 %21, %6
  %23 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 3, i32 1
  store i32 %22, i32* %23, align 4
  %24 = shl nsw i32 %8, 1
  %25 = add nsw i32 %24, %7
  %26 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 3, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 4
  store i32 %8, i32* %27, align 4
  %28 = shl nsw i32 %8, 1
  %29 = add nsw i32 %28, %5
  %30 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = shl nsw i32 %8, 1
  %32 = add nsw i32 %31, %5
  %33 = shl nsw i32 %8, 1
  %34 = add nsw i32 %33, %6
  %35 = mul nsw i32 %32, %34
  %36 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 14
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 14, %42
  br label %44

44:                                               ; preds = %40, %9
  %.03 = phi i32 [ %43, %40 ], [ 0, %9 ]
  %45 = shl nsw i32 %8, 1
  %46 = add nsw i32 %45, %6
  %47 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %49, %.03
  %51 = add nsw i32 %50, 7
  %52 = and i32 %51, -8
  %53 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = shl nsw i32 %8, 1
  %55 = add nsw i32 %54, %7
  %56 = mul nsw i32 %55, %52
  %57 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  store i32 %56, i32* %57, align 8
  %58 = icmp sgt i32 %5, 31
  br i1 %58, label %59, label %69

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %64, %59
  %61 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = srem i32 %62, 512
  %.not6 = icmp eq i32 %63, 64
  br i1 %.not6, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %65, align 8
  br label %60, !llvm.loop !4

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %44
  %70 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 10
  %71 = bitcast double*** %70 to i8**
  %72 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 3
  %76 = call i32 @posix_memalign(i8** noundef nonnull %71, i64 noundef 64, i64 noundef %75) #3
  %77 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = bitcast double** %10 to i8**
  %80 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, %78
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 3
  %85 = call i32 @posix_memalign(i8** noundef nonnull %79, i64 noundef 64, i64 noundef %84) #3
  %86 = bitcast double** %10 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 %94, i1 false)
  %95 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %114, %69
  %.02 = phi i32 [ 0, %69 ], [ %115, %114 ]
  %100 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %.02, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load double*, double** %10, align 8
  %105 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %.02, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %104, i64 %108
  %110 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 10
  %111 = load double**, double*** %110, align 8
  %112 = zext i32 %.02 to i64
  %113 = getelementptr inbounds double*, double** %111, i64 %112
  store double* %109, double** %113, align 8
  br label %114

114:                                              ; preds = %103
  %115 = add nuw nsw i32 %.02, 1
  br label %99, !llvm.loop !6

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 11
  %118 = bitcast i64** %117 to i8**
  %119 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 3
  %123 = call i32 @posix_memalign(i8** noundef nonnull %118, i64 noundef 64, i64 noundef %122) #3
  %124 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 11
  %125 = bitcast i64** %124 to i8**
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = shl nsw i64 %129, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %126, i8 0, i64 %130, i1 false)
  %131 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 0
  %134 = bitcast double** %133 to i8**
  %135 = sext i32 %132 to i64
  %136 = shl nsw i64 %135, 3
  %137 = call i32 @posix_memalign(i8** noundef nonnull %134, i64 noundef 64, i64 noundef %136) #3
  %138 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 0
  %139 = bitcast double** %138 to i8**
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = shl nsw i64 %143, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %140, i8 0, i64 %144, i1 false)
  %145 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 1
  %148 = bitcast double** %147 to i8**
  %149 = sext i32 %146 to i64
  %150 = shl nsw i64 %149, 3
  %151 = call i32 @posix_memalign(i8** noundef nonnull %148, i64 noundef 64, i64 noundef %150) #3
  %152 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 1
  %153 = bitcast double** %152 to i8**
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = shl nsw i64 %157, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %154, i8 0, i64 %158, i1 false)
  %159 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 0, %8
  br label %162

162:                                              ; preds = %223, %116
  %.0 = phi i32 [ %161, %116 ], [ %224, %223 ]
  %163 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 2, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %8
  %166 = icmp slt i32 %.0, %165
  br i1 %166, label %167, label %225

167:                                              ; preds = %162
  %168 = sub nsw i32 0, %8
  br label %169

169:                                              ; preds = %220, %167
  %.01 = phi i32 [ %168, %167 ], [ %221, %220 ]
  %170 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 2, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %8
  %173 = icmp slt i32 %.01, %172
  br i1 %173, label %174, label %222

174:                                              ; preds = %169
  %175 = add nsw i32 %.01, %8
  %176 = add nsw i32 %.0, %8
  %177 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %176, %178
  %180 = add nsw i32 %175, %179
  %181 = xor i32 %.01, %.0
  %182 = and i32 %181, 1
  %.not = icmp eq i32 %182, 0
  br i1 %.not, label %188, label %183

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 11
  %185 = load i64*, i64** %184, align 8
  %186 = sext i32 %180 to i64
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  store i64 -1, i64* %187, align 8
  br label %193

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 11
  %190 = load i64*, i64** %189, align 8
  %191 = sext i32 %180 to i64
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %188, %183
  %194 = xor i32 %.01, %.0
  %195 = and i32 %194, 1
  %.not4 = icmp eq i32 %195, 0
  br i1 %.not4, label %201, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 0
  %198 = load double*, double** %197, align 8
  %199 = sext i32 %180 to i64
  %200 = getelementptr inbounds double, double* %198, i64 %199
  store double 1.000000e+00, double* %200, align 8
  br label %206

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 0
  %203 = load double*, double** %202, align 8
  %204 = sext i32 %180 to i64
  %205 = getelementptr inbounds double, double* %203, i64 %204
  store double 0.000000e+00, double* %205, align 8
  br label %206

206:                                              ; preds = %201, %196
  %207 = xor i32 %.01, %.0
  %208 = and i32 %207, 1
  %.not5 = icmp eq i32 %208, 0
  br i1 %.not5, label %214, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 1
  %211 = load double*, double** %210, align 8
  %212 = sext i32 %180 to i64
  %213 = getelementptr inbounds double, double* %211, i64 %212
  store double 0.000000e+00, double* %213, align 8
  br label %219

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 12, i64 1
  %216 = load double*, double** %215, align 8
  %217 = sext i32 %180 to i64
  %218 = getelementptr inbounds double, double* %216, i64 %217
  store double 1.000000e+00, double* %218, align 8
  br label %219

219:                                              ; preds = %214, %209
  br label %220

220:                                              ; preds = %219
  %221 = add nsw i32 %.01, 1
  br label %169, !llvm.loop !7

222:                                              ; preds = %169
  br label %223

223:                                              ; preds = %222
  %224 = add nsw i32 %.0, 1
  br label %162, !llvm.loop !8

225:                                              ; preds = %162
  %226 = mul nsw i32 %96, %98
  %227 = add i32 %78, %226
  %228 = add i32 %227, %132
  %229 = add i32 %228, %146
  %230 = add i32 %229, %160
  %231 = shl i32 %230, 3
  ret i32 %231
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_box(%struct.box_type* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 10
  %3 = bitcast double*** %2 to i8***
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5) #3
  %6 = getelementptr inbounds %struct.box_type, %struct.box_type* %0, i64 0, i32 10
  %7 = bitcast double*** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
