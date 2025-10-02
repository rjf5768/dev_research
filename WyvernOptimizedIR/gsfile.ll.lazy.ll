; ModuleID = './gsfile.ll'
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
  %3 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef %0) #3
  %4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = mul nsw i32 %3, 3
  %9 = call i8* @gs_malloc(i32 noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #3
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %110

12:                                               ; preds = %2
  switch i32 %7, label %20 [
    i32 1, label %13
    i32 8, label %14
    i32 24, label %18
    i32 32, label %19
  ]

13:                                               ; preds = %12
  br label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 7
  %16 = load i32, i32* %15, align 8
  %.not10 = icmp eq i32 %16, 0
  %17 = select i1 %.not10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0)
  br label %21

18:                                               ; preds = %12
  br label %21

19:                                               ; preds = %12
  br label %21

20:                                               ; preds = %12
  br label %109

21:                                               ; preds = %19, %18, %14, %13
  %.09 = phi i8* [ getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), %19 ], [ getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), %18 ], [ %17, %14 ], [ getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %13 ]
  %22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef %.09, i32 noundef %23, i32 noundef %5) #3
  br label %25

25:                                               ; preds = %106, %21
  %.08 = phi i32 [ 0, %21 ], [ %107, %106 ]
  %26 = icmp slt i32 %.08, %5
  br i1 %26, label %27, label %108

27:                                               ; preds = %25
  %28 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef %0, i32 noundef %.08, i8* noundef nonnull %9, i32 noundef %3) #3
  switch i32 %7, label %98 [
    i32 8, label %29
    i32 32, label %77
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 7
  %31 = load i32, i32* %30, align 8
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %60, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 18
  %34 = load i8*, i8** %33, align 8
  %35 = sext i32 %3 to i64
  %36 = getelementptr inbounds i8, i8* %9, i64 %35
  %37 = sext i32 %3 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = sext i32 %3 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %38, i8* nonnull align 1 %9, i64 %39, i1 false)
  %40 = sext i32 %3 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  br label %42

42:                                               ; preds = %44, %32
  %.02 = phi i8* [ %38, %32 ], [ %45, %44 ]
  %.01 = phi i8* [ %9, %32 ], [ %57, %44 ]
  %43 = icmp ult i8* %.02, %41
  br i1 %43, label %44, label %58

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, i8* %.02, i64 1
  %46 = load i8, i8* %.02, align 1
  %47 = zext i8 %46 to i64
  %48 = mul nuw nsw i64 %47, 3
  %49 = getelementptr inbounds i8, i8* %34, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %49, align 1
  %52 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %51, i8* %.01, align 1
  %53 = getelementptr inbounds i8, i8* %50, i64 1
  %54 = load i8, i8* %50, align 1
  %55 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %54, i8* %52, align 1
  %56 = load i8, i8* %53, align 1
  %57 = getelementptr inbounds i8, i8* %.01, i64 3
  store i8 %56, i8* %55, align 1
  br label %42, !llvm.loop !4

58:                                               ; preds = %42
  %59 = mul nsw i32 %3, 3
  br label %76

60:                                               ; preds = %29
  %61 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 0, i32 18
  %62 = load i8*, i8** %61, align 8
  %63 = sext i32 %3 to i64
  %64 = getelementptr inbounds i8, i8* %9, i64 %63
  br label %65

65:                                               ; preds = %67, %60
  %.13 = phi i8* [ %9, %60 ], [ %68, %67 ]
  %.1 = phi i8* [ %9, %60 ], [ %74, %67 ]
  %66 = icmp ult i8* %.13, %64
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  %68 = getelementptr inbounds i8, i8* %.13, i64 1
  %69 = load i8, i8* %.13, align 1
  %70 = zext i8 %69 to i64
  %71 = mul nuw nsw i64 %70, 3
  %72 = getelementptr inbounds i8, i8* %62, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 %73, i8* %.1, align 1
  br label %65, !llvm.loop !6

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %58
  %.05 = phi i32 [ %59, %58 ], [ %3, %75 ]
  br label %99

77:                                               ; preds = %27
  %78 = sext i32 %3 to i64
  %79 = getelementptr inbounds i8, i8* %9, i64 %78
  br label %80

80:                                               ; preds = %82, %77
  %.24 = phi i8* [ %9, %77 ], [ %90, %82 ]
  %.2 = phi i8* [ %9, %77 ], [ %92, %82 ]
  %81 = icmp ult i8* %.24, %79
  br i1 %81, label %82, label %93

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, i8* %.24, i64 1
  %84 = getelementptr inbounds i8, i8* %.24, i64 2
  %85 = load i8, i8* %83, align 1
  %86 = getelementptr inbounds i8, i8* %.2, i64 1
  store i8 %85, i8* %.2, align 1
  %87 = getelementptr inbounds i8, i8* %.24, i64 3
  %88 = load i8, i8* %84, align 1
  %89 = getelementptr inbounds i8, i8* %.2, i64 2
  store i8 %88, i8* %86, align 1
  %90 = getelementptr inbounds i8, i8* %.24, i64 4
  %91 = load i8, i8* %87, align 1
  %92 = getelementptr inbounds i8, i8* %.2, i64 3
  store i8 %91, i8* %89, align 1
  br label %80, !llvm.loop !7

93:                                               ; preds = %80
  %94 = ptrtoint i8* %.2 to i64
  %95 = ptrtoint i8* %9 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  br label %99

98:                                               ; preds = %27
  br label %99

99:                                               ; preds = %98, %93, %76
  %.16 = phi i32 [ %3, %98 ], [ %97, %93 ], [ %.05, %76 ]
  %100 = sext i32 %.16 to i64
  %101 = call i64 @fwrite(i8* noundef nonnull %9, i64 noundef 1, i64 noundef %100, %struct._IO_FILE* noundef %1) #3
  %102 = sext i32 %.16 to i64
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %109

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105
  %107 = add nuw nsw i32 %.08, 1
  br label %25, !llvm.loop !8

108:                                              ; preds = %25
  br label %109

109:                                              ; preds = %108, %104, %20
  %.07 = phi i32 [ -23, %20 ], [ -12, %104 ], [ 0, %108 ]
  call void @gs_free(i8* noundef nonnull %9, i32 noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #3
  br label %110

110:                                              ; preds = %109, %11
  %.0 = phi i32 [ -25, %11 ], [ %.07, %109 ]
  ret i32 %.0
}

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
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
