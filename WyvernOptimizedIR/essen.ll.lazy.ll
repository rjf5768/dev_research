; ModuleID = './essen.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/essen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"ESSENTIAL: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @essential(%struct.set_family** nocapture noundef %0, %struct.set_family** nocapture noundef %1) #0 {
  %3 = load %struct.set_family*, %struct.set_family** %0, align 8
  %4 = load %struct.set_family*, %struct.set_family** %1, align 8
  %5 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %3) #2
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 10, i32 noundef %6) #2
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i64 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i64 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %9, i64 %15
  br label %17

17:                                               ; preds = %43, %2
  %.01 = phi i32* [ %9, %2 ], [ %47, %43 ]
  %.0 = phi %struct.set_family* [ %7, %2 ], [ %.3, %43 ]
  %18 = icmp ult i32* %.01, %16
  br i1 %18, label %19, label %48

19:                                               ; preds = %17
  %20 = load i32, i32* %.01, align 4
  %21 = and i32 %20, 16384
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %42

22:                                               ; preds = %19
  %23 = load i32, i32* %.01, align 4
  %24 = and i32 %23, 1024
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %41, label %25

25:                                               ; preds = %22
  %26 = call i32 @essen_cube(%struct.set_family* noundef %3, %struct.set_family* noundef %4, i32* noundef nonnull %.01)
  %.not3 = icmp eq i32 %26, 0
  br i1 %.not3, label %40, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* @debug, align 4
  %29 = and i32 %28, 2
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %33, label %30

30:                                               ; preds = %27
  %31 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef nonnull %.01) #2
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %31) #2
  br label %33

33:                                               ; preds = %30, %27
  %34 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.0, i32* noundef nonnull %.01) #2
  %35 = load i32, i32* %.01, align 4
  %36 = and i32 %35, -8193
  store i32 %36, i32* %.01, align 4
  %37 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i64 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %25
  %.1 = phi %struct.set_family* [ %34, %33 ], [ %.0, %25 ]
  br label %41

41:                                               ; preds = %40, %22
  %.2 = phi %struct.set_family* [ %.1, %40 ], [ %.0, %22 ]
  br label %42

42:                                               ; preds = %41, %19
  %.3 = phi %struct.set_family* [ %.0, %19 ], [ %.2, %41 ]
  br label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %.01, i64 %46
  br label %17, !llvm.loop !4

48:                                               ; preds = %17
  %49 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %3) #2
  store %struct.set_family* %49, %struct.set_family** %0, align 8
  %50 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %4, %struct.set_family* noundef %.0) #2
  store %struct.set_family* %50, %struct.set_family** %1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %4) #2
  ret %struct.set_family* %.0
}

declare dso_local %struct.set_family* @sf_active(...) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local %struct.set_family* @sf_inactive(...) #1

declare dso_local %struct.set_family* @sf_join(...) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @essen_cube(%struct.set_family* noundef %0, %struct.set_family* noundef %1, i32* noundef %2) #0 {
  %4 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #2
  %5 = call %struct.set_family* @cb_consensus(%struct.set_family* noundef %4, i32* noundef %2)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %4) #2
  %6 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %5, %struct.set_family* noundef %1) #2
  %7 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** noundef %6, i32* noundef %2) #2
  %8 = load i32*, i32** %6, align 8
  %.not1 = icmp eq i32* %8, null
  br i1 %.not1, label %12, label %9

9:                                                ; preds = %3
  %10 = bitcast i32** %6 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %11)
  store i32* null, i32** %6, align 8
  br label %12

12:                                               ; preds = %9, %3
  br i1 true, label %13, label %15

13:                                               ; preds = %12
  %14 = bitcast i32** %6 to i8*
  call void @free(i8* noundef %14)
  br label %15

15:                                               ; preds = %13, %12
  %.not = icmp eq i32 %7, 0
  %16 = zext i1 %.not to i32
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %5) #2
  ret i32 %16
}

declare dso_local i32** @cube2list(...) #1

