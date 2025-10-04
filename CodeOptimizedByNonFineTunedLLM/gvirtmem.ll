; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gvirtmem.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gvirtmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gx_vmem_s = type { i8**, i32, i32, i8, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"vmem_init(exists)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gvirtmem.c\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Couldn't allocate page status table (vmem_init)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"vmem_close(filename)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"vmem_close(page)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"vmem_close(exists)\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"vmem_get_page failed in vmem_bring_in_page, lnum = %d!\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"vmem_get_page\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"fwrite failed in vmem_write, pnum = %d!\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"vmem_file(filename)\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Can't alloc vmem temporary file name\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"/tmp/gvmem_XXXXXX\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Can't create vmem temporary file\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Can't open vmem temporary file %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"fseek failed in vmem_seek, pnum = %d!\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"fread failed in vmem_read, pnum = %d!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_init(%struct.gx_vmem_s* noundef %0, i8** noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 noundef %5, i64 noundef %6, i8* (i32, i32, i8*)* noundef %7, void (i8*, i32, i32, i8*)* noundef %8) #0 {
  %10 = alloca %struct.gx_vmem_s*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8* (i32, i32, i8*)*, align 8
  %18 = alloca void (i8*, i32, i32, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8 %4, i8* %14, align 1
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i8* (i32, i32, i8*)* %7, i8* (i32, i32, i8*)** %17, align 8
  store void (i8*, i32, i32, i8*)* %8, void (i8*, i32, i32, i8*)** %18, align 8
  %21 = load i8**, i8*** %11, align 8
  %22 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %23 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %22, i32 0, i32 0
  store i8** %21, i8*** %23, align 8
  store i32 0, i32* %20, align 4
  br label %24

24:                                               ; preds = %33, %9
  %25 = load i32, i32* %20, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i8**, i8*** %11, align 8
  %30 = load i32, i32* %20, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* null, i8** %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %20, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %20, align 4
  br label %24, !llvm.loop !4

36:                                               ; preds = %24
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %45 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %48 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i8, i8* %14, align 1
  %50 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %51 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %50, i32 0, i32 3
  store i8 %49, i8* %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %58 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %17, align 8
  %60 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %61 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %60, i32 0, i32 5
  store i8* (i32, i32, i8*)* %59, i8* (i32, i32, i8*)** %61, align 8
  %62 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %18, align 8
  %63 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %64 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %63, i32 0, i32 6
  store void (i8*, i32, i32, i8*)* %62, void (i8*, i32, i32, i8*)** %64, align 8
  %65 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %66 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %65, i32 0, i32 7
  store %struct._IO_FILE* null, %struct._IO_FILE** %66, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sdiv i32 %67, %68
  %70 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %71 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %74 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %79 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  %82 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %83 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 4
  %84 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %85 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %84, i32 0, i32 14
  store i32 0, i32* %85, align 8
  %86 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %87 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %86, i32 0, i32 15
  store i32 0, i32* %87, align 4
  %88 = load i64, i64* %16, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %88, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %94 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %93, i32 0, i32 16
  store i32 %92, i32* %94, align 8
  %95 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %17, align 8
  %96 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %97 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = call i8* %95(i32 noundef %98, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %99, i8** %19, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %42
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

107:                                              ; preds = %42
  %108 = load i8*, i8** %19, align 8
  %109 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %110 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %113 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %111, i8 0, i64 %115, i1 false)
  %116 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %117 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %116, i32 0, i32 17
  store i64 0, i64* %117, align 8
  %118 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %10, align 8
  %119 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %118, i32 0, i32 18
  store i64 0, i64* %119, align 8
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_close(%struct.gx_vmem_s* noundef %0) #0 {
  %2 = alloca %struct.gx_vmem_s*, align 8
  %3 = alloca void (i8*, i32, i32, i8*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %2, align 8
  %6 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %7 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %6, i32 0, i32 6
  %8 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %7, align 8
  store void (i8*, i32, i32, i8*)* %8, void (i8*, i32, i32, i8*)** %3, align 8
  %9 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %9, i32 0, i32 7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %15 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %14, i32 0, i32 7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %17 = call i32 @fclose(%struct._IO_FILE* noundef %16)
  %18 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %19 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %18, i32 0, i32 7
  store %struct._IO_FILE* null, %struct._IO_FILE** %19, align 8
  %20 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %21 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %20, i32 0, i32 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @remove(i8* noundef %22) #7
  %24 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %25 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %26 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %25, i32 0, i32 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %29 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %28, i32 0, i32 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* noundef %30) #8
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  call void %24(i8* noundef %27, i32 noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %35 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %34, i32 0, i32 8
  store i8* null, i8** %35, align 8
  br label %36

36:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %40 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %45 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %49 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %46, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %61 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  call void %58(i8* noundef %59, i32 noundef 1, i32 noundef %62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %57, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %37, !llvm.loop !6

67:                                               ; preds = %37
  %68 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %69 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %70 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %69, i32 0, i32 9
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %73 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  call void %68(i8* noundef %71, i32 noundef %74, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_bring_in_page(%struct.gx_vmem_s* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_vmem_s*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %15 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %14, i32 0, i32 12
  store i32 0, i32* %15, align 8
  %16 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %17 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %16, i32 0, i32 13
  store i32 -1, i32* %17, align 4
  %18 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vmem_get_page(%struct.gx_vmem_s* noundef %18, i8** noundef %19, i32 noundef %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %30 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = ptrtoint i8** %28 to i64
  %33 = ptrtoint i8** %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 noundef %35)
  call void @exit(i32 noundef 1) #6
  unreachable

37:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @vmem_get_page(%struct.gx_vmem_s* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_vmem_s*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %15 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = ptrtoint i8** %13 to i64
  %18 = ptrtoint i8** %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %24 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %28 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %27, i32 0, i32 9
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %113

39:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %42 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %45 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %50 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %49, i32 0, i32 5
  %51 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %50, align 8
  %52 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %53 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i8* %51(i32 noundef 1, i32 noundef %54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %55, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %59 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %86

62:                                               ; preds = %48, %40
  %63 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @vmem_choose_page(%struct.gx_vmem_s* noundef %63, i32 noundef %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %113

70:                                               ; preds = %62
  %71 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %72 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %76 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %73, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  %82 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %83 = load i32, i32* %12, align 4
  call void @vmem_write_page(%struct.gx_vmem_s* noundef %82, i32 noundef %83)
  %84 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %85 = load i32, i32* %12, align 4
  call void @vmem_annul_page(%struct.gx_vmem_s* noundef %84, i32 noundef %85)
  br label %86

86:                                               ; preds = %70, %57
  %87 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %11, align 8
  call void @vmem_assign_page(%struct.gx_vmem_s* noundef %87, i32 noundef %88, i8* noundef %89)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %95 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %94, i32 0, i32 3
  %96 = load i8, i8* %95, align 8
  %97 = sext i8 %96 to i32
  %98 = trunc i32 %97 to i8
  %99 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %100 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %93, i8 %98, i64 %102, i1 false)
  %103 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %104 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 1, i8* %108, align 1
  br label %112

109:                                              ; preds = %86
  %110 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %5, align 8
  %111 = load i32, i32* %9, align 4
  call void @vmem_read_page(%struct.gx_vmem_s* noundef %110, i32 noundef %111)
  br label %112

112:                                              ; preds = %109, %92
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %68, %38
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_bring_in_rect(%struct.gx_vmem_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gx_vmem_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %8, align 8
  %21 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %14, align 8
  %23 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %8, align 8
  %24 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i8**, i8*** %14, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8** %38, i8*** %18, align 8
  %39 = load i8**, i8*** %14, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8** %42, i8*** %19, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sdiv i32 %43, %44
  %46 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %8, align 8
  %47 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sdiv i32 %48, %49
  %51 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %8, align 8
  %52 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %68, %6
  %54 = load i8**, i8*** %18, align 8
  %55 = load i8**, i8*** %19, align 8
  %56 = icmp ule i8** %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8**, i8*** %18, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %8, align 8
  %63 = load i8**, i8*** %18, align 8
  %64 = call i32 @vmem_get_page(%struct.gx_vmem_s* noundef %62, i8** noundef %63, i32 noundef 1)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -2, i32* %7, align 4
  br label %74

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %15, align 4
  %70 = load i8**, i8*** %18, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8** %72, i8*** %18, align 8
  br label %53, !llvm.loop !7

73:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @vmem_choose_page(%struct.gx_vmem_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gx_vmem_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %9 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %84, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %16
  %25 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %26 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %30 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %27, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %40 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %46 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %43, %24
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %84

54:                                               ; preds = %16
  %55 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %56 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %60 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %57, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %70 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %76 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %75, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %73, %54
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %51
  br label %12, !llvm.loop !8

85:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %79, %49
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_write_page(%struct.gx_vmem_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gx_vmem_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %11, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %91

22:                                               ; preds = %2
  %23 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %24 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %23)
  store %struct._IO_FILE* %24, %struct._IO_FILE** %6, align 8
  br label %25

25:                                               ; preds = %53, %22
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %28 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %33 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 8
  store i8 %34, i8* %8, align 1
  %35 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %36 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %37 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  call void @vmem_seek(%struct.gx_vmem_s* noundef %35, i32 noundef %38)
  %39 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %40 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %50, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %49 = call i32 @putc(i32 noundef %47, %struct._IO_FILE* noundef %48)
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %42, !llvm.loop !9

53:                                               ; preds = %42
  %54 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %55 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %25, !llvm.loop !10

58:                                               ; preds = %25
  %59 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %60 = load i32, i32* %4, align 4
  call void @vmem_seek(%struct.gx_vmem_s* noundef %59, i32 noundef %60)
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %63 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %67 = call i64 @fwrite(i8* noundef %61, i64 noundef 1, i64 noundef %65, %struct._IO_FILE* noundef %66)
  %68 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %69 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 261)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %77)
  call void @exit(i32 noundef 1) #6
  unreachable

79:                                               ; preds = %58
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %82 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %87 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %93 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %92, i32 0, i32 18
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_annul_page(%struct.gx_vmem_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gx_vmem_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  store i8** %18, i8*** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %21 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %25 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %31 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %36 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i32 [ %33, %28 ], [ %37, %34 ]
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %45, %38
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8**, i8*** %6, align 8
  store i8* null, i8** %46, align 8
  br label %40, !llvm.loop !11

47:                                               ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_assign_page(%struct.gx_vmem_s* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.gx_vmem_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %13 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %17 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8** %21, i8*** %8, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %25 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  %28 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %29 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %35 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %40 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %37, %32 ], [ %41, %38 ]
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %49, %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  %53 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %4, align 8
  %54 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %9, align 8
  br label %44, !llvm.loop !12

59:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_read_page(%struct.gx_vmem_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gx_vmem_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %8 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %7, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %12 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %10, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %9, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %19 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %18)
  store %struct._IO_FILE* %19, %struct._IO_FILE** %6, align 8
  %20 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %21 = load i32, i32* %4, align 4
  call void @vmem_seek(%struct.gx_vmem_s* noundef %20, i32 noundef %21)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %24 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %28 = call i64 @fread(i8* noundef %22, i64 noundef 1, i64 noundef %26, %struct._IO_FILE* noundef %27)
  %29 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %30 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 237)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 noundef %38)
  call void @exit(i32 noundef 1) #6
  unreachable

40:                                               ; preds = %2
  %41 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %42 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %41, i32 0, i32 17
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %0) #0 {
  %2 = alloca %struct.gx_vmem_s*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %2, align 8
  %5 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %6 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %5, i32 0, i32 7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %3, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %12 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %11, i32 0, i32 5
  %13 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %12, align 8
  %14 = call i8* %13(i32 noundef 18, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 300)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %10
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strcpy(i8* noundef %23, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #7
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @mktemp(i8* noundef %25)
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

33:                                               ; preds = %22
  %34 = load i8*, i8** %4, align 8
  %35 = call noalias %struct._IO_FILE* @fopen(i8* noundef %34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %35, %struct._IO_FILE** %3, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = icmp eq %struct._IO_FILE* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 311)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* noundef %42)
  call void @exit(i32 noundef 1) #6
  unreachable

44:                                               ; preds = %33
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %46 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %47 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %46, i32 0, i32 7
  store %struct._IO_FILE* %45, %struct._IO_FILE** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %2, align 8
  %50 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %1
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  ret %struct._IO_FILE* %52
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_seek(%struct.gx_vmem_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gx_vmem_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gx_vmem_s* %0, %struct.gx_vmem_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %6 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %5)
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.gx_vmem_s*, %struct.gx_vmem_s** %3, align 8
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %8, %12
  %14 = call i32 @fseek(%struct._IO_FILE* noundef %6, i64 noundef %13, i32 noundef 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 325)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 noundef %20)
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %2
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

declare dso_local i8* @mktemp(i8* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
