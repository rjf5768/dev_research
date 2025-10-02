; ModuleID = './LR0.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/LR0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }

@nsyms = external dso_local global i32, align 4
@ritem = external dso_local global i16*, align 8
@kernel_base = internal global i16** null, align 8
@kernel_items = internal global i16* null, align 8
@shift_symbol = internal global i16* null, align 8
@kernel_end = internal global i16** null, align 8
@shiftset = internal global i16* null, align 8
@nrules = external dso_local global i32, align 4
@redset = internal global i16* null, align 8
@state_table = internal global %struct.core** null, align 8
@nitems = external dso_local global i32, align 4
@this_state = internal global %struct.core* null, align 8
@nshifts = internal global i32 0, align 4
@itemset = external dso_local global i16*, align 8
@itemsetend = external dso_local global i16*, align 8
@nstates = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"states\00", align 1
@last_state = internal global %struct.core* null, align 8
@first_state = dso_local global %struct.core* null, align 8
@last_shift = internal global %struct.shifts* null, align 8
@first_shift = dso_local global %struct.shifts* null, align 8
@last_reduction = internal global %struct.reductions* null, align 8
@first_reduction = dso_local global %struct.reductions* null, align 8
@start_symbol = external dso_local global i32, align 4
@final_state = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_itemsets() #0 {
  %1 = load i32, i32* @nsyms, align 4
  %2 = shl i32 %1, 1
  %3 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %2) #4
  %4 = bitcast i8* %3 to i16*
  %5 = load i16*, i16** @ritem, align 8
  br label %6

6:                                                ; preds = %15, %0
  %.03 = phi i32 [ 0, %0 ], [ %.1, %15 ]
  %.01.in.in = phi i16* [ %5, %0 ], [ %.0, %15 ]
  %.0 = getelementptr inbounds i16, i16* %.01.in.in, i64 1
  %.01.in = load i16, i16* %.01.in.in, align 2
  %.not = icmp eq i16 %.01.in, 0
  br i1 %.not, label %16, label %7

7:                                                ; preds = %6
  %8 = icmp sgt i16 %.01.in, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = add nsw i32 %.03, 1
  %11 = sext i16 %.01.in to i64
  %12 = getelementptr inbounds i16, i16* %4, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = add i16 %13, 1
  store i16 %14, i16* %12, align 2
  br label %15

15:                                               ; preds = %9, %7
  %.1 = phi i32 [ %10, %9 ], [ %.03, %7 ]
  br label %6, !llvm.loop !4

16:                                               ; preds = %6
  %17 = load i32, i32* @nsyms, align 4
  %18 = shl i32 %17, 3
  %19 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %18) #4
  store i8* %19, i8** bitcast (i16*** @kernel_base to i8**), align 8
  %20 = shl i32 %.03, 1
  %21 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %20) #4
  store i8* %21, i8** bitcast (i16** @kernel_items to i8**), align 8
  br label %22

22:                                               ; preds = %48, %16
  %.04 = phi i32 [ 0, %16 ], [ %.15, %48 ]
  %.2 = phi i32 [ 0, %16 ], [ %36, %48 ]
  %.02 = phi i32 [ 0, %16 ], [ %49, %48 ]
  %23 = load i32, i32* @nsyms, align 4
  %24 = icmp slt i32 %.02, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load i16*, i16** @kernel_items, align 8
  %27 = sext i32 %.2 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16**, i16*** @kernel_base, align 8
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds i16*, i16** %29, i64 %30
  store i16* %28, i16** %31, align 8
  %32 = zext i32 %.02 to i64
  %33 = getelementptr inbounds i16, i16* %4, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %.2, %35
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds i16, i16* %4, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp slt i32 %.04, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = zext i32 %.02 to i64
  %44 = getelementptr inbounds i16, i16* %4, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  br label %47

47:                                               ; preds = %42, %25
  %.15 = phi i32 [ %46, %42 ], [ %.04, %25 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.02, 1
  br label %22, !llvm.loop !6

50:                                               ; preds = %22
  store i8* %3, i8** bitcast (i16** @shift_symbol to i8**), align 8
  %51 = load i32, i32* @nsyms, align 4
  %52 = shl i32 %51, 3
  %53 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %52) #4
  store i8* %53, i8** bitcast (i16*** @kernel_end to i8**), align 8
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_storage() #0 {
  call void @allocate_itemsets()
  %1 = load i32, i32* @nsyms, align 4
  %2 = shl i32 %1, 1
  %3 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %2) #4
  store i8* %3, i8** bitcast (i16** @shiftset to i8**), align 8
  %4 = load i32, i32* @nrules, align 4
  %5 = shl i32 %4, 1
  %6 = add i32 %5, 2
  %7 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %6) #4
  store i8* %7, i8** bitcast (i16** @redset to i8**), align 8
  %8 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 8072) #4
  store i8* %8, i8** bitcast (%struct.core*** @state_table to i8**), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_storage() #0 {
  %1 = load i16*, i16** @shift_symbol, align 8
  %.not = icmp eq i16* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** bitcast (i16** @shift_symbol to i8**), align 8
  call void @free(i8* noundef %3) #4
  br label %4

