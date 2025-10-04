; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/closure.c'
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
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 2
  %6 = trunc i64 %5 to i32
  %7 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %6)
  %8 = bitcast i8* %7 to i16*
  store i16* %8, i16** @itemset, align 8
  %9 = load i32, i32* @nrules, align 4
  %10 = add nsw i32 %9, 1
  %11 = add nsw i32 %10, 31
  %12 = sdiv i32 %11, 32
  store i32 %12, i32* @rulesetsize, align 4
  %13 = load i32, i32* @rulesetsize, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @ruleset, align 8
  call void @set_fderives()
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_fderives() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @nvars, align 4
  %10 = load i32, i32* @rulesetsize, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* @ntokens, align 4
  %18 = load i32, i32* @rulesetsize, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** @fderives, align 8
  call void @set_firsts()
  %23 = load i32*, i32** @fderives, align 8
  %24 = load i32, i32* @ntokens, align 4
  %25 = load i32, i32* @rulesetsize, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %1, align 8
  %29 = load i32, i32* @ntokens, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %107, %0
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @nsyms, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %30
  %35 = load i32*, i32** @firsts, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ntokens, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @varsetsize, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  store i32* %42, i32** %2, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %2, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %4, align 4
  %46 = load i32, i32* @ntokens, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %95, %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @nsyms, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i16**, i16*** @derives, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16*, i16** %57, i64 %59
  %61 = load i16*, i16** %60, align 8
  store i16* %61, i16** %6, align 8
  br label %62

62:                                               ; preds = %68, %56
  %63 = load i16*, i16** %6, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %6, align 8
  %65 = load i16, i16* %63, align 2
  %66 = sext i16 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 31
  %71 = shl i32 1, %70
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 5
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %62, !llvm.loop !4

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* @nsyms, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %2, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %85, %80
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %47, !llvm.loop !6

98:                                               ; preds = %47
  %99 = load i32, i32* @varsetsize, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %2, align 8
  %103 = load i32, i32* @rulesetsize, align 4
  %104 = load i32*, i32** %1, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %1, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %30, !llvm.loop !7

110:                                              ; preds = %30
  %111 = load i32*, i32** @firsts, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** @firsts, align 8
  %115 = bitcast i32* %114 to i8*
  call void @free(i8* noundef %115) #3
  br label %116

116:                                              ; preds = %113, %110
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_firsts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @nvars, align 4
  %7 = add nsw i32 %6, 31
  %8 = sdiv i32 %7, 32
  store i32 %8, i32* %4, align 4
  store i32 %8, i32* @varsetsize, align 4
  %9 = load i32, i32* @nvars, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** @firsts, align 8
  %17 = load i32*, i32** @firsts, align 8
  store i32* %17, i32** %1, align 8
  %18 = load i32, i32* @ntokens, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %70, %0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @nsyms, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i16**, i16*** @derives, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16*, i16** %24, i64 %26
  %28 = load i16*, i16** %27, align 8
  store i16* %28, i16** %3, align 8
  br label %29

29:                                               ; preds = %64, %23
  %30 = load i16*, i16** %3, align 8
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load i16*, i16** @ritem, align 8
  %36 = load i16*, i16** @rrhs, align 8
  %37 = load i16*, i16** %3, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %38, i16** %3, align 8
  %39 = load i16, i16* %37, align 2
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i16, i16* %35, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @ntokens, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %34
  %51 = load i32, i32* @ntokens, align 4
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 31
  %56 = shl i32 1, %55
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* %2, align 4
  %59 = ashr i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %50, %34
  br label %29, !llvm.loop !8

65:                                               ; preds = %29
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %1, align 8
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %19, !llvm.loop !9

