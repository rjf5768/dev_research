; ModuleID = './closure.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itemset = dso_local global i16* null, align 8
@nrules = external dso_local global i32, align 4
@rulesetsize = internal global i32 0, align 4
@ruleset = internal global i32* null, align 8
@nvars = external dso_local global i32, align 4
@ntokens = external dso_local global i32, align 4
@fderives = internal global i32* null, align 8
@nsyms = external dso_local global i32, align 4
@firsts = internal global i32* null, align 8
@varsetsize = internal global i32 0, align 4
@derives = external dso_local global i16**, align 8
@ritem = external dso_local global i16*, align 8
@rrhs = external dso_local global i16*, align 8
@start_symbol = external dso_local global i32, align 4
@itemsetend = dso_local global i16* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_closure(i32 noundef %0) #0 {
  %2 = shl i32 %0, 1
  %3 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %2) #4
  store i8* %3, i8** bitcast (i16** @itemset to i8**), align 8
  %4 = load i32, i32* @nrules, align 4
  %5 = add nsw i32 %4, 32
  %6 = sdiv i32 %5, 32
  store i32 %6, i32* @rulesetsize, align 4
  %7 = shl nsw i32 %6, 2
  %8 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %7) #4
  store i8* %8, i8** bitcast (i32** @ruleset to i8**), align 8
  call void @set_fderives()
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_fderives() #0 {
  %1 = load i32, i32* @nvars, align 4
  %2 = load i32, i32* @rulesetsize, align 4
  %3 = mul nsw i32 %1, %2
  %4 = shl i32 %3, 2
  %5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %4) #4
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* @ntokens, align 4
  %8 = load i32, i32* @rulesetsize, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i32, i32* %6, i64 %11
  store i32* %12, i32** @fderives, align 8
  call void @set_firsts()
  %13 = load i32*, i32** @fderives, align 8
  %14 = load i32, i32* @ntokens, align 4
  %15 = load i32, i32* @rulesetsize, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  br label %19

19:                                               ; preds = %71, %0
  %.08 = phi i32 [ %14, %0 ], [ %75, %71 ]
  %.0 = phi i32* [ %18, %0 ], [ %74, %71 ]
  %20 = load i32, i32* @nsyms, align 4
  %21 = icmp slt i32 %.08, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %19
  %23 = load i32*, i32** @firsts, align 8
  %24 = load i32, i32* @ntokens, align 4
  %25 = sub nsw i32 %.08, %24
  %26 = load i32, i32* @varsetsize, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %29, align 4
  %32 = load i32, i32* @ntokens, align 4
  br label %33

33:                                               ; preds = %68, %22
  %.05 = phi i32 [ %31, %22 ], [ %.16, %68 ]
  %.03 = phi i32 [ 1, %22 ], [ %.14, %68 ]
  %.02 = phi i32 [ %32, %22 ], [ %69, %68 ]
  %.01 = phi i32* [ %30, %22 ], [ %.1, %68 ]
  %34 = load i32, i32* @nsyms, align 4
  %35 = icmp slt i32 %.02, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = and i32 %.05, %.03
  %.not9 = icmp eq i32 %37, 0
  br i1 %.not9, label %57, label %38

38:                                               ; preds = %36
  %39 = load i16**, i16*** @derives, align 8
  %40 = sext i32 %.02 to i64
  %41 = getelementptr inbounds i16*, i16** %39, i64 %40
  %42 = load i16*, i16** %41, align 8
  br label %43

43:                                               ; preds = %47, %38
  %.07 = phi i16* [ %42, %38 ], [ %48, %47 ]
  %44 = load i16, i16* %.07, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp sgt i16 %44, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = getelementptr inbounds i16, i16* %.07, i64 1
  %49 = and i32 %45, 31
  %50 = shl i32 1, %49
  %51 = ashr i32 %45, 5
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %.0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %43, !llvm.loop !4

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = shl i32 %.03, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = add nsw i32 %.02, 1
  %62 = load i32, i32* @nsyms, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds i32, i32* %.01, i64 1
  %66 = load i32, i32* %.01, align 4
  br label %67

67:                                               ; preds = %64, %60, %57
  %.16 = phi i32 [ %66, %64 ], [ %.05, %60 ], [ %.05, %57 ]
  %.14 = phi i32 [ 1, %64 ], [ %58, %60 ], [ %58, %57 ]
  %.1 = phi i32* [ %65, %64 ], [ %.01, %60 ], [ %.01, %57 ]
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %.02, 1
  br label %33, !llvm.loop !6

70:                                               ; preds = %33
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* @rulesetsize, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %.0, i64 %73
  %75 = add nsw i32 %.08, 1
  br label %19, !llvm.loop !7

76:                                               ; preds = %19
  %77 = load i32*, i32** @firsts, align 8
  %.not = icmp eq i32* %77, null
  br i1 %.not, label %80, label %78