4:                                                ; preds = %2, %0
  %5 = load i16*, i16** @redset, align 8
  %.not1 = icmp eq i16* %5, null
  br i1 %.not1, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8*, i8** bitcast (i16** @redset to i8**), align 8
  call void @free(i8* noundef %7) #4
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i16*, i16** @shiftset, align 8
  %.not2 = icmp eq i16* %9, null
  br i1 %.not2, label %12, label %10

10:                                               ; preds = %8
  %11 = load i8*, i8** bitcast (i16** @shiftset to i8**), align 8
  call void @free(i8* noundef %11) #4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i16**, i16*** @kernel_base, align 8
  %.not3 = icmp eq i16** %13, null
  br i1 %.not3, label %16, label %14

14:                                               ; preds = %12
  %15 = load i8*, i8** bitcast (i16*** @kernel_base to i8**), align 8
  call void @free(i8* noundef %15) #4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i16**, i16*** @kernel_end, align 8
  %.not4 = icmp eq i16** %17, null
  br i1 %.not4, label %20, label %18

18:                                               ; preds = %16
  %19 = load i8*, i8** bitcast (i16*** @kernel_end to i8**), align 8
  call void @free(i8* noundef %19) #4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i16*, i16** @kernel_items, align 8
  %.not5 = icmp eq i16* %21, null
  br i1 %.not5, label %24, label %22

22:                                               ; preds = %20
  %23 = load i8*, i8** bitcast (i16** @kernel_items to i8**), align 8
  call void @free(i8* noundef %23) #4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.core**, %struct.core*** @state_table, align 8
  %.not6 = icmp eq %struct.core** %25, null
  br i1 %.not6, label %28, label %26

26:                                               ; preds = %24
  %27 = load i8*, i8** bitcast (%struct.core*** @state_table to i8**), align 8
  call void @free(i8* noundef %27) #4
  br label %28

28:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_states() #0 {
  call void @allocate_storage()
  %1 = load i32, i32* @nitems, align 4
  call void @initialize_closure(i32 noundef %1) #4
  call void @initialize_states()
  br label %2

2:                                                ; preds = %13, %0
  %3 = load %struct.core*, %struct.core** @this_state, align 8
  %.not = icmp eq %struct.core* %3, null
  br i1 %.not, label %17, label %4

4:                                                ; preds = %2
  %5 = load %struct.core*, %struct.core** @this_state, align 8
  %6 = getelementptr inbounds %struct.core, %struct.core* %5, i64 0, i32 5, i64 0
  %7 = getelementptr inbounds %struct.core, %struct.core* %5, i64 0, i32 4
  %8 = load i16, i16* %7, align 4
  %9 = sext i16 %8 to i32
  call void @closure(i16* noundef nonnull %6, i32 noundef %9) #4
  call void @save_reductions()
  call void @new_itemsets()
  call void @append_states()
  %10 = load i32, i32* @nshifts, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  call void @save_shifts()
  br label %13

13:                                               ; preds = %12, %4
  %14 = load %struct.core*, %struct.core** @this_state, align 8
  %15 = getelementptr inbounds %struct.core, %struct.core* %14, i64 0, i32 0
  %16 = load %struct.core*, %struct.core** %15, align 8
  store %struct.core* %16, %struct.core** @this_state, align 8
  br label %2, !llvm.loop !7

17:                                               ; preds = %2
  call void @finalize_closure() #4
  call void @free_storage()
  call void @augment_automaton()
  ret void
}

declare dso_local void @initialize_closure(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_states() #0 {
  %1 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22) #4
  store i8* %1, i8** bitcast (%struct.core** @this_state to i8**), align 8
  store i8* %1, i8** bitcast (%struct.core** @last_state to i8**), align 8
  store i8* %1, i8** bitcast (%struct.core** @first_state to i8**), align 8
  store i32 1, i32* @nstates, align 4
  ret void
}

