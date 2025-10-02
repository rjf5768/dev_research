; ModuleID = './cofactor.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cofactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@cdata = external dso_local global %struct.cdata_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"BINATE_SPLIT_SELECT: split against %d\0A\00", align 1
@verbose_debug = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cl=%s\0Acr=%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cofactor(i32** noundef %0, i32* noundef %1) #0 {
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32*, i32** %0, i64 1
  %6 = bitcast i32** %5 to i32***
  %7 = load i32**, i32*** %6, align 8
  %8 = ptrtoint i32** %7 to i64
  %9 = ptrtoint i32** %0 to i64
  %10 = sub i64 %8, %9
  %11 = shl i64 %10, 29
  %sext = add i64 %11, 8589934592
  %12 = ashr exact i64 %sext, 29
  %13 = and i64 %12, -8
  %14 = call i8* @malloc(i64 noundef %13) #3
  %15 = bitcast i8* %14 to i32**
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %17 = icmp slt i32 %16, 33
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %21 = add nsw i32 %20, -1
  %22 = ashr i32 %21, 5
  %23 = add nsw i32 %22, 2
  %phi.cast = sext i32 %23 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i64 [ 8, %18 ], [ %phi.bo, %19 ]
  %26 = call i8* @malloc(i64 noundef %25) #3
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %29 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %27, i32 noundef %28) #3
  %30 = load i32*, i32** %0, align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %32 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %31, i32* noundef %1) #3
  %33 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %29, i32* noundef %30, i32* noundef %32) #3
  store i32* %33, i32** %15, align 8
  %34 = getelementptr inbounds i32*, i32** %15, i64 2
  %35 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %36

36:                                               ; preds = %117, %24
  %.04 = phi i32** [ %35, %24 ], [ %37, %117 ]
  %.03 = phi i32** [ %34, %24 ], [ %.2, %117 ]
  %37 = getelementptr inbounds i32*, i32** %.04, i64 1
  %38 = load i32*, i32** %.04, align 8
  %.not = icmp eq i32* %38, null
  br i1 %.not, label %118, label %39

39:                                               ; preds = %36
  %.not5 = icmp eq i32* %38, %1
  br i1 %.not5, label %117, label %40

40:                                               ; preds = %39
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 15), align 4
  %.not6 = icmp eq i32 %41, -1
  br i1 %.not6, label %75, label %42

42:                                               ; preds = %40
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds i32, i32* %1, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = lshr i32 %49, 1
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 14), align 8
  %54 = and i32 %53, %52
  %.not9 = icmp eq i32 %54, 0
  br i1 %.not9, label %56, label %55

55:                                               ; preds = %42
  br label %116

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %72, %56
  %.02 = phi i32 [ 1, %56 ], [ %73, %72 ]
  %58 = icmp slt i32 %.02, %41
  br i1 %58, label %59, label %74

59:                                               ; preds = %57
  %60 = zext i32 %.02 to i64
  %61 = getelementptr inbounds i32, i32* %38, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %.02 to i64
  %64 = getelementptr inbounds i32, i32* %1, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = lshr i32 %66, 1
  %68 = or i32 %66, %67
  %69 = and i32 %68, 1431655765
  %.not10 = icmp eq i32 %69, 1431655765
  br i1 %.not10, label %71, label %70

70:                                               ; preds = %59
  br label %116

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.02, 1
  br label %57, !llvm.loop !4

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  br label %77

77:                                               ; preds = %112, %75
  %.0 = phi i32 [ %76, %75 ], [ %113, %112 ]
  %78 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %79 = icmp slt i32 %.0, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %77
  %81 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %82 = sext i32 %.0 to i64
  %83 = getelementptr inbounds i32*, i32** %81, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  %86 = sext i32 %.0 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  %90 = sext i32 %.0 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  br label %93

93:                                               ; preds = %108, %80
  %.01 = phi i32 [ %92, %80 ], [ %109, %108 ]
  %.not7 = icmp sgt i32 %.01, %88
  br i1 %.not7, label %110, label %94

94:                                               ; preds = %93
  %95 = sext i32 %.01 to i64
  %96 = getelementptr inbounds i32, i32* %38, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %.01 to i64
  %99 = getelementptr inbounds i32, i32* %1, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %97, %100
  %102 = sext i32 %.01 to i64
  %103 = getelementptr inbounds i32, i32* %84, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %101, %104
  %.not8 = icmp eq i32 %105, 0
  br i1 %.not8, label %107, label %106

106:                                              ; preds = %94
  br label %111

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107
  %109 = add nsw i32 %.01, 1
  br label %93, !llvm.loop !6

110:                                              ; preds = %93
  br label %116

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = add nsw i32 %.0, 1
  br label %77, !llvm.loop !7

