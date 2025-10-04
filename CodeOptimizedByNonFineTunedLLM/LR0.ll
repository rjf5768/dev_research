; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/LR0.c'
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
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @nsyms, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 2
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %10)
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %6, align 8
  %13 = load i16*, i16** @ritem, align 8
  store i16* %13, i16** %1, align 8
  %14 = load i16*, i16** %1, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %15, i16** %1, align 8
  %16 = load i16, i16* %14, align 2
  %17 = sext i16 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %33, %0
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i16*, i16** %6, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* %30, align 2
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i16*, i16** %1, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %1, align 8
  %36 = load i16, i16* %34, align 2
  %37 = sext i16 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %18, !llvm.loop !4

38:                                               ; preds = %18
  %39 = load i32, i32* @nsyms, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %42)
  %44 = bitcast i8* %43 to i16**
  store i16** %44, i16*** @kernel_base, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %48)
  %50 = bitcast i8* %49 to i16*
  store i16* %50, i16** @kernel_items, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %88, %38
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @nsyms, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i16*, i16** @kernel_items, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  %60 = load i16**, i16*** @kernel_base, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16*, i16** %60, i64 %62
  store i16* %59, i16** %63, align 8
  %64 = load i16*, i16** %6, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i16*, i16** %6, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %55
  %81 = load i16*, i16** %6, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %81, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %80, %55
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %51, !llvm.loop !6

91:                                               ; preds = %51
  %92 = load i16*, i16** %6, align 8
  store i16* %92, i16** @shift_symbol, align 8
  %93 = load i32, i32* @nsyms, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %96)
  %98 = bitcast i8* %97 to i16**
  store i16** %98, i16*** @kernel_end, align 8
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_storage() #0 {
  call void @allocate_itemsets()
  %1 = load i32, i32* @nsyms, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 2
  %4 = trunc i64 %3 to i32
  %5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %4)
  %6 = bitcast i8* %5 to i16*
  store i16* %6, i16** @shiftset, align 8
  %7 = load i32, i32* @nrules, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 2
  %11 = trunc i64 %10 to i32
  %12 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %11)
  %13 = bitcast i8* %12 to i16*
  store i16* %13, i16** @redset, align 8
  %14 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 8072)
  %15 = bitcast i8* %14 to %struct.core**
  store %struct.core** %15, %struct.core*** @state_table, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_storage() #0 {
  %1 = load i16*, i16** @shift_symbol, align 8
  %2 = icmp ne i16* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i16*, i16** @shift_symbol, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* noundef %5) #3
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i16*, i16** @redset, align 8
  %8 = icmp ne i16* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i16*, i16** @redset, align 8
  %11 = bitcast i16* %10 to i8*
  call void @free(i8* noundef %11) #3
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i16*, i16** @shiftset, align 8
  %14 = icmp ne i16* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i16*, i16** @shiftset, align 8
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* noundef %17) #3
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i16**, i16*** @kernel_base, align 8
  %20 = icmp ne i16** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i16**, i16*** @kernel_base, align 8
  %23 = bitcast i16** %22 to i8*
  call void @free(i8* noundef %23) #3
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i16**, i16*** @kernel_end, align 8
  %26 = icmp ne i16** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i16**, i16*** @kernel_end, align 8
  %29 = bitcast i16** %28 to i8*
  call void @free(i8* noundef %29) #3
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i16*, i16** @kernel_items, align 8
  %32 = icmp ne i16* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i16*, i16** @kernel_items, align 8
  %35 = bitcast i16* %34 to i8*
  call void @free(i8* noundef %35) #3
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.core**, %struct.core*** @state_table, align 8
  %38 = icmp ne %struct.core** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.core**, %struct.core*** @state_table, align 8
  %41 = bitcast %struct.core** %40 to i8*
  call void @free(i8* noundef %41) #3
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_states() #0 {
  call void @allocate_storage()
  %1 = load i32, i32* @nitems, align 4
  call void @initialize_closure(i32 noundef %1)
  call void @initialize_states()
  br label %2

2:                                                ; preds = %16, %0
  %3 = load %struct.core*, %struct.core** @this_state, align 8
  %4 = icmp ne %struct.core* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load %struct.core*, %struct.core** @this_state, align 8
  %7 = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 5
  %8 = getelementptr inbounds [1 x i16], [1 x i16]* %7, i64 0, i64 0
  %9 = load %struct.core*, %struct.core** @this_state, align 8
  %10 = getelementptr inbounds %struct.core, %struct.core* %9, i32 0, i32 4
  %11 = load i16, i16* %10, align 4
  %12 = sext i16 %11 to i32
  call void @closure(i16* noundef %8, i32 noundef %12)
  call void @save_reductions()
  call void @new_itemsets()
  call void @append_states()
  %13 = load i32, i32* @nshifts, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  call void @save_shifts()
  br label %16

16:                                               ; preds = %15, %5
  %17 = load %struct.core*, %struct.core** @this_state, align 8
  %18 = getelementptr inbounds %struct.core, %struct.core* %17, i32 0, i32 0
  %19 = load %struct.core*, %struct.core** %18, align 8
  store %struct.core* %19, %struct.core** @this_state, align 8
  br label %2, !llvm.loop !7

20:                                               ; preds = %2
  call void @finalize_closure()
  call void @free_storage()
  call void @augment_automaton()
  ret void
}