73:                                               ; preds = %19
  %74 = load i32*, i32** @firsts, align 8
  %75 = load i32, i32* @nvars, align 4
  call void @RTC(i32* noundef %74, i32 noundef %75)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local void @RTC(i32* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @closure(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** @ruleset, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** @ruleset, align 8
  %17 = load i32, i32* @rulesetsize, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %12, align 8
  %20 = load i16*, i16** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  store i16* %23, i16** %11, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load i32*, i32** @fderives, align 8
  %28 = load i32, i32* @start_symbol, align 4
  %29 = load i32, i32* @rulesetsize, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %9, align 8
  br label %33

33:                                               ; preds = %37, %26
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %33, !llvm.loop !10

43:                                               ; preds = %33
  br label %93

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  store i32 0, i32* %50, align 4
  br label %45, !llvm.loop !11

52:                                               ; preds = %45
  %53 = load i16*, i16** %3, align 8
  store i16* %53, i16** %8, align 8
  br label %54

54:                                               ; preds = %91, %52
  %55 = load i16*, i16** %8, align 8
  %56 = load i16*, i16** %11, align 8
  %57 = icmp ult i16* %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i16*, i16** @ritem, align 8
  %60 = load i16*, i16** %8, align 8
  %61 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %61, i16** %8, align 8
  %62 = load i16, i16* %60, align 2
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @ntokens, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %58
  %71 = load i32*, i32** @fderives, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @rulesetsize, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32* %76, i32** %9, align 8
  %77 = load i32*, i32** @ruleset, align 8
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %82, %70
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %9, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %86, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %86, align 4
  br label %78, !llvm.loop !12

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %58
  br label %54, !llvm.loop !13

92:                                               ; preds = %54
  br label %93

93:                                               ; preds = %92, %43
  store i32 0, i32* %5, align 4
  %94 = load i16*, i16** @itemset, align 8
  store i16* %94, i16** @itemsetend, align 8
  %95 = load i16*, i16** %3, align 8
  store i16* %95, i16** %8, align 8
  %96 = load i32*, i32** @ruleset, align 8
  store i32* %96, i32** %10, align 8
  br label %97

97:                                               ; preds = %155, %93
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  %104 = load i32, i32* %102, align 4
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 32
  store i32 %109, i32* %5, align 4
  br label %155

110:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %149, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = load i16*, i16** @rrhs, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %120, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %138, %119
  %127 = load i16*, i16** %8, align 8
  %128 = load i16*, i16** %11, align 8
  %129 = icmp ult i16* %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i16*, i16** %8, align 8
  %132 = load i16, i16* %131, align 2
  %133 = sext i16 %132 to i32
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i1 [ false, %126 ], [ %135, %130 ]
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load i16*, i16** %8, align 8
  %140 = getelementptr inbounds i16, i16* %139, i32 1
  store i16* %140, i16** %8, align 8
  %141 = load i16, i16* %139, align 2
  %142 = load i16*, i16** @itemsetend, align 8
  %143 = getelementptr inbounds i16, i16* %142, i32 1
  store i16* %143, i16** @itemsetend, align 8
  store i16 %141, i16* %142, align 2
  br label %126, !llvm.loop !14

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = trunc i32 %145 to i16
  %147 = load i16*, i16** @itemsetend, align 8
  %148 = getelementptr inbounds i16, i16* %147, i32 1
  store i16* %148, i16** @itemsetend, align 8
  store i16 %146, i16* %147, align 2
  br label %149

149:                                              ; preds = %144, %114
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 1
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %111, !llvm.loop !15

154:                                              ; preds = %111
  br label %155

155:                                              ; preds = %154, %107
  br label %97, !llvm.loop !16

156:                                              ; preds = %97
  br label %157

157:                                              ; preds = %161, %156
  %158 = load i16*, i16** %8, align 8
  %159 = load i16*, i16** %11, align 8
  %160 = icmp ult i16* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i16*, i16** %8, align 8
  %163 = getelementptr inbounds i16, i16* %162, i32 1
  store i16* %163, i16** %8, align 8
  %164 = load i16, i16* %162, align 2
  %165 = load i16*, i16** @itemsetend, align 8
  %166 = getelementptr inbounds i16, i16* %165, i32 1
  store i16* %166, i16** @itemsetend, align 8
  store i16 %164, i16* %165, align 2
  br label %157, !llvm.loop !17

167:                                              ; preds = %157
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalize_closure() #0 {
  %1 = load i16*, i16** @itemset, align 8
  %2 = icmp ne i16* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i16*, i16** @itemset, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* noundef %5) #3
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @ruleset, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @ruleset, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* noundef %11) #3
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @fderives, align 8
  %14 = load i32, i32* @ntokens, align 4
  %15 = load i32, i32* @rulesetsize, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load i32*, i32** @fderives, align 8
  %22 = load i32, i32* @ntokens, align 4
  %23 = load i32, i32* @rulesetsize, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* noundef %27) #3
  br label %28

28:                                               ; preds = %20, %12
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