114:                                              ; preds = %77
  %115 = getelementptr inbounds i32*, i32** %.03, i64 1
  store i32* %38, i32** %.03, align 8
  br label %116

116:                                              ; preds = %114, %110, %70, %55
  %.1 = phi i32** [ %.03, %55 ], [ %.03, %70 ], [ %.03, %110 ], [ %115, %114 ]
  br label %117

117:                                              ; preds = %116, %39
  %.2 = phi i32** [ %.1, %116 ], [ %.03, %39 ]
  br label %36, !llvm.loop !8

118:                                              ; preds = %36
  %119 = getelementptr inbounds i32*, i32** %.03, i64 1
  store i32* null, i32** %.03, align 8
  %120 = getelementptr inbounds i32*, i32** %15, i64 1
  %121 = bitcast i32** %120 to i32***
  store i32** %119, i32*** %121, align 8
  ret i32** %15
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_or(...) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i32* @set_diff(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @scofactor(i32** noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %5 = getelementptr inbounds i32*, i32** %4, i64 1
  %6 = load i32*, i32** %5, align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i32*, i32** %0, i64 1
  %16 = bitcast i32** %15 to i32***
  %17 = load i32**, i32*** %16, align 8
  %18 = ptrtoint i32** %17 to i64
  %19 = ptrtoint i32** %0 to i64
  %20 = sub i64 %18, %19
  %21 = shl i64 %20, 29
  %sext = add i64 %21, 8589934592
  %22 = ashr exact i64 %sext, 29
  %23 = and i64 %22, -8
  %24 = call i8* @malloc(i64 noundef %23) #3
  %25 = bitcast i8* %24 to i32**
  %26 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %27 = icmp slt i32 %26, 33
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %31 = add nsw i32 %30, -1
  %32 = ashr i32 %31, 5
  %33 = add nsw i32 %32, 2
  %phi.cast = sext i32 %33 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8, %28 ], [ %phi.bo, %29 ]
  %36 = call i8* @malloc(i64 noundef %35) #3
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %39 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %37, i32 noundef %38) #3
  %40 = load i32*, i32** %0, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %42 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %6, i32* noundef %41, i32* noundef %1) #3
  %43 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %39, i32* noundef %40, i32* noundef %42) #3
  store i32* %43, i32** %25, align 8
  %44 = getelementptr inbounds i32*, i32** %25, i64 2
  %45 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %6, i32* noundef %48, i32* noundef %1) #3
  %50 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %51

51:                                               ; preds = %70, %34
  %.02 = phi i32** [ %44, %34 ], [ %.2, %70 ]
  %.01 = phi i32** [ %50, %34 ], [ %52, %70 ]
  %52 = getelementptr inbounds i32*, i32** %.01, i64 1
  %53 = load i32*, i32** %.01, align 8
  %.not = icmp eq i32* %53, null
  br i1 %.not, label %71, label %54

54:                                               ; preds = %51
  %.not3 = icmp eq i32* %53, %1
  br i1 %.not3, label %70, label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %67, %55
  %.0 = phi i32 [ %10, %55 ], [ %68, %67 ]
  %57 = sext i32 %.0 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %.0 to i64
  %61 = getelementptr inbounds i32, i32* %6, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %.not4 = icmp eq i32 %63, 0
  br i1 %.not4, label %66, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds i32*, i32** %.02, i64 1
  store i32* %53, i32** %.02, align 8
  br label %69

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %.0, 1
  %.not5.not = icmp slt i32 %.0, %14
  br i1 %.not5.not, label %56, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %67
  br label %69

69:                                               ; preds = %.loopexit, %64
  %.1 = phi i32** [ %65, %64 ], [ %.02, %.loopexit ]
  br label %70

70:                                               ; preds = %69, %54
  %.2 = phi i32** [ %.1, %69 ], [ %.02, %54 ]
  br label %51, !llvm.loop !10

71:                                               ; preds = %51
  %72 = getelementptr inbounds i32*, i32** %.02, i64 1
  store i32* null, i32** %.02, align 8
  %73 = getelementptr inbounds i32*, i32** %25, i64 1
  %74 = bitcast i32** %73 to i32***
  store i32** %72, i32*** %74, align 8
  ret i32** %25
}

declare dso_local i32* @set_and(...) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @massive_count(i32** nocapture noundef readonly %0) #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 0), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  br label %4

4:                                                ; preds = %9, %1
  %.06.in = phi i32 [ %3, %1 ], [ %.06, %9 ]
  %.06 = add nsw i32 %.06.in, -1
  %5 = icmp sgt i32 %.06.in, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = sext i32 %.06 to i64
  %8 = getelementptr inbounds i32, i32* %2, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %6
  br label %4, !llvm.loop !11