declare dso_local i32 @cube_is_covered(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_consensus(%struct.set_family* nocapture noundef readonly %0, i32* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = shl nsw i32 %4, 1
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %5, i32 noundef %6) #2
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %9 = icmp slt i32 %8, 33
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %16

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %13 = add nsw i32 %12, -1
  %14 = ashr i32 %13, 5
  %15 = add nsw i32 %14, 2
  %phi.cast = sext i32 %15 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %16

16:                                               ; preds = %11, %10
  %17 = phi i64 [ 8, %10 ], [ %phi.bo, %11 ]
  %18 = call i8* @malloc(i64 noundef %17) #2
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %21 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %19, i32 noundef %20) #2
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  br label %31

31:                                               ; preds = %42, %16
  %.01 = phi i32* [ %23, %16 ], [ %46, %42 ]
  %.0 = phi %struct.set_family* [ %7, %16 ], [ %.2, %42 ]
  %32 = icmp ult i32* %.01, %30
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %.not2 = icmp eq i32* %.01, %1
  br i1 %.not2, label %41, label %34

34:                                               ; preds = %33
  %35 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* noundef %.01, i32* noundef %1) #2
  switch i32 %35, label %40 [
    i32 0, label %36
    i32 1, label %38
  ]

36:                                               ; preds = %34
  %37 = call %struct.set_family* @cb_consensus_dist0(%struct.set_family* noundef %.0, i32* noundef %.01, i32* noundef %1)
  br label %40

38:                                               ; preds = %34
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* noundef %21, i32* noundef %.01, i32* noundef %1) #2
  %39 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.0, i32* noundef %21) #2
  br label %40

40:                                               ; preds = %38, %36, %34
  %.1 = phi %struct.set_family* [ %.0, %34 ], [ %39, %38 ], [ %37, %36 ]
  br label %41

41:                                               ; preds = %40, %33
  %.2 = phi %struct.set_family* [ %.1, %40 ], [ %.0, %33 ]
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %.01, i64 %45
  br label %31, !llvm.loop !6

47:                                               ; preds = %31
  %.not = icmp eq i32* %21, null
  br i1 %.not, label %50, label %48

48:                                               ; preds = %47
  %49 = bitcast i32* %21 to i8*
  call void @free(i8* noundef %49)
  br label %50

50:                                               ; preds = %48, %47
  ret %struct.set_family* %.0
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @cdist01(...) #1

declare dso_local void @consensus(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_consensus_dist0(%struct.set_family* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32*, i32** %4, i64 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %2) #2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %3
  br label %136

10:                                               ; preds = %3
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %12 = icmp slt i32 %11, 33
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %19

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %16 = add nsw i32 %15, -1
  %17 = ashr i32 %16, 5
  %18 = add nsw i32 %17, 2
  %phi.cast = sext i32 %18 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi i64 [ 8, %13 ], [ %phi.bo, %14 ]
  %21 = call i8* @malloc(i64 noundef %20) #2
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %24 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %22, i32 noundef %23) #2
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, 1023
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -1024
  %29 = or i32 %28, %26
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %41, %19
  %.08 = phi i32 [ %26, %19 ], [ %42, %41 ]
  %31 = sext i32 %.08 to i64
  %32 = getelementptr inbounds i32, i32* %1, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %.08 to i64
  %35 = getelementptr inbounds i32, i32* %2, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = sext i32 %.08 to i64
  %40 = getelementptr inbounds i32, i32* %5, i64 %39
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30
  %42 = add nsw i32 %.08, -1
  %43 = icmp sgt i32 %.08, 1
  br i1 %43, label %30, label %44, !llvm.loop !7

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = and i32 %45, 1023
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -1024
  %49 = or i32 %48, %46
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %60, %44
  %.07 = phi i32 [ %46, %44 ], [ %61, %60 ]
  %51 = sext i32 %.07 to i64
  %52 = getelementptr inbounds i32, i32* %1, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %.07 to i64
  %55 = getelementptr inbounds i32, i32* %2, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = sext i32 %.07 to i64
  %59 = getelementptr inbounds i32, i32* %7, i64 %58
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50
  %61 = add nsw i32 %.07, -1
  %62 = icmp sgt i32 %.07, 1
  br i1 %62, label %50, label %63, !llvm.loop !8

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  br label %65