declare dso_local void @closure(i16* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_reductions() #0 {
  %1 = load i16*, i16** @itemset, align 8
  br label %2

2:                                                ; preds = %19, %0
  %.03 = phi i32 [ 0, %0 ], [ %.1, %19 ]
  %.0 = phi i16* [ %1, %0 ], [ %20, %19 ]
  %3 = load i16*, i16** @itemsetend, align 8
  %4 = icmp ult i16* %.0, %3
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i16*, i16** @ritem, align 8
  %7 = load i16, i16* %.0, align 2
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds i16, i16* %6, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = icmp slt i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = sub i16 0, %10
  %14 = load i16*, i16** @redset, align 8
  %15 = add nsw i32 %.03, 1
  %16 = sext i32 %.03 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  store i16 %13, i16* %17, align 2
  br label %18

18:                                               ; preds = %12, %5
  %.1 = phi i32 [ %15, %12 ], [ %.03, %5 ]
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds i16, i16* %.0, i64 1
  br label %2, !llvm.loop !8

21:                                               ; preds = %2
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %51, label %22

22:                                               ; preds = %21
  %23 = shl i32 %.03, 1
  %24 = add i32 %23, 14
  %25 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %24) #4
  %26 = load %struct.core*, %struct.core** @this_state, align 8
  %27 = getelementptr inbounds %struct.core, %struct.core* %26, i64 0, i32 2
  %28 = load i16, i16* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 8
  %30 = bitcast i8* %29 to i16*
  store i16 %28, i16* %30, align 8
  %31 = trunc i32 %.03 to i16
  %32 = getelementptr inbounds i8, i8* %25, i64 10
  %33 = bitcast i8* %32 to i16*
  store i16 %31, i16* %33, align 2
  %34 = load i16*, i16** @redset, align 8
  %35 = getelementptr inbounds i8, i8* %25, i64 12
  %36 = bitcast i8* %35 to i16*
  %37 = sext i32 %.03 to i64
  %38 = getelementptr inbounds i16, i16* %34, i64 %37
  br label %39

39:                                               ; preds = %41, %22
  %.02 = phi i16* [ %36, %22 ], [ %44, %41 ]
  %.01 = phi i16* [ %34, %22 ], [ %42, %41 ]
  %40 = icmp ult i16* %.01, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds i16, i16* %.01, i64 1
  %43 = load i16, i16* %.01, align 2
  %44 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %43, i16* %.02, align 2
  br label %39, !llvm.loop !9

45:                                               ; preds = %39
  %46 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %.not4 = icmp eq %struct.reductions* %46, null
  br i1 %.not4, label %49, label %47

47:                                               ; preds = %45
  %48 = load i8**, i8*** bitcast (%struct.reductions** @last_reduction to i8***), align 8
  store i8* %25, i8** %48, align 8
  br label %50

49:                                               ; preds = %45
  store i8* %25, i8** bitcast (%struct.reductions** @first_reduction to i8**), align 8
  br label %50

50:                                               ; preds = %49, %47
  store i8* %25, i8** bitcast (%struct.reductions** @last_reduction to i8**), align 8
  br label %51

51:                                               ; preds = %50, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @new_itemsets() #3 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = load i32, i32* @nsyms, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i16**, i16*** @kernel_end, align 8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i16*, i16** %5, i64 %6
  store i16* null, i16** %7, align 8
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !10

10:                                               ; preds = %1
  %11 = load i16*, i16** @itemset, align 8
  br label %12

12:                                               ; preds = %43, %10
  %.02 = phi i16* [ %11, %10 ], [ %16, %43 ]
  %.01 = phi i32 [ 0, %10 ], [ %.2, %43 ]
  %13 = load i16*, i16** @itemsetend, align 8
  %14 = icmp ult i16* %.02, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = getelementptr inbounds i16, i16* %.02, i64 1
  %17 = load i16, i16* %.02, align 2
  %18 = load i16*, i16** @ritem, align 8
  %19 = sext i16 %17 to i64
  %20 = getelementptr inbounds i16, i16* %18, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load i16**, i16*** @kernel_end, align 8
  %25 = sext i16 %21 to i64
  %26 = getelementptr inbounds i16*, i16** %24, i64 %25
  %27 = load i16*, i16** %26, align 8
  %.not = icmp eq i16* %27, null
  br i1 %.not, label %28, label %37

28:                                               ; preds = %23
  %29 = load i16*, i16** @shift_symbol, align 8
  %30 = add nsw i32 %.01, 1
  %31 = sext i32 %.01 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  store i16 %21, i16* %32, align 2
  %33 = load i16**, i16*** @kernel_base, align 8
  %34 = sext i16 %21 to i64
  %35 = getelementptr inbounds i16*, i16** %33, i64 %34
  %36 = load i16*, i16** %35, align 8
  br label %37

37:                                               ; preds = %28, %23
  %.03 = phi i16* [ %27, %23 ], [ %36, %28 ]
  %.1 = phi i32 [ %.01, %23 ], [ %30, %28 ]
  %38 = add i16 %17, 1
  %39 = getelementptr inbounds i16, i16* %.03, i64 1
  store i16 %38, i16* %.03, align 2
  %40 = load i16**, i16*** @kernel_end, align 8
  %41 = sext i16 %21 to i64
  %42 = getelementptr inbounds i16*, i16** %40, i64 %41
  store i16* %39, i16** %42, align 8
  br label %43

43:                                               ; preds = %37, %15
  %.2 = phi i32 [ %.1, %37 ], [ %.01, %15 ]
  br label %12, !llvm.loop !11

44:                                               ; preds = %12
  store i32 %.01, i32* @nshifts, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @append_states() #0 {
  br label %1

1:                                                ; preds = %33, %0
  %.0 = phi i32 [ 1, %0 ], [ %34, %33 ]
  %2 = load i32, i32* @nshifts, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = load i16*, i16** @shift_symbol, align 8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i16, i16* %5, i64 %6
  %8 = load i16, i16* %7, align 2
  br label %9