10:                                               ; preds = %4
  %11 = load i32*, i32** %0, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %13 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %14

14:                                               ; preds = %244, %10
  %.05 = phi i32** [ %13, %10 ], [ %15, %244 ]
  %15 = getelementptr inbounds i32*, i32** %.05, i64 1
  %16 = load i32*, i32** %.05, align 8
  %.not = icmp eq i32* %16, null
  br i1 %.not, label %245, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %16, align 4
  %19 = and i32 %18, 1023
  br label %20

20:                                               ; preds = %242, %17
  %.07 = phi i32 [ %19, %17 ], [ %243, %242 ]
  %21 = icmp sgt i32 %.07, 0
  br i1 %21, label %22, label %244

22:                                               ; preds = %20
  %23 = sext i32 %.07 to i64
  %24 = getelementptr inbounds i32, i32* %12, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %.07 to i64
  %27 = getelementptr inbounds i32, i32* %16, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %.07 to i64
  %30 = getelementptr inbounds i32, i32* %11, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %25, %33
  %.not24 = icmp eq i32 %34, 0
  br i1 %.not24, label %241, label %35

35:                                               ; preds = %22
  %36 = shl i32 %.07, 5
  %37 = add i32 %36, -32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %2, i64 %38
  %.not25 = icmp ult i32 %34, 16777216
  br i1 %.not25, label %88, label %40

40:                                               ; preds = %35
  %.not53 = icmp sgt i32 %34, -1
  br i1 %.not53, label %45, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds i32, i32* %39, i64 31
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = and i32 %34, 1073741824
  %.not54 = icmp eq i32 %46, 0
  br i1 %.not54, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, i32* %39, i64 30
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = and i32 %34, 536870912
  %.not55 = icmp eq i32 %52, 0
  br i1 %.not55, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds i32, i32* %39, i64 29
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %53, %51
  %58 = and i32 %34, 268435456
  %.not56 = icmp eq i32 %58, 0
  br i1 %.not56, label %63, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds i32, i32* %39, i64 28
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = and i32 %34, 134217728
  %.not57 = icmp eq i32 %64, 0
  br i1 %.not57, label %69, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds i32, i32* %39, i64 27
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = and i32 %34, 67108864
  %.not58 = icmp eq i32 %70, 0
  br i1 %.not58, label %75, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds i32, i32* %39, i64 26
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %71, %69
  %76 = and i32 %34, 33554432
  %.not59 = icmp eq i32 %76, 0
  br i1 %.not59, label %81, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds i32, i32* %39, i64 25
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %77, %75
  %82 = and i32 %34, 16777216
  %.not60 = icmp eq i32 %82, 0
  br i1 %.not60, label %87, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds i32, i32* %39, i64 24
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %83, %81
  br label %88

88:                                               ; preds = %87, %35
  %89 = and i32 %34, 16711680
  %.not26 = icmp eq i32 %89, 0
  br i1 %.not26, label %139, label %90

90:                                               ; preds = %88
  %91 = and i32 %34, 8388608
  %.not45 = icmp eq i32 %91, 0
  br i1 %.not45, label %96, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds i32, i32* %39, i64 23
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %92, %90
  %97 = and i32 %34, 4194304
  %.not46 = icmp eq i32 %97, 0
  br i1 %.not46, label %102, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds i32, i32* %39, i64 22
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %98, %96
  %103 = and i32 %34, 2097152
  %.not47 = icmp eq i32 %103, 0
  br i1 %.not47, label %108, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds i32, i32* %39, i64 21
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %104, %102
  %109 = and i32 %34, 1048576
  %.not48 = icmp eq i32 %109, 0
  br i1 %.not48, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds i32, i32* %39, i64 20
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %110, %108
  %115 = and i32 %34, 524288
  %.not49 = icmp eq i32 %115, 0
  br i1 %.not49, label %120, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds i32, i32* %39, i64 19
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %116, %114
  %121 = and i32 %34, 262144
  %.not50 = icmp eq i32 %121, 0
  br i1 %.not50, label %126, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds i32, i32* %39, i64 18
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %122, %120
  %127 = and i32 %34, 131072
  %.not51 = icmp eq i32 %127, 0
  br i1 %.not51, label %132, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds i32, i32* %39, i64 17
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %128, %126
  %133 = and i32 %34, 65536
  %.not52 = icmp eq i32 %133, 0
  br i1 %.not52, label %138, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds i32, i32* %39, i64 16
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %134, %132
  br label %139

139:                                              ; preds = %138, %88
  %140 = and i32 %34, 65280
  %.not27 = icmp eq i32 %140, 0
  br i1 %.not27, label %190, label %141

