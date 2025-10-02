; ModuleID = './stream.ll'
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

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @sread_string(%struct.stream_s* nocapture noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  call void @ssinit(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2, %struct.stream_procs* noundef nonnull @sread_string.p)
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  store i8 0, i8* %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @ssread(%struct.stream_s* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %3, i8** %4, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @ssavailable(%struct.stream_s* nocapture noundef readonly %0, i64* nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = ptrtoint i8* %4 to i64
  %8 = ptrtoint i8* %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %storemerge = phi i64 [ -1, %11 ], [ %9, %2 ]
  store i64 %storemerge, i64* %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @ssseek(%struct.stream_s* nocapture noundef %0, i64 noundef %1) #1 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = icmp slt i64 %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %2
  br label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %1
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  %15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %10, %9
  %.0 = phi i32 [ -1, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @snull(%struct.stream_s* nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @ssinit(%struct.stream_s* nocapture noundef %0, i8* noundef %1, i32 noundef %2, %struct.stream_procs* nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  store i8* %1, i8** %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 -1
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  store i32 %2, i32* %11, align 8
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7
  %15 = bitcast %struct.stream_procs* %14 to i8*
  %16 = bitcast %struct.stream_procs* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %15, i8* noundef nonnull align 8 dereferenceable(48) %16, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @swrite_string(%struct.stream_s* nocapture noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  call void @ssinit(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2, %struct.stream_procs* noundef nonnull @swrite_string.p)
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  store i8 1, i8* %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @sswrite(%struct.stream_s* nocapture noundef %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %4, i8** %5, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @snoavailable(%struct.stream_s* nocapture noundef readnone %0, i64* nocapture noundef readnone %1) #2 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @sread_file(%struct.stream_s* nocapture noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  call void @sfinit(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3, %struct.stream_procs* noundef nonnull @sread_file.p)
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  store i8 0, i8* %5, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %7 = icmp eq %struct._IO_FILE* %6, %1
  %8 = sext i1 %7 to i64
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 %8, i64* %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfread(%struct.stream_s* noundef %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  %3 = load i8, i8* %2, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %6, i8** %7, align 8
  br label %59

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i64 @ftell(%struct._IO_FILE* noundef %14) #7
  %16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 %15, i64* %16, align 8
  br label %17

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i64 @fread(i8* noundef %19, i64 noundef 1, i64 noundef %22, %struct._IO_FILE* noundef %24) #7
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = call i32 @feof(%struct._IO_FILE* noundef %32) #7
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp sgt i32 %26, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %sext = shl i64 %25, 32
  %40 = ashr exact i64 %sext, 32
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %43, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  br label %59

48:                                               ; preds = %17
  %49 = icmp eq i32 %26, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 1, i8* %54, align 1
  br label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %50, %37, %4
  %.0 = phi i32 [ -1, %4 ], [ %47, %37 ], [ -1, %50 ], [ 0, %55 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfavailable(%struct.stream_s* nocapture noundef readonly %0, i64* nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = ptrtoint i8* %4 to i64
  %8 = ptrtoint i8* %6 to i64
  %9 = sub i64 %7, %8
  store i64 %9, i64* %1, align 8
  %10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, -1
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = call i64 @ftell(%struct._IO_FILE* noundef %15) #7
  %17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i32 @fseek(%struct._IO_FILE* noundef %18, i64 noundef 0, i32 noundef 2) #7
  %.not1 = icmp eq i32 %19, 0
  br i1 %.not1, label %21, label %20

20:                                               ; preds = %13
  br label %46

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i64 @ftell(%struct._IO_FILE* noundef %23) #7
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i32 @fseek(%struct._IO_FILE* noundef %26, i64 noundef %16, i32 noundef 0) #7
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %21
  br label %46

29:                                               ; preds = %21
  %30 = sub nsw i64 %24, %16
  %31 = load i64, i64* %1, align 8
  %32 = add nsw i64 %31, %30
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %29
  %storemerge = phi i64 [ -1, %34 ], [ %32, %29 ]
  store i64 %storemerge, i64* %1, align 8
  br label %45

36:                                               ; preds = %2
  %37 = load i64, i64* %1, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %40, align 8
  %42 = call i32 @feof(%struct._IO_FILE* noundef %41) #7
  %.not = icmp eq i32 %42, 0
  br i1 %.not, label %44, label %43

43:                                               ; preds = %39
  store i64 -1, i64* %1, align 8
  br label %44

44:                                               ; preds = %43, %39, %36
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %28, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %28 ], [ 0, %45 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @srseek(%struct.stream_s* nocapture noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %1, %4
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = sub i64 %10, %13
  %15 = add i64 %14, 1
  %16 = and i64 %15, 4294967295
  %.not1 = icmp sgt i64 %5, %16
  br i1 %.not1, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %5
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %21, i8** %22, align 8
  br label %35

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = call i32 @fseek(%struct._IO_FILE* noundef %25, i64 noundef %1, i32 noundef 0) #7
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %28, label %27

27:                                               ; preds = %23
  br label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %28, %27, %17
  %.0 = phi i32 [ 0, %17 ], [ -1, %27 ], [ 0, %28 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @srclose(%struct.stream_s* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @fclose(%struct._IO_FILE* noundef %3) #7
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @sfinit(%struct.stream_s* nocapture noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3, %struct.stream_procs* nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  store i8* %2, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %2, i64 -1
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  store i32 %3, i32* %9, align 8
  %10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  store %struct._IO_FILE* %1, %struct._IO_FILE** %10, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %7, i8** %11, align 8
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7
  %14 = bitcast %struct.stream_procs* %13 to i8*
  %15 = bitcast %struct.stream_procs* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %14, i8* noundef nonnull align 8 dereferenceable(48) %15, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @swrite_file(%struct.stream_s* nocapture noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  call void @sfinit(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3, %struct.stream_procs* noundef nonnull @swrite_file.p)
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  store i8 1, i8* %5, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = icmp eq %struct._IO_FILE* %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = icmp eq %struct._IO_FILE* %9, %1
  %phi.cast1 = sext i1 %10 to i64
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i64 [ -1, %4 ], [ %phi.cast1, %8 ]
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 %12, i64* %13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sfwrite(%struct.stream_s* noundef %0, i8 noundef zeroext %1) #3 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = ptrtoint i8* %7 to i64
  %9 = ptrtoint i8* %4 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fwrite(i8* noundef %4, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %13) #7
  %15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = call i64 @ftell(%struct._IO_FILE* noundef %20) #7
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ult i8* %34, %31
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %37, align 8
  store i8 %1, i8* %39, align 1
  %40 = zext i8 %1 to i32
  br label %45

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7, i32 1
  %43 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %42, align 8
  %44 = call i32 %43(%struct.stream_s* noundef %0, i8 noundef zeroext %1) #7
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %40, %36 ], [ %44, %41 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @swseek(%struct.stream_s* nocapture noundef readnone %0, i64 noundef %1) #2 {
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swflush(%struct.stream_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = ptrtoint i8* %6 to i64
  %8 = ptrtoint i8* %3 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i64 @fwrite(i8* noundef %3, i64 noundef 1, i64 noundef %10, %struct._IO_FILE* noundef %12) #7
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* noundef %16) #7
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = call i64 @ftell(%struct._IO_FILE* noundef %19) #7
  %21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %29, i8** %30, align 8
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swclose(%struct.stream_s* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = ptrtoint i8* %6 to i64
  %8 = ptrtoint i8* %3 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i64 @fwrite(i8* noundef %3, i64 noundef 1, i64 noundef %10, %struct._IO_FILE* noundef %12) #7
  %14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = call i32 @fclose(%struct._IO_FILE* noundef %15) #7
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @sread_decrypt(%struct.stream_s* nocapture noundef %0, %struct.stream_s* noundef %1, i8* noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  call void @sfinit(%struct.stream_s* noundef %0, %struct._IO_FILE* noundef null, i8* noundef %2, i32 noundef %3, %struct.stream_procs* noundef nonnull @sread_decrypt.p)
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  store i8 0, i8* %6, align 4
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 6
  store i64 -1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 10
  store %struct.stream_s* %1, %struct.stream_s** %8, align 8
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 11
  store i16 %4, i16* %9, align 8
  %10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 12
  store i32 -1, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sxread(%struct.stream_s* noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream_s, align 8
  %4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  %7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  store i8* %6, i8** %7, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 10
  %10 = load %struct.stream_s*, %struct.stream_s** %9, align 8
  %11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sgets(%struct.stream_s* noundef %10, i8* noundef %5, i32 noundef %12)
  store i32 %13, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  store i8 1, i8* %19, align 1
  br label %40

20:                                               ; preds = %8
  %21 = load i32, i32* %2, align 4
  call void @sread_string(%struct.stream_s* noundef nonnull %3, i8* noundef %5, i32 noundef %21)
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 12
  %23 = call i32 @sreadhex(%struct.stream_s* noundef nonnull %3, i8* noundef %5, i32 noundef %21, i32* noundef nonnull %2, i32* noundef nonnull %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %8

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 11
  %30 = call i32 @gs_type1_decrypt(i8* noundef %5, i8* noundef %5, i32 noundef %28, i16* noundef nonnull %29) #7
  %31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %37, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %27, %15
  %.0 = phi i32 [ -1, %15 ], [ %39, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sxavailable(%struct.stream_s* nocapture noundef readonly %0, i64* noundef %1) #3 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 10
  %4 = load %struct.stream_s*, %struct.stream_s** %3, align 8
  %5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i64 0, i32 7, i32 2
  %6 = load i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64*)** %5, align 8
  %7 = call i32 %6(%struct.stream_s* noundef %4, i64* noundef %1) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  %11 = load i64, i64* %1, align 8
  %12 = icmp sgt i64 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %1, align 8
  %15 = sdiv i64 %14, 2
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %9
  %.0 = phi i32 [ -1, %9 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @sungetc(%struct.stream_s* nocapture noundef %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 4
  %4 = load i8, i8* %3, align 4
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ult i8* %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %2
  br label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %13, align 8
  store i8 %1, i8* %14, align 1
  br label %16

16:                                               ; preds = %12, %11
  %.0 = phi i32 [ -1, %11 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sgets(%struct.stream_s* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) #3 {
  br label %4

4:                                                ; preds = %55, %3
  %.03 = phi i32 [ %2, %3 ], [ %.14, %55 ]
  %.02 = phi i8* [ %1, %3 ], [ %.1, %55 ]
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %56, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %7 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %.not6 = icmp eq i32 %13, 0
  br i1 %.not6, label %29, label %14

14:                                               ; preds = %5
  %15 = icmp ult i32 %.03, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %14
  %.01 = phi i32 [ %.03, %16 ], [ %13, %14 ]
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = zext i32 %.01 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.02, i8* nonnull align 1 %20, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %22, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds i8, i8* %.02, i64 %26
  %28 = sub i32 %.03, %.01
  br label %55

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %36, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  br label %45

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7, i32 0
  %43 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %42, align 8
  %44 = call i32 %43(%struct.stream_s* noundef %0) #7
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %40, %35 ], [ %44, %41 ]
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  %48 = load i8, i8* %47, align 1
  %.not7 = icmp eq i8 %48, 0
  br i1 %.not7, label %51, label %49

49:                                               ; preds = %45
  %50 = sub i32 %2, %.03
  br label %57

51:                                               ; preds = %45
  %52 = trunc i32 %46 to i8
  %53 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %52, i8* %.02, align 1
  %54 = add i32 %.03, -1
  br label %55

55:                                               ; preds = %51, %17
  %.14 = phi i32 [ %28, %17 ], [ %54, %51 ]
  %.1 = phi i8* [ %27, %17 ], [ %53, %51 ]
  br label %4, !llvm.loop !4

56:                                               ; preds = %4
  br label %57

57:                                               ; preds = %56, %49
  %.0 = phi i32 [ %50, %49 ], [ %2, %56 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sputs(%struct.stream_s* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #3 {
  br label %4

4:                                                ; preds = %52, %3
  %.03 = phi i32 [ %2, %3 ], [ %.14, %52 ]
  %.02 = phi i8* [ %1, %3 ], [ %.1, %52 ]
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %53, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %7 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %.not6 = icmp eq i32 %13, 0
  br i1 %.not6, label %29, label %14

14:                                               ; preds = %5
  %15 = icmp ult i32 %.03, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %14
  %.01 = phi i32 [ %.03, %16 ], [ %13, %14 ]
  %18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = zext i32 %.01 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %20, i8* align 1 %.02, i64 %21, i1 false)
  %22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %22, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds i8, i8* %.02, i64 %26
  %28 = sub i32 %.03, %.01
  br label %52

29:                                               ; preds = %5
  %30 = getelementptr inbounds i8, i8* %.02, i64 1
  %31 = load i8, i8* %.02, align 1
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ult i8* %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %38, align 8
  store i8 %31, i8* %40, align 1
  br label %45

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7, i32 1
  %43 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %42, align 8
  %44 = call i32 %43(%struct.stream_s* noundef %0, i8 noundef zeroext %31) #7
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 5
  %47 = load i8, i8* %46, align 1
  %.not7 = icmp eq i8 %47, 0
  br i1 %.not7, label %50, label %48

48:                                               ; preds = %45
  %49 = sub i32 %2, %.03
  br label %54

50:                                               ; preds = %45
  %51 = add i32 %.03, -1
  br label %52

52:                                               ; preds = %50, %17
  %.14 = phi i32 [ %28, %17 ], [ %51, %50 ]
  %.1 = phi i8* [ %27, %17 ], [ %30, %50 ]
  br label %4, !llvm.loop !6

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %53, %48
  %.0 = phi i32 [ %49, %48 ], [ %2, %53 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sreadhex(%struct.stream_s* noundef %0, i8* noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef %4) #3 {
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i8, i8* %1, i64 %6
  %8 = load i32, i32* %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %85

12:                                               ; preds = %5
  %13 = and i32 %8, 240
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %45

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %78, %16
  %.02 = phi i8* [ %76, %78 ], [ %1, %16 ]
  br label %18

18:                                               ; preds = %43, %17
  %19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ult i8* %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %25, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  br label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7, i32 0
  %32 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %31, align 8
  %33 = call i32 %32(%struct.stream_s* noundef %0) #7
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i32 [ %29, %24 ], [ %33, %30 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i64 0, i64 1), i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = icmp ugt i8 %38, 15
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = icmp eq i8 %38, 103
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %80

43:                                               ; preds = %40
  br label %18, !llvm.loop !7

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %15
  %.1 = phi i8* [ %1, %15 ], [ %.02, %44 ]
  %.01 = phi i8 [ %9, %15 ], [ %38, %44 ]
  br label %46

46:                                               ; preds = %72, %45
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ult i8* %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %53, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  br label %62

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i64 0, i32 7, i32 0
  %60 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %59, align 8
  %61 = call i32 %60(%struct.stream_s* noundef %0) #7
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i32 [ %57, %52 ], [ %61, %58 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i64 0, i64 1), i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp ugt i8 %66, 15
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = icmp eq i8 %66, 103
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = zext i8 %.01 to i32
  br label %80

72:                                               ; preds = %68
  br label %46, !llvm.loop !8

73:                                               ; preds = %62
  %74 = shl i8 %.01, 4
  %75 = add i8 %74, %66
  %76 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 %75, i8* %.1, align 1
  %77 = icmp ult i8* %76, %7
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %17

79:                                               ; preds = %73
  store i32 %2, i32* %3, align 4
  br label %85

80:                                               ; preds = %70, %42
  %storemerge = phi i32 [ %71, %70 ], [ -1, %42 ]
  %.2 = phi i8* [ %.1, %70 ], [ %.02, %42 ]
  store i32 %storemerge, i32* %4, align 4
  %81 = ptrtoint i8* %.2 to i64
  %82 = ptrtoint i8* %1 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %79, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %80 ], [ 0, %79 ]
  ret i32 %.0
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #5

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #6

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #5

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #5

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #5

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #5

declare dso_local i32 @gs_type1_decrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #5

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