declare dso_local void @initialize_closure(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_states() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22)
  %3 = bitcast i8* %2 to %struct.core*
  store %struct.core* %3, %struct.core** %1, align 8
  %4 = load %struct.core*, %struct.core** %1, align 8
  store %struct.core* %4, %struct.core** @this_state, align 8
  store %struct.core* %4, %struct.core** @last_state, align 8
  store %struct.core* %4, %struct.core** @first_state, align 8
  store i32 1, i32* @nstates, align 4
  ret void
}

declare dso_local void @closure(i16* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_reductions() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reductions*, align 8
  %7 = alloca i16*, align 8
  store i32 0, i32* %5, align 4
  %8 = load i16*, i16** @itemset, align 8
  store i16* %8, i16** %1, align 8
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i16*, i16** %1, align 8
  %11 = load i16*, i16** @itemsetend, align 8
  %12 = icmp ult i16* %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i16*, i16** @ritem, align 8
  %15 = load i16*, i16** %1, align 8
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds i16, i16* %14, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** @redset, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i16, i16* %27, i64 %30
  store i16 %26, i16* %31, align 2
  br label %32

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i16*, i16** %1, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %1, align 8
  br label %9, !llvm.loop !8

36:                                               ; preds = %9
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 2
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %45)
  %47 = bitcast i8* %46 to %struct.reductions*
  store %struct.reductions* %47, %struct.reductions** %6, align 8
  %48 = load %struct.core*, %struct.core** @this_state, align 8
  %49 = getelementptr inbounds %struct.core, %struct.core* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 8
  %51 = load %struct.reductions*, %struct.reductions** %6, align 8
  %52 = getelementptr inbounds %struct.reductions, %struct.reductions* %51, i32 0, i32 1
  store i16 %50, i16* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = trunc i32 %53 to i16
  %55 = load %struct.reductions*, %struct.reductions** %6, align 8
  %56 = getelementptr inbounds %struct.reductions, %struct.reductions* %55, i32 0, i32 2
  store i16 %54, i16* %56, align 2
  %57 = load i16*, i16** @redset, align 8
  store i16* %57, i16** %2, align 8
  %58 = load %struct.reductions*, %struct.reductions** %6, align 8
  %59 = getelementptr inbounds %struct.reductions, %struct.reductions* %58, i32 0, i32 3
  %60 = getelementptr inbounds [1 x i16], [1 x i16]* %59, i64 0, i64 0
  store i16* %60, i16** %3, align 8
  %61 = load i16*, i16** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  store i16* %64, i16** %7, align 8
  br label %65

65:                                               ; preds = %69, %39
  %66 = load i16*, i16** %2, align 8
  %67 = load i16*, i16** %7, align 8
  %68 = icmp ult i16* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i16*, i16** %2, align 8
  %71 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %71, i16** %2, align 8
  %72 = load i16, i16* %70, align 2
  %73 = load i16*, i16** %3, align 8
  %74 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %74, i16** %3, align 8
  store i16 %72, i16* %73, align 2
  br label %65, !llvm.loop !9

75:                                               ; preds = %65
  %76 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %77 = icmp ne %struct.reductions* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.reductions*, %struct.reductions** %6, align 8
  %80 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %81 = getelementptr inbounds %struct.reductions, %struct.reductions* %80, i32 0, i32 0
  store %struct.reductions* %79, %struct.reductions** %81, align 8
  %82 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %82, %struct.reductions** @last_reduction, align 8
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %84, %struct.reductions** @first_reduction, align 8
  %85 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %85, %struct.reductions** @last_reduction, align 8
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @new_itemsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nsyms, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i16**, i16*** @kernel_end, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16*, i16** %11, i64 %13
  store i16* null, i16** %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %6, !llvm.loop !10

18:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  %19 = load i16*, i16** @itemset, align 8
  store i16* %19, i16** %3, align 8
  br label %20

20:                                               ; preds = %69, %18
  %21 = load i16*, i16** %3, align 8
  %22 = load i16*, i16** @itemsetend, align 8
  %23 = icmp ult i16* %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load i16*, i16** %3, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %3, align 8
  %27 = load i16, i16* %25, align 2
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %1, align 4
  %29 = load i16*, i16** @ritem, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %24
  %38 = load i16**, i16*** @kernel_end, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16*, i16** %38, i64 %40
  %42 = load i16*, i16** %41, align 8
  store i16* %42, i16** %4, align 8
  %43 = load i16*, i16** %4, align 8
  %44 = icmp ne i16* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i16
  %48 = load i16*, i16** @shift_symbol, align 8
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i16, i16* %48, i64 %51
  store i16 %47, i16* %52, align 2
  %53 = load i16**, i16*** @kernel_base, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16*, i16** %53, i64 %55
  %57 = load i16*, i16** %56, align 8
  store i16* %57, i16** %4, align 8
  br label %58

58:                                               ; preds = %45, %37
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i16
  %62 = load i16*, i16** %4, align 8
  %63 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %63, i16** %4, align 8
  store i16 %61, i16* %62, align 2
  %64 = load i16*, i16** %4, align 8
  %65 = load i16**, i16*** @kernel_end, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16*, i16** %65, i64 %67
  store i16* %64, i16** %68, align 8
  br label %69

69:                                               ; preds = %58, %24
  br label %20, !llvm.loop !11

70:                                               ; preds = %20
  %71 = load i32, i32* %2, align 4
  store i32 %71, i32* @nshifts, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @append_states() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @nshifts, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = load i16*, i16** @shift_symbol, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %31, %8
  %17 = load i32, i32* %2, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i16*, i16** @shift_symbol, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %26, %27
  br label %29

