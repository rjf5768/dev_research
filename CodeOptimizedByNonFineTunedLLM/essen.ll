; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/essen.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/essen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"ESSENTIAL: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @essential(%struct.set_family** noundef %0, %struct.set_family** noundef %1) #0 {
  %3 = alloca %struct.set_family**, align 8
  %4 = alloca %struct.set_family**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca %struct.set_family*, align 8
  store %struct.set_family** %0, %struct.set_family*** %3, align 8
  store %struct.set_family** %1, %struct.set_family*** %4, align 8
  %10 = load %struct.set_family**, %struct.set_family*** %3, align 8
  %11 = load %struct.set_family*, %struct.set_family** %10, align 8
  store %struct.set_family* %11, %struct.set_family** %8, align 8
  %12 = load %struct.set_family**, %struct.set_family*** %4, align 8
  %13 = load %struct.set_family*, %struct.set_family** %12, align 8
  store %struct.set_family* %13, %struct.set_family** %9, align 8
  %14 = load %struct.set_family*, %struct.set_family** %8, align 8
  %15 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %17 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 10, i32 noundef %16)
  store %struct.set_family* %17, %struct.set_family** %7, align 8
  %18 = load %struct.set_family*, %struct.set_family** %8, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.set_family*, %struct.set_family** %8, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.set_family*, %struct.set_family** %8, align 8
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %21, i64 %29
  store i32* %30, i32** %5, align 8
  br label %31

31:                                               ; preds = %76, %2
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 16384
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1024
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.set_family*, %struct.set_family** %8, align 8
  %49 = load %struct.set_family*, %struct.set_family** %9, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @essen_cube(%struct.set_family* noundef %48, %struct.set_family* noundef %49, i32* noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load i32, i32* @debug, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %58)
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.set_family*, %struct.set_family** %7, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %62, i32* noundef %63)
  store %struct.set_family* %64, %struct.set_family** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -8193
  store i32 %68, i32* %66, align 4
  %69 = load %struct.set_family*, %struct.set_family** %8, align 8
  %70 = getelementptr inbounds %struct.set_family, %struct.set_family* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %61, %47
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74, %35
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.set_family*, %struct.set_family** %8, align 8
  %78 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %6, align 8
  br label %31, !llvm.loop !4

83:                                               ; preds = %31
  %84 = load %struct.set_family*, %struct.set_family** %8, align 8
  %85 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %84)
  %86 = load %struct.set_family**, %struct.set_family*** %3, align 8
  store %struct.set_family* %85, %struct.set_family** %86, align 8
  %87 = load %struct.set_family*, %struct.set_family** %9, align 8
  %88 = load %struct.set_family*, %struct.set_family** %7, align 8
  %89 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %87, %struct.set_family* noundef %88)
  %90 = load %struct.set_family**, %struct.set_family*** %4, align 8
  store %struct.set_family* %89, %struct.set_family** %90, align 8
  %91 = load %struct.set_family*, %struct.set_family** %9, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %91)
  %92 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %92
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
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.set_family*, %struct.set_family** %4, align 8
  %12 = load %struct.set_family*, %struct.set_family** %5, align 8
  %13 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %11, %struct.set_family* noundef %12)
  store %struct.set_family* %13, %struct.set_family** %8, align 8
  %14 = load %struct.set_family*, %struct.set_family** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.set_family* @cb_consensus(%struct.set_family* noundef %14, i32* noundef %15)
  store %struct.set_family* %16, %struct.set_family** %7, align 8
  %17 = load %struct.set_family*, %struct.set_family** %8, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %17)
  %18 = load %struct.set_family*, %struct.set_family** %7, align 8
  %19 = load %struct.set_family*, %struct.set_family** %5, align 8
  %20 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %18, %struct.set_family* noundef %19)
  store i32** %20, i32*** %9, align 8
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** noundef %21, i32* noundef %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32**, i32*** %9, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i32**, i32*** %9, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* noundef %35)
  %36 = load i32**, i32*** %9, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %3
  %39 = load i32**, i32*** %9, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32**, i32*** %9, align 8
  %43 = bitcast i32** %42 to i8*
  call void @free(i8* noundef %43)
  store i32** null, i32*** %9, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.set_family*, %struct.set_family** %7, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %45)
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32** @cube2list(...) #1

