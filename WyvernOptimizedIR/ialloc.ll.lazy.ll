; ModuleID = './ialloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_state_s = type { %struct.alloc_chunk_s, %struct.alloc_chunk_s*, i32, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, i64, i32, [32 x i8*], %struct.alloc_block_s*, %struct.alloc_save_s*, i32, %struct.alloc_change_s* }
%struct.alloc_chunk_s = type { i8*, i8*, i8*, i8*, i32, %struct.alloc_chunk_s* }
%struct.alloc_block_s = type { %struct.alloc_block_s*, i32, i32, %struct.alloc_state_s* }
%struct.alloc_save_s = type { %struct.alloc_state_s, %struct.alloc_state_s* }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i8*, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32, i32 }

@as_current = internal global %struct.alloc_state_s zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"alloc_shrink\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"alloc_save_state\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"alloc_save_change\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"alloc_restore_state(malloc'ed)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alloc_restore_state\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"alloc chunk\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"large object\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @alloc_init(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1, i32 noundef %2) #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(392) bitcast (%struct.alloc_state_s* @as_current to i8*), i8 0, i64 392, i1 false)
  store i32 %2, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 2), align 8
  %4 = lshr i32 %2, 2
  store i32 %4, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 3), align 4
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 4), align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 5), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @alloc_status(i64* nocapture noundef writeonly %0, i64* nocapture noundef writeonly %1) #2 {
  %3 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 0), align 8
  %5 = ptrtoint i8* %3 to i64
  %6 = ptrtoint i8* %4 to i64
  %7 = sub i64 %5, %6
  %8 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 3), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = add nsw i64 %7, %12
  %14 = load i64, i64* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 6), align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %0, align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 3), align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 0), align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = load i64, i64* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 7), align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc(i32 noundef %0, i32 noundef %1, i8* noundef %2) #3 {
  %4 = mul i32 %0, %1
  %5 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 3), align 4
  %.not = icmp ult i32 %4, %5
  br i1 %.not, label %10, label %6

6:                                                ; preds = %3
  %7 = call i8* @alloc_large(%struct.alloc_state_s* noundef nonnull @as_current, i32 noundef %4, i8* noundef %2)
  %.not3 = icmp eq i8* %7, null
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6
  br label %46

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %3
  %11 = add i32 %4, 7
  %12 = and i32 %11, -8
  %13 = icmp ult i32 %12, 256
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = lshr i32 %11, 3
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 9, i64 %16
  %18 = load i8*, i8** %17, align 8
  %.not2 = icmp eq i8* %18, null
  br i1 %.not2, label %22, label %19

19:                                               ; preds = %14
  %20 = bitcast i8* %18 to i8**
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %17, align 8
  br label %46

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = icmp ugt i32 %12, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = call i32 @alloc_add_chunk(%struct.alloc_state_s* noundef nonnull @as_current)
  %.not1 = icmp eq i32 %32, 0
  br i1 %.not1, label %33, label %34

33:                                               ; preds = %31
  br label %46

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %23
  %36 = icmp eq i32 %1, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %39 = zext i32 %4 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  br label %46

42:                                               ; preds = %35
  %43 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %44 = zext i32 %12 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  br label %46