65:                                               ; preds = %105, %63
  %.05 = phi i32 [ 0, %63 ], [ %.16, %105 ]
  %.04 = phi i32 [ %64, %63 ], [ %106, %105 ]
  %.01 = phi %struct.set_family* [ %0, %63 ], [ %.1, %105 ]
  %66 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %67 = icmp slt i32 %.04, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %65
  %69 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %70 = sext i32 %.04 to i64
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %5, i32* noundef %72) #2
  %.not11 = icmp eq i32 %73, 0
  br i1 %.not11, label %74, label %104

74:                                               ; preds = %68
  %75 = load i32, i32* %2, align 4
  %76 = and i32 %75, 1023
  %77 = load i32, i32* %24, align 4
  %78 = and i32 %77, -1024
  %79 = or i32 %78, %76
  store i32 %79, i32* %24, align 4
  br label %80

80:                                               ; preds = %99, %74
  %.03 = phi i32 [ %76, %74 ], [ %100, %99 ]
  %81 = sext i32 %.03 to i64
  %82 = getelementptr inbounds i32, i32* %2, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %.03 to i64
  %85 = getelementptr inbounds i32, i32* %72, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %83, %86
  %88 = sext i32 %.03 to i64
  %89 = getelementptr inbounds i32, i32* %7, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %.03 to i64
  %92 = getelementptr inbounds i32, i32* %72, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %90, %94
  %96 = or i32 %87, %95
  %97 = sext i32 %.03 to i64
  %98 = getelementptr inbounds i32, i32* %24, i64 %97
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %80
  %100 = add nsw i32 %.03, -1
  %101 = icmp sgt i32 %.03, 1
  br i1 %101, label %80, label %102, !llvm.loop !9

102:                                              ; preds = %99
  %103 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.01, i32* noundef nonnull %24) #2
  br label %104

104:                                              ; preds = %102, %68
  %.16 = phi i32 [ %.05, %68 ], [ 1, %102 ]
  %.1 = phi %struct.set_family* [ %.01, %68 ], [ %103, %102 ]
  br label %105

105:                                              ; preds = %104
  %106 = add nsw i32 %.04, 1
  br label %65, !llvm.loop !10

107:                                              ; preds = %65
  %.not9 = icmp eq i32 %.05, 0
  br i1 %.not9, label %108, label %132

108:                                              ; preds = %107
  %109 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = load i32, i32* %1, align 4
  %113 = and i32 %112, 1023
  %114 = load i32, i32* %24, align 4
  %115 = and i32 %114, -1024
  %116 = or i32 %115, %113
  store i32 %116, i32* %24, align 4
  br label %117

117:                                              ; preds = %127, %111
  %.02 = phi i32 [ %113, %111 ], [ %128, %127 ]
  %118 = sext i32 %.02 to i64
  %119 = getelementptr inbounds i32, i32* %1, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %.02 to i64
  %122 = getelementptr inbounds i32, i32* %2, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %120, %123
  %125 = sext i32 %.02 to i64
  %126 = getelementptr inbounds i32, i32* %24, i64 %125
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %117
  %128 = add nsw i32 %.02, -1
  %129 = icmp sgt i32 %.02, 1
  br i1 %129, label %117, label %130, !llvm.loop !11

130:                                              ; preds = %127
  %131 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.01, i32* noundef nonnull %24) #2
  br label %132

132:                                              ; preds = %130, %108, %107
  %.2 = phi %struct.set_family* [ %.01, %107 ], [ %131, %130 ], [ %.01, %108 ]
  %.not10 = icmp eq i32* %24, null
  br i1 %.not10, label %135, label %133

133:                                              ; preds = %132
  %134 = bitcast i32* %24 to i8*
  call void @free(i8* noundef %134)
  br label %135

135:                                              ; preds = %133, %132
  br label %136

136:                                              ; preds = %135, %9
  %.0 = phi %struct.set_family* [ %0, %9 ], [ %.2, %135 ]
  ret %struct.set_family* %.0
}

declare dso_local i32 @setp_implies(...) #1

declare dso_local i32 @setp_disjoint(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