declare dso_local i32 @cube_is_covered(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_consensus(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.set_family*, %struct.set_family** %3, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %14 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13)
  store %struct.set_family* %14, %struct.set_family** %8, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %16 = icmp sle i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %20 = sub nsw i32 %19, 1
  %21 = ashr i32 %20, 5
  %22 = add nsw i32 %21, 1
  %23 = add nsw i32 %22, 1
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ 2, %17 ], [ %23, %18 ]
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = call i8* @malloc(i64 noundef %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %31 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %29, i32 noundef %30)
  store i32* %31, i32** %5, align 8
  %32 = load %struct.set_family*, %struct.set_family** %3, align 8
  %33 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.set_family*, %struct.set_family** %3, align 8
  %37 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.set_family*, %struct.set_family** %3, align 8
  %40 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %35, i64 %43
  store i32* %44, i32** %6, align 8
  br label %45

45:                                               ; preds = %71, %24
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* noundef %54, i32* noundef %55)
  switch i32 %56, label %69 [
    i32 0, label %57
    i32 1, label %62
  ]

57:                                               ; preds = %53
  %58 = load %struct.set_family*, %struct.set_family** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call %struct.set_family* @cb_consensus_dist0(%struct.set_family* noundef %58, i32* noundef %59, i32* noundef %60)
  store %struct.set_family* %61, %struct.set_family** %8, align 8
  br label %69

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %4, align 8
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* noundef %63, i32* noundef %64, i32* noundef %65)
  %66 = load %struct.set_family*, %struct.set_family** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %66, i32* noundef %67)
  store %struct.set_family* %68, %struct.set_family** %8, align 8
  br label %69

69:                                               ; preds = %53, %62, %57
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.set_family*, %struct.set_family** %3, align 8
  %73 = getelementptr inbounds %struct.set_family, %struct.set_family* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  br label %45, !llvm.loop !6

78:                                               ; preds = %45
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  %83 = bitcast i32* %82 to i8*
  call void @free(i8* noundef %83)
  store i32* null, i32** %5, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.set_family*, %struct.set_family** %8, align 8
  ret %struct.set_family* %85
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @cdist01(...) #1

declare dso_local void @consensus(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_consensus_dist0(%struct.set_family* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef %24, i32* noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load %struct.set_family*, %struct.set_family** %5, align 8
  store %struct.set_family* %29, %struct.set_family** %4, align 8
  br label %239

30:                                               ; preds = %3
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %32 = icmp sle i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %36 = sub nsw i32 %35, 1
  %37 = ashr i32 %36, 5
  %38 = add nsw i32 %37, 1
  %39 = add nsw i32 %38, 1
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i32 [ 2, %33 ], [ %39, %34 ]
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = call i8* @malloc(i64 noundef %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %47 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %45, i32 noundef %46)
  store i32* %47, i32** %10, align 8
  store i32 0, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1023
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, -1024
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %78, %40
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %66, %72
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %14, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %61, label %82, !llvm.loop !7

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 1023
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, -1024
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %112, %82
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %101, %106
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %15, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %96, label %116, !llvm.loop !8

116:                                              ; preds = %112
  %117 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %184, %116
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %187

122:                                              ; preds = %118
  %123 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef %128, i32* noundef %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %183, label %132

132:                                              ; preds = %122
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 1023
  store i32 %136, i32* %16, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, -1024
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %175, %132
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %151, %156
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, -1
  %169 = and i32 %162, %168
  %170 = or i32 %157, %169
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %146
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %16, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %146, label %179, !llvm.loop !9

179:                                              ; preds = %175
  %180 = load %struct.set_family*, %struct.set_family** %5, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %180, i32* noundef %181)
  store %struct.set_family* %182, %struct.set_family** %5, align 8
  store i32 1, i32* %9, align 4
  br label %183

183:                                              ; preds = %179, %122
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %118, !llvm.loop !10

187:                                              ; preds = %118
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %231, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %190
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 1023
  store i32 %197, i32* %17, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, -1024
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %223, %193
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %212, %217
  %219 = load i32*, i32** %10, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %207
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %17, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %207, label %227, !llvm.loop !11

227:                                              ; preds = %223
  %228 = load %struct.set_family*, %struct.set_family** %5, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %228, i32* noundef %229)
  store %struct.set_family* %230, %struct.set_family** %5, align 8
  br label %231

231:                                              ; preds = %227, %190, %187
  %232 = load i32*, i32** %10, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32*, i32** %10, align 8
  %236 = bitcast i32* %235 to i8*
  call void @free(i8* noundef %236)
  store i32* null, i32** %10, align 8
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.set_family*, %struct.set_family** %5, align 8
  store %struct.set_family* %238, %struct.set_family** %4, align 8
  br label %239

239:                                              ; preds = %237, %28
  %240 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %240
}

declare dso_local i32 @setp_implies(...) #1

declare dso_local i32 @setp_disjoint(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