9:                                                ; preds = %20, %4
  %.01 = phi i32 [ %.0, %4 ], [ %28, %20 ]
  %10 = icmp sgt i32 %.01, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = load i16*, i16** @shift_symbol, align 8
  %13 = add nsw i32 %.01, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = icmp sgt i16 %16, %8
  br label %18

18:                                               ; preds = %11, %9
  %19 = phi i1 [ false, %9 ], [ %17, %11 ]
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i16*, i16** @shift_symbol, align 8
  %22 = add nsw i32 %.01, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = sext i32 %.01 to i64
  %27 = getelementptr inbounds i16, i16* %21, i64 %26
  store i16 %25, i16* %27, align 2
  %28 = add nsw i32 %.01, -1
  br label %9, !llvm.loop !12

29:                                               ; preds = %18
  %30 = load i16*, i16** @shift_symbol, align 8
  %31 = sext i32 %.01 to i64
  %32 = getelementptr inbounds i16, i16* %30, i64 %31
  store i16 %8, i16* %32, align 2
  br label %33

33:                                               ; preds = %29
  %34 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !13

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %50, %35
  %.1 = phi i32 [ 0, %35 ], [ %51, %50 ]
  %37 = load i32, i32* @nshifts, align 4
  %38 = icmp slt i32 %.1, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i16*, i16** @shift_symbol, align 8
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds i16, i16* %40, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = call i32 @get_state(i32 noundef %44)
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** @shiftset, align 8
  %48 = zext i32 %.1 to i64
  %49 = getelementptr inbounds i16, i16* %47, i64 %48
  store i16 %46, i16* %49, align 2
  br label %50

50:                                               ; preds = %39
  %51 = add nuw nsw i32 %.1, 1
  br label %36, !llvm.loop !14

52:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_shifts() #0 {
  %1 = load i32, i32* @nshifts, align 4
  %2 = shl i32 %1, 1
  %3 = add i32 %2, 14
  %4 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %3) #4
  %5 = load %struct.core*, %struct.core** @this_state, align 8
  %6 = getelementptr inbounds %struct.core, %struct.core* %5, i64 0, i32 2
  %7 = load i16, i16* %6, align 8
  %8 = getelementptr inbounds i8, i8* %4, i64 8
  %9 = bitcast i8* %8 to i16*
  store i16 %7, i16* %9, align 8
  %10 = load i32, i32* @nshifts, align 4
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds i8, i8* %4, i64 10
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2
  %14 = load i16*, i16** @shiftset, align 8
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to i16*
  %17 = load i32, i32* @nshifts, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  br label %20

20:                                               ; preds = %22, %0
  %.01 = phi i16* [ %14, %0 ], [ %23, %22 ]
  %.0 = phi i16* [ %16, %0 ], [ %25, %22 ]
  %21 = icmp ult i16* %.01, %19
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds i16, i16* %.01, i64 1
  %24 = load i16, i16* %.01, align 2
  %25 = getelementptr inbounds i16, i16* %.0, i64 1
  store i16 %24, i16* %.0, align 2
  br label %20, !llvm.loop !15

26:                                               ; preds = %20
  %27 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %.not = icmp eq %struct.shifts* %27, null
  br i1 %.not, label %30, label %28

28:                                               ; preds = %26
  %29 = load i8**, i8*** bitcast (%struct.shifts** @last_shift to i8***), align 8
  store i8* %4, i8** %29, align 8
  br label %31

30:                                               ; preds = %26
  store i8* %4, i8** bitcast (%struct.shifts** @first_shift to i8**), align 8
  br label %31

31:                                               ; preds = %30, %28
  store i8* %4, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  ret void
}

declare dso_local void @finalize_closure() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @augment_automaton() #0 {
  %1 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %.not = icmp eq %struct.shifts* %1, null
  br i1 %.not, label %174, label %2

2:                                                ; preds = %0
  %3 = getelementptr inbounds %struct.shifts, %struct.shifts* %1, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %163

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.shifts, %struct.shifts* %1, i64 0, i32 2
  %8 = load i16, i16* %7, align 2
  %9 = load %struct.core*, %struct.core** @first_state, align 8
  br label %10