141:                                              ; preds = %139
  %142 = and i32 %34, 32768
  %.not37 = icmp eq i32 %142, 0
  br i1 %.not37, label %147, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds i32, i32* %39, i64 15
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %143, %141
  %148 = and i32 %34, 16384
  %.not38 = icmp eq i32 %148, 0
  br i1 %.not38, label %153, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds i32, i32* %39, i64 14
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %149, %147
  %154 = and i32 %34, 8192
  %.not39 = icmp eq i32 %154, 0
  br i1 %.not39, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds i32, i32* %39, i64 13
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %155, %153
  %160 = and i32 %34, 4096
  %.not40 = icmp eq i32 %160, 0
  br i1 %.not40, label %165, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds i32, i32* %39, i64 12
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %161, %159
  %166 = and i32 %34, 2048
  %.not41 = icmp eq i32 %166, 0
  br i1 %.not41, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds i32, i32* %39, i64 11
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %167, %165
  %172 = and i32 %34, 1024
  %.not42 = icmp eq i32 %172, 0
  br i1 %.not42, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds i32, i32* %39, i64 10
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %173, %171
  %178 = and i32 %34, 512
  %.not43 = icmp eq i32 %178, 0
  br i1 %.not43, label %183, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds i32, i32* %39, i64 9
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %179, %177
  %184 = and i32 %34, 256
  %.not44 = icmp eq i32 %184, 0
  br i1 %.not44, label %189, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds i32, i32* %39, i64 8
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %185, %183
  br label %190

190:                                              ; preds = %189, %139
  %191 = and i32 %34, 255
  %.not28 = icmp eq i32 %191, 0
  br i1 %.not28, label %240, label %192

192:                                              ; preds = %190
  %193 = and i32 %34, 128
  %.not29 = icmp eq i32 %193, 0
  br i1 %.not29, label %198, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds i32, i32* %39, i64 7
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %194, %192
  %199 = and i32 %34, 64
  %.not30 = icmp eq i32 %199, 0
  br i1 %.not30, label %204, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds i32, i32* %39, i64 6
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %200, %198
  %205 = and i32 %34, 32
  %.not31 = icmp eq i32 %205, 0
  br i1 %.not31, label %210, label %206

206:                                              ; preds = %204
  %207 = getelementptr inbounds i32, i32* %39, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %206, %204
  %211 = and i32 %34, 16
  %.not32 = icmp eq i32 %211, 0
  br i1 %.not32, label %216, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds i32, i32* %39, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %212, %210
  %217 = and i32 %34, 8
  %.not33 = icmp eq i32 %217, 0
  br i1 %.not33, label %222, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds i32, i32* %39, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %218, %216
  %223 = and i32 %34, 4
  %.not34 = icmp eq i32 %223, 0
  br i1 %.not34, label %228, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds i32, i32* %39, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %224, %222
  %229 = and i32 %34, 2
  %.not35 = icmp eq i32 %229, 0
  br i1 %.not35, label %234, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds i32, i32* %39, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %230, %228
  %235 = and i32 %34, 1
  %.not36 = icmp eq i32 %235, 0
  br i1 %.not36, label %239, label %236

236:                                              ; preds = %234
  %237 = load i32, i32* %39, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %39, align 4
  br label %239

239:                                              ; preds = %236, %234
  br label %240

240:                                              ; preds = %239, %190
  br label %241

241:                                              ; preds = %240, %22
  br label %242

242:                                              ; preds = %241
  %243 = add nsw i32 %.07, -1
  br label %20, !llvm.loop !12

244:                                              ; preds = %20
  br label %14, !llvm.loop !13

245:                                              ; preds = %14
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 5), align 4
  br label %246

246:                                              ; preds = %360, %245
  %.021 = phi i32 [ 0, %245 ], [ %361, %360 ]
  %.010 = phi i32 [ -1, %245 ], [ %.515, %360 ]
  %.08 = phi i32 [ 0, %245 ], [ %.19, %360 ]
  %.01 = phi i32 [ 0, %245 ], [ %.34, %360 ]
  %.0 = phi i32 [ 32000, %245 ], [ %.5, %360 ]
  %247 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %248 = icmp slt i32 %.021, %247
  br i1 %248, label %249, label %362

249:                                              ; preds = %246
  %250 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %251 = icmp slt i32 %.021, %250
  br i1 %251, label %252, label %276

252:                                              ; preds = %249
  %253 = shl nuw nsw i32 %.021, 1
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %2, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = shl nuw nsw i32 %.021, 1
  %258 = or i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %2, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %256, 0
  %263 = zext i1 %262 to i32
  %264 = icmp sgt i32 %261, 0
  %265 = zext i1 %264 to i32
  %266 = add nuw nsw i32 %263, %265
  %267 = add nsw i32 %256, %261
  %268 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %269 = zext i32 %.021 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 %267, i32* %270, align 4
  %271 = icmp sgt i32 %256, %261
  br i1 %271, label %272, label %273

