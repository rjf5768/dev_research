; ModuleID = './gxpath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%_wyvern_thunk_type.0 = type { i64 (%_wyvern_thunk_type.0*)*, i64, i1, i64, i64, i64 }
%_wyvern_thunk_type.2 = type { i64 (%_wyvern_thunk_type.2*)*, i64, i1, i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bad type in gx_path_release: %x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gx_path_release\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gx_path_new_subpath\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gx_path_add_line\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gx_path_add_curve\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"gx_path_close_subpath\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @gx_path_init(%struct.gx_path_s* nocapture noundef writeonly %0, %struct.gs_memory_procs* nocapture noundef readonly %1) #0 {
  %3 = bitcast %struct.gx_path_s* %0 to i8*
  %4 = bitcast %struct.gs_memory_procs* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 2
  store %struct.segment_s* null, %struct.segment_s** %5, align 8
  %6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  store i8 0, i8* %6, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  store %struct.subpath* null, %struct.subpath** %7, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  store %struct.subpath* null, %struct.subpath** %8, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 6
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 8
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  store i8 0, i8* %13, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_path_release(%struct.gx_path_s* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %3 = load %struct.subpath*, %struct.subpath** %2, align 8
  %4 = icmp eq %struct.subpath* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %8 = load i8, i8* %7, align 2
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  br label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %12 = load %struct.subpath*, %struct.subpath** %11, align 8
  %13 = getelementptr inbounds %struct.subpath, %struct.subpath* %12, i64 0, i32 4
  %14 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  br label %15

15:                                               ; preds = %31, %10
  %.01 = phi %struct.segment_s* [ %14, %10 ], [ %18, %31 ]
  %.not3 = icmp eq %struct.segment_s* %.01, null
  br i1 %.not3, label %35, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.01, i64 0, i32 0
  %18 = load %struct.segment_s*, %struct.segment_s** %17, align 8
  %19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.01, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %24 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %22
    i32 3, label %23
  ]

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16, %16
  br label %31

23:                                               ; preds = %16
  br label %31

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75) #8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.01, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %29) #8
  call void @exit(i32 noundef 1) #9
  unreachable

