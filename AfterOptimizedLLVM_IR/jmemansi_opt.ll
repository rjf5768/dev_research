; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jmemansi.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jmemansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, void (%struct.jpeg_common_struct*)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { void (%struct.jpeg_common_struct*)*, i64, i64, i32, i32 }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct._IO_FILE*, [64 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @jpeg_get_small(%struct.jpeg_common_struct* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.jpeg_common_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef %5) #3
  ret i8* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_free_small(%struct.jpeg_common_struct* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.jpeg_common_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %7) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @jpeg_get_large(%struct.jpeg_common_struct* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.jpeg_common_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef %5) #3
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_free_large(%struct.jpeg_common_struct* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.jpeg_common_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jpeg_mem_available(%struct.jpeg_common_struct* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.jpeg_common_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = sub nsw i64 %13, %14
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_open_backing_store(%struct.jpeg_common_struct* noundef %0, %struct.backing_store_struct* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.jpeg_common_struct*, align 8
  %5 = alloca %struct.backing_store_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %4, align 8
  store %struct.backing_store_struct* %1, %struct.backing_store_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call noalias %struct._IO_FILE* @tmpfile()
  %8 = load %struct.backing_store_struct*, %struct.backing_store_struct** %5, align 8
  %9 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %8, i32 0, i32 3
  store %struct._IO_FILE* %7, %struct._IO_FILE** %9, align 8
  %10 = icmp eq %struct._IO_FILE* %7, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %4, align 8
  %13 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 62, i32* %15, align 8
  %16 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %4, align 8
  %17 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %16, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %20 = bitcast %union.anon* %19 to [80 x i8]*
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %22 = call i8* @strncpy(i8* noundef %21, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 80) #3
  %23 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %4, align 8
  %24 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %4, align 8
  call void %27(%struct.jpeg_common_struct* noundef %28)
  br label %29

29:                                               ; preds = %11, %3
  %30 = load %struct.backing_store_struct*, %struct.backing_store_struct** %5, align 8
  %31 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %30, i32 0, i32 0
  store void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)* @read_backing_store, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %31, align 8
  %32 = load %struct.backing_store_struct*, %struct.backing_store_struct** %5, align 8
  %33 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %32, i32 0, i32 1
  store void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)* @write_backing_store, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %33, align 8
  %34 = load %struct.backing_store_struct*, %struct.backing_store_struct** %5, align 8
  %35 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %34, i32 0, i32 2
  store void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)* @close_backing_store, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)** %35, align 8
  ret void
}

declare dso_local noalias %struct._IO_FILE* @tmpfile() #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_backing_store(%struct.jpeg_common_struct* noundef %0, %struct.backing_store_struct* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.jpeg_common_struct*, align 8
  %7 = alloca %struct.backing_store_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %6, align 8
  store %struct.backing_store_struct* %1, %struct.backing_store_struct** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.backing_store_struct*, %struct.backing_store_struct** %7, align 8
  %12 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %11, i32 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @fseek(%struct._IO_FILE* noundef %13, i64 noundef %14, i32 noundef 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %19 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 64, i32* %21, align 8
  %22 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %23 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  call void %26(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %17, %5
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.backing_store_struct*, %struct.backing_store_struct** %7, align 8
  %32 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %31, i32 0, i32 3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %34 = call i64 @fread(i8* noundef %29, i64 noundef 1, i64 noundef %30, %struct._IO_FILE* noundef %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %39 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %38, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 63, i32* %41, align 8
  %42 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %43 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %45, align 8
  %47 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  call void %46(%struct.jpeg_common_struct* noundef %47)
  br label %48

48:                                               ; preds = %37, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_backing_store(%struct.jpeg_common_struct* noundef %0, %struct.backing_store_struct* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.jpeg_common_struct*, align 8
  %7 = alloca %struct.backing_store_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %6, align 8
  store %struct.backing_store_struct* %1, %struct.backing_store_struct** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.backing_store_struct*, %struct.backing_store_struct** %7, align 8
  %12 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %11, i32 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @fseek(%struct._IO_FILE* noundef %13, i64 noundef %14, i32 noundef 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %19 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 64, i32* %21, align 8
  %22 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %23 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  call void %26(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %17, %5
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.backing_store_struct*, %struct.backing_store_struct** %7, align 8
  %32 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %31, i32 0, i32 3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %34 = call i64 @fwrite(i8* noundef %29, i64 noundef 1, i64 noundef %30, %struct._IO_FILE* noundef %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %39 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %38, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 65, i32* %41, align 8
  %42 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  %43 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %45, align 8
  %47 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %6, align 8
  call void %46(%struct.jpeg_common_struct* noundef %47)
  br label %48

48:                                               ; preds = %37, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @close_backing_store(%struct.jpeg_common_struct* noundef %0, %struct.backing_store_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_common_struct*, align 8
  %4 = alloca %struct.backing_store_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %3, align 8
  store %struct.backing_store_struct* %1, %struct.backing_store_struct** %4, align 8
  %5 = load %struct.backing_store_struct*, %struct.backing_store_struct** %4, align 8
  %6 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %5, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @fclose(%struct._IO_FILE* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jpeg_mem_init(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  ret i64 1000000
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_mem_term(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  ret void
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