272:                                              ; preds = %252
  br label %274

273:                                              ; preds = %252
  br label %274

274:                                              ; preds = %273, %272
  %275 = phi i32 [ %256, %272 ], [ %261, %273 ]
  br label %310

276:                                              ; preds = %249
  %277 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %278 = zext i32 %.021 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32 0, i32* %279, align 4
  %280 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %281 = zext i32 %.021 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %285 = zext i32 %.021 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  br label %288

288:                                              ; preds = %307, %276
  %.022 = phi i32 [ %287, %276 ], [ %308, %307 ]
  %.019 = phi i32 [ 0, %276 ], [ %303, %307 ]
  %.016 = phi i32 [ 0, %276 ], [ %.117, %307 ]
  %.not23 = icmp sgt i32 %.022, %283
  br i1 %.not23, label %309, label %289

289:                                              ; preds = %288
  %290 = sext i32 %.022 to i64
  %291 = getelementptr inbounds i32, i32* %2, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %294 = zext i32 %.021 to i64
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, %292
  store i32 %297, i32* %295, align 4
  %298 = sext i32 %.022 to i64
  %299 = getelementptr inbounds i32, i32* %2, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = icmp sgt i32 %300, 0
  %302 = zext i1 %301 to i32
  %303 = add nuw nsw i32 %.019, %302
  %304 = icmp sgt i32 %303, %.016
  br i1 %304, label %305, label %306

305:                                              ; preds = %289
  br label %306

306:                                              ; preds = %305, %289
  %.117 = phi i32 [ %303, %305 ], [ %.016, %289 ]
  br label %307

307:                                              ; preds = %306
  %308 = add nsw i32 %.022, 1
  br label %288, !llvm.loop !14

309:                                              ; preds = %288
  br label %310

310:                                              ; preds = %309, %274
  %.120 = phi i32 [ %266, %274 ], [ %.019, %309 ]
  %.218 = phi i32 [ %275, %274 ], [ %.016, %309 ]
  %311 = icmp sgt i32 %.120, %.08
  br i1 %311, label %312, label %317

312:                                              ; preds = %310
  %313 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %314 = zext i32 %.021 to i64
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  %316 = load i32, i32* %315, align 4
  br label %343

317:                                              ; preds = %310
  %318 = icmp eq i32 %.120, %.08
  br i1 %318, label %319, label %342

319:                                              ; preds = %317
  %320 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %321 = zext i32 %.021 to i64
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp sgt i32 %323, %.01
  br i1 %324, label %325, label %330

325:                                              ; preds = %319
  %326 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %327 = zext i32 %.021 to i64
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  br label %341

330:                                              ; preds = %319
  %331 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %332 = zext i32 %.021 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, %.01
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = icmp slt i32 %.218, %.0
  br i1 %337, label %338, label %339

338:                                              ; preds = %336
  br label %339

339:                                              ; preds = %338, %336
  %.111 = phi i32 [ %.021, %338 ], [ %.010, %336 ]
  %.1 = phi i32 [ %.218, %338 ], [ %.0, %336 ]
  br label %340

340:                                              ; preds = %339, %330
  %.212 = phi i32 [ %.111, %339 ], [ %.010, %330 ]
  %.2 = phi i32 [ %.1, %339 ], [ %.0, %330 ]
  br label %341

341:                                              ; preds = %340, %325
  %.313 = phi i32 [ %.021, %325 ], [ %.212, %340 ]
  %.12 = phi i32 [ %329, %325 ], [ %.01, %340 ]
  %.3 = phi i32 [ %.218, %325 ], [ %.2, %340 ]
  br label %342

342:                                              ; preds = %341, %317
  %.414 = phi i32 [ %.313, %341 ], [ %.010, %317 ]
  %.23 = phi i32 [ %.12, %341 ], [ %.01, %317 ]
  %.4 = phi i32 [ %.3, %341 ], [ %.0, %317 ]
  br label %343

343:                                              ; preds = %342, %312
  %.515 = phi i32 [ %.021, %312 ], [ %.414, %342 ]
  %.19 = phi i32 [ %.120, %312 ], [ %.08, %342 ]
  %.34 = phi i32 [ %316, %312 ], [ %.23, %342 ]
  %.5 = phi i32 [ %.218, %312 ], [ %.4, %342 ]
  %344 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2), align 8
  %345 = zext i32 %.021 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32 %.120, i32* %346, align 4
  %347 = icmp eq i32 %.120, 1
  %348 = zext i1 %347 to i32
  %349 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3), align 8
  %350 = zext i32 %.021 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32 %348, i32* %351, align 4
  %352 = icmp sgt i32 %.120, 0
  %353 = zext i1 %352 to i32
  %354 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 4), align 8
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 4), align 8
  %356 = icmp eq i32 %.120, 1
  %357 = zext i1 %356 to i32
  %358 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 5), align 4
  %359 = add nsw i32 %358, %357
  store i32 %359, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 5), align 4
  br label %360