29:                                               ; preds = %19, %16
  %30 = phi i1 [ false, %16 ], [ %28, %19 ]
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = load i16*, i16** @shift_symbol, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %32, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = load i16*, i16** @shift_symbol, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  store i16 %37, i16* %41, align 2
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %2, align 4
  br label %16, !llvm.loop !12

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** @shift_symbol, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  store i16 %46, i16* %50, align 2
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %4, !llvm.loop !13

54:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @nshifts, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i16*, i16** @shift_symbol, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @get_state(i32 noundef %66)
  %68 = trunc i32 %67 to i16
  %69 = load i16*, i16** @shiftset, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  store i16 %68, i16* %72, align 2
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %55, !llvm.loop !14

76:                                               ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_shifts() #0 {
  %1 = alloca %struct.shifts*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = load i32, i32* @nshifts, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 2
  %9 = add i64 16, %8
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %10)
  %12 = bitcast i8* %11 to %struct.shifts*
  store %struct.shifts* %12, %struct.shifts** %1, align 8
  %13 = load %struct.core*, %struct.core** @this_state, align 8
  %14 = getelementptr inbounds %struct.core, %struct.core* %13, i32 0, i32 2
  %15 = load i16, i16* %14, align 8
  %16 = load %struct.shifts*, %struct.shifts** %1, align 8
  %17 = getelementptr inbounds %struct.shifts, %struct.shifts* %16, i32 0, i32 1
  store i16 %15, i16* %17, align 8
  %18 = load i32, i32* @nshifts, align 4
  %19 = trunc i32 %18 to i16
  %20 = load %struct.shifts*, %struct.shifts** %1, align 8
  %21 = getelementptr inbounds %struct.shifts, %struct.shifts* %20, i32 0, i32 2
  store i16 %19, i16* %21, align 2
  %22 = load i16*, i16** @shiftset, align 8
  store i16* %22, i16** %2, align 8
  %23 = load %struct.shifts*, %struct.shifts** %1, align 8
  %24 = getelementptr inbounds %struct.shifts, %struct.shifts* %23, i32 0, i32 3
  %25 = getelementptr inbounds [1 x i16], [1 x i16]* %24, i64 0, i64 0
  store i16* %25, i16** %3, align 8
  %26 = load i16*, i16** @shiftset, align 8
  %27 = load i32, i32* @nshifts, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  store i16* %29, i16** %4, align 8
  br label %30

30:                                               ; preds = %34, %0
  %31 = load i16*, i16** %2, align 8
  %32 = load i16*, i16** %4, align 8
  %33 = icmp ult i16* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i16*, i16** %2, align 8
  %36 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %36, i16** %2, align 8
  %37 = load i16, i16* %35, align 2
  %38 = load i16*, i16** %3, align 8
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %3, align 8
  store i16 %37, i16* %38, align 2
  br label %30, !llvm.loop !15

40:                                               ; preds = %30
  %41 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %42 = icmp ne %struct.shifts* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.shifts*, %struct.shifts** %1, align 8
  %45 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %46 = getelementptr inbounds %struct.shifts, %struct.shifts* %45, i32 0, i32 0
  store %struct.shifts* %44, %struct.shifts** %46, align 8
  %47 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %47, %struct.shifts** @last_shift, align 8
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %49, %struct.shifts** @first_shift, align 8
  %50 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %50, %struct.shifts** @last_shift, align 8
  br label %51

51:                                               ; preds = %48, %43
  ret void
}

declare dso_local void @finalize_closure() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @augment_automaton() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.core*, align 8
  %4 = alloca %struct.shifts*, align 8
  %5 = alloca %struct.shifts*, align 8
  %6 = alloca %struct.shifts*, align 8
  %7 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %7, %struct.shifts** %4, align 8
  %8 = load %struct.shifts*, %struct.shifts** %4, align 8
  %9 = icmp ne %struct.shifts* %8, null
  br i1 %9, label %10, label %275

10:                                               ; preds = %0
  %11 = load %struct.shifts*, %struct.shifts** %4, align 8
  %12 = getelementptr inbounds %struct.shifts, %struct.shifts* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %260

16:                                               ; preds = %10
  %17 = load %struct.shifts*, %struct.shifts** %4, align 8
  %18 = getelementptr inbounds %struct.shifts, %struct.shifts* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %2, align 4
  %21 = load %struct.core*, %struct.core** @first_state, align 8
  %22 = getelementptr inbounds %struct.core, %struct.core* %21, i32 0, i32 0
  %23 = load %struct.core*, %struct.core** %22, align 8
  store %struct.core* %23, %struct.core** %3, align 8
  br label %24

24:                                               ; preds = %40, %16
  %25 = load %struct.core*, %struct.core** %3, align 8
  %26 = getelementptr inbounds %struct.core, %struct.core* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i32, i32* @start_symbol, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.core*, %struct.core** %3, align 8
  %33 = getelementptr inbounds %struct.core, %struct.core* %32, i32 0, i32 2
  %34 = load i16, i16* %33, align 8
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.core*, %struct.core** %3, align 8
  %42 = getelementptr inbounds %struct.core, %struct.core* %41, i32 0, i32 0
  %43 = load %struct.core*, %struct.core** %42, align 8
  store %struct.core* %43, %struct.core** %3, align 8
  br label %24, !llvm.loop !16

44:                                               ; preds = %38
  %45 = load %struct.core*, %struct.core** %3, align 8
  %46 = getelementptr inbounds %struct.core, %struct.core* %45, i32 0, i32 3
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i32, i32* @start_symbol, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %166