10:                                               ; preds = %22, %6
  %.pn = phi %struct.core* [ %9, %6 ], [ %.01, %22 ]
  %.01.in = getelementptr inbounds %struct.core, %struct.core* %.pn, i64 0, i32 0
  %.01 = load %struct.core*, %struct.core** %.01.in, align 8
  %11 = getelementptr inbounds %struct.core, %struct.core* %.01, i64 0, i32 3
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = load i32, i32* @start_symbol, align 4
  %15 = icmp sgt i32 %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.core, %struct.core* %.01, i64 0, i32 2
  %18 = load i16, i16* %17, align 8
  %19 = icmp slt i16 %18, %8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i1 [ false, %10 ], [ %19, %16 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %10, !llvm.loop !16

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.core, %struct.core* %.01, i64 0, i32 3
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i32, i32* @start_symbol, align 4
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %29, label %100

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.core, %struct.core* %.01, i64 0, i32 2
  %31 = load i16, i16* %30, align 8
  br label %32

32:                                               ; preds = %36, %29
  %.03 = phi %struct.shifts* [ undef, %29 ], [ %.02, %36 ]
  %.02 = phi %struct.shifts* [ %1, %29 ], [ %38, %36 ]
  %33 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = icmp slt i16 %34, %31
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 0
  %38 = load %struct.shifts*, %struct.shifts** %37, align 8
  br label %32, !llvm.loop !17

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 1
  %41 = load i16, i16* %40, align 8
  %42 = icmp eq i16 %41, %31
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 2
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = shl nsw i32 %46, 1
  %48 = add nsw i32 %47, 16
  %49 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %48) #4
  %50 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 0
  %51 = load %struct.shifts*, %struct.shifts** %50, align 8
  %52 = bitcast i8* %49 to %struct.shifts**
  store %struct.shifts* %51, %struct.shifts** %52, align 8
  %53 = getelementptr inbounds i8, i8* %49, i64 8
  %54 = bitcast i8* %53 to i16*
  store i16 %31, i16* %54, align 8
  %55 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 2
  %56 = load i16, i16* %55, align 2
  %57 = add i16 %56, 1
  %58 = getelementptr inbounds i8, i8* %49, i64 10
  %59 = bitcast i8* %58 to i16*
  store i16 %57, i16* %59, align 2
  %60 = load i32, i32* @nstates, align 4
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds i8, i8* %49, i64 12
  %63 = bitcast i8* %62 to i16*
  store i16 %61, i16* %63, align 4
  %64 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  br label %67

67:                                               ; preds = %78, %43
  %.0 = phi i32 [ %66, %43 ], [ %79, %78 ]
  %68 = icmp sgt i32 %.0, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %67
  %70 = add nsw i32 %.0, -1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.shifts, %struct.shifts* %.02, i64 0, i32 3, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = getelementptr inbounds i8, i8* %49, i64 12
  %75 = bitcast i8* %74 to [1 x i16]*
  %76 = sext i32 %.0 to i64
  %77 = getelementptr inbounds [1 x i16], [1 x i16]* %75, i64 0, i64 %76
  store i16 %73, i16* %77, align 2
  br label %78

78:                                               ; preds = %69
  %79 = add nsw i32 %.0, -1
  br label %67, !llvm.loop !18

80:                                               ; preds = %67
  %81 = bitcast %struct.shifts* %.03 to i8**
  store i8* %49, i8** %81, align 8
  %.not6 = icmp eq %struct.shifts* %.02, null
  br i1 %.not6, label %84, label %82

82:                                               ; preds = %80
  %83 = bitcast %struct.shifts* %.02 to i8*
  call void @free(i8* noundef %83) #4
  br label %84

84:                                               ; preds = %82, %80
  br label %99

85:                                               ; preds = %39
  %86 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16) #4
  %87 = bitcast i8* %86 to %struct.shifts**
  store %struct.shifts* %.02, %struct.shifts** %87, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 8
  %89 = bitcast i8* %88 to i16*
  store i16 %31, i16* %89, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 10
  %91 = bitcast i8* %90 to i16*
  store i16 1, i16* %91, align 2
  %92 = load i32, i32* @nstates, align 4
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds i8, i8* %86, i64 12
  %95 = bitcast i8* %94 to i16*
  store i16 %93, i16* %95, align 4
  %96 = bitcast %struct.shifts* %.03 to i8**
  store i8* %86, i8** %96, align 8
  %.not5 = icmp eq %struct.shifts* %.02, null
  br i1 %.not5, label %97, label %98

97:                                               ; preds = %85
  store i8* %86, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %84
  br label %162

100:                                              ; preds = %23
  %101 = getelementptr inbounds %struct.core, %struct.core* %.01, i64 0, i32 2
  %102 = load i16, i16* %101, align 8
  %103 = sext i16 %102 to i32
  %104 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %105 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 2
  %106 = load i16, i16* %105, align 2
  %107 = sext i16 %106 to i32
  %108 = shl nsw i32 %107, 1
  %109 = add nsw i32 %108, 16
  %110 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %109) #4
  %111 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 0
  %112 = load %struct.shifts*, %struct.shifts** %111, align 8
  %113 = bitcast i8* %110 to %struct.shifts**
  store %struct.shifts* %112, %struct.shifts** %113, align 8
  %114 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 2
  %115 = load i16, i16* %114, align 2
  %116 = add i16 %115, 1
  %117 = getelementptr inbounds i8, i8* %110, i64 10
  %118 = bitcast i8* %117 to i16*
  store i16 %116, i16* %118, align 2
  br label %119

119:                                              ; preds = %129, %100
  %.1 = phi i32 [ 0, %100 ], [ %130, %129 ]
  %120 = icmp slt i32 %.1, %103
  br i1 %120, label %121, label %131