360:                                              ; preds = %343
  %361 = add nuw nsw i32 %.021, 1
  br label %246, !llvm.loop !15

362:                                              ; preds = %246
  store i32 %.010, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 6), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @binate_split_select(i32** nocapture noundef readonly %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 6), align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %0, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %12 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %11, i32* noundef %15) #3
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %2, i32* noundef %17, i32* noundef %21) #3
  %23 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %40, %4
  %.01 = phi i32 [ %26, %4 ], [ %41, %40 ]
  %.0 = phi i32 [ 0, %4 ], [ %.1, %40 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %42, label %28

28:                                               ; preds = %27
  %29 = ashr i32 %.01, 5
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %10, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %.01, 31
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %.not9 = icmp eq i32 %36, 0
  br i1 %.not9, label %37, label %39

37:                                               ; preds = %28
  %38 = add nsw i32 %.0, 1
  br label %39

39:                                               ; preds = %37, %28
  %.1 = phi i32 [ %.0, %28 ], [ %38, %37 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.01, 1
  br label %27, !llvm.loop !16

42:                                               ; preds = %27
  %43 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %44 = sext i32 %5 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %.0, 2
  br label %48

48:                                               ; preds = %70, %42
  %.12 = phi i32 [ %46, %42 ], [ %71, %70 ]
  %.2 = phi i32 [ %47, %42 ], [ %.3, %70 ]
  %49 = icmp sgt i32 %.2, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %48
  %51 = ashr i32 %.12, 5
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %10, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %.12, 31
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %.not8 = icmp eq i32 %58, 0
  br i1 %.not8, label %59, label %69

59:                                               ; preds = %50
  %60 = add nsw i32 %.2, -1
  %61 = and i32 %.12, 31
  %62 = shl i32 1, %61
  %63 = ashr i32 %.12, 5
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %1, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %59, %50
  %.3 = phi i32 [ %.2, %50 ], [ %60, %59 ]
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %.12, 1
  br label %48, !llvm.loop !17

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %93, %72
  %.23 = phi i32 [ %.12, %72 ], [ %94, %93 ]
  %.not4 = icmp sgt i32 %.23, %9
  br i1 %.not4, label %95, label %74

74:                                               ; preds = %73
  %75 = ashr i32 %.23, 5
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %10, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %.23, 31
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %.not7 = icmp eq i32 %82, 0
  br i1 %.not7, label %83, label %92

83:                                               ; preds = %74
  %84 = and i32 %.23, 31
  %85 = shl i32 1, %84
  %86 = ashr i32 %.23, 5
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %2, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %74
  br label %93

93:                                               ; preds = %92
  %94 = add nsw i32 %.23, 1
  br label %73, !llvm.loop !18

95:                                               ; preds = %73
  %96 = load i32, i32* @debug, align 4
  %97 = and i32 %96, %3
  %.not5 = icmp eq i32 %97, 0
  br i1 %.not5, label %106, label %98

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %5) #3
  %100 = load i32, i32* @verbose_debug, align 4
  %.not6 = icmp eq i32 %100, 0
  br i1 %.not6, label %105, label %101

101:                                              ; preds = %98
  %102 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %1) #3
  %103 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* noundef %2) #3
  %104 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* noundef %102, i8* noundef %103) #3
  br label %105

105:                                              ; preds = %101, %98
  br label %106