51:                                               ; preds = %44
  %52 = load %struct.core*, %struct.core** %3, align 8
  %53 = getelementptr inbounds %struct.core, %struct.core* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %63, %51
  %57 = load %struct.shifts*, %struct.shifts** %4, align 8
  %58 = getelementptr inbounds %struct.shifts, %struct.shifts* %57, i32 0, i32 1
  %59 = load i16, i16* %58, align 8
  %60 = sext i16 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %64, %struct.shifts** %6, align 8
  %65 = load %struct.shifts*, %struct.shifts** %4, align 8
  %66 = getelementptr inbounds %struct.shifts, %struct.shifts* %65, i32 0, i32 0
  %67 = load %struct.shifts*, %struct.shifts** %66, align 8
  store %struct.shifts* %67, %struct.shifts** %4, align 8
  br label %56, !llvm.loop !17

68:                                               ; preds = %56
  %69 = load %struct.shifts*, %struct.shifts** %4, align 8
  %70 = getelementptr inbounds %struct.shifts, %struct.shifts* %69, i32 0, i32 1
  %71 = load i16, i16* %70, align 8
  %72 = sext i16 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %140

75:                                               ; preds = %68
  %76 = load %struct.shifts*, %struct.shifts** %4, align 8
  %77 = getelementptr inbounds %struct.shifts, %struct.shifts* %76, i32 0, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = mul i64 %79, 2
  %81 = add i64 16, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %82)
  %84 = bitcast i8* %83 to %struct.shifts*
  store %struct.shifts* %84, %struct.shifts** %5, align 8
  %85 = load %struct.shifts*, %struct.shifts** %4, align 8
  %86 = getelementptr inbounds %struct.shifts, %struct.shifts* %85, i32 0, i32 0
  %87 = load %struct.shifts*, %struct.shifts** %86, align 8
  %88 = load %struct.shifts*, %struct.shifts** %5, align 8
  %89 = getelementptr inbounds %struct.shifts, %struct.shifts* %88, i32 0, i32 0
  store %struct.shifts* %87, %struct.shifts** %89, align 8
  %90 = load i32, i32* %2, align 4
  %91 = trunc i32 %90 to i16
  %92 = load %struct.shifts*, %struct.shifts** %5, align 8
  %93 = getelementptr inbounds %struct.shifts, %struct.shifts* %92, i32 0, i32 1
  store i16 %91, i16* %93, align 8
  %94 = load %struct.shifts*, %struct.shifts** %4, align 8
  %95 = getelementptr inbounds %struct.shifts, %struct.shifts* %94, i32 0, i32 2
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = trunc i32 %98 to i16
  %100 = load %struct.shifts*, %struct.shifts** %5, align 8
  %101 = getelementptr inbounds %struct.shifts, %struct.shifts* %100, i32 0, i32 2
  store i16 %99, i16* %101, align 2
  %102 = load i32, i32* @nstates, align 4
  %103 = trunc i32 %102 to i16
  %104 = load %struct.shifts*, %struct.shifts** %5, align 8
  %105 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i32 0, i32 3
  %106 = getelementptr inbounds [1 x i16], [1 x i16]* %105, i64 0, i64 0
  store i16 %103, i16* %106, align 4
  %107 = load %struct.shifts*, %struct.shifts** %4, align 8
  %108 = getelementptr inbounds %struct.shifts, %struct.shifts* %107, i32 0, i32 2
  %109 = load i16, i16* %108, align 2
  %110 = sext i16 %109 to i32
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %127, %75
  %112 = load i32, i32* %1, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.shifts*, %struct.shifts** %4, align 8
  %116 = getelementptr inbounds %struct.shifts, %struct.shifts* %115, i32 0, i32 3
  %117 = load i32, i32* %1, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1 x i16], [1 x i16]* %116, i64 0, i64 %119
  %121 = load i16, i16* %120, align 2
  %122 = load %struct.shifts*, %struct.shifts** %5, align 8
  %123 = getelementptr inbounds %struct.shifts, %struct.shifts* %122, i32 0, i32 3
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1 x i16], [1 x i16]* %123, i64 0, i64 %125
  store i16 %121, i16* %126, align 2
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %1, align 4
  br label %111, !llvm.loop !18

130:                                              ; preds = %111
  %131 = load %struct.shifts*, %struct.shifts** %5, align 8
  %132 = load %struct.shifts*, %struct.shifts** %6, align 8
  %133 = getelementptr inbounds %struct.shifts, %struct.shifts* %132, i32 0, i32 0
  store %struct.shifts* %131, %struct.shifts** %133, align 8
  %134 = load %struct.shifts*, %struct.shifts** %4, align 8
  %135 = icmp ne %struct.shifts* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.shifts*, %struct.shifts** %4, align 8
  %138 = bitcast %struct.shifts* %137 to i8*
  call void @free(i8* noundef %138) #3
  br label %139

139:                                              ; preds = %136, %130
  br label %165

