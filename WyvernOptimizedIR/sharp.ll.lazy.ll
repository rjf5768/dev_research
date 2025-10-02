; ModuleID = './sharp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sharp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%_wyvern_thunk_type.2 = type { i32 (%_wyvern_thunk_type.2*)*, i32, i1, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@start_time = dso_local global i64 0, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [41 x i8] c"# SHARP[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_sharp(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* noundef %1) #0 {
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %4 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %3) #3
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %6, i64 %12
  br label %14

14:                                               ; preds = %19, %2
  %.01 = phi i32* [ %6, %2 ], [ %23, %19 ]
  %.0 = phi %struct.set_family* [ %4, %2 ], [ %18, %19 ]
  %15 = icmp ult i32* %.01, %13
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = call %struct.set_family* @cb_sharp(i32* noundef %.01, %struct.set_family* noundef %1)
  %18 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.0, %struct.set_family* noundef %17) #3
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %.01, i64 %22
  br label %14, !llvm.loop !4

24:                                               ; preds = %14
  ret %struct.set_family* %.0
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_union(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_sharp(i32* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %8 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %7) #3
  %9 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %8, i32* noundef %0) #3
  br label %16

10:                                               ; preds = %2
  %11 = call i64 (...) @util_cpu_time() #3
  store i64 %11, i64* @start_time, align 8
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  %15 = call %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef 0, i32 noundef %14, i32 noundef 0)
  br label %16

16:                                               ; preds = %10, %6
  %.0 = phi %struct.set_family* [ %9, %6 ], [ %15, %10 ]
  ret %struct.set_family* %.0
}

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.2, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %6 = icmp eq i32 %2, %3
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, %2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = call %struct.set_family* @sharp(i32* noundef %0, i32* noundef %14)
  br label %42

16:                                               ; preds = %5
  %17 = add nsw i32 %2, %3
  %18 = sdiv i32 %17, 2
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_cb_recur_sharp_410864090, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %4, i32* %_wyvern_thunk_arg_gep_, align 8
  %19 = call %struct.set_family* @_wyvern_calleeclone_cb_recur_sharp_4242357901(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %18, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %20 = add nsw i32 %18, 1
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_cb_recur_sharp_662269148, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 4
  %_wyvern_thunk_arg_gep_4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 3
  store i32 %4, i32* %_wyvern_thunk_arg_gep_4, align 8
  %21 = call %struct.set_family* @_wyvern_calleeclone_cb_recur_sharp_4714174962(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %20, i32 noundef %3, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca1)
  %22 = call %struct.set_family* @cv_intersect(%struct.set_family* noundef %19, %struct.set_family* noundef %21)
  %23 = load i32, i32* @debug, align 4
  %24 = and i32 %23, 8192
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %41, label %25

25:                                               ; preds = %16
  %26 = icmp slt i32 %4, 4
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i64 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i64 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 (...) @util_cpu_time() #3
  %35 = load i64, i64* @start_time, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i8* @util_print_time(i64 noundef %36) #3
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %29, i32 noundef %31, i32 noundef %33, i8* noundef %37) #3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = call i32 @fflush(%struct._IO_FILE* noundef %39) #3
  br label %41

41:                                               ; preds = %27, %25, %16
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %19) #3
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %21) #3
  br label %42

42:                                               ; preds = %41, %7
  %.0 = phi %struct.set_family* [ %15, %7 ], [ %22, %41 ]
  ret %struct.set_family* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @util_print_time(i64 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sharp(i32* noundef %0, i32* noundef %1) #0 {
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32*, i32** %3, i64 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32*, i32** %3, i64 2
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %11 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %9, i32 noundef %10) #3
  %12 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %1) #3
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %46, label %13

13:                                               ; preds = %2
  %14 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %0, i32* noundef %1) #3
  br label %15

15:                                               ; preds = %43, %13
  %.01 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %17 = icmp slt i32 %.01, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %6, i32* noundef %4, i32* noundef %22) #3
  %24 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* noundef %23) #3
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %8, i32* noundef %0, i32* noundef %29) #3
  %31 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i64 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i64 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i64 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = mul nsw i32 %34, %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %40, i32* noundef %6, i32* noundef %8) #3
  br label %42

42:                                               ; preds = %25, %18
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.01, 1
  br label %15, !llvm.loop !6

45:                                               ; preds = %15
  br label %48