106:                                              ; preds = %105, %95
  ret i32 %5
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i8* @pc2(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube1list(%struct.set_family* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 3
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = call i8* @malloc(i64 noundef %6) #3
  %8 = bitcast i8* %7 to i32**
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %10 = icmp slt i32 %9, 33
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %14 = add nsw i32 %13, -1
  %15 = ashr i32 %14, 5
  %16 = add nsw i32 %15, 2
  %phi.cast = sext i32 %16 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i64 [ 8, %11 ], [ %phi.bo, %12 ]
  %19 = call i8* @malloc(i64 noundef %18) #3
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %22 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %20, i32 noundef %21) #3
  store i32* %22, i32** %8, align 8
  %23 = getelementptr inbounds i32*, i32** %8, i64 2
  %24 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  br label %33

33:                                               ; preds = %36, %17
  %.01 = phi i32* [ %25, %17 ], [ %41, %36 ]
  %.0 = phi i32** [ %23, %17 ], [ %37, %36 ]
  %34 = icmp ult i32* %.01, %32
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  store i32* %.01, i32** %.0, align 8
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds i32*, i32** %.0, i64 1
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %.01, i64 %40
  br label %33, !llvm.loop !19

42:                                               ; preds = %33
  %43 = getelementptr inbounds i32*, i32** %.0, i64 1
  store i32* null, i32** %.0, align 8
  %44 = getelementptr inbounds i32*, i32** %8, i64 1
  %45 = bitcast i32** %44 to i32***
  store i32** %43, i32*** %45, align 8
  ret i32** %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube2list(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %4, %6
  %8 = add nsw i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = call i8* @malloc(i64 noundef %10) #3
  %12 = bitcast i8* %11 to i32**
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %14 = icmp slt i32 %13, 33
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %18 = add nsw i32 %17, -1
  %19 = ashr i32 %18, 5
  %20 = add nsw i32 %19, 2
  %phi.cast = sext i32 %20 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i64 [ 8, %15 ], [ %phi.bo, %16 ]
  %23 = call i8* @malloc(i64 noundef %22) #3
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %26 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %24, i32 noundef %25) #3
  store i32* %26, i32** %12, align 8
  %27 = getelementptr inbounds i32*, i32** %12, i64 2
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  br label %37

37:                                               ; preds = %40, %21
  %.01 = phi i32* [ %29, %21 ], [ %45, %40 ]
  %.0 = phi i32** [ %27, %21 ], [ %41, %40 ]
  %38 = icmp ult i32* %.01, %36
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  store i32* %.01, i32** %.0, align 8
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds i32*, i32** %.0, i64 1
  %42 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %.01, i64 %44
  br label %37, !llvm.loop !20

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  br label %56

56:                                               ; preds = %59, %46
  %.12 = phi i32* [ %48, %46 ], [ %64, %59 ]
  %.1 = phi i32** [ %.0, %46 ], [ %60, %59 ]
  %57 = icmp ult i32* %.12, %55
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  store i32* %.12, i32** %.1, align 8
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i32*, i32** %.1, i64 1
  %61 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %.12, i64 %63
  br label %56, !llvm.loop !21

65:                                               ; preds = %56
  %66 = getelementptr inbounds i32*, i32** %.1, i64 1
  store i32* null, i32** %.1, align 8
  %67 = getelementptr inbounds i32*, i32** %12, i64 1
  %68 = bitcast i32** %67 to i32***
  store i32** %66, i32*** %68, align 8
  ret i32** %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @cube3list(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* nocapture noundef readonly %1, %struct.set_family* nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %8, %10
  %12 = add nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = call i8* @malloc(i64 noundef %14) #3
  %16 = bitcast i8* %15 to i32**
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %18 = icmp slt i32 %17, 33
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %22 = add nsw i32 %21, -1
  %23 = ashr i32 %22, 5
  %24 = add nsw i32 %23, 2
  %phi.cast = sext i32 %24 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i64 [ 8, %19 ], [ %phi.bo, %20 ]
  %27 = call i8* @malloc(i64 noundef %26) #3
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %30 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %28, i32 noundef %29) #3
  store i32* %30, i32** %16, align 8
  %31 = getelementptr inbounds i32*, i32** %16, i64 2
  %32 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  br label %41

41:                                               ; preds = %44, %25
  %.01 = phi i32* [ %33, %25 ], [ %49, %44 ]
  %.0 = phi i32** [ %31, %25 ], [ %45, %44 ]
  %42 = icmp ult i32* %.01, %40
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  store i32* %.01, i32** %.0, align 8
  br label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds i32*, i32** %.0, i64 1
  %46 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %.01, i64 %48
  br label %41, !llvm.loop !22

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  br label %60

60:                                               ; preds = %63, %50
  %.12 = phi i32* [ %52, %50 ], [ %68, %63 ]
  %.1 = phi i32** [ %.0, %50 ], [ %64, %63 ]
  %61 = icmp ult i32* %.12, %59
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  store i32* %.12, i32** %.1, align 8
  br label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds i32*, i32** %.1, i64 1
  %65 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %.12, i64 %67
  br label %60, !llvm.loop !23

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  br label %79

79:                                               ; preds = %82, %69
  %.23 = phi i32* [ %71, %69 ], [ %87, %82 ]
  %.2 = phi i32** [ %.1, %69 ], [ %83, %82 ]
  %80 = icmp ult i32* %.23, %78
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  store i32* %.23, i32** %.2, align 8
  br label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds i32*, i32** %.2, i64 1
  %84 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %.23, i64 %86
  br label %79, !llvm.loop !24

88:                                               ; preds = %79
  %89 = getelementptr inbounds i32*, i32** %.2, i64 1
  store i32* null, i32** %.2, align 8
  %90 = getelementptr inbounds i32*, i32** %16, i64 1
  %91 = bitcast i32** %90 to i32***
  store i32** %89, i32*** %91, align 8
  ret i32** %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cubeunlist(i32** noundef %0) #0 {
  %2 = load i32*, i32** %0, align 8
  %3 = getelementptr inbounds i32*, i32** %0, i64 1
  %4 = bitcast i32** %3 to i32***
  %5 = load i32**, i32*** %4, align 8
  %6 = ptrtoint i32** %5 to i64
  %7 = ptrtoint i32** %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add nsw i64 %9, -3
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %12 = call %struct.set_family* (i64, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i64, i32, ...)*)(i64 noundef %10, i32 noundef %11) #3
  br label %13