140:                                              ; preds = %68
  %141 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16)
  %142 = bitcast i8* %141 to %struct.shifts*
  store %struct.shifts* %142, %struct.shifts** %5, align 8
  %143 = load %struct.shifts*, %struct.shifts** %4, align 8
  %144 = load %struct.shifts*, %struct.shifts** %5, align 8
  %145 = getelementptr inbounds %struct.shifts, %struct.shifts* %144, i32 0, i32 0
  store %struct.shifts* %143, %struct.shifts** %145, align 8
  %146 = load i32, i32* %2, align 4
  %147 = trunc i32 %146 to i16
  %148 = load %struct.shifts*, %struct.shifts** %5, align 8
  %149 = getelementptr inbounds %struct.shifts, %struct.shifts* %148, i32 0, i32 1
  store i16 %147, i16* %149, align 8
  %150 = load %struct.shifts*, %struct.shifts** %5, align 8
  %151 = getelementptr inbounds %struct.shifts, %struct.shifts* %150, i32 0, i32 2
  store i16 1, i16* %151, align 2
  %152 = load i32, i32* @nstates, align 4
  %153 = trunc i32 %152 to i16
  %154 = load %struct.shifts*, %struct.shifts** %5, align 8
  %155 = getelementptr inbounds %struct.shifts, %struct.shifts* %154, i32 0, i32 3
  %156 = getelementptr inbounds [1 x i16], [1 x i16]* %155, i64 0, i64 0
  store i16 %153, i16* %156, align 4
  %157 = load %struct.shifts*, %struct.shifts** %5, align 8
  %158 = load %struct.shifts*, %struct.shifts** %6, align 8
  %159 = getelementptr inbounds %struct.shifts, %struct.shifts* %158, i32 0, i32 0
  store %struct.shifts* %157, %struct.shifts** %159, align 8
  %160 = load %struct.shifts*, %struct.shifts** %4, align 8
  %161 = icmp ne %struct.shifts* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %140
  %163 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %163, %struct.shifts** @last_shift, align 8
  br label %164

164:                                              ; preds = %162, %140
  br label %165

165:                                              ; preds = %164, %139
  br label %259

166:                                              ; preds = %44
  %167 = load %struct.core*, %struct.core** %3, align 8
  %168 = getelementptr inbounds %struct.core, %struct.core* %167, i32 0, i32 2
  %169 = load i16, i16* %168, align 8
  %170 = sext i16 %169 to i32
  store i32 %170, i32* %2, align 4
  %171 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %171, %struct.shifts** %4, align 8
  %172 = load %struct.shifts*, %struct.shifts** %4, align 8
  %173 = getelementptr inbounds %struct.shifts, %struct.shifts* %172, i32 0, i32 2
  %174 = load i16, i16* %173, align 2
  %175 = sext i16 %174 to i64
  %176 = mul i64 %175, 2
  %177 = add i64 16, %176
  %178 = trunc i64 %177 to i32
  %179 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %178)
  %180 = bitcast i8* %179 to %struct.shifts*
  store %struct.shifts* %180, %struct.shifts** %5, align 8
  %181 = load %struct.shifts*, %struct.shifts** %4, align 8
  %182 = getelementptr inbounds %struct.shifts, %struct.shifts* %181, i32 0, i32 0
  %183 = load %struct.shifts*, %struct.shifts** %182, align 8
  %184 = load %struct.shifts*, %struct.shifts** %5, align 8
  %185 = getelementptr inbounds %struct.shifts, %struct.shifts* %184, i32 0, i32 0
  store %struct.shifts* %183, %struct.shifts** %185, align 8
  %186 = load %struct.shifts*, %struct.shifts** %4, align 8
  %187 = getelementptr inbounds %struct.shifts, %struct.shifts* %186, i32 0, i32 2
  %188 = load i16, i16* %187, align 2
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %189, 1
  %191 = trunc i32 %190 to i16
  %192 = load %struct.shifts*, %struct.shifts** %5, align 8
  %193 = getelementptr inbounds %struct.shifts, %struct.shifts* %192, i32 0, i32 2
  store i16 %191, i16* %193, align 2
  store i32 0, i32* %1, align 4
  br label %194

194:                                              ; preds = %210, %166
  %195 = load i32, i32* %1, align 4
  %196 = load i32, i32* %2, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load %struct.shifts*, %struct.shifts** %4, align 8
  %200 = getelementptr inbounds %struct.shifts, %struct.shifts* %199, i32 0, i32 3
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1 x i16], [1 x i16]* %200, i64 0, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = load %struct.shifts*, %struct.shifts** %5, align 8
  %206 = getelementptr inbounds %struct.shifts, %struct.shifts* %205, i32 0, i32 3
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1 x i16], [1 x i16]* %206, i64 0, i64 %208
  store i16 %204, i16* %209, align 2
  br label %210

210:                                              ; preds = %198
  %211 = load i32, i32* %1, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %1, align 4
  br label %194, !llvm.loop !19

213:                                              ; preds = %194
  %214 = load i32, i32* @nstates, align 4
  %215 = trunc i32 %214 to i16
  %216 = load %struct.shifts*, %struct.shifts** %5, align 8
  %217 = getelementptr inbounds %struct.shifts, %struct.shifts* %216, i32 0, i32 3
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [1 x i16], [1 x i16]* %217, i64 0, i64 %219
  store i16 %215, i16* %220, align 2
  %221 = load i32, i32* %2, align 4
  store i32 %221, i32* %1, align 4
  br label %222

222:                                              ; preds = %242, %213
  %223 = load i32, i32* %1, align 4
  %224 = load %struct.shifts*, %struct.shifts** %4, align 8
  %225 = getelementptr inbounds %struct.shifts, %struct.shifts* %224, i32 0, i32 2
  %226 = load i16, i16* %225, align 2
  %227 = sext i16 %226 to i32
  %228 = icmp slt i32 %223, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %222
  %230 = load %struct.shifts*, %struct.shifts** %4, align 8
  %231 = getelementptr inbounds %struct.shifts, %struct.shifts* %230, i32 0, i32 3
  %232 = load i32, i32* %1, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [1 x i16], [1 x i16]* %231, i64 0, i64 %233
  %235 = load i16, i16* %234, align 2
  %236 = load %struct.shifts*, %struct.shifts** %5, align 8
  %237 = getelementptr inbounds %struct.shifts, %struct.shifts* %236, i32 0, i32 3
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1 x i16], [1 x i16]* %237, i64 0, i64 %240
  store i16 %235, i16* %241, align 2
  br label %242