78:                                               ; preds = %76
  %79 = load i8*, i8** bitcast (i32** @firsts to i8**), align 8
  call void @free(i8* noundef %79) #4
  br label %80

80:                                               ; preds = %78, %76
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_firsts() #0 {
  %1 = load i32, i32* @nvars, align 4
  %2 = add nsw i32 %1, 31
  %3 = sdiv i32 %2, 32
  store i32 %3, i32* @varsetsize, align 4
  %4 = mul nsw i32 %1, %3
  %5 = shl i32 %4, 2
  %6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %5) #4
  store i8* %6, i8** bitcast (i32** @firsts to i8**), align 8
  %.cast = bitcast i8* %6 to i32*
  %7 = load i32, i32* @ntokens, align 4
  br label %8

8:                                                ; preds = %44, %0
  %.02 = phi i32 [ %7, %0 ], [ %47, %44 ]
  %.0 = phi i32* [ %.cast, %0 ], [ %46, %44 ]
  %9 = load i32, i32* @nsyms, align 4
  %10 = icmp slt i32 %.02, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load i16**, i16*** @derives, align 8
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds i16*, i16** %12, i64 %13
  %15 = load i16*, i16** %14, align 8
  br label %16

16:                                               ; preds = %42, %11
  %.01 = phi i16* [ %15, %11 ], [ %22, %42 ]
  %17 = load i16, i16* %.01, align 2
  %18 = icmp sgt i16 %17, -1
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i16*, i16** @ritem, align 8
  %21 = load i16*, i16** @rrhs, align 8
  %22 = getelementptr inbounds i16, i16* %.01, i64 1
  %23 = load i16, i16* %.01, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds i16, i16* %21, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds i16, i16* %20, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = load i32, i32* @ntokens, align 4
  %.not = icmp sgt i32 %31, %30
  br i1 %.not, label %42, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ntokens, align 4
  %34 = sub nsw i32 %30, %33
  %35 = and i32 %34, 31
  %36 = shl i32 1, %35
  %37 = ashr i32 %34, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %.0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32, %19
  br label %16, !llvm.loop !8

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %43
  %45 = sext i32 %3 to i64
  %46 = getelementptr inbounds i32, i32* %.0, i64 %45
  %47 = add nsw i32 %.02, 1
  br label %8, !llvm.loop !9