46:                                               ; preds = %2
  %47 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %11, i32* noundef %0) #3
  br label %48

48:                                               ; preds = %46, %45
  %.0 = phi %struct.set_family* [ %11, %45 ], [ %47, %46 ]
  ret %struct.set_family* %.0
}

declare dso_local i32 @cdist0(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local i32 @setp_empty(...) #1

declare dso_local i32* @set_and(...) #1

declare dso_local i32* @set_or(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @make_disjoint(%struct.set_family* nocapture noundef readonly %0) #0 {
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %3 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %2) #3
  %4 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  br label %13

13:                                               ; preds = %18, %1
  %.01 = phi %struct.set_family* [ %3, %1 ], [ %17, %18 ]
  %.0 = phi i32* [ %5, %1 ], [ %22, %18 ]
  %14 = icmp ult i32* %.0, %12
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = call %struct.set_family* @cb_dsharp(i32* noundef %.0, %struct.set_family* noundef %.01)
  %17 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.01, %struct.set_family* noundef %16) #3
  br label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %.0, i64 %21
  br label %13, !llvm.loop !7

23:                                               ; preds = %13
  ret %struct.set_family* %.01
}

declare dso_local %struct.set_family* @sf_append(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_dsharp(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %4 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %3) #3
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %6, i64 %12
  br label %14

14:                                               ; preds = %19, %2
  %.01 = phi i32* [ %6, %2 ], [ %23, %19 ]
  %.0 = phi %struct.set_family* [ %4, %2 ], [ %18, %19 ]
  %15 = icmp ult i32* %.01, %13
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = call %struct.set_family* @cb_dsharp(i32* noundef %.01, %struct.set_family* noundef %1)
  %18 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.0, %struct.set_family* noundef %17) #3
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %.01, i64 %22
  br label %14, !llvm.loop !8

24:                                               ; preds = %14
  ret %struct.set_family* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb1_dsharp(%struct.set_family* nocapture noundef readonly %0, i32* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %6 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %4, i32 noundef %5) #3
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  br label %16

16:                                               ; preds = %21, %2
  %.01 = phi i32* [ %8, %2 ], [ %25, %21 ]
  %.0 = phi %struct.set_family* [ %6, %2 ], [ %20, %21 ]
  %17 = icmp ult i32* %.01, %15
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = call %struct.set_family* @dsharp(i32* noundef %.01, i32* noundef %1)
  %20 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.0, %struct.set_family* noundef %19) #3
  br label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %.01, i64 %24
  br label %16, !llvm.loop !9

26:                                               ; preds = %16
  ret %struct.set_family* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_dsharp(i32* noundef %0, %struct.set_family* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %8 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %7) #3
  %9 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %8, i32* noundef %0) #3
  br label %45

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %14 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13) #3
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i64 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i64 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = mul nsw i32 %18, %20
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  %25 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %24, i32* noundef %0) #3
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  br label %35

35:                                               ; preds = %39, %10
  %.01 = phi i32* [ %27, %10 ], [ %43, %39 ]
  %.0 = phi %struct.set_family* [ %14, %10 ], [ %38, %39 ]
  %36 = icmp ult i32* %.01, %34
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = call %struct.set_family* @cb1_dsharp(%struct.set_family* noundef %.0, i32* noundef %.01)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %.0) #3
  br label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %.01, i64 %42
  br label %35, !llvm.loop !10

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %6
  %.1 = phi %struct.set_family* [ %9, %6 ], [ %.0, %44 ]
  ret %struct.set_family* %.1
}

declare dso_local i32* @set_copy(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @dsharp(i32* noundef %0, i32* noundef %1) #0 {
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %5, i32 noundef %6) #3
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %1) #3
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %168, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %11 = icmp slt i32 %10, 33
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %18

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %15 = add nsw i32 %14, -1
  %16 = ashr i32 %15, 5
  %17 = add nsw i32 %16, 2
  %phi.cast = sext i32 %17 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i64 [ 8, %12 ], [ %phi.bo, %13 ]
  %20 = call i8* @malloc(i64 noundef %19) #3
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %23 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %21, i32 noundef %22) #3
  %24 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %23, i32* noundef %0, i32* noundef %1) #3
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %26 = icmp slt i32 %25, 33
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %30 = add nsw i32 %29, -1
  %31 = ashr i32 %30, 5
  %32 = add nsw i32 %31, 2
  %phi.cast6 = sext i32 %32 to i64
  %phi.bo7 = shl nsw i64 %phi.cast6, 2
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i64 [ 8, %27 ], [ %phi.bo7, %28 ]
  %35 = call i8* @malloc(i64 noundef %34) #3
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %38 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %36, i32 noundef %37) #3
  %39 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %38, i32* noundef %0, i32* noundef %1) #3
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %41 = icmp slt i32 %40, 33
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %48