121:                                              ; preds = %119
  %122 = zext i32 %.1 to i64
  %123 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 3, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = getelementptr inbounds i8, i8* %110, i64 12
  %126 = bitcast i8* %125 to [1 x i16]*
  %127 = zext i32 %.1 to i64
  %128 = getelementptr inbounds [1 x i16], [1 x i16]* %126, i64 0, i64 %127
  store i16 %124, i16* %128, align 2
  br label %129

129:                                              ; preds = %121
  %130 = add nuw nsw i32 %.1, 1
  br label %119, !llvm.loop !19

131:                                              ; preds = %119
  %132 = load i32, i32* @nstates, align 4
  %133 = trunc i32 %132 to i16
  %134 = getelementptr inbounds i8, i8* %110, i64 12
  %135 = bitcast i8* %134 to [1 x i16]*
  %136 = sext i16 %102 to i64
  %137 = getelementptr inbounds [1 x i16], [1 x i16]* %135, i64 0, i64 %136
  store i16 %133, i16* %137, align 2
  br label %138

138:                                              ; preds = %152, %131
  %.2 = phi i32 [ %103, %131 ], [ %153, %152 ]
  %139 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 2
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = icmp slt i32 %.2, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = sext i32 %.2 to i64
  %145 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i64 0, i32 3, i64 %144
  %146 = load i16, i16* %145, align 2
  %147 = getelementptr inbounds i8, i8* %110, i64 12
  %148 = bitcast i8* %147 to [1 x i16]*
  %149 = add nsw i32 %.2, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [1 x i16], [1 x i16]* %148, i64 0, i64 %150
  store i16 %146, i16* %151, align 2
  br label %152

152:                                              ; preds = %143
  %153 = add nsw i32 %.2, 1
  br label %138, !llvm.loop !20

154:                                              ; preds = %138
  store i8* %110, i8** bitcast (%struct.shifts** @first_shift to i8**), align 8
  %155 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %156 = icmp eq %struct.shifts* %155, %104
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i8* %110, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  br label %158

158:                                              ; preds = %157, %154
  %.not4 = icmp eq %struct.shifts* %104, null
  br i1 %.not4, label %161, label %159

159:                                              ; preds = %158
  %160 = bitcast %struct.shifts* %104 to i8*
  call void @free(i8* noundef %160) #4
  br label %161

161:                                              ; preds = %159, %158
  call void @insert_start_shift()
  br label %162

162:                                              ; preds = %161, %99
  br label %173

163:                                              ; preds = %2
  %164 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16) #4
  %165 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %166 = bitcast i8* %164 to %struct.shifts**
  store %struct.shifts* %165, %struct.shifts** %166, align 8
  %167 = getelementptr inbounds i8, i8* %164, i64 10
  %168 = bitcast i8* %167 to i16*
  store i16 1, i16* %168, align 2
  %169 = load i32, i32* @nstates, align 4
  %170 = trunc i32 %169 to i16
  %171 = getelementptr inbounds i8, i8* %164, i64 12
  %172 = bitcast i8* %171 to i16*
  store i16 %170, i16* %172, align 4
  store i8* %164, i8** bitcast (%struct.shifts** @first_shift to i8**), align 8
  call void @insert_start_shift()
  br label %173

173:                                              ; preds = %163, %162
  br label %182

174:                                              ; preds = %0
  %175 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16) #4
  %176 = getelementptr inbounds i8, i8* %175, i64 10
  %177 = bitcast i8* %176 to i16*
  store i16 1, i16* %177, align 2
  %178 = load i32, i32* @nstates, align 4
  %179 = trunc i32 %178 to i16
  %180 = getelementptr inbounds i8, i8* %175, i64 12
  %181 = bitcast i8* %180 to i16*
  store i16 %179, i16* %181, align 4
  store i8* %175, i8** bitcast (%struct.shifts** @first_shift to i8**), align 8
  store i8* %175, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  call void @insert_start_shift()
  br label %182

