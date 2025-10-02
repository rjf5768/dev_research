; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsfile.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [16 x i8] c"ppm file buffer\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"P4\0A# Ghostscript 1 bit mono image dump\0A%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"P6\0A# Ghostscript 8 bit mapped color image dump\0A%d %d\0A255\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"P5\0A# Ghostscript 8 bit gray scale image dump\0A%d %d\0A255\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 24 bit color image dump\0A%d %d\0A255\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 32 bit color image dump\0A%d %d\0A255\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_writeppmfile(%struct.gx_device_memory_s* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gx_device_memory_s*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.gx_device_memory_s* %0, %struct.gx_device_memory_s** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %22 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 3
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @gs_malloc(i32 noundef %31, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 -25, i32* %3, align 4
  br label %208

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %48 [
    i32 1, label %38
    i32 8, label %39
    i32 24, label %46
    i32 32, label %47
  ]

38:                                               ; preds = %36
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %49

39:                                               ; preds = %36
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0)
  store i8* %45, i8** %11, align 8
  br label %49

46:                                               ; preds = %36
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %49

47:                                               ; preds = %36
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %49

48:                                               ; preds = %36
  store i32 -23, i32* %13, align 4
  br label %204

49:                                               ; preds = %47, %46, %39, %38
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef %51, i32 noundef %54, i32 noundef %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %200, %49
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %203

61:                                               ; preds = %57
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef %62, i32 noundef %63, i8* noundef %64, i32 noundef %65)
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %187 [
    i32 8, label %68
    i32 32, label %152
  ]

68:                                               ; preds = %61
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %70 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %124

73:                                               ; preds = %68
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %75 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 18
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %18, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %87, i1 false)
  %88 = load i8*, i8** %10, align 8
  store i8* %88, i8** %16, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8* %92, i8** %17, align 8
  br label %93

93:                                               ; preds = %97, %73
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = icmp ult i8* %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i8*, i8** %18, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %15, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = mul nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  store i8* %105, i8** %19, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %19, align 8
  %108 = load i8, i8* %106, align 1
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %16, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %19, align 8
  %113 = load i8, i8* %111, align 1
  %114 = load i8*, i8** %16, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %16, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8*, i8** %19, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %19, align 8
  %118 = load i8, i8* %116, align 1
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %16, align 8
  store i8 %118, i8* %119, align 1
  br label %93, !llvm.loop !4

121:                                              ; preds = %93
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 %122, 3
  store i32 %123, i32* %14, align 4
  br label %151

124:                                              ; preds = %68
  %125 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %4, align 8
  %126 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %125, i32 0, i32 18
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %20, align 8
  %128 = load i8*, i8** %10, align 8
  store i8* %128, i8** %16, align 8
  store i8* %128, i8** %15, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8* %132, i8** %17, align 8
  br label %133

133:                                              ; preds = %137, %124
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = icmp ult i8* %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i8*, i8** %20, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %15, align 8
  %141 = load i8, i8* %139, align 1
  %142 = zext i8 %141 to i32
  %143 = mul nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %138, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %16, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %16, align 8
  store i8 %146, i8* %147, align 1
  br label %133, !llvm.loop !6

149:                                              ; preds = %133
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %149, %121
  br label %189

152:                                              ; preds = %61
  %153 = load i8*, i8** %10, align 8
  store i8* %153, i8** %16, align 8
  store i8* %153, i8** %15, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8* %157, i8** %17, align 8
  br label %158

158:                                              ; preds = %162, %152
  %159 = load i8*, i8** %15, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load i8*, i8** %15, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %15, align 8
  %165 = load i8*, i8** %15, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %15, align 8
  %167 = load i8, i8* %165, align 1
  %168 = load i8*, i8** %16, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %16, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i8*, i8** %15, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %15, align 8
  %172 = load i8, i8* %170, align 1
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %16, align 8
  store i8 %172, i8* %173, align 1
  %175 = load i8*, i8** %15, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %15, align 8
  %177 = load i8, i8* %175, align 1
  %178 = load i8*, i8** %16, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %16, align 8
  store i8 %177, i8* %178, align 1
  br label %158, !llvm.loop !7

180:                                              ; preds = %158
  %181 = load i8*, i8** %16, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  br label %189

187:                                              ; preds = %61
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %187, %180, %151
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %194 = call i64 @fwrite(i8* noundef %190, i64 noundef 1, i64 noundef %192, %struct._IO_FILE* noundef %193)
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp ult i64 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  store i32 -12, i32* %13, align 4
  br label %204

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %57, !llvm.loop !8

203:                                              ; preds = %57
  br label %204

204:                                              ; preds = %203, %198, %48
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %9, align 4
  call void @gs_free(i8* noundef %205, i32 noundef %206, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %35
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
