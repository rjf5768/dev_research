; ModuleID = './gvirtmem.ll'
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
define dso_local i32 @vmem_init(%struct.gx_vmem_s* nocapture noundef %0, i8** noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 noundef %5, i64 noundef %6, i8* (i32, i32, i8*)* noundef %7, void (i8*, i32, i32, i8*)* noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  store i8** %1, i8*** %10, align 8
  br label %11

11:                                               ; preds = %16, %9
  %.0 = phi i32 [ 0, %9 ], [ %17, %16 ]
  %12 = icmp slt i32 %.0, %3
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

18:                                               ; preds = %11
  %19 = icmp slt i32 %5, %2
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.01 = phi i32 [ %2, %20 ], [ %5, %18 ]
  %22 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 1
  store i32 %2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 2
  store i32 %3, i32* %23, align 4
  %24 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 3
  store i8 %4, i8* %24, align 8
  %25 = srem i32 %.01, %2
  %26 = sub i32 %.01, %25
  %27 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 5
  store i8* (i32, i32, i8*)* %7, i8* (i32, i32, i8*)** %28, align 8
  %29 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 6
  store void (i8*, i32, i32, i8*)* %8, void (i8*, i32, i32, i8*)** %29, align 8
  %30 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  store %struct._IO_FILE* null, %struct._IO_FILE** %30, align 8
  %31 = sdiv i32 %.01, %2
  %32 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  store i32 %31, i32* %32, align 8
  %33 = add nsw i32 %31, %3
  %34 = add nsw i32 %33, -1
  %35 = sdiv i32 %34, %31
  %36 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 15
  store i32 0, i32* %38, align 4
  %39 = sext i32 %.01 to i64
  %40 = sdiv i64 %6, %39
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 16
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = call i8* %7(i32 noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #10
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83) #11
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %50) #12
  call void @exit(i32 noundef 1) #13
  unreachable