46:                                               ; preds = %42, %37, %33, %19, %8
  %.0 = phi i8* [ %7, %8 ], [ %18, %19 ], [ %41, %37 ], [ %43, %42 ], [ null, %33 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @alloc_large(%struct.alloc_state_s* noundef %0, i32 noundef %1, i8* noundef %2) #3 {
  %4 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 4
  %5 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %4, align 8
  %6 = add i32 %1, 24
  %7 = call i8* %5(i32 noundef 1, i32 noundef %6, i8* noundef %2) #8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, i8* %7, i64 24
  %12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 10
  %13 = load %struct.alloc_block_s*, %struct.alloc_block_s** %12, align 8
  %14 = bitcast i8* %7 to %struct.alloc_block_s**
  store %struct.alloc_block_s* %13, %struct.alloc_block_s** %14, align 8
  %15 = getelementptr inbounds i8, i8* %7, i64 8
  %16 = bitcast i8* %15 to i32*
  store i32 %1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds i8, i8* %7, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds i8, i8* %7, i64 16
  %22 = bitcast i8* %21 to %struct.alloc_state_s**
  store %struct.alloc_state_s* %0, %struct.alloc_state_s** %22, align 8
  %23 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 10
  %24 = bitcast %struct.alloc_block_s** %23 to i8**
  store i8* %7, i8** %24, align 8
  br label %25

25:                                               ; preds = %10, %9
  %.0 = phi i8* [ null, %9 ], [ %11, %10 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @alloc_add_chunk(%struct.alloc_state_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 4
  %3 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %2, align 8
  %4 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i8* %3(i32 noundef 1, i32 noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 7
  call void @alloc_status(i64* noundef nonnull %10, i64* noundef nonnull %11)
  %12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 1
  %16 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %15, align 8
  %.not = icmp eq %struct.alloc_chunk_s* %16, null
  br i1 %.not, label %22, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 1
  %19 = bitcast %struct.alloc_chunk_s** %18 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast %struct.alloc_state_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %20, i8* noundef nonnull align 8 dereferenceable(48) %21, i64 48, i1 false)
  br label %22

22:                                               ; preds = %17, %9
  %23 = getelementptr inbounds i8, i8* %6, i64 48
  %24 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %6, i64 %28
  %30 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 1
  %33 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %32, align 8
  %34 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 5
  store %struct.alloc_chunk_s* %33, %struct.alloc_chunk_s** %34, align 8
  %35 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i64 0, i32 1
  %39 = bitcast %struct.alloc_chunk_s** %38 to i8**
  store i8* %6, i8** %39, align 8
  br label %40

40:                                               ; preds = %22, %8
  %.0 = phi i32 [ 0, %8 ], [ 1, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_free(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3) #3 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_alloc_free_841795897, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_5 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 4
  store i32 %2, i32* %_wyvern_thunk_arg_gep_5, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 3), align 4
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_alloc_free_841795897(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %.not = icmp ult i32 %_wyvern_thunkcall, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  call void @_wyvern_calleeclone_alloc_free_large_1411375137(i8* noundef %0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i8* noundef %3)
  br label %100

7:                                                ; preds = %4
  %8 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %9 = icmp eq i8* %8, %0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 4), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %.not14 = icmp slt i32 %14, %15
  br i1 %.not14, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.alloc_save_s*, %struct.alloc_save_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 11), align 8
  %18 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %17, i64 0, i32 0, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ugt i8* %19, %0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %13, %10
  %22 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %_wyvern_thunkcall6 = call i32 @_wyvern_slice_memo_alloc_free_841795897(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %23 = zext i32 %_wyvern_thunkcall6 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  br label %25

25:                                               ; preds = %21, %16
  br label %100

26:                                               ; preds = %7
  %_wyvern_thunkcall7 = call i32 @_wyvern_slice_memo_alloc_free_841795897(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %27 = add i32 %_wyvern_thunkcall7, 7
  %28 = and i32 %27, -8
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  %31 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 4), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %.not12 = icmp slt i32 %37, %38
  br i1 %.not12, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 11), align 8
  %41 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %40, i64 0, i32 0, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %.not13 = icmp ugt i8* %42, %0
  br i1 %.not13, label %44, label %43

43:                                               ; preds = %39, %36, %33
  store i8* %0, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %100

45:                                               ; preds = %26
  %46 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 0), align 8
  %.not8 = icmp ugt i8* %46, %0
  br i1 %.not8, label %50, label %47

47:                                               ; preds = %45
  %48 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 3), align 8
  %49 = icmp ugt i8* %48, %0
  br i1 %49, label %83, label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  br label %52

