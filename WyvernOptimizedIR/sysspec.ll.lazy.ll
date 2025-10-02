; ModuleID = './sysspec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/sysspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.8 = type { i64 (%_wyvern_thunk_type.8*)*, i64, i1, i8* }

@global_align = external dso_local global i32, align 4
@mem_array_ents = external dso_local global i32, align 4
@mem_array = external dso_local global [2 x [20 x i64]], align 16
@.str = private unnamed_addr constant [29 x i8] c"ERROR CONDITION\0AContext: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Code: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AllocateMemory(i64 noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = load i32, i32* @global_align, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 1
  %6 = add i64 %5, %0
  %7 = call noalias i8* @malloc(i64 noundef %6) #12
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %9
  %storemerge = phi i32 [ 0, %10 ], [ 1, %9 ]
  store i32 %storemerge, i32* %1, align 4
  %12 = ptrtoint i8* %7 to i64
  %13 = load i32, i32* @global_align, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @AddMemArray(i64 noundef %12, i64 noundef %12)
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %15
  store i32 2, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %15
  br label %51

19:                                               ; preds = %11
  %20 = load i32, i32* @global_align, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = and i64 %12, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = add i64 %12, 1
  br label %27

27:                                               ; preds = %25, %22
  %.01 = phi i64 [ %26, %25 ], [ %12, %22 ]
  br label %46

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %33, %28
  %.1 = phi i64 [ %12, %28 ], [ %34, %33 ]
  %30 = load i32, i32* @global_align, align 4
  %31 = sext i32 %30 to i64
  %32 = urem i64 %.1, %31
  %.not = icmp eq i64 %32, 0
  br i1 %.not, label %35, label %33

33:                                               ; preds = %29
  %34 = add i64 %.1, 1
  br label %29, !llvm.loop !4

35:                                               ; preds = %29
  %36 = load i32, i32* @global_align, align 4
  %37 = shl nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = urem i64 %.1, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @global_align, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %.1, %43
  br label %45

45:                                               ; preds = %41, %35
  %.2 = phi i64 [ %44, %41 ], [ %.1, %35 ]
  br label %46

46:                                               ; preds = %45, %27
  %.3 = phi i64 [ %.01, %27 ], [ %.2, %45 ]
  %47 = inttoptr i64 %.3 to i8*
  %48 = call i32 @AddMemArray(i64 noundef %12, i64 noundef %.3)
  %.not2 = icmp eq i32 %48, 0
  br i1 %.not2, label %50, label %49

49:                                               ; preds = %46
  store i32 2, i32* %1, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %18
  %.0 = phi i8* [ %7, %18 ], [ %47, %50 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @AddMemArray(i64 noundef %0, i64 noundef %1) #2 {
  %3 = load i32, i32* @mem_array_ents, align 4
  %4 = icmp sgt i32 %3, 19
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  %7 = load i32, i32* @mem_array_ents, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %8
  store i64 %0, i64* %9, align 8
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %10
  store i64 %1, i64* %11, align 8
  %12 = load i32, i32* @mem_array_ents, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @mem_array_ents, align 4
  br label %14

14:                                               ; preds = %6, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeMemory(i8* noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.8, align 8
  %3 = alloca i64, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_FreeMemory_859550794, i64 (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8* %0, i8** %_wyvern_thunk_arg_gep_, align 8
  %4 = call i32 @_wyvern_calleeclone_RemoveMemArray_0309949204(%_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca, i64* noundef nonnull %3)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  call void @free(i8* noundef %8) #12
  br label %9

9:                                                ; preds = %6, %5
  %storemerge = phi i32 [ 0, %6 ], [ 3, %5 ]
  store i32 %storemerge, i32* %1, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @RemoveMemArray(i64 noundef %0, i64* nocapture noundef writeonly %1) #3 {
  br label %3

3:                                                ; preds = %37, %2
  %.02 = phi i32 [ 0, %2 ], [ %38, %37 ]
  %4 = load i32, i32* @mem_array_ents, align 4
  %5 = icmp slt i32 %.02, %4
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = zext i32 %.02 to i64
  %8 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, %0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %19, %11
  %.01 = phi i32 [ %.02, %11 ], [ %32, %19 ]
  %16 = add nuw nsw i32 %.01, 1
  %17 = load i32, i32* @mem_array_ents, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.01, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %24
  store i64 %23, i64* %25, align 8
  %26 = add nuw nsw i32 %.01, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %30
  store i64 %29, i64* %31, align 8
  %32 = add nuw nsw i32 %.01, 1
  br label %15, !llvm.loop !6

33:                                               ; preds = %15
  %34 = load i32, i32* @mem_array_ents, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @mem_array_ents, align 4
  br label %40

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.02, 1
  br label %3, !llvm.loop !7

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %33
  %.0 = phi i32 [ 0, %33 ], [ -1, %39 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @MoveMemory(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #4 {
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @InitMemArray() #6 {
  store i32 0, i32* @mem_array_ents, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @CreateFile(i8* nocapture noundef %0, i32* nocapture noundef %1) #7 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReportError(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #12
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1) #12
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @ErrorExit() #9 {
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @StartStopwatch() #7 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @StopStopwatch(i64 noundef %0) #7 {
  ret i64 1000
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @TicksToSecs(i64 noundef %0) #7 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @TicksToFracSecs(i64 noundef %0) #7 {
  ret double 0.000000e+00
}

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_FreeMemory_859550794(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #11 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8*, i8** %_wyvern_arg_addr_, align 8
  %0 = ptrtoint i8* %_wyvern_arg_ to i64
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %0, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_RemoveMemArray_0309949204(%_wyvern_thunk_type.8* noundef %_wyvern_thunkptr, i64* nocapture noundef writeonly %0) #3 {
  br label %2

2:                                                ; preds = %36, %1
  %.02 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %3 = load i32, i32* @mem_array_ents, align 4
  %4 = icmp slt i32 %.02, %3
  br i1 %4, label %5, label %38

5:                                                ; preds = %2
  %6 = zext i32 %.02 to i64
  %7 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %6
  %8 = load i64, i64* %7, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.8*)*, i64 (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #12
  %9 = icmp eq i64 %8, %_wyvern_thunkcall
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = zext i32 %.02 to i64
  %12 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %0, align 8
  br label %14

14:                                               ; preds = %18, %10
  %.01 = phi i32 [ %.02, %10 ], [ %31, %18 ]
  %15 = add nuw nsw i32 %.01, 1
  %16 = load i32, i32* @mem_array_ents, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.01, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0, i64 %23
  store i64 %22, i64* %24, align 8
  %25 = add nuw nsw i32 %.01, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1, i64 %29
  store i64 %28, i64* %30, align 8
  %31 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !6

32:                                               ; preds = %14
  %33 = load i32, i32* @mem_array_ents, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @mem_array_ents, align 4
  br label %39

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !7

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %32
  %.0 = phi i32 [ 0, %32 ], [ -1, %38 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