48:                                               ; preds = %8
  %49 = load i32*, i32** @firsts, align 8
  %50 = load i32, i32* @nvars, align 4
  call void @RTC(i32* noundef %49, i32 noundef %50) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local void @RTC(i32* noundef, i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @closure(i16* noundef readonly %0, i32 noundef %1) #3 {
  %3 = load i32*, i32** @ruleset, align 8
  %4 = load i32, i32* @rulesetsize, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %3, i64 %5
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i16, i16* %0, i64 %7
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** @fderives, align 8
  %12 = load i32, i32* @start_symbol, align 4
  %13 = load i32, i32* @rulesetsize, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  br label %17

17:                                               ; preds = %19, %10
  %.01 = phi i32* [ %16, %10 ], [ %20, %19 ]
  %.0 = phi i32* [ %3, %10 ], [ %22, %19 ]
  %18 = icmp ult i32* %.0, %6
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds i32, i32* %.01, i64 1
  %21 = load i32, i32* %.01, align 4
  %22 = getelementptr inbounds i32, i32* %.0, i64 1
  store i32 %21, i32* %.0, align 4
  br label %17, !llvm.loop !10

23:                                               ; preds = %17
  br label %59

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %27, %24
  %.1 = phi i32* [ %3, %24 ], [ %28, %27 ]
  %26 = icmp ult i32* %.1, %6
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds i32, i32* %.1, i64 1
  store i32 0, i32* %.1, align 4
  br label %25, !llvm.loop !11

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %57, %29
  %.06 = phi i16* [ %0, %29 ], [ %34, %57 ]
  %31 = icmp ult i16* %.06, %8
  br i1 %31, label %32, label %58

32:                                               ; preds = %30
  %33 = load i16*, i16** @ritem, align 8
  %34 = getelementptr inbounds i16, i16* %.06, i64 1
  %35 = load i16, i16* %.06, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i16, i16* %33, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = load i32, i32* @ntokens, align 4
  %.not12 = icmp sgt i32 %40, %39
  br i1 %.not12, label %57, label %41

41:                                               ; preds = %32
  %42 = load i32*, i32** @fderives, align 8
  %43 = load i32, i32* @rulesetsize, align 4
  %44 = mul nsw i32 %43, %39
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32*, i32** @ruleset, align 8
  br label %48

48:                                               ; preds = %50, %41
  %.12 = phi i32* [ %46, %41 ], [ %51, %50 ]
  %.2 = phi i32* [ %47, %41 ], [ %53, %50 ]
  %49 = icmp ult i32* %.2, %6
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = getelementptr inbounds i32, i32* %.12, i64 1
  %52 = load i32, i32* %.12, align 4
  %53 = getelementptr inbounds i32, i32* %.2, i64 1
  %54 = load i32, i32* %.2, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %.2, align 4
  br label %48, !llvm.loop !12

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %32
  br label %30, !llvm.loop !13

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i16*, i16** @itemset, align 8
  store i16* %60, i16** @itemsetend, align 8
  %61 = load i32*, i32** @ruleset, align 8
  br label %62

62:                                               ; preds = %98, %59
  %.17 = phi i16* [ %0, %59 ], [ %.5, %98 ]
  %.03 = phi i32 [ 0, %59 ], [ %.25, %98 ]
  %.3 = phi i32* [ %61, %59 ], [ %65, %98 ]
  %63 = icmp ult i32* %.3, %6
  br i1 %63, label %64, label %99

64:                                               ; preds = %62
  %65 = getelementptr inbounds i32, i32* %.3, i64 1
  %66 = load i32, i32* %.3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = add nsw i32 %.03, 32
  br label %98

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %94, %70
  %.010 = phi i32 [ 1, %70 ], [ %95, %94 ]
  %.28 = phi i16* [ %.17, %70 ], [ %.4, %94 ]
  %.14 = phi i32 [ %.03, %70 ], [ %96, %94 ]
  %.not = icmp eq i32 %.010, 0
  br i1 %.not, label %97, label %72

72:                                               ; preds = %71
  %73 = and i32 %66, %.010
  %.not11 = icmp eq i32 %73, 0
  br i1 %.not11, label %94, label %74

74:                                               ; preds = %72
  %75 = load i16*, i16** @rrhs, align 8
  %76 = sext i32 %.14 to i64
  %77 = getelementptr inbounds i16, i16* %75, i64 %76
  %78 = load i16, i16* %77, align 2
  br label %79

79:                                               ; preds = %86, %74
  %.39 = phi i16* [ %.28, %74 ], [ %87, %86 ]
  %80 = icmp ult i16* %.39, %8
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i16, i16* %.39, align 2
  %83 = icmp slt i16 %82, %78
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i1 [ false, %79 ], [ %83, %81 ]
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = getelementptr inbounds i16, i16* %.39, i64 1
  %88 = load i16, i16* %.39, align 2
  %89 = load i16*, i16** @itemsetend, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 1
  store i16* %90, i16** @itemsetend, align 8
  store i16 %88, i16* %89, align 2
  br label %79, !llvm.loop !14

91:                                               ; preds = %84
  %92 = load i16*, i16** @itemsetend, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 1
  store i16* %93, i16** @itemsetend, align 8
  store i16 %78, i16* %92, align 2
  br label %94

94:                                               ; preds = %91, %72
  %.4 = phi i16* [ %.39, %91 ], [ %.28, %72 ]
  %95 = shl i32 %.010, 1
  %96 = add nsw i32 %.14, 1
  br label %71, !llvm.loop !15

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97, %68
  %.5 = phi i16* [ %.17, %68 ], [ %.28, %97 ]
  %.25 = phi i32 [ %69, %68 ], [ %.14, %97 ]
  br label %62, !llvm.loop !16

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %102, %99
  %.6 = phi i16* [ %.17, %99 ], [ %103, %102 ]
  %101 = icmp ult i16* %.6, %8
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = getelementptr inbounds i16, i16* %.6, i64 1
  %104 = load i16, i16* %.6, align 2
  %105 = load i16*, i16** @itemsetend, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 1
  store i16* %106, i16** @itemsetend, align 8
  store i16 %104, i16* %105, align 2
  br label %100, !llvm.loop !17

107:                                              ; preds = %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalize_closure() #0 {
  %1 = load i16*, i16** @itemset, align 8
  %.not = icmp eq i16* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** bitcast (i16** @itemset to i8**), align 8
  call void @free(i8* noundef %3) #4
  br label %4

4:                                                ; preds = %2, %0
  %5 = load i32*, i32** @ruleset, align 8
  %.not1 = icmp eq i32* %5, null
  br i1 %.not1, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8*, i8** bitcast (i32** @ruleset to i8**), align 8
  call void @free(i8* noundef %7) #4
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i32*, i32** @fderives, align 8
  %.not2 = icmp eq i32* %9, null
  br i1 %.not2, label %18, label %10

10:                                               ; preds = %8
  %11 = load i32*, i32** @fderives, align 8
  %12 = load i32, i32* @ntokens, align 4
  %13 = load i32, i32* @rulesetsize, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* noundef %17) #4
  br label %18

18:                                               ; preds = %10, %8
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