43:                                               ; preds = %33
  %44 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %45 = add nsw i32 %44, -1
  %46 = ashr i32 %45, 5
  %47 = add nsw i32 %46, 2
  %phi.cast8 = sext i32 %47 to i64
  %phi.bo9 = shl nsw i64 %phi.cast8, 2
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i64 [ 8, %42 ], [ %phi.bo9, %43 ]
  %50 = call i8* @malloc(i64 noundef %49) #3
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %53 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %51, i32 noundef %52) #3
  br label %54

54:                                               ; preds = %156, %48
  %.04 = phi i32 [ 0, %48 ], [ %157, %156 ]
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %56 = icmp slt i32 %.04, %55
  br i1 %56, label %57, label %158

57:                                               ; preds = %54
  %58 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %59 = zext i32 %.04 to i64
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef %24, i32* noundef %61) #3
  %.not13 = icmp eq i32 %62, 0
  br i1 %.not13, label %63, label %155

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = mul nsw i32 %67, %69
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %75 = zext i32 %.04 to i64
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %73, i32* noundef %24, i32* noundef %77) #3
  %79 = load i32, i32* %39, align 4
  %80 = and i32 %79, 1023
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, -1024
  %83 = or i32 %82, %80
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %94, %63
  %.03 = phi i32 [ %80, %63 ], [ %95, %94 ]
  %85 = sext i32 %.03 to i64
  %86 = getelementptr inbounds i32, i32* %39, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %.03 to i64
  %89 = getelementptr inbounds i32, i32* %53, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %87, %90
  %92 = sext i32 %.03 to i64
  %93 = getelementptr inbounds i32, i32* %4, i64 %92
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %84
  %95 = add nsw i32 %.03, -1
  %96 = icmp sgt i32 %.03, 1
  br i1 %96, label %84, label %97, !llvm.loop !11

97:                                               ; preds = %94
  %98 = load i32, i32* %73, align 4
  %99 = and i32 %98, 1023
  br label %100

100:                                              ; preds = %110, %97
  %.02 = phi i32 [ %99, %97 ], [ %111, %110 ]
  %101 = sext i32 %.02 to i64
  %102 = getelementptr inbounds i32, i32* %73, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %.02 to i64
  %105 = getelementptr inbounds i32, i32* %4, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = sext i32 %.02 to i64
  %109 = getelementptr inbounds i32, i32* %73, i64 %108
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %100
  %111 = add nsw i32 %.02, -1
  %112 = icmp sgt i32 %.02, 1
  br i1 %112, label %100, label %113, !llvm.loop !12

113:                                              ; preds = %110
  %114 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %115 = zext i32 %.04 to i64
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %53, i32* noundef %53, i32* noundef %117) #3
  %119 = load i32, i32* %0, align 4
  %120 = and i32 %119, 1023
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, -1024
  %123 = or i32 %122, %120
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %135, %113
  %.01 = phi i32 [ %120, %113 ], [ %136, %135 ]
  %125 = sext i32 %.01 to i64
  %126 = getelementptr inbounds i32, i32* %0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %.01 to i64
  %129 = getelementptr inbounds i32, i32* %53, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %127, %131
  %133 = sext i32 %.01 to i64
  %134 = getelementptr inbounds i32, i32* %4, i64 %133
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %124
  %136 = add nsw i32 %.01, -1
  %137 = icmp sgt i32 %.01, 1
  br i1 %137, label %124, label %138, !llvm.loop !13

138:                                              ; preds = %135
  %139 = load i32, i32* %73, align 4
  %140 = and i32 %139, 1023
  br label %141