52:                                               ; preds = %80, %50
  %.0.in = phi %struct.alloc_chunk_s** [ getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 5), %50 ], [ %81, %80 ]
  %.0 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %.0.in, align 8
  %.not9 = icmp eq %struct.alloc_chunk_s* %.0, null
  br i1 %.not9, label %.loopexit, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.0, i64 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, %51
  switch i32 %56, label %.loopexit1 [
    i32 0, label %57
    i32 -1, label %71
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.0, i64 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %.not10 = icmp ugt i8* %59, %0
  br i1 %.not10, label %70, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.0, i64 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ugt i8* %62, %0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.0, i64 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ugt i8* %66, %0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %82

69:                                               ; preds = %64
  br label %78

70:                                               ; preds = %60, %57
  br label %80

71:                                               ; preds = %53
  %72 = load %struct.alloc_save_s*, %struct.alloc_save_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 11), align 8
  %73 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %72, i64 0, i32 0, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ugt i8* %74, %0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %82

77:                                               ; preds = %71
  br label %78

.loopexit1:                                       ; preds = %53
  br label %78

78:                                               ; preds = %.loopexit1, %77, %69
  br label %79

.loopexit:                                        ; preds = %52
  br label %79

79:                                               ; preds = %.loopexit, %78
  br label %100

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.0, i64 0, i32 5
  br label %52

82:                                               ; preds = %76, %68
  br label %87

83:                                               ; preds = %47
  %84 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %.not11 = icmp ugt i8* %84, %0
  br i1 %.not11, label %86, label %85

85:                                               ; preds = %83
  br label %100

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = icmp ult i32 %28, 256
  br i1 %91, label %92, label %100

92:                                               ; preds = %90
  %93 = icmp ugt i32 %27, 7
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = lshr i32 %27, 3
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 9, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %0 to i8**
  store i8* %98, i8** %99, align 8
  store i8* %0, i8** %97, align 8
  br label %100

100:                                              ; preds = %94, %92, %90, %85, %79, %44, %25, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_free_large(i8* noundef readonly %0, i32 noundef %1, i8* nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds i8, i8* %0, i64 -8
  %5 = bitcast i8* %4 to %struct.alloc_state_s**
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 -12
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i64 0, i32 12
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i64 0, i32 10
  br label %15

15:                                               ; preds = %30, %13
  %.0 = phi %struct.alloc_block_s** [ %14, %13 ], [ %31, %30 ]
  %16 = load %struct.alloc_block_s*, %struct.alloc_block_s** %.0, align 8
  %.not = icmp eq %struct.alloc_block_s* %16, null
  br i1 %.not, label %32, label %17

17:                                               ; preds = %15
  %18 = load %struct.alloc_block_s*, %struct.alloc_block_s** %.0, align 8
  %19 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %18, i64 1
  %20 = bitcast %struct.alloc_block_s* %19 to i8*
  %21 = icmp eq i8* %20, %0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %18, i64 0, i32 0
  %24 = load %struct.alloc_block_s*, %struct.alloc_block_s** %23, align 8
  store %struct.alloc_block_s* %24, %struct.alloc_block_s** %.0, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i64 0, i32 5
  %26 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %25, align 8
  %27 = bitcast %struct.alloc_block_s* %18 to i8*
  %28 = add i32 %1, 24
  call void %26(i8* noundef %27, i32 noundef 1, i32 noundef %28, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %18, i64 0, i32 0
  br label %15, !llvm.loop !4

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %22, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc_grow(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #3 {
  %6 = mul i32 %1, %3
  %7 = mul i32 %2, %3
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %61

10:                                               ; preds = %5
  %11 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 3), align 4
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %15 = icmp eq i8* %14, %0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = sub i32 %7, %6
  %18 = zext i32 %17 to i64
  %19 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %.not1 = icmp slt i64 %23, %18
  br i1 %.not1, label %31, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %26 = zext i32 %17 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %29 = zext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %0, i64 %29, i1 false)
  %30 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  br label %61

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %13
  %33 = add i32 %6, 7
  %34 = and i32 %33, -8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %0, i64 %35
  %37 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = add i32 %7, 7
  %41 = and i32 %40, -8
  %42 = sub i32 %41, %34
  %43 = zext i32 %42 to i64
  %44 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %.not = icmp slt i64 %48, %43
  br i1 %.not, label %53, label %49

49:                                               ; preds = %39
  %50 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  %51 = zext i32 %42 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 1), align 8
  br label %61

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %10
  %56 = call i8* @alloc(i32 noundef %2, i32 noundef %3, i8* noundef %4)
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  %60 = zext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %56, i8* align 1 %0, i64 %60, i1 false)
  call void @alloc_free(i8* noundef %0, i32 noundef %1, i32 noundef %3, i8* noundef %4)
  br label %61