242:                                              ; preds = %229
  %243 = load i32, i32* %1, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %1, align 4
  br label %222, !llvm.loop !20

245:                                              ; preds = %222
  %246 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %246, %struct.shifts** @first_shift, align 8
  %247 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %248 = load %struct.shifts*, %struct.shifts** %4, align 8
  %249 = icmp eq %struct.shifts* %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %251, %struct.shifts** @last_shift, align 8
  br label %252

252:                                              ; preds = %250, %245
  %253 = load %struct.shifts*, %struct.shifts** %4, align 8
  %254 = icmp ne %struct.shifts* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.shifts*, %struct.shifts** %4, align 8
  %257 = bitcast %struct.shifts* %256 to i8*
  call void @free(i8* noundef %257) #3
  br label %258

258:                                              ; preds = %255, %252
  call void @insert_start_shift()
  br label %259

259:                                              ; preds = %258, %165
  br label %274

260:                                              ; preds = %10
  %261 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16)
  %262 = bitcast i8* %261 to %struct.shifts*
  store %struct.shifts* %262, %struct.shifts** %4, align 8
  %263 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %264 = load %struct.shifts*, %struct.shifts** %4, align 8
  %265 = getelementptr inbounds %struct.shifts, %struct.shifts* %264, i32 0, i32 0
  store %struct.shifts* %263, %struct.shifts** %265, align 8
  %266 = load %struct.shifts*, %struct.shifts** %4, align 8
  %267 = getelementptr inbounds %struct.shifts, %struct.shifts* %266, i32 0, i32 2
  store i16 1, i16* %267, align 2
  %268 = load i32, i32* @nstates, align 4
  %269 = trunc i32 %268 to i16
  %270 = load %struct.shifts*, %struct.shifts** %4, align 8
  %271 = getelementptr inbounds %struct.shifts, %struct.shifts* %270, i32 0, i32 3
  %272 = getelementptr inbounds [1 x i16], [1 x i16]* %271, i64 0, i64 0
  store i16 %269, i16* %272, align 4
  %273 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %273, %struct.shifts** @first_shift, align 8
  call void @insert_start_shift()
  br label %274

274:                                              ; preds = %260, %259
  br label %287

275:                                              ; preds = %0
  %276 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16)
  %277 = bitcast i8* %276 to %struct.shifts*
  store %struct.shifts* %277, %struct.shifts** %4, align 8
  %278 = load %struct.shifts*, %struct.shifts** %4, align 8
  %279 = getelementptr inbounds %struct.shifts, %struct.shifts* %278, i32 0, i32 2
  store i16 1, i16* %279, align 2
  %280 = load i32, i32* @nstates, align 4
  %281 = trunc i32 %280 to i16
  %282 = load %struct.shifts*, %struct.shifts** %4, align 8
  %283 = getelementptr inbounds %struct.shifts, %struct.shifts* %282, i32 0, i32 3
  %284 = getelementptr inbounds [1 x i16], [1 x i16]* %283, i64 0, i64 0
  store i16 %281, i16* %284, align 4
  %285 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %285, %struct.shifts** @first_shift, align 8
  %286 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %286, %struct.shifts** @last_shift, align 8
  call void @insert_start_shift()
  br label %287