141:                                              ; preds = %151, %138
  %.0 = phi i32 [ %140, %138 ], [ %152, %151 ]
  %142 = sext i32 %.0 to i64
  %143 = getelementptr inbounds i32, i32* %73, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %.0 to i64
  %146 = getelementptr inbounds i32, i32* %4, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %144, %147
  %149 = sext i32 %.0 to i64
  %150 = getelementptr inbounds i32, i32* %73, i64 %149
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %141
  %152 = add nsw i32 %.0, -1
  %153 = icmp sgt i32 %.0, 1
  br i1 %153, label %141, label %154, !llvm.loop !14

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %57
  br label %156

156:                                              ; preds = %155
  %157 = add nuw nsw i32 %.04, 1
  br label %54, !llvm.loop !15

158:                                              ; preds = %54
  %.not10 = icmp eq i32* %24, null
  br i1 %.not10, label %161, label %159

159:                                              ; preds = %158
  %160 = bitcast i32* %24 to i8*
  call void @free(i8* noundef %160)
  br label %161

161:                                              ; preds = %159, %158
  %.not11 = icmp eq i32* %39, null
  br i1 %.not11, label %164, label %162

162:                                              ; preds = %161
  %163 = bitcast i32* %39 to i8*
  call void @free(i8* noundef %163)
  br label %164

164:                                              ; preds = %162, %161
  %.not12 = icmp eq i32* %53, null
  br i1 %.not12, label %167, label %165

165:                                              ; preds = %164
  %166 = bitcast i32* %53 to i8*
  call void @free(i8* noundef %166)
  br label %167

167:                                              ; preds = %165, %164
  br label %170

168:                                              ; preds = %2
  %169 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %7, i32* noundef %0) #3
  br label %170

170:                                              ; preds = %168, %167
  %.05 = phi %struct.set_family* [ %7, %167 ], [ %169, %168 ]
  ret %struct.set_family* %.05
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @setp_disjoint(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_intersect(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %4 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %3) #3
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i64 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  br label %16

16:                                               ; preds = %64, %2
  %.07 = phi i32* [ %6, %2 ], [ %.18, %64 ]
  %.05 = phi i32* [ %8, %2 ], [ %68, %64 ]
  %.01 = phi %struct.set_family* [ %4, %2 ], [ %.12, %64 ]
  %.0 = phi %struct.set_family* [ null, %2 ], [ %.1, %64 ]
  %17 = icmp ult i32* %.05, %15
  br i1 %17, label %18, label %69

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  br label %28

28:                                               ; preds = %58, %18
  %.18 = phi i32* [ %.07, %18 ], [ %.310, %58 ]
  %.06 = phi i32* [ %20, %18 ], [ %62, %58 ]
  %.12 = phi %struct.set_family* [ %.01, %18 ], [ %.34, %58 ]
  %.1 = phi %struct.set_family* [ %.0, %18 ], [ %.4, %58 ]
  %29 = icmp ult i32* %.06, %27
  br i1 %29, label %30, label %63

30:                                               ; preds = %28
  %31 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %.05, i32* noundef %.06) #3
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %57, label %32

32:                                               ; preds = %30
  %33 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %.18, i32* noundef %.05, i32* noundef %.06) #3
  %34 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 2
  %38 = load i32, i32* %37, align 8
  %.not11 = icmp slt i32 %36, %38
  br i1 %.not11, label %51, label %39

39:                                               ; preds = %32
  %40 = icmp eq %struct.set_family* %.1, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.12) #3
  br label %46

43:                                               ; preds = %39
  %44 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.12) #3
  %45 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef nonnull %.1, %struct.set_family* noundef %44) #3
  br label %46

46:                                               ; preds = %43, %41
  %.2 = phi %struct.set_family* [ %42, %41 ], [ %45, %43 ]
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %48 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %47) #3
  %49 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i64 0, i32 5
  %50 = load i32*, i32** %49, align 8
  br label %56

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %.18, i64 %54
  br label %56

56:                                               ; preds = %51, %46
  %.29 = phi i32* [ %50, %46 ], [ %55, %51 ]
  %.23 = phi %struct.set_family* [ %48, %46 ], [ %.12, %51 ]
  %.3 = phi %struct.set_family* [ %.2, %46 ], [ %.1, %51 ]
  br label %57

57:                                               ; preds = %56, %30
  %.310 = phi i32* [ %.29, %56 ], [ %.18, %30 ]
  %.34 = phi %struct.set_family* [ %.23, %56 ], [ %.12, %30 ]
  %.4 = phi %struct.set_family* [ %.3, %56 ], [ %.1, %30 ]
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %.06, i64 %61
  br label %28, !llvm.loop !16

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %.05, i64 %67
  br label %16, !llvm.loop !17