31:                                               ; preds = %23, %22, %21
  %.0 = phi i32 [ 72, %23 ], [ 40, %22 ], [ 64, %21 ]
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 1
  %33 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %32, align 8
  %34 = bitcast %struct.segment_s* %.01 to i8*
  call void %33(i8* noundef nonnull %34, i32 noundef 1, i32 noundef %.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %15, !llvm.loop !4

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  store %struct.subpath* null, %struct.subpath** %36, align 8
  br label %37

37:                                               ; preds = %35, %9, %5
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gx_path_share(%struct.gx_path_s* nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %3 = load %struct.subpath*, %struct.subpath** %2, align 8
  %.not = icmp eq %struct.subpath* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  store i8 1, i8* %5, align 2
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %3 = load %struct.subpath*, %struct.subpath** %2, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %5 = load i8, i8* %4, align 2
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %1
  %7 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not4 = icmp eq %struct.subpath* %7, null
  br i1 %.not4, label %8, label %9

8:                                                ; preds = %6
  br label %47

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %1
  %.01 = phi %struct.subpath* [ %7, %9 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %12 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %11, align 8
  %13 = call i8* %12(i32 noundef 1, i32 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #10
  %.not2 = icmp eq i8* %13, null
  br i1 %.not2, label %14, label %15

14:                                               ; preds = %10
  br label %47

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %13, i64 16
  %17 = bitcast i8* %16 to i32*
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %19, align 8
  %20 = getelementptr inbounds i8, i8* %13, i64 40
  %21 = bitcast i8* %20 to i8**
  store i8* %13, i8** %21, align 8
  %22 = getelementptr inbounds i8, i8* %13, i64 52
  %23 = bitcast i8* %22 to i32*
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds i8, i8* %13, i64 48
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds i8, i8* %13, i64 56
  store i8 0, i8* %26, align 8
  %27 = getelementptr inbounds i8, i8* %13, i64 24
  %28 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9
  %29 = bitcast %struct.gs_fixed_point_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %27, i8* noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  %30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  store i8 1, i8* %30, align 1
  %.not3 = icmp eq %struct.subpath* %.01, null
  br i1 %.not3, label %31, label %35

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %33 = bitcast %struct.subpath** %32 to i8**
  store i8* %13, i8** %33, align 8
  %34 = bitcast i8* %13 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %34, align 8
  br label %41

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 4
  %37 = load %struct.segment_s*, %struct.segment_s** %36, align 8
  %38 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i64 0, i32 1
  %39 = bitcast %struct.segment_s** %38 to i8**
  store i8* %13, i8** %39, align 8
  %40 = bitcast i8* %13 to %struct.segment_s**
  store %struct.segment_s* %37, %struct.segment_s** %40, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %43 = bitcast %struct.subpath** %42 to i8**
  store i8* %13, i8** %43, align 8
  %44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %14, %8
  %.0 = phi i32 [ 0, %41 ], [ -13, %14 ], [ -13, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0) #2 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = call i32 @gx_path_copy(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = bitcast %struct.gx_path_s* %0 to i8*
  %8 = bitcast %struct.gx_path_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %7, i8* noundef nonnull align 8 dereferenceable(144) %8, i64 144, i1 false)
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  store i8 0, i8* %9, align 2
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %11 = load %struct.subpath*, %struct.subpath** %10, align 8
  br label %12

12:                                               ; preds = %6, %5
  %.0 = phi %struct.subpath* [ null, %5 ], [ %11, %6 ]
  ret %struct.subpath* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gx_path_add_point(%struct.gx_path_s* nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  store i8 1, i8* %5, align 8
  %6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %2, i64* %7, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gx_path_add_relative_point(%struct.gx_path_s* nocapture noundef %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %5 = load i8, i8* %4, align 8
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %3
  br label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %1
  store i64 %11, i64* %9, align 8
  %12 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %2
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %7, %6
  %.0 = phi i32 [ 0, %7 ], [ -14, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %8 = load i8, i8* %7, align 8
  %.not2 = icmp eq i8 %8, 0
  br i1 %.not2, label %9, label %10

9:                                                ; preds = %6
  br label %51

10:                                               ; preds = %6
  %11 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %51

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %3
  %.01.in = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %.01 = load %struct.subpath*, %struct.subpath** %.01.in, align 8
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %17 = load i8, i8* %16, align 2
  %.not3 = icmp eq i8 %17, 0
  br i1 %.not3, label %22, label %18

18:                                               ; preds = %15
  %19 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not5 = icmp eq %struct.subpath* %19, null
  br i1 %.not5, label %20, label %21

20:                                               ; preds = %18
  br label %51

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %15
  %.1 = phi %struct.subpath* [ %19, %21 ], [ %.01, %15 ]
  %23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %24 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %23, align 8
  %25 = call i8* %24(i32 noundef 1, i32 noundef 40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #10
  %.not4 = icmp eq i8* %25, null
  br i1 %.not4, label %26, label %27

26:                                               ; preds = %22
  br label %51

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %25, i64 16
  %29 = bitcast i8* %28 to i32*
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds i8, i8* %25, i64 8
  %31 = bitcast i8* %30 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %31, align 8
  %32 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %33 = load %struct.segment_s*, %struct.segment_s** %32, align 8
  %34 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i64 0, i32 1
  %35 = bitcast %struct.segment_s** %34 to i8**
  store i8* %25, i8** %35, align 8
  %36 = bitcast i8* %25 to %struct.segment_s**
  store %struct.segment_s* %33, %struct.segment_s** %36, align 8
  %37 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %38 = bitcast %struct.segment_s** %37 to i8**
  store i8* %25, i8** %38, align 8
  %39 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  store i64 %1, i64* %39, align 8
  %40 = getelementptr inbounds i8, i8* %25, i64 24
  %41 = bitcast i8* %40 to i64*
  store i64 %1, i64* %41, align 8
  %42 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %2, i64* %42, align 8
  %43 = getelementptr inbounds i8, i8* %25, i64 32
  %44 = bitcast i8* %43 to i64*
  store i64 %2, i64* %44, align 8
  %45 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %27, %26, %20, %13, %9
  %.0 = phi i32 [ 0, %27 ], [ -13, %26 ], [ -13, %20 ], [ %11, %13 ], [ -14, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #2 {
  %6 = call i32 @gx_path_add_pgram(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %1, i64 noundef %4, i64 noundef %3, i64 noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_pgram(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %8 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %3, i64 noundef %4)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %5, i64 noundef %6)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_gx_path_add_pgram_605317094, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i64 %1, i64* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_2 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 4
  store i64 %3, i64* %_wyvern_thunk_arg_gep_2, align 8
  %_wyvern_thunk_arg_gep_3 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 5
  store i64 %5, i64* %_wyvern_thunk_arg_gep_3, align 8
  %17 = add nsw i64 %2, %6
  %18 = sub nsw i64 %17, %4
  %19 = call i32 @_wyvern_calleeclone_gx_path_add_line_1157841388(%struct.gx_path_s* noundef %0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i64 noundef %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %0)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %16, %13, %10, %7
  %.01 = phi i32 [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %19, %16 ], [ %22, %21 ]
  br label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %24
  %.0 = phi i32 [ %.01, %24 ], [ 0, %25 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %3 = load %struct.subpath*, %struct.subpath** %2, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %1
  br label %79

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.subpath, %struct.subpath* %3, i64 0, i32 3, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.subpath, %struct.subpath* %3, i64 0, i32 3, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.subpath, %struct.subpath* %3, i64 0, i32 4
  %21 = load %struct.segment_s*, %struct.segment_s** %20, align 8
  %22 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i64 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %27 = load i8, i8* %26, align 2
  %.not5 = icmp eq i8 %27, 0
  br i1 %.not5, label %32, label %28

28:                                               ; preds = %25
  %29 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not6 = icmp eq %struct.subpath* %29, null
  br i1 %.not6, label %30, label %31

30:                                               ; preds = %28
  br label %79

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.subpath, %struct.subpath* %3, i64 0, i32 4
  %34 = load %struct.segment_s*, %struct.segment_s** %33, align 8
  %35 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %34, i64 0, i32 2
  store i32 2, i32* %35, align 8
  br label %76

36:                                               ; preds = %19, %13, %7
  %37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %38 = load i8, i8* %37, align 2
  %.not2 = icmp eq i8 %38, 0
  br i1 %.not2, label %43, label %39

39:                                               ; preds = %36
  %40 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not4 = icmp eq %struct.subpath* %40, null
  br i1 %.not4, label %41, label %42

41:                                               ; preds = %39
  br label %79

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %36
  %.01 = phi %struct.subpath* [ %40, %42 ], [ %3, %36 ]
  %44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %45 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %44, align 8
  %46 = call i8* %45(i32 noundef 1, i32 noundef 40, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #10
  %.not3 = icmp eq i8* %46, null
  br i1 %.not3, label %47, label %48

47:                                               ; preds = %43
  br label %79

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %46, i64 16
  %50 = bitcast i8* %49 to i32*
  store i32 2, i32* %50, align 8
  %51 = getelementptr inbounds i8, i8* %46, i64 8
  %52 = bitcast i8* %51 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %52, align 8
  %53 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 4
  %54 = load %struct.segment_s*, %struct.segment_s** %53, align 8
  %55 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %54, i64 0, i32 1
  %56 = bitcast %struct.segment_s** %55 to i8**
  store i8* %46, i8** %56, align 8
  %57 = bitcast i8* %46 to %struct.segment_s**
  store %struct.segment_s* %54, %struct.segment_s** %57, align 8
  %58 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 4
  %59 = bitcast %struct.segment_s** %58 to i8**
  store i8* %46, i8** %59, align 8
  %60 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 3, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds i8, i8* %46, i64 24
  %64 = bitcast i8* %63 to i64*
  store i64 %61, i64* %64, align 8
  %65 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 3, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds i8, i8* %46, i64 32
  %69 = bitcast i8* %68 to i64*
  store i64 %66, i64* %69, align 8
  %70 = getelementptr inbounds %struct.subpath, %struct.subpath* %.01, i64 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %48, %32
  %.1 = phi %struct.subpath* [ %3, %32 ], [ %.01, %48 ]
  %77 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 7
  store i8 1, i8* %77, align 8
  %78 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %76, %47, %41, %30, %6
  %.0 = phi i32 [ 0, %76 ], [ -13, %30 ], [ -13, %47 ], [ -13, %41 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  %9 = load i8, i8* %8, align 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %10, label %19

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %12 = load i8, i8* %11, align 8
  %.not2 = icmp eq i8 %12, 0
  br i1 %.not2, label %13, label %14

13:                                               ; preds = %10
  br label %66

14:                                               ; preds = %10
  %15 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %66

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %7
  %.01.in = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %.01 = load %struct.subpath*, %struct.subpath** %.01.in, align 8
  %20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %21 = load i8, i8* %20, align 2
  %.not3 = icmp eq i8 %21, 0
  br i1 %.not3, label %26, label %22

22:                                               ; preds = %19
  %23 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not5 = icmp eq %struct.subpath* %23, null
  br i1 %.not5, label %24, label %25

24:                                               ; preds = %22
  br label %66

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %19
  %.1 = phi %struct.subpath* [ %23, %25 ], [ %.01, %19 ]
  %27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %28 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %27, align 8
  %29 = call i8* %28(i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #10
  %.not4 = icmp eq i8* %29, null
  br i1 %.not4, label %30, label %31

30:                                               ; preds = %26
  br label %66

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %29, i64 16
  %33 = bitcast i8* %32 to i32*
  store i32 3, i32* %33, align 8
  %34 = getelementptr inbounds i8, i8* %29, i64 8
  %35 = bitcast i8* %34 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %35, align 8
  %36 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %37 = load %struct.segment_s*, %struct.segment_s** %36, align 8
  %38 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i64 0, i32 1
  %39 = bitcast %struct.segment_s** %38 to i8**
  store i8* %29, i8** %39, align 8
  %40 = bitcast i8* %29 to %struct.segment_s**
  store %struct.segment_s* %37, %struct.segment_s** %40, align 8
  %41 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %42 = bitcast %struct.segment_s** %41 to i8**
  store i8* %29, i8** %42, align 8
  %43 = getelementptr inbounds i8, i8* %29, i64 40
  %44 = bitcast i8* %43 to i64*
  store i64 %1, i64* %44, align 8
  %45 = getelementptr inbounds i8, i8* %29, i64 48
  %46 = bitcast i8* %45 to i64*
  store i64 %2, i64* %46, align 8
  %47 = getelementptr inbounds i8, i8* %29, i64 56
  %48 = bitcast i8* %47 to i64*
  store i64 %3, i64* %48, align 8
  %49 = getelementptr inbounds i8, i8* %29, i64 64
  %50 = bitcast i8* %49 to i64*
  store i64 %4, i64* %50, align 8
  %51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  store i64 %5, i64* %51, align 8
  %52 = getelementptr inbounds i8, i8* %29, i64 24
  %53 = bitcast i8* %52 to i64*
  store i64 %5, i64* %53, align 8
  %54 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %6, i64* %54, align 8
  %55 = getelementptr inbounds i8, i8* %29, i64 32
  %56 = bitcast i8* %55 to i64*
  store i64 %6, i64* %56, align 8
  %57 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %31, %30, %24, %17, %13
  %.0 = phi i32 [ 0, %31 ], [ -13, %30 ], [ -13, %24 ], [ %15, %17 ], [ -14, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_arc(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %8 = sitofp i64 %5 to double
  %9 = fmul double %8, 5.500000e-01
  %10 = fptosi double %9 to i64
  %11 = sitofp i64 %6 to double
  %12 = fmul double %11, 5.500000e-01
  %13 = fptosi double %12 to i64
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_gx_path_add_arc_824758732, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store i64 %1, i64* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 4
  store i64 %5, i64* %_wyvern_thunk_arg_gep_1, align 8
  %14 = sitofp i64 %2 to double
  %15 = fmul double %14, 0x3FDCCCCCCCCCCCCC
  %16 = fptosi double %15 to i64
  %17 = add nsw i64 %16, %13
  %18 = sitofp i64 %3 to double
  %19 = fmul double %18, 0x3FDCCCCCCCCCCCCC
  %20 = fptosi double %19 to i64
  %21 = add nsw i64 %20, %10
  %22 = sitofp i64 %4 to double
  %23 = fmul double %22, 0x3FDCCCCCCCCCCCCC
  %24 = fptosi double %23 to i64
  %25 = add nsw i64 %24, %13
  %26 = call i32 @_wyvern_calleeclone_gx_path_add_curve_1306006432(%struct.gx_path_s* noundef %0, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca, i64 noundef %17, i64 noundef %21, i64 noundef %25, i64 noundef %3, i64 noundef %4)
  ret i32 %26
}

declare dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #3

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_gx_path_add_pgram_605317094(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i64, i64* %_wyvern_arg_addr_, align 8
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i64, i64* %_wyvern_arg_addr_1, align 8
  %_wyvern_arg_addr_3 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 5
  %_wyvern_arg_4 = load i64, i64* %_wyvern_arg_addr_3, align 8
  %0 = add nsw i64 %_wyvern_arg_, %_wyvern_arg_4
  %1 = sub nsw i64 %0, %_wyvern_arg_2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %1, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_gx_path_add_line_1157841388(%struct.gx_path_s* noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  %4 = load i8, i8* %3, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %7 = load i8, i8* %6, align 8
  %.not4 = icmp eq i8 %7, 0
  br i1 %.not4, label %8, label %9

8:                                                ; preds = %5
  br label %50

9:                                                ; preds = %5
  %10 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %50

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %2
  %.01.in = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %.01 = load %struct.subpath*, %struct.subpath** %.01.in, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %16 = load i8, i8* %15, align 2
  %.not5 = icmp eq i8 %16, 0
  br i1 %.not5, label %21, label %17

17:                                               ; preds = %14
  %18 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not7 = icmp eq %struct.subpath* %18, null
  br i1 %.not7, label %19, label %20

19:                                               ; preds = %17
  br label %50

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %14
  %.1 = phi %struct.subpath* [ %18, %20 ], [ %.01, %14 ]
  %22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %23 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %22, align 8
  %24 = call i8* %23(i32 noundef 1, i32 noundef 40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #10
  %.not6 = icmp eq i8* %24, null
  br i1 %.not6, label %25, label %26

25:                                               ; preds = %21
  br label %50

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %24, i64 16
  %28 = bitcast i8* %27 to i32*
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 8
  %30 = bitcast i8* %29 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %30, align 8
  %31 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %32 = load %struct.segment_s*, %struct.segment_s** %31, align 8
  %33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i64 0, i32 1
  %34 = bitcast %struct.segment_s** %33 to i8**
  store i8* %24, i8** %34, align 8
  %35 = bitcast i8* %24 to %struct.segment_s**
  store %struct.segment_s* %32, %struct.segment_s** %35, align 8
  %36 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %37 = bitcast %struct.segment_s** %36 to i8**
  store i8* %24, i8** %37, align 8
  %38 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i64 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #10
  store i64 %_wyvern_thunkcall3, i64* %38, align 8
  %39 = getelementptr inbounds i8, i8* %24, i64 24
  %40 = bitcast i8* %39 to i64*
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #10
  store i64 %_wyvern_thunkcall, i64* %40, align 8
  %41 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %1, i64* %41, align 8
  %42 = getelementptr inbounds i8, i8* %24, i64 32
  %43 = bitcast i8* %42 to i64*
  store i64 %1, i64* %43, align 8
  %44 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %26, %25, %19, %12, %8
  %.0 = phi i32 [ 0, %26 ], [ -13, %25 ], [ -13, %19 ], [ %10, %12 ], [ -14, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_gx_path_add_arc_824758732(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i64, i64* %_wyvern_arg_addr_, align 8
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i64, i64* %_wyvern_arg_addr_1, align 8
  %0 = sitofp i64 %_wyvern_arg_2 to double
  %1 = fmul double %0, 5.500000e-01
  %2 = fptosi double %1 to i64
  %3 = sitofp i64 %_wyvern_arg_ to double
  %4 = fmul double %3, 0x3FDCCCCCCCCCCCCC
  %5 = fptosi double %4 to i64
  %6 = add nsw i64 %5, %2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %6, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_gx_path_add_curve_1306006432(%struct.gx_path_s* noundef %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 11
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %9, label %18

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %11 = load i8, i8* %10, align 8
  %.not1 = icmp eq i8 %11, 0
  br i1 %.not1, label %12, label %13

12:                                               ; preds = %9
  br label %65

13:                                               ; preds = %9
  %14 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %65

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %6
  %.01.in = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %.01 = load %struct.subpath*, %struct.subpath** %.01.in, align 8
  %19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  %20 = load i8, i8* %19, align 2
  %.not2 = icmp eq i8 %20, 0
  br i1 %.not2, label %25, label %21

21:                                               ; preds = %18
  %22 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0)
  %.not4 = icmp eq %struct.subpath* %22, null
  br i1 %.not4, label %23, label %24

23:                                               ; preds = %21
  br label %65

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %18
  %.1 = phi %struct.subpath* [ %22, %24 ], [ %.01, %18 ]
  %26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0, i32 0
  %27 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %26, align 8
  %28 = call i8* %27(i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #10
  %.not3 = icmp eq i8* %28, null
  br i1 %.not3, label %29, label %30

29:                                               ; preds = %25
  br label %65

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %28, i64 16
  %32 = bitcast i8* %31 to i32*
  store i32 3, i32* %32, align 8
  %33 = getelementptr inbounds i8, i8* %28, i64 8
  %34 = bitcast i8* %33 to %struct.segment_s**
  store %struct.segment_s* null, %struct.segment_s** %34, align 8
  %35 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %36 = load %struct.segment_s*, %struct.segment_s** %35, align 8
  %37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i64 0, i32 1
  %38 = bitcast %struct.segment_s** %37 to i8**
  store i8* %28, i8** %38, align 8
  %39 = bitcast i8* %28 to %struct.segment_s**
  store %struct.segment_s* %36, %struct.segment_s** %39, align 8
  %40 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 4
  %41 = bitcast %struct.segment_s** %40 to i8**
  store i8* %28, i8** %41, align 8
  %42 = getelementptr inbounds i8, i8* %28, i64 40
  %43 = bitcast i8* %42 to i64*
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #10
  store i64 %_wyvern_thunkcall, i64* %43, align 8
  %44 = getelementptr inbounds i8, i8* %28, i64 48
  %45 = bitcast i8* %44 to i64*
  store i64 %1, i64* %45, align 8
  %46 = getelementptr inbounds i8, i8* %28, i64 56
  %47 = bitcast i8* %46 to i64*
  store i64 %2, i64* %47, align 8
  %48 = getelementptr inbounds i8, i8* %28, i64 64
  %49 = bitcast i8* %48 to i64*
  store i64 %3, i64* %49, align 8
  %50 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  store i64 %4, i64* %50, align 8
  %51 = getelementptr inbounds i8, i8* %28, i64 24
  %52 = bitcast i8* %51 to i64*
  store i64 %4, i64* %52, align 8
  %53 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  store i64 %5, i64* %53, align 8
  %54 = getelementptr inbounds i8, i8* %28, i64 32
  %55 = bitcast i8* %54 to i64*
  store i64 %5, i64* %55, align 8
  %56 = getelementptr inbounds %struct.subpath, %struct.subpath* %.1, i64 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %30, %29, %23, %16, %12
  %.0 = phi i32 [ 0, %30 ], [ -13, %29 ], [ -13, %23 ], [ %14, %16 ], [ -14, %12 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