13:                                               ; preds = %45, %1
  %.01 = phi i32 [ 2, %1 ], [ %46, %45 ]
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds i32*, i32** %0, i64 %14
  %16 = load i32*, i32** %15, align 8
  %.not = icmp eq i32* %16, null
  br i1 %.not, label %47, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i64 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %.01, -2
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %16, align 4
  %27 = and i32 %26, 1023
  %28 = load i32, i32* %25, align 4
  %29 = and i32 %28, -1024
  %30 = or i32 %29, %27
  store i32 %30, i32* %25, align 4
  br label %31

31:                                               ; preds = %41, %17
  %.0 = phi i32 [ %27, %17 ], [ %42, %41 ]
  %32 = sext i32 %.0 to i64
  %33 = getelementptr inbounds i32, i32* %16, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds i32, i32* %2, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = sext i32 %.0 to i64
  %40 = getelementptr inbounds i32, i32* %25, i64 %39
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = add nsw i32 %.0, -1
  %43 = icmp sgt i32 %.0, 1
  br i1 %43, label %31, label %44, !llvm.loop !25

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !26

47:                                               ; preds = %13
  %48 = getelementptr inbounds i32*, i32** %0, i64 1
  %49 = bitcast i32** %48 to i32***
  %50 = load i32**, i32*** %49, align 8
  %51 = ptrtoint i32** %50 to i64
  %52 = ptrtoint i32** %0 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 3
  %55 = trunc i64 %54 to i32
  %56 = add i32 %55, -3
  %57 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i64 0, i32 3
  store i32 %56, i32* %57, align 4
  ret %struct.set_family* %12
}

declare dso_local %struct.set_family* @sf_new(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @simplify_cubelist(i32** noundef %0) #0 {
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32*, i32** %0, align 8
  %5 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4) #3
  %6 = getelementptr inbounds i32*, i32** %0, i64 1
  %7 = bitcast i32** %6 to i32***
  %8 = load i32**, i32*** %7, align 8
  %9 = ptrtoint i32** %8 to i64
  %10 = ptrtoint i32** %0 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = getelementptr inbounds i32*, i32** %0, i64 2
  %16 = bitcast i32** %15 to i8*
  %17 = sext i32 %14 to i64
  call void @qsort(i8* noundef nonnull %16, i64 noundef %17, i64 noundef 8, i32 (i8*, i8*)* noundef bitcast (i32 (...)* @d1_order to i32 (i8*, i8*)*)) #3
  %18 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %19

19:                                               ; preds = %34, %1
  %.01 = phi i32** [ %18, %1 ], [ %.1, %34 ]
  %.0 = phi i32 [ 3, %1 ], [ %35, %34 ]
  %20 = icmp slt i32 %.0, %14
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = add nsw i32 %.0, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %0, i64 %23
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i32*, i32** %0, i64 %25
  %27 = call i32 (i32**, i32**, ...) bitcast (i32 (...)* @d1_order to i32 (i32**, i32**, ...)*)(i32** noundef nonnull %24, i32** noundef nonnull %26) #3
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %33, label %28

28:                                               ; preds = %21
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i32*, i32** %0, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %.01, i64 1
  store i32* %31, i32** %.01, align 8
  br label %33

33:                                               ; preds = %28, %21
  %.1 = phi i32** [ %32, %28 ], [ %.01, %21 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !27

36:                                               ; preds = %19
  %37 = getelementptr inbounds i32*, i32** %.01, i64 1
  store i32* null, i32** %.01, align 8
  %38 = getelementptr inbounds i32*, i32** %.01, i64 2
  %39 = bitcast i32** %38 to i32***
  store i32** %37, i32*** %39, align 8
  ret i32 undef
}

declare dso_local i32* @set_copy(...) #1

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

declare dso_local i32 @d1_order(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
