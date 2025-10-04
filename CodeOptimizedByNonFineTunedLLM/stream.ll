; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/stream.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sread_string.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @ssread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @ssavailable, i32 (%struct.stream_s*, i64)* @ssseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@swrite_string.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* null, i32 (%struct.stream_s*, i8)* @sswrite, i32 (%struct.stream_s*, i64*)* @snoavailable, i32 (%struct.stream_s*, i64)* @ssseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@sread_file.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @sfread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @sfavailable, i32 (%struct.stream_s*, i64)* @srseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @srclose }, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@swrite_file.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* null, i32 (%struct.stream_s*, i8)* @sfwrite, i32 (%struct.stream_s*, i64*)* @snoavailable, i32 (%struct.stream_s*, i64)* @swseek, i32 (%struct.stream_s*)* @swflush, i32 (%struct.stream_s*)* @swclose }, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@sread_decrypt.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @sxread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @sxavailable, i32 (%struct.stream_s*, i64)* null, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@scan_char_array = external dso_local global [257 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @sread_string(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  call void @ssinit(%struct.stream_s* noundef %7, i8* noundef %8, i32 noundef %9, %struct.stream_procs* noundef @sread_string.p)
  %10 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 4
  store i8 0, i8* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssread(%struct.stream_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %2, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssavailable(%struct.stream_s* noundef %0, i64* noundef %1) #0 {
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i64*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %7 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = load i64*, i64** %4, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64*, i64** %4, align 8
  store i64 -1, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssseek(%struct.stream_s* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i64, align 8
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = zext i32 %12 to i64
  %14 = icmp sgt i64 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %25

16:                                               ; preds = %8
  %17 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -1
  %23 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @snull(%struct.stream_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ssinit(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2, %struct.stream_procs* noundef %3) #0 {
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream_procs*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stream_procs* %3, %struct.stream_procs** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  %14 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  store i8 1, i8* %28, align 1
  %29 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 7
  %33 = load %struct.stream_procs*, %struct.stream_procs** %8, align 8
  %34 = bitcast %struct.stream_procs* %32 to i8*
  %35 = bitcast %struct.stream_procs* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @swrite_string(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  call void @ssinit(%struct.stream_s* noundef %7, i8* noundef %8, i32 noundef %9, %struct.stream_procs* noundef @swrite_string.p)
  %10 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 4
  store i8 1, i8* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sswrite(%struct.stream_s* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i8, align 1
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @snoavailable(%struct.stream_s* noundef %0, i64* noundef %1) #0 {
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i64*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  store i64* %1, i64** %4, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sread_file(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @sfinit(%struct.stream_s* noundef %9, %struct._IO_FILE* noundef %10, i8* noundef %11, i32 noundef %12, %struct.stream_procs* noundef @sread_file.p)
  %13 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 4
  store i8 0, i8* %14, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %17 = icmp eq %struct._IO_FILE* %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 -1, i32 0
  %20 = sext i32 %19 to i64
  %21 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfread(%struct.stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  store i32 -1, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i64 @ftell(%struct._IO_FILE* noundef %23)
  %25 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %36, align 8
  %38 = call i64 @fread(i8* noundef %30, i64 noundef 1, i64 noundef %34, %struct._IO_FILE* noundef %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  %44 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 9
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %47, align 8
  %49 = call i32 @feof(%struct._IO_FILE* noundef %48) #4
  %50 = trunc i32 %49 to i8
  %51 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %27
  %56 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %63 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %87

70:                                               ; preds = %27
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %75 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %80 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 5
  store i8 1, i8* %80, align 1
  store i32 -1, i32* %2, align 4
  br label %87

81:                                               ; preds = %70
  %82 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %83 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %73, %55, %9
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfavailable(%struct.stream_s* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %10 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %2
  %23 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = call i64 @ftell(%struct._IO_FILE* noundef %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = call i32 @fseek(%struct._IO_FILE* noundef %29, i64 noundef 0, i32 noundef 2)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %72

33:                                               ; preds = %22
  %34 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 9
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %37 = call i64 @ftell(%struct._IO_FILE* noundef %36)
  store i64 %37, i64* %7, align 8
  %38 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @fseek(%struct._IO_FILE* noundef %40, i64 noundef %41, i32 noundef 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %72

45:                                               ; preds = %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64*, i64** %5, align 8
  store i64 -1, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %45
  br label %71

58:                                               ; preds = %2
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %64 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %63, i32 0, i32 9
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %64, align 8
  %66 = call i32 @feof(%struct._IO_FILE* noundef %65) #4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64*, i64** %5, align 8
  store i64 -1, i64* %69, align 8
  br label %70

70:                                               ; preds = %68, %62, %58
  br label %71

71:                                               ; preds = %70, %57
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %44, %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @srseek(%struct.stream_s* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %10 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = add nsw i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp sle i64 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  %38 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %3, align 4
  br label %59

40:                                               ; preds = %26, %2
  %41 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 9
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @fseek(%struct._IO_FILE* noundef %43, i64 noundef %44, i32 noundef 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %50 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %58 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 5
  store i8 0, i8* %58, align 1
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %47, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @srclose(%struct.stream_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %2, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @sfinit(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3, %struct.stream_procs* noundef %4) #0 {
  %6 = alloca %struct.stream_s*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stream_procs*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %6, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.stream_procs* %4, %struct.stream_procs** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  %16 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 9
  store %struct._IO_FILE* %21, %struct._IO_FILE** %23, align 8
  %24 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  store i8 0, i8* %30, align 1
  %31 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 7
  %33 = load %struct.stream_procs*, %struct.stream_procs** %10, align 8
  %34 = bitcast %struct.stream_procs* %32 to i8*
  %35 = bitcast %struct.stream_procs* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @swrite_file(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @sfinit(%struct.stream_s* noundef %9, %struct._IO_FILE* noundef %10, i8* noundef %11, i32 noundef %12, %struct.stream_procs* noundef @swrite_file.p)
  %13 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 4
  store i8 1, i8* %14, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = icmp eq %struct._IO_FILE* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = icmp eq %struct._IO_FILE* %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 0
  %26 = sext i32 %25 to i64
  %27 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 6
  store i64 %26, i64* %28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfwrite(%struct.stream_s* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i8, align 1
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = zext i32 %18 to i64
  %20 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = call i64 @fwrite(i8* noundef %7, i64 noundef 1, i64 noundef %19, %struct._IO_FILE* noundef %22)
  %24 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = call i64 @ftell(%struct._IO_FILE* noundef %31)
  %33 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %2
  %36 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %35
  %60 = load i8, i8* %4, align 1
  %61 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %62 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %62, align 8
  store i8 %60, i8* %64, align 1
  %65 = zext i8 %60 to i32
  br label %74

66:                                               ; preds = %35
  %67 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %68 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %68, i32 0, i32 1
  %70 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %69, align 8
  %71 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %72 = load i8, i8* %4, align 1
  %73 = call i32 %70(%struct.stream_s* noundef %71, i8 noundef zeroext %72)
  br label %74

74:                                               ; preds = %66, %59
  %75 = phi i32 [ %65, %59 ], [ %73, %66 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swseek(%struct.stream_s* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i64, align 8
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  store i64 %1, i64* %4, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swflush(%struct.stream_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s*, align 8
  %3 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %2, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %10 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = zext i32 %17 to i64
  %19 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 9
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %22 = call i64 @fwrite(i8* noundef %6, i64 noundef 1, i64 noundef %18, %struct._IO_FILE* noundef %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i32 @fflush(%struct._IO_FILE* noundef %26)
  %28 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 9
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8
  %31 = call i64 @ftell(%struct._IO_FILE* noundef %30)
  %32 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 6
  store i64 %31, i64* %33, align 8
  %34 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  %38 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swclose(%struct.stream_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %2, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %9 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = zext i32 %16 to i64
  %18 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = call i64 @fwrite(i8* noundef %5, i64 noundef 1, i64 noundef %17, %struct._IO_FILE* noundef %20)
  %22 = load %struct.stream_s*, %struct.stream_s** %2, align 8
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i32 @fclose(%struct._IO_FILE* noundef %24)
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sread_decrypt(%struct.stream_s* noundef %0, %struct.stream_s* noundef %1, i8* noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = alloca %struct.stream_s*, align 8
  %7 = alloca %struct.stream_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.stream_s* %0, %struct.stream_s** %6, align 8
  store %struct.stream_s* %1, %struct.stream_s** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %11 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* %9, align 4
  call void @sfinit(%struct.stream_s* noundef %11, %struct._IO_FILE* noundef null, i8* noundef %12, i32 noundef %13, %struct.stream_procs* noundef @sread_decrypt.p)
  %14 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 4
  store i8 0, i8* %15, align 4
  %16 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 6
  store i64 -1, i64* %17, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 10
  store %struct.stream_s* %18, %struct.stream_s** %20, align 8
  %21 = load i16, i16* %10, align 2
  %22 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 11
  store i16 %21, i16* %23, align 8
  %24 = load %struct.stream_s*, %struct.stream_s** %6, align 8
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 12
  store i32 -1, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sxread(%struct.stream_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_s, align 8
  store %struct.stream_s* %0, %struct.stream_s** %3, align 8
  %7 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  %12 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %43, %1
  %15 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 10
  %17 = load %struct.stream_s*, %struct.stream_s** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sgets(%struct.stream_s* noundef %17, i8* noundef %18, i32 noundef %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  store i8 1, i8* %32, align 1
  store i32 -1, i32* %2, align 4
  br label %65

33:                                               ; preds = %14
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  call void @sread_string(%struct.stream_s* noundef %6, i8* noundef %34, i32 noundef %35)
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 12
  %40 = call i32 @sreadhex(%struct.stream_s* noundef %6, i8* noundef %36, i32 noundef %37, i32* noundef %5, i32* noundef %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %14

44:                                               ; preds = %33
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 11
  %50 = call i32 @gs_type1_decrypt(i8* noundef %45, i8* noundef %46, i32 noundef %47, i16* noundef %49)
  %51 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %58 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %44, %25
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sxavailable(%struct.stream_s* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i64*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 10
  %8 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %9, i32 0, i32 2
  %11 = load i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64*)** %10, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 10
  %14 = load %struct.stream_s*, %struct.stream_s** %13, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = call i32 %11(%struct.stream_s* noundef %14, i64* noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sdiv i64 %25, 2
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %23, %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sungetc(%struct.stream_s* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca i8, align 1
  store %struct.stream_s* %0, %struct.stream_s** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 4
  %8 = load i8, i8* %7, align 4
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ult i8* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load i8, i8* %5, align 1
  %22 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %23, align 8
  store i8 %21, i8* %24, align 1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sgets(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream_s* %0, %struct.stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %94, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %18 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %15
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %39, i64 %41, i1 false)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = zext i32 %42 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %44, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %94

55:                                               ; preds = %15
  %56 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ult i8* %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %72 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %72, i32 0, i32 0
  %74 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %73, align 8
  %75 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %76 = call i32 %74(%struct.stream_s* noundef %75)
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i32 [ %69, %63 ], [ %76, %70 ]
  store i32 %78, i32* %10, align 4
  %79 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %80 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 5
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %4, align 4
  br label %97

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  store i8 %89, i8* %90, align 1
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %87, %34
  br label %12, !llvm.loop !4

95:                                               ; preds = %12
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %83
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sputs(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.stream_s* %0, %struct.stream_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %94, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %18 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %15
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 %39, i64 %41, i1 false)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = zext i32 %42 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %44, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %94

55:                                               ; preds = %15
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %10, align 1
  %59 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %63 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ult i8* %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load i8, i8* %10, align 1
  %68 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %69 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  store i8 %67, i8* %71, align 1
  %72 = zext i8 %67 to i32
  br label %81

73:                                               ; preds = %55
  %74 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %75 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %75, i32 0, i32 1
  %77 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %76, align 8
  %78 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %79 = load i8, i8* %10, align 1
  %80 = call i32 %77(%struct.stream_s* noundef %78, i8 noundef zeroext %79)
  br label %81

81:                                               ; preds = %73, %66
  %82 = phi i32 [ %72, %66 ], [ %80, %73 ]
  %83 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %83, i32 0, i32 5
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %4, align 4
  br label %97

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %34
  br label %12, !llvm.loop !6

95:                                               ; preds = %12
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %87
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sreadhex(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store %struct.stream_s* %0, %struct.stream_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %13, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %14, align 1
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i64 0, i64 1), i8** %16, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %139

29:                                               ; preds = %5
  %30 = load i8, i8* %14, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 15
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %74

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %127, %34
  br label %36

36:                                               ; preds = %72, %35
  %37 = load i8*, i8** %16, align 8
  %38 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ult i8* %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  br label %59

52:                                               ; preds = %36
  %53 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %54, i32 0, i32 0
  %56 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %55, align 8
  %57 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %58 = call i32 %56(%struct.stream_s* noundef %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = phi i32 [ %51, %45 ], [ %58, %52 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %37, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %14, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sgt i32 %64, 15
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i8, i8* %14, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 103
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  store i32 -1, i32* %71, align 4
  br label %131

72:                                               ; preds = %66
  br label %36, !llvm.loop !7

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %113, %74
  %76 = load i8*, i8** %16, align 8
  %77 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %81 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ult i8* %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  br label %98

91:                                               ; preds = %75
  %92 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %93 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %93, i32 0, i32 0
  %95 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %94, align 8
  %96 = load %struct.stream_s*, %struct.stream_s** %7, align 8
  %97 = call i32 %95(%struct.stream_s* noundef %96)
  br label %98

98:                                               ; preds = %91, %84
  %99 = phi i32 [ %90, %84 ], [ %97, %91 ]
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %76, i64 %100
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %15, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sgt i32 %103, 15
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i8, i8* %15, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 103
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8, i8* %14, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  br label %131

113:                                              ; preds = %105
  br label %75, !llvm.loop !8

114:                                              ; preds = %98
  %115 = load i8, i8* %14, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 4
  %118 = load i8, i8* %15, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %12, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ult i8* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %35

128:                                              ; preds = %114
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %6, align 4
  br label %139

131:                                              ; preds = %109, %70
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  store i32 1, i32* %6, align 4
  br label %139

139:                                              ; preds = %131, %128, %27
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @gs_type1_decrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