61:                                               ; preds = %59, %58, %49, %24, %9
  %.0 = phi i8* [ %0, %9 ], [ %30, %24 ], [ %0, %49 ], [ null, %58 ], [ %56, %59 ]
  ret i8* %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc_shrink(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #3 {
  %6 = mul i32 %1, %3
  %7 = mul i32 %2, %3
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %43

10:                                               ; preds = %5
  %11 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 3), align 4
  %.not = icmp ult i32 %6, %11
  br i1 %.not, label %18, label %12

12:                                               ; preds = %10
  %13 = call i8* @alloc(i32 noundef %2, i32 noundef %3, i8* noundef %4)
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %43

16:                                               ; preds = %12
  %17 = zext i32 %7 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* align 1 %0, i64 %17, i1 false)
  call void @alloc_free(i8* noundef %0, i32 noundef %1, i32 noundef %3, i8* noundef %4)
  br label %43

18:                                               ; preds = %10
  %19 = load i8*, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  %20 = icmp eq i8* %19, %0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = zext i32 %7 to i64
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  %24 = zext i32 %6 to i64
  %25 = getelementptr inbounds i8, i8* %0, i64 %24
  br label %26

26:                                               ; preds = %28, %21
  %.03 = phi i8* [ %23, %21 ], [ %29, %28 ]
  %.02 = phi i8* [ %25, %21 ], [ %31, %28 ]
  %27 = icmp ugt i8* %.03, %0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, i8* %.03, i64 -1
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds i8, i8* %.02, i64 -1
  store i8 %30, i8* %31, align 1
  br label %26, !llvm.loop !6

32:                                               ; preds = %26
  store i8* %.02, i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 0, i32 2), align 8
  br label %41

33:                                               ; preds = %18
  %34 = add i32 %7, 7
  %35 = and i32 %34, -8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %0, i64 %36
  %38 = add i32 %6, 7
  %39 = and i32 %38, -8
  %40 = sub i32 %39, %35
  call void @alloc_free(i8* noundef %37, i32 noundef 1, i32 noundef %40, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %32
  %.01 = phi i8* [ %.02, %32 ], [ %0, %33 ]
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %16, %15, %9
  %.0 = phi i8* [ %0, %9 ], [ %0, %15 ], [ %13, %16 ], [ %.01, %42 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alloc_save_s* @alloc_save_state() #3 {
  %1 = call i8* @alloc(i32 noundef 1, i32 noundef 400, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %8

4:                                                ; preds = %0
  %5 = bitcast i8* %1 to %struct.alloc_save_s*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(392) %1, i8* noundef nonnull align 8 dereferenceable(392) bitcast (%struct.alloc_state_s* @as_current to i8*), i64 392, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) bitcast (i8** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 9, i64 0) to i8*), i8 0, i64 256, i1 false)
  store %struct.alloc_block_s* null, %struct.alloc_block_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 10), align 8
  store i8* %1, i8** bitcast (%struct.alloc_save_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 11) to i8**), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  store %struct.alloc_change_s* null, %struct.alloc_change_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 13), align 8
  br label %8

8:                                                ; preds = %4, %3
  %.0 = phi %struct.alloc_save_s* [ null, %3 ], [ %5, %4 ]
  ret %struct.alloc_save_s* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alloc_save_change(i8* noundef %0, i32 noundef %1) #3 {
  %3 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %20