52:                                               ; preds = %21
  %53 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 9
  store i8* %45, i8** %53, align 8
  %54 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %45, i8 0, i64 %56, i1 false)
  %57 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 17
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 18
  store i64 0, i64* %58, align 8
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_close(%struct.gx_vmem_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 6
  %3 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %2, align 8
  %4 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %.not = icmp eq %struct._IO_FILE* %5, null
  br i1 %.not, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i32 @fclose(%struct._IO_FILE* noundef %8) #10
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8
  %11 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @remove(i8* noundef %12) #10
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #14
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, 1
  call void %3(i8* noundef %15, i32 noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #10
  %19 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %6, %1
  br label %21

21:                                               ; preds = %38, %20
  %.0 = phi i32 [ 0, %20 ], [ %39, %38 ]
  %22 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %.0, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %.0, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %27, i64 %31
  %33 = load i8*, i8** %32, align 8
  %.not1 = icmp eq i8* %33, null
  br i1 %.not1, label %37, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %36 = load i32, i32* %35, align 4
  call void %3(i8* noundef nonnull %33, i32 noundef 1, i32 noundef %36, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #10
  br label %37

37:                                               ; preds = %34, %25
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !6

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 9
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  %44 = load i32, i32* %43, align 4
  call void %3(i8* noundef %42, i32 noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #10
  ret i32 0
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_bring_in_page(%struct.gx_vmem_s* nocapture noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = load i8*, i8** %1, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  br label %23

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 12
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 13
  store i32 -1, i32* %8, align 4
  %9 = call i32 @vmem_get_page(%struct.gx_vmem_s* noundef %0, i8** noundef nonnull %1, i32 noundef %2)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136) #11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = ptrtoint i8** %1 to i64
  %18 = ptrtoint i8** %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 noundef %20) #11
  call void @exit(i32 noundef 1) #13
  unreachable

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @vmem_get_page(%struct.gx_vmem_s* nocapture noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = ptrtoint i8** %1 to i64
  %7 = ptrtoint i8** %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %10, %12
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 9
  %15 = load i8*, i8** %14, align 8
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %.not = icmp eq i8 %18, 0
  br i1 %.not, label %19, label %22

19:                                               ; preds = %3
  %.not3 = icmp eq i32 %2, 0
  br i1 %.not3, label %20, label %21

20:                                               ; preds = %19
  br label %64

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 15
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 16
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 5
  %30 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %29, align 8
  %31 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i8* %30(i32 noundef 1, i32 noundef %32, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #10
  %.not5 = icmp eq i8* %33, null
  br i1 %.not5, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 15
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %51

38:                                               ; preds = %28, %22
  %39 = call i32 @vmem_choose_page(%struct.gx_vmem_s* noundef %0, i32 noundef %13)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %64

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %39, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  call void @vmem_write_page(%struct.gx_vmem_s* noundef %0, i32 noundef %39)
  call void @vmem_annul_page(%struct.gx_vmem_s* noundef %0, i32 noundef %39)
  br label %51

51:                                               ; preds = %42, %34
  %.01 = phi i8* [ %33, %34 ], [ %50, %42 ]
  call void @vmem_assign_page(%struct.gx_vmem_s* noundef %0, i32 noundef %13, i8* noundef %.01)
  br i1 %.not, label %52, label %62

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 3
  %54 = load i8, i8* %53, align 8
  %55 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %.01, i8 %54, i64 %57, i1 false)
  %58 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 9
  %59 = load i8*, i8** %58, align 8
  %60 = sext i32 %13 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 1, i8* %61, align 1
  br label %63

62:                                               ; preds = %51
  call void @vmem_read_page(%struct.gx_vmem_s* noundef %0, i32 noundef %13)
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %41, %20
  %.0 = phi i32 [ 0, %63 ], [ %39, %41 ], [ 1, %20 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vmem_bring_in_rect(%struct.gx_vmem_s* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = srem i32 %2, %10
  %12 = sub i32 %2, %11
  %13 = add nsw i32 %2, %4
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8*, i8** %8, i64 %15
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i8*, i8** %8, i64 %17
  %19 = sdiv i32 %2, %10
  %20 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 12
  store i32 %19, i32* %20, align 8
  %21 = sdiv i32 %14, %10
  %22 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 13
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %31, %6
  %.01 = phi i8** [ %16, %6 ], [ %33, %31 ]
  %.not = icmp ugt i8** %.01, %18
  br i1 %.not, label %34, label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %.01, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @vmem_get_page(%struct.gx_vmem_s* noundef %0, i8** noundef nonnull %.01, i32 noundef 1)
  %.not2 = icmp eq i32 %28, 0
  br i1 %.not2, label %30, label %29

29:                                               ; preds = %27
  br label %35

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30
  %32 = sext i32 %10 to i64
  %33 = getelementptr inbounds i8*, i8** %.01, i64 %32
  br label %23, !llvm.loop !7

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %29
  %.0 = phi i32 [ -2, %29 ], [ 0, %34 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @vmem_choose_page(%struct.gx_vmem_s* nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 11
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, -1
  br label %6

6:                                                ; preds = %51, %2
  %.02 = phi i32 [ 0, %2 ], [ %.13, %51 ]
  %.01 = phi i32 [ %5, %2 ], [ %.1, %51 ]
  %.not = icmp sgt i32 %.02, %.01
  br i1 %.not, label %52, label %7

7:                                                ; preds = %6
  %8 = sub nsw i32 %1, %.02
  %9 = sub nsw i32 %.01, %1
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %.02, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %13, i64 %17
  %19 = load i8*, i8** %18, align 8
  %.not9 = icmp eq i8* %19, null
  br i1 %.not9, label %29, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %.02, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %.02, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  br label %53

29:                                               ; preds = %24, %11
  %30 = add nsw i32 %.02, 1
  br label %51

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %.01, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  %39 = load i8*, i8** %38, align 8
  %.not8 = icmp eq i8* %39, null
  br i1 %.not8, label %49, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %.01, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %.01, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %53

49:                                               ; preds = %44, %31
  %50 = add nsw i32 %.01, -1
  br label %51

51:                                               ; preds = %49, %29
  %.13 = phi i32 [ %30, %29 ], [ %.02, %49 ]
  %.1 = phi i32 [ %.01, %29 ], [ %50, %49 ]
  br label %6, !llvm.loop !8

52:                                               ; preds = %6
  br label %53

53:                                               ; preds = %52, %48, %28
  %.0 = phi i32 [ %.02, %28 ], [ %.01, %48 ], [ -1, %52 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_write_page(%struct.gx_vmem_s* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %4 = load i8**, i8*** %3, align 8
  %5 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 %6, %1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %4, i64 %8
  %10 = load i8*, i8** %9, align 8
  %.not = icmp eq i8* %10, null
  br i1 %.not, label %57, label %11

11:                                               ; preds = %2
  %12 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %0)
  br label %13

13:                                               ; preds = %31, %11
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 3
  %19 = load i8, i8* %18, align 8
  %20 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  %21 = load i32, i32* %20, align 8
  call void @vmem_seek(%struct.gx_vmem_s* noundef %0, i32 noundef %21)
  %22 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %29, %17
  %.0 = phi i32 [ %23, %17 ], [ %30, %29 ]
  %25 = icmp sgt i32 %.0, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = sext i8 %19 to i32
  %28 = call i32 @putc(i32 noundef %27, %struct._IO_FILE* noundef %12) #10
  br label %29

29:                                               ; preds = %26
  %30 = add nsw i32 %.0, -1
  br label %24, !llvm.loop !9

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %13, !llvm.loop !10

35:                                               ; preds = %13
  call void @vmem_seek(%struct.gx_vmem_s* noundef %0, i32 noundef %1)
  %36 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = call i64 @fwrite(i8* noundef nonnull %10, i64 noundef 1, i64 noundef %38, %struct._IO_FILE* noundef %12)
  %40 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %.not1 = icmp eq i64 %39, %42
  br i1 %.not1, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 261) #11
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %1) #11
  call void @exit(i32 noundef 1) #13
  unreachable

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 14
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %2
  %58 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 18
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @vmem_annul_page(%struct.gx_vmem_s* nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = mul nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %5, %11
  %13 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %5, %18
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 2
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %19, %16 ], [ %22, %20 ]
  br label %25

25:                                               ; preds = %27, %23
  %.0 = phi i32 [ %5, %23 ], [ %28, %27 ]
  %26 = icmp slt i32 %.0, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = add nsw i32 %.0, 1
  store i8* null, i8** %9, align 8
  br label %25, !llvm.loop !11

29:                                               ; preds = %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @vmem_assign_page(%struct.gx_vmem_s* nocapture noundef readonly %0, i32 noundef %1, i8* noundef %2) #7 {
  %4 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = mul nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %6, %12
  %14 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %6, %19
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 2
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  br label %26

26:                                               ; preds = %28, %24
  %.02 = phi i32 [ %6, %24 ], [ %29, %28 ]
  %.01 = phi i8** [ %10, %24 ], [ %30, %28 ]
  %.0 = phi i8* [ %2, %24 ], [ %34, %28 ]
  %27 = icmp slt i32 %.02, %25
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = add nsw i32 %.02, 1
  %30 = getelementptr inbounds i8*, i8** %.01, i64 1
  store i8* %.0, i8** %.01, align 8
  %31 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %.0, i64 %33
  br label %26, !llvm.loop !12

35:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_read_page(%struct.gx_vmem_s* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 0
  %4 = load i8**, i8*** %3, align 8
  %5 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 %6, %1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %4, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %0)
  call void @vmem_seek(%struct.gx_vmem_s* noundef %0, i32 noundef %1)
  %12 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef %14, %struct._IO_FILE* noundef %11) #10
  %16 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %.not = icmp eq i64 %15, %18
  br i1 %.not, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 237) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 noundef %1) #11
  call void @exit(i32 noundef 1) #13
  unreachable

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 17
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 5
  %7 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %6, align 8
  %8 = call i8* %7(i32 noundef 18, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #10
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 300) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %13) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(18) %8, i8* noundef nonnull align 1 dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i64 18, i1 false) #10
  %16 = call i8* @mktemp(i8* noundef nonnull %8) #10
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305) #11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %21) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %15
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #10
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 311) #11
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %8) #11
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 7
  store %struct._IO_FILE* %24, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 8
  store i8* %8, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %.0 = phi %struct._IO_FILE* [ %24, %31 ], [ %3, %1 ]
  ret %struct._IO_FILE* %.0

UnifiedUnreachableBlock:                          ; preds = %26, %18, %10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @vmem_seek(%struct.gx_vmem_s* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = call %struct._IO_FILE* @vmem_file(%struct.gx_vmem_s* noundef %0)
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.gx_vmem_s, %struct.gx_vmem_s* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %4, %7
  %9 = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef %8, i32 noundef 0) #10
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 noundef 325) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 noundef %1) #11
  call void @exit(i32 noundef 1) #13
  unreachable

15:                                               ; preds = %2
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

declare dso_local i8* @mktemp(i8* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }

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