69:                                               ; preds = %16
  %70 = icmp eq %struct.set_family* %.0, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.01) #3
  br label %76

73:                                               ; preds = %69
  %74 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.01) #3
  %75 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef nonnull %.0, %struct.set_family* noundef %74) #3
  br label %76

76:                                               ; preds = %73, %71
  %.5 = phi %struct.set_family* [ %72, %71 ], [ %75, %73 ]
  ret %struct.set_family* %.5
}

declare dso_local %struct.set_family* @sf_contain(...) #1

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_cb_recur_sharp_410864090(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = add nsw i32 %_wyvern_arg_, 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @_wyvern_calleeclone_cb_recur_sharp_4242357901(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %3, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  %14 = call %struct.set_family* @sharp(i32* noundef %0, i32* noundef %13)
  br label %43

15:                                               ; preds = %4
  %16 = add nsw i32 %2, %3
  %17 = sdiv i32 %16, 2
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i32 %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %18 = add nsw i32 %_wyvern_thunkcall9, 1
  %19 = call %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %17, i32 noundef %18)
  %20 = add nsw i32 %17, 1
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i32 %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %21 = add nsw i32 %_wyvern_thunkcall6, 1
  %22 = call %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %20, i32 noundef %3, i32 noundef %21)
  %23 = call %struct.set_family* @cv_intersect(%struct.set_family* noundef %19, %struct.set_family* noundef %22)
  %24 = load i32, i32* @debug, align 4
  %25 = and i32 %24, 8192
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %42, label %26

26:                                               ; preds = %15
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %27 = icmp slt i32 %_wyvern_thunkcall3, 4
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i64 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i64 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i64 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 (...) @util_cpu_time() #3
  %36 = load i64, i64* @start_time, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i8* @util_print_time(i64 noundef %37) #3
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %_wyvern_thunkcall, i32 noundef %30, i32 noundef %32, i32 noundef %34, i8* noundef %38) #3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call i32 @fflush(%struct._IO_FILE* noundef %40) #3
  br label %42

42:                                               ; preds = %28, %26, %15
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %19) #3
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %22) #3
  br label %43

43:                                               ; preds = %42, %6
  %.0 = phi %struct.set_family* [ %14, %6 ], [ %23, %42 ]
  ret %struct.set_family* %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_cb_recur_sharp_662269148(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = add nsw i32 %_wyvern_arg_, 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @_wyvern_calleeclone_cb_recur_sharp_4714174962(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %3, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  %14 = call %struct.set_family* @sharp(i32* noundef %0, i32* noundef %13)
  br label %42

15:                                               ; preds = %4
  %16 = add nsw i32 %2, %3
  %17 = sdiv i32 %16, 2
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_cb_recur_sharp_410864090, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i32 %_wyvern_thunkfptr14(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  store i32 %_wyvern_thunkcall15, i32* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i32 %_wyvern_thunkfptr11(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  %18 = call %struct.set_family* @_wyvern_calleeclone_cb_recur_sharp_4242357901(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %17, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %19 = add nsw i32 %17, 1
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i32 %_wyvern_thunkfptr5(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  %20 = add nsw i32 %_wyvern_thunkcall6, 1
  %21 = call %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %19, i32 noundef %3, i32 noundef %20)
  %22 = call %struct.set_family* @cv_intersect(%struct.set_family* noundef %18, %struct.set_family* noundef %21)
  %23 = load i32, i32* @debug, align 4
  %24 = and i32 %23, 8192
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %41, label %25

25:                                               ; preds = %15
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  %26 = icmp slt i32 %_wyvern_thunkcall3, 4
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i64 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i64 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 (...) @util_cpu_time() #3
  %35 = load i64, i64* @start_time, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i8* @util_print_time(i64 noundef %36) #3
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %_wyvern_thunkcall, i32 noundef %29, i32 noundef %31, i32 noundef %33, i8* noundef %37) #3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = call i32 @fflush(%struct._IO_FILE* noundef %39) #3
  br label %41

41:                                               ; preds = %27, %25, %15
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %18) #3
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %21) #3
  br label %42

42:                                               ; preds = %41, %6
  %.0 = phi %struct.set_family* [ %14, %6 ], [ %22, %41 ]
  ret %struct.set_family* %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