182:                                              ; preds = %174, %173
  %183 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22) #4
  %184 = load i32, i32* @nstates, align 4
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds i8, i8* %183, i64 16
  %187 = bitcast i8* %186 to i16*
  store i16 %185, i16* %187, align 8
  %188 = load i8**, i8*** bitcast (%struct.core** @last_state to i8***), align 8
  store i8* %183, i8** %188, align 8
  store i8* %183, i8** bitcast (%struct.core** @last_state to i8**), align 8
  %189 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16) #4
  %190 = load i32, i32* @nstates, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @nstates, align 4
  %192 = trunc i32 %190 to i16
  %193 = getelementptr inbounds i8, i8* %189, i64 8
  %194 = bitcast i8* %193 to i16*
  store i16 %192, i16* %194, align 8
  %195 = getelementptr inbounds i8, i8* %189, i64 10
  %196 = bitcast i8* %195 to i16*
  store i16 1, i16* %196, align 2
  %197 = load i32, i32* @nstates, align 4
  %198 = trunc i32 %197 to i16
  %199 = getelementptr inbounds i8, i8* %189, i64 12
  %200 = bitcast i8* %199 to i16*
  store i16 %198, i16* %200, align 4
  %201 = load i8**, i8*** bitcast (%struct.shifts** @last_shift to i8***), align 8
  store i8* %189, i8** %201, align 8
  store i8* %189, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  %202 = load i32, i32* @nstates, align 4
  store i32 %202, i32* @final_state, align 4
  %203 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22) #4
  %204 = load i32, i32* @nstates, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* @nstates, align 4
  %206 = trunc i32 %204 to i16
  %207 = getelementptr inbounds i8, i8* %203, i64 16
  %208 = bitcast i8* %207 to i16*
  store i16 %206, i16* %208, align 8
  %209 = load i8**, i8*** bitcast (%struct.core** @last_state to i8***), align 8
  store i8* %203, i8** %209, align 8
  store i8* %203, i8** bitcast (%struct.core** @last_state to i8**), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_state(i32 noundef %0) #0 {
  %2 = load i16**, i16*** @kernel_base, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16*, i16** %2, i64 %3
  %5 = load i16*, i16** %4, align 8
  %6 = load i16**, i16*** @kernel_end, align 8
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i16*, i16** %6, i64 %7
  %9 = load i16*, i16** %8, align 8
  %10 = ptrtoint i16* %9 to i64
  %11 = ptrtoint i16* %5 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %17, %1
  %.02 = phi i16* [ %5, %1 ], [ %18, %17 ]
  %.01 = phi i32 [ 0, %1 ], [ %21, %17 ]
  %16 = icmp ult i16* %.02, %9
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds i16, i16* %.02, i64 1
  %19 = load i16, i16* %.02, align 2
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %.01, %20
  br label %15, !llvm.loop !21

22:                                               ; preds = %15
  %23 = srem i32 %.01, 1009
  %24 = load %struct.core**, %struct.core*** @state_table, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.core*, %struct.core** %24, i64 %25
  %27 = load %struct.core*, %struct.core** %26, align 8
  %.not = icmp eq %struct.core* %27, null
  br i1 %.not, label %67, label %28

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %65, %28
  %.05 = phi %struct.core* [ %27, %28 ], [ %.27, %65 ]
  %.0 = phi i32 [ 0, %28 ], [ %.5, %65 ]
  %.not9 = icmp eq i32 %.0, 0
  br i1 %.not9, label %30, label %66

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.core, %struct.core* %.05, i64 0, i32 4
  %32 = load i16, i16* %31, align 4
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %33, %14
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i16**, i16*** @kernel_base, align 8
  %37 = sext i32 %0 to i64
  %38 = getelementptr inbounds i16*, i16** %36, i64 %37
  %39 = load i16*, i16** %38, align 8
  %40 = getelementptr inbounds %struct.core, %struct.core* %.05, i64 0, i32 5, i64 0
  br label %41

41:                                               ; preds = %52, %35
  %.04 = phi i16* [ %40, %35 ], [ %49, %52 ]
  %.13 = phi i16* [ %39, %35 ], [ %47, %52 ]
  %.1 = phi i32 [ 1, %35 ], [ %.2, %52 ]
  %.not12 = icmp eq i32 %.1, 0
  br i1 %.not12, label %44, label %42

42:                                               ; preds = %41
  %43 = icmp ult i16* %.13, %9
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i1 [ false, %41 ], [ %43, %42 ]
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds i16, i16* %.13, i64 1
  %48 = load i16, i16* %.13, align 2
  %49 = getelementptr inbounds i16, i16* %.04, i64 1
  %50 = load i16, i16* %.04, align 2
  %.not13 = icmp eq i16 %48, %50
  br i1 %.not13, label %52, label %51

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %46
  %.2 = phi i32 [ 0, %51 ], [ %.1, %46 ]
  br label %41, !llvm.loop !22

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %30
  %.3 = phi i32 [ %.1, %53 ], [ %.0, %30 ]
  %.not10 = icmp eq i32 %.3, 0
  br i1 %.not10, label %55, label %65

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.core, %struct.core* %.05, i64 0, i32 1
  %57 = load %struct.core*, %struct.core** %56, align 8
  %.not11 = icmp eq %struct.core* %57, null
  br i1 %.not11, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.core, %struct.core* %.05, i64 0, i32 1
  %60 = load %struct.core*, %struct.core** %59, align 8
  br label %64

61:                                               ; preds = %55
  %62 = call %struct.core* @new_state(i32 noundef %0)
  %63 = getelementptr inbounds %struct.core, %struct.core* %.05, i64 0, i32 1
  store %struct.core* %62, %struct.core** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %.16 = phi %struct.core* [ %60, %58 ], [ %62, %61 ]
  %.4 = phi i32 [ %.3, %58 ], [ 1, %61 ]
  br label %65