6:                                                ; preds = %2
  %7 = add i32 %1, 24
  %8 = call i8* @alloc(i32 noundef 1, i32 noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %20

11:                                               ; preds = %6
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 13), align 8
  %13 = bitcast i8* %8 to %struct.alloc_change_s**
  store %struct.alloc_change_s* %12, %struct.alloc_change_s** %13, align 8
  %14 = getelementptr inbounds i8, i8* %8, i64 8
  %15 = bitcast i8* %14 to i8**
  store i8* %0, i8** %15, align 8
  %16 = getelementptr inbounds i8, i8* %8, i64 16
  %17 = bitcast i8* %16 to i32*
  store i32 %1, i32* %17, align 8
  %18 = getelementptr inbounds i8, i8* %8, i64 24
  %19 = zext i32 %1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %18, i8* align 1 %0, i64 %19, i1 false)
  store i8* %8, i8** bitcast (%struct.alloc_change_s** getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 13) to i8**), align 8
  br label %20

20:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ 0, %5 ], [ -1, %10 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @alloc_save_level() #5 {
  %1 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i64 0, i32 12), align 8
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @alloc_is_since_save(i8* noundef readnone %0, %struct.alloc_save_s* noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 1
  %4 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %5 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %.not = icmp ugt i8* %6, %0
  br i1 %.not, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ugt i8* %9, %0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %.not7 = icmp ugt i8* %13, %0
  br i1 %.not7, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ugt i8* %16, %0
  %phi.cast = zext i1 %17 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ 0, %11 ], [ %phi.cast, %14 ]
  br label %59

20:                                               ; preds = %7, %2
  %21 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %4, i64 0, i32 0
  br label %22

22:                                               ; preds = %36, %20
  %.03 = phi %struct.alloc_chunk_s* [ %21, %20 ], [ %38, %36 ]
  %23 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.03, i64 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.03, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %.not6 = icmp ugt i8* %30, %0
  br i1 %.not6, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.03, i64 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ugt i8* %33, %0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %59

36:                                               ; preds = %31, %28
  %37 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %.03, i64 0, i32 5
  %38 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %37, align 8
  br label %22, !llvm.loop !7

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %54, %39
  %.02 = phi %struct.alloc_state_s* [ %4, %39 ], [ %57, %54 ]
  %41 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i64 0, i32 0
  %.not4 = icmp eq %struct.alloc_state_s* %.02, %41
  br i1 %.not4, label %58, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %.02, i64 0, i32 10
  br label %44