287:                                              ; preds = %275, %274
  %288 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22)
  %289 = bitcast i8* %288 to %struct.core*
  store %struct.core* %289, %struct.core** %3, align 8
  %290 = load i32, i32* @nstates, align 4
  %291 = trunc i32 %290 to i16
  %292 = load %struct.core*, %struct.core** %3, align 8
  %293 = getelementptr inbounds %struct.core, %struct.core* %292, i32 0, i32 2
  store i16 %291, i16* %293, align 8
  %294 = load %struct.core*, %struct.core** %3, align 8
  %295 = load %struct.core*, %struct.core** @last_state, align 8
  %296 = getelementptr inbounds %struct.core, %struct.core* %295, i32 0, i32 0
  store %struct.core* %294, %struct.core** %296, align 8
  %297 = load %struct.core*, %struct.core** %3, align 8
  store %struct.core* %297, %struct.core** @last_state, align 8
  %298 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16)
  %299 = bitcast i8* %298 to %struct.shifts*
  store %struct.shifts* %299, %struct.shifts** %4, align 8
  %300 = load i32, i32* @nstates, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @nstates, align 4
  %302 = trunc i32 %300 to i16
  %303 = load %struct.shifts*, %struct.shifts** %4, align 8
  %304 = getelementptr inbounds %struct.shifts, %struct.shifts* %303, i32 0, i32 1
  store i16 %302, i16* %304, align 8
  %305 = load %struct.shifts*, %struct.shifts** %4, align 8
  %306 = getelementptr inbounds %struct.shifts, %struct.shifts* %305, i32 0, i32 2
  store i16 1, i16* %306, align 2
  %307 = load i32, i32* @nstates, align 4
  %308 = trunc i32 %307 to i16
  %309 = load %struct.shifts*, %struct.shifts** %4, align 8
  %310 = getelementptr inbounds %struct.shifts, %struct.shifts* %309, i32 0, i32 3
  %311 = getelementptr inbounds [1 x i16], [1 x i16]* %310, i64 0, i64 0
  store i16 %308, i16* %311, align 4
  %312 = load %struct.shifts*, %struct.shifts** %4, align 8
  %313 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %314 = getelementptr inbounds %struct.shifts, %struct.shifts* %313, i32 0, i32 0
  store %struct.shifts* %312, %struct.shifts** %314, align 8
  %315 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %315, %struct.shifts** @last_shift, align 8
  %316 = load i32, i32* @nstates, align 4
  store i32 %316, i32* @final_state, align 4
  %317 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22)
  %318 = bitcast i8* %317 to %struct.core*
  store %struct.core* %318, %struct.core** %3, align 8
  %319 = load i32, i32* @nstates, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @nstates, align 4
  %321 = trunc i32 %319 to i16
  %322 = load %struct.core*, %struct.core** %3, align 8
  %323 = getelementptr inbounds %struct.core, %struct.core* %322, i32 0, i32 2
  store i16 %321, i16* %323, align 8
  %324 = load %struct.core*, %struct.core** %3, align 8
  %325 = load %struct.core*, %struct.core** @last_state, align 8
  %326 = getelementptr inbounds %struct.core, %struct.core* %325, i32 0, i32 0
  store %struct.core* %324, %struct.core** %326, align 8
  %327 = load %struct.core*, %struct.core** %3, align 8
  store %struct.core* %327, %struct.core** @last_state, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_state(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i16**, i16*** @kernel_base, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16*, i16** %10, i64 %12
  %14 = load i16*, i16** %13, align 8
  store i16* %14, i16** %4, align 8
  %15 = load i16**, i16*** @kernel_end, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16*, i16** %15, i64 %17
  %19 = load i16*, i16** %18, align 8
  store i16* %19, i16** %6, align 8
  %20 = load i16*, i16** %6, align 8
  %21 = load i16*, i16** %4, align 8
  %22 = ptrtoint i16* %20 to i64
  %23 = ptrtoint i16* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 2
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %31, %1
  %28 = load i16*, i16** %4, align 8
  %29 = load i16*, i16** %6, align 8
  %30 = icmp ult i16* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i16*, i16** %4, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %4, align 8
  %34 = load i16, i16* %32, align 2
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %27, !llvm.loop !21

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = srem i32 %39, 1009
  store i32 %40, i32* %3, align 4
  %41 = load %struct.core**, %struct.core*** @state_table, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.core*, %struct.core** %41, i64 %43
  %45 = load %struct.core*, %struct.core** %44, align 8
  store %struct.core* %45, %struct.core** %7, align 8
  %46 = load %struct.core*, %struct.core** %7, align 8
  %47 = icmp ne %struct.core* %46, null
  br i1 %47, label %48, label %111

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %109, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load %struct.core*, %struct.core** %7, align 8
  %55 = getelementptr inbounds %struct.core, %struct.core* %54, i32 0, i32 4
  %56 = load i16, i16* %55, align 4
  %57 = sext i16 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %61 = load i16**, i16*** @kernel_base, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16*, i16** %61, i64 %63
  %65 = load i16*, i16** %64, align 8
  store i16* %65, i16** %4, align 8
  %66 = load %struct.core*, %struct.core** %7, align 8
  %67 = getelementptr inbounds %struct.core, %struct.core* %66, i32 0, i32 5
  %68 = getelementptr inbounds [1 x i16], [1 x i16]* %67, i64 0, i64 0
  store i16* %68, i16** %5, align 8
  br label %69

69:                                               ; preds = %89, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i16*, i16** %4, align 8
  %74 = load i16*, i16** %6, align 8
  %75 = icmp ult i16* %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %80, i16** %4, align 8
  %81 = load i16, i16* %79, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16*, i16** %5, align 8
  %84 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %84, i16** %5, align 8
  %85 = load i16, i16* %83, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %78
  br label %69, !llvm.loop !22

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = load %struct.core*, %struct.core** %7, align 8
  %96 = getelementptr inbounds %struct.core, %struct.core* %95, i32 0, i32 1
  %97 = load %struct.core*, %struct.core** %96, align 8
  %98 = icmp ne %struct.core* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.core*, %struct.core** %7, align 8
  %101 = getelementptr inbounds %struct.core, %struct.core* %100, i32 0, i32 1
  %102 = load %struct.core*, %struct.core** %101, align 8
  store %struct.core* %102, %struct.core** %7, align 8
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* %2, align 4
  %105 = call %struct.core* @new_state(i32 noundef %104)
  %106 = load %struct.core*, %struct.core** %7, align 8
  %107 = getelementptr inbounds %struct.core, %struct.core* %106, i32 0, i32 1
  store %struct.core* %105, %struct.core** %107, align 8
  store %struct.core* %105, %struct.core** %7, align 8
  store i32 1, i32* %8, align 4
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %91
  br label %49, !llvm.loop !23

110:                                              ; preds = %49
  br label %118

111:                                              ; preds = %38
  %112 = load i32, i32* %2, align 4
  %113 = call %struct.core* @new_state(i32 noundef %112)
  store %struct.core* %113, %struct.core** %7, align 8
  %114 = load %struct.core**, %struct.core*** @state_table, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.core*, %struct.core** %114, i64 %116
  store %struct.core* %113, %struct.core** %117, align 8
  br label %118

118:                                              ; preds = %111, %110
  %119 = load %struct.core*, %struct.core** %7, align 8
  %120 = getelementptr inbounds %struct.core, %struct.core* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 8
  %122 = sext i16 %121 to i32
  ret i32 %122
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.core* @new_state(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.core*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @nstates, align 4
  %9 = icmp sge i32 %8, 32767
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @toomany(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i16**, i16*** @kernel_base, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16*, i16** %12, i64 %14
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %5, align 8
  %17 = load i16**, i16*** @kernel_end, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16*, i16** %17, i64 %19
  %21 = load i16*, i16** %20, align 8
  store i16* %21, i16** %7, align 8
  %22 = load i16*, i16** %7, align 8
  %23 = load i16*, i16** %5, align 8
  %24 = ptrtoint i16* %22 to i64
  %25 = ptrtoint i16* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 2
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 2
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %34)
  %36 = bitcast i8* %35 to %struct.core*
  store %struct.core* %36, %struct.core** %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = trunc i32 %37 to i16
  %39 = load %struct.core*, %struct.core** %4, align 8
  %40 = getelementptr inbounds %struct.core, %struct.core* %39, i32 0, i32 3
  store i16 %38, i16* %40, align 2
  %41 = load i32, i32* @nstates, align 4
  %42 = trunc i32 %41 to i16
  %43 = load %struct.core*, %struct.core** %4, align 8
  %44 = getelementptr inbounds %struct.core, %struct.core* %43, i32 0, i32 2
  store i16 %42, i16* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = trunc i32 %45 to i16
  %47 = load %struct.core*, %struct.core** %4, align 8
  %48 = getelementptr inbounds %struct.core, %struct.core* %47, i32 0, i32 4
  store i16 %46, i16* %48, align 4
  %49 = load %struct.core*, %struct.core** %4, align 8
  %50 = getelementptr inbounds %struct.core, %struct.core* %49, i32 0, i32 5
  %51 = getelementptr inbounds [1 x i16], [1 x i16]* %50, i64 0, i64 0
  store i16* %51, i16** %6, align 8
  br label %52

52:                                               ; preds = %56, %11
  %53 = load i16*, i16** %5, align 8
  %54 = load i16*, i16** %7, align 8
  %55 = icmp ult i16* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i16*, i16** %5, align 8
  %58 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %58, i16** %5, align 8
  %59 = load i16, i16* %57, align 2
  %60 = load i16*, i16** %6, align 8
  %61 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %61, i16** %6, align 8
  store i16 %59, i16* %60, align 2
  br label %52, !llvm.loop !24

62:                                               ; preds = %52
  %63 = load %struct.core*, %struct.core** %4, align 8
  %64 = load %struct.core*, %struct.core** @last_state, align 8
  %65 = getelementptr inbounds %struct.core, %struct.core* %64, i32 0, i32 0
  store %struct.core* %63, %struct.core** %65, align 8
  %66 = load %struct.core*, %struct.core** %4, align 8
  store %struct.core* %66, %struct.core** @last_state, align 8
  %67 = load i32, i32* @nstates, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @nstates, align 4
  %69 = load %struct.core*, %struct.core** %4, align 8
  ret %struct.core* %69
}

declare dso_local void @toomany(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_start_shift() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = alloca %struct.shifts*, align 8
  %3 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 22)
  %4 = bitcast i8* %3 to %struct.core*
  store %struct.core* %4, %struct.core** %1, align 8
  %5 = load i32, i32* @nstates, align 4
  %6 = trunc i32 %5 to i16
  %7 = load %struct.core*, %struct.core** %1, align 8
  %8 = getelementptr inbounds %struct.core, %struct.core* %7, i32 0, i32 2
  store i16 %6, i16* %8, align 8
  %9 = load i32, i32* @start_symbol, align 4
  %10 = trunc i32 %9 to i16
  %11 = load %struct.core*, %struct.core** %1, align 8
  %12 = getelementptr inbounds %struct.core, %struct.core* %11, i32 0, i32 3
  store i16 %10, i16* %12, align 2
  %13 = load %struct.core*, %struct.core** %1, align 8
  %14 = load %struct.core*, %struct.core** @last_state, align 8
  %15 = getelementptr inbounds %struct.core, %struct.core* %14, i32 0, i32 0
  store %struct.core* %13, %struct.core** %15, align 8
  %16 = load %struct.core*, %struct.core** %1, align 8
  store %struct.core* %16, %struct.core** @last_state, align 8
  %17 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 16)
  %18 = bitcast i8* %17 to %struct.shifts*
  store %struct.shifts* %18, %struct.shifts** %2, align 8
  %19 = load i32, i32* @nstates, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @nstates, align 4
  %21 = trunc i32 %19 to i16
  %22 = load %struct.shifts*, %struct.shifts** %2, align 8
  %23 = getelementptr inbounds %struct.shifts, %struct.shifts* %22, i32 0, i32 1
  store i16 %21, i16* %23, align 8
  %24 = load %struct.shifts*, %struct.shifts** %2, align 8
  %25 = getelementptr inbounds %struct.shifts, %struct.shifts* %24, i32 0, i32 2
  store i16 1, i16* %25, align 2
  %26 = load i32, i32* @nstates, align 4
  %27 = trunc i32 %26 to i16
  %28 = load %struct.shifts*, %struct.shifts** %2, align 8
  %29 = getelementptr inbounds %struct.shifts, %struct.shifts* %28, i32 0, i32 3
  %30 = getelementptr inbounds [1 x i16], [1 x i16]* %29, i64 0, i64 0
  store i16 %27, i16* %30, align 4
  %31 = load %struct.shifts*, %struct.shifts** %2, align 8
  %32 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %33 = getelementptr inbounds %struct.shifts, %struct.shifts* %32, i32 0, i32 0
  store %struct.shifts* %31, %struct.shifts** %33, align 8
  %34 = load %struct.shifts*, %struct.shifts** %2, align 8
  store %struct.shifts* %34, %struct.shifts** @last_shift, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