65:                                               ; preds = %64, %54
  %.27 = phi %struct.core* [ %.05, %54 ], [ %.16, %64 ]
  %.5 = phi i32 [ %.3, %54 ], [ %.4, %64 ]
  br label %29, !llvm.loop !23

66:                                               ; preds = %29
  br label %72

67:                                               ; preds = %22
  %68 = call %struct.core* @new_state(i32 noundef %0)
  %69 = load %struct.core**, %struct.core*** @state_table, align 8
  %70 = sext i32 %23 to i64
  %71 = getelementptr inbounds %struct.core*, %struct.core** %69, i64 %70
  store %struct.core* %68, %struct.core** %71, align 8
  br label %72

72:                                               ; preds = %67, %66
  %.38 = phi %struct.core* [ %.05, %66 ], [ %68, %67 ]
  %73 = getelementptr inbounds %struct.core, %struct.core* %.38, i64 0, i32 2
  %74 = load i16, i16* %73, align 8
  %75 = sext i16 %74 to i32
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.core* @new_state(i32 noundef %0) #0 {
  %2 = load i32, i32* @nstates, align 4
  %3 = icmp sgt i32 %2, 32766
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @toomany(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i16**, i16*** @kernel_base, align 8
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i16*, i16** %6, i64 %7
  %9 = load i16*, i16** %8, align 8
  %10 = load i16**, i16*** @kernel_end, align 8
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds i16*, i16** %10, i64 %11
  %13 = load i16*, i16** %12, align 8
  %14 = ptrtoint i16* %13 to i64
  %15 = ptrtoint i16* %9 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %16 to i32
  %19 = add i32 %18, 22
  %20 = and i32 %19, -2
  %21 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %20) #4
  %22 = trunc i32 %0 to i16
  %23 = getelementptr inbounds i8, i8* %21, i64 18
  %24 = bitcast i8* %23 to i16*
  store i16 %22, i16* %24, align 2
  %25 = load i32, i32* @nstates, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds i8, i8* %21, i64 16
  %28 = bitcast i8* %27 to i16*
  store i16 %26, i16* %28, align 8
  %29 = trunc i64 %17 to i16
  %30 = getelementptr inbounds i8, i8* %21, i64 20
  %31 = bitcast i8* %30 to i16*
  store i16 %29, i16* %31, align 4
  %32 = getelementptr inbounds i8, i8* %21, i64 22
  %33 = bitcast i8* %32 to i16*
  br label %34

34:                                               ; preds = %36, %5
  %.01 = phi i16* [ %9, %5 ], [ %37, %36 ]
  %.0 = phi i16* [ %33, %5 ], [ %39, %36 ]
  %35 = icmp ult i16* %.01, %13
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds i16, i16* %.01, i64 1
  %38 = load i16, i16* %.01, align 2
  %39 = getelementptr inbounds i16, i16* %.0, i64 1
  store i16 %38, i16* %.0, align 2
  br label %34, !llvm.loop !24

40:                                               ; preds = %34
  %41 = bitcast i8* %21 to %struct.core*
  %42 = load i8**, i8*** bitcast (%struct.core** @last_state to i8***), align 8
  store i8* %21, i8** %42, align 8
  store i8* %21, i8** bitcast (%struct.core** @last_state to i8**), align 8
  %43 = load i32, i32* @nstates, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @nstates, align 4
  ret %struct.core* %41
}

declare dso_local void @toomany(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_start_shift() #0 {
  %1 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22) #4
  %2 = load i32, i32* @nstates, align 4
  %3 = trunc i32 %2 to i16
  %4 = getelementptr inbounds i8, i8* %1, i64 16
  %5 = bitcast i8* %4 to i16*
  store i16 %3, i16* %5, align 8
  %6 = load i32, i32* @start_symbol, align 4
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds i8, i8* %1, i64 18
  %9 = bitcast i8* %8 to i16*
  store i16 %7, i16* %9, align 2
  %10 = load i8**, i8*** bitcast (%struct.core** @last_state to i8***), align 8
  store i8* %1, i8** %10, align 8
  store i8* %1, i8** bitcast (%struct.core** @last_state to i8**), align 8
  %11 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16) #4
  %12 = load i32, i32* @nstates, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @nstates, align 4
  %14 = trunc i32 %12 to i16
  %15 = getelementptr inbounds i8, i8* %11, i64 8
  %16 = bitcast i8* %15 to i16*
  store i16 %14, i16* %16, align 8
  %17 = getelementptr inbounds i8, i8* %11, i64 10
  %18 = bitcast i8* %17 to i16*
  store i16 1, i16* %18, align 2
  %19 = load i32, i32* @nstates, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds i8, i8* %11, i64 12
  %22 = bitcast i8* %21 to i16*
  store i16 %20, i16* %22, align 4
  %23 = load i8**, i8*** bitcast (%struct.shifts** @last_shift to i8***), align 8
  store i8* %11, i8** %23, align 8
  store i8* %11, i8** bitcast (%struct.shifts** @last_shift to i8**), align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