44:                                               ; preds = %51, %42
  %.01.in = phi %struct.alloc_block_s** [ %43, %42 ], [ %52, %51 ]
  %.01 = load %struct.alloc_block_s*, %struct.alloc_block_s** %.01.in, align 8
  %.not5 = icmp eq %struct.alloc_block_s* %.01, null
  br i1 %.not5, label %53, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %.01, i64 1
  %47 = bitcast %struct.alloc_block_s* %46 to i8*
  %48 = icmp eq i8* %47, %0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %59

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %.01, i64 0, i32 0
  br label %44, !llvm.loop !8

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %.02, i64 0, i32 11
  %56 = load %struct.alloc_save_s*, %struct.alloc_save_s** %55, align 8
  %57 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %56, i64 0, i32 0
  br label %40, !llvm.loop !9

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %49, %35, %18
  %.0 = phi i32 [ %19, %18 ], [ 1, %35 ], [ 1, %49 ], [ 0, %58 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i64 0, i32 1
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 11
  br label %5

5:                                                ; preds = %9, %1
  %.01.in = phi %struct.alloc_save_s** [ %4, %1 ], [ %10, %9 ]
  %.01 = load %struct.alloc_save_s*, %struct.alloc_save_s** %.01.in, align 8
  %.not = icmp eq %struct.alloc_save_s* %.01, %0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %5
  %7 = icmp eq %struct.alloc_save_s* %.01, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %.01, i64 0, i32 0, i32 11
  br label %5, !llvm.loop !10

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %8
  %.0 = phi i32 [ -1, %8 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_restore_state(%struct.alloc_save_s* noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i64 0, i32 1
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  br label %4

4:                                                ; preds = %42, %1
  %5 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 11
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %7 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 1
  %8 = bitcast %struct.alloc_chunk_s** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast %struct.alloc_state_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %9, i8* noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false)
  br label %11

11:                                               ; preds = %14, %4
  %12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 10
  %13 = load %struct.alloc_block_s*, %struct.alloc_block_s** %12, align 8
  %.not = icmp eq %struct.alloc_block_s* %13, null
  br i1 %.not, label %26, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 10
  %16 = load %struct.alloc_block_s*, %struct.alloc_block_s** %15, align 8
  %17 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %16, i64 0, i32 0
  %18 = load %struct.alloc_block_s*, %struct.alloc_block_s** %17, align 8
  %19 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 10
  store %struct.alloc_block_s* %18, %struct.alloc_block_s** %19, align 8
  %20 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 5
  %21 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %20, align 8
  %22 = bitcast %struct.alloc_block_s* %16 to i8*
  %23 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %16, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 24
  call void %21(i8* noundef %22, i32 noundef 1, i32 noundef %25, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %11, !llvm.loop !11

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i64 0, i32 13
  br label %28

28:                                               ; preds = %29, %26
  %.0.in = phi %struct.alloc_change_s** [ %27, %26 ], [ %37, %29 ]
  %.0 = load %struct.alloc_change_s*, %struct.alloc_change_s** %.0.in, align 8
  %.not1 = icmp eq %struct.alloc_change_s* %.0, null
  br i1 %.not1, label %38, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %.0, i64 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %.0, i64 1
  %33 = bitcast %struct.alloc_change_s* %32 to i8*
  %34 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %.0, i64 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* nonnull align 1 %33, i64 %36, i1 false)
  %37 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %.0, i64 0, i32 0
  br label %28, !llvm.loop !12

38:                                               ; preds = %28
  %39 = bitcast %struct.alloc_state_s* %3 to i8*
  %40 = bitcast %struct.alloc_save_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(392) %39, i8* noundef nonnull align 8 dereferenceable(392) %40, i64 392, i1 false)
  %41 = bitcast %struct.alloc_save_s* %6 to i8*
  call void @alloc_free(i8* noundef %41, i32 noundef 1, i32 noundef 400, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38
  %.not2 = icmp eq %struct.alloc_save_s* %6, %0
  br i1 %.not2, label %43, label %4, !llvm.loop !13

43:                                               ; preds = %42
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_alloc_free_841795897(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7 {
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
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i32, i32* %_wyvern_arg_addr_1, align 4
  %0 = mul i32 %_wyvern_arg_, %_wyvern_arg_2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_alloc_free_large_1411375137(i8* noundef readonly %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i8* nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -8
  %4 = bitcast i8* %3 to %struct.alloc_state_s**
  %5 = load %struct.alloc_state_s*, %struct.alloc_state_s** %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 -12
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i64 0, i32 12
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i64 0, i32 10
  br label %14

14:                                               ; preds = %29, %12
  %.0 = phi %struct.alloc_block_s** [ %13, %12 ], [ %30, %29 ]
  %15 = load %struct.alloc_block_s*, %struct.alloc_block_s** %.0, align 8
  %.not = icmp eq %struct.alloc_block_s* %15, null
  br i1 %.not, label %31, label %16

16:                                               ; preds = %14
  %17 = load %struct.alloc_block_s*, %struct.alloc_block_s** %.0, align 8
  %18 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %17, i64 1
  %19 = bitcast %struct.alloc_block_s* %18 to i8*
  %20 = icmp eq i8* %19, %0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %17, i64 0, i32 0
  %23 = load %struct.alloc_block_s*, %struct.alloc_block_s** %22, align 8
  store %struct.alloc_block_s* %23, %struct.alloc_block_s** %.0, align 8
  %24 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i64 0, i32 5
  %25 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %24, align 8
  %26 = bitcast %struct.alloc_block_s* %17 to i8*
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #8
  %27 = add i32 %_wyvern_thunkcall, 24
  call void %25(i8* noundef %26, i32 noundef 1, i32 noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %17, i64 0, i32 0
  br label %14, !llvm.loop !4

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %21, %2
  ret void
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

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
