; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pops.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheType = type { %struct.precisionType*, i16 }
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pcache = dso_local global [32 x %struct.cacheType] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"palloc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pset\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"lvalue is pNull\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pparm\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"undefined function argument\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @pnorm(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %4 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %5 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %4, i32 0, i32 4
  %6 = getelementptr inbounds [1 x i16], [1 x i16]* %5, i64 0, i64 0
  %7 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %8 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %6, i64 %11
  store i16* %12, i16** %3, align 8
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i16*, i16** %3, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 -1
  store i16* %15, i16** %3, align 8
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i16*, i16** %3, align 8
  %23 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 4
  %25 = getelementptr inbounds [1 x i16], [1 x i16]* %24, i64 0, i64 0
  %26 = icmp ugt i16* %22, %25
  br i1 %26, label %13, label %27, !llvm.loop !4

27:                                               ; preds = %21, %19
  %28 = load i16*, i16** %3, align 8
  %29 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %29, i32 0, i32 4
  %31 = getelementptr inbounds [1 x i16], [1 x i16]* %30, i64 0, i64 0
  %32 = icmp eq i16* %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i16*, i16** %3, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %40 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %39, i32 0, i32 3
  store i8 0, i8* %40, align 2
  br label %41

41:                                               ; preds = %38, %33, %27
  %42 = load i16*, i16** %3, align 8
  %43 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %44 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %43, i32 0, i32 4
  %45 = getelementptr inbounds [1 x i16], [1 x i16]* %44, i64 0, i64 0
  %46 = ptrtoint i16* %42 to i64
  %47 = ptrtoint i16* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 2
  %50 = add nsw i64 %49, 1
  %51 = trunc i64 %50 to i16
  %52 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %53 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %52, i32 0, i32 2
  store i16 %51, i16* %53, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @palloc(i32 noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.cacheType*, align 8
  %6 = trunc i32 %0 to i16
  store i16 %6, i16* %3, align 2
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cacheType, %struct.cacheType* getelementptr inbounds ([32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 0), i64 %13
  store %struct.cacheType* %14, %struct.cacheType** %5, align 8
  %15 = icmp ne %struct.cacheType* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.cacheType*, %struct.cacheType** %5, align 8
  %18 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %17, i32 0, i32 0
  %19 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  store %struct.precisionType* %19, %struct.precisionType** %4, align 8
  %20 = icmp ne %struct.precisionType* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %23 = bitcast %struct.precisionType* %22 to %struct.cacheType*
  %24 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %23, i32 0, i32 0
  %25 = load %struct.precisionType*, %struct.precisionType** %24, align 8
  %26 = load %struct.cacheType*, %struct.cacheType** %5, align 8
  %27 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %26, i32 0, i32 0
  store %struct.precisionType* %25, %struct.precisionType** %27, align 8
  %28 = load %struct.cacheType*, %struct.cacheType** %5, align 8
  %29 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = add i16 %30, -1
  store i16 %31, i16* %29, align 8
  br label %45

32:                                               ; preds = %16, %10, %1
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i64
  %35 = mul i64 2, %34
  %36 = add i64 8, %35
  %37 = call i8* @malloc(i64 noundef %36)
  %38 = bitcast i8* %37 to %struct.precisionType*
  store %struct.precisionType* %38, %struct.precisionType** %4, align 8
  %39 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %40 = icmp eq %struct.precisionType* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = call %struct.precisionType* @errorp(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.precisionType* %42, %struct.precisionType** %4, align 8
  %43 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %43, %struct.precisionType** %2, align 8
  br label %54

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %47 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %46, i32 0, i32 0
  store i16 1, i16* %47, align 2
  %48 = load i16, i16* %3, align 2
  %49 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %50 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %49, i32 0, i32 1
  store i16 %48, i16* %50, align 2
  %51 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %52 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %51, i32 0, i32 2
  store i16 %48, i16* %52, align 2
  %53 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %53, %struct.precisionType** %2, align 8
  br label %54

54:                                               ; preds = %45, %41
  %55 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %55
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pfree(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.cacheType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %6 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 2
  store i16 %7, i16* %3, align 2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cacheType, %struct.cacheType* getelementptr inbounds ([32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 0), i64 %14
  store %struct.cacheType* %15, %struct.cacheType** %4, align 8
  %16 = icmp ne %struct.cacheType* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.cacheType*, %struct.cacheType** %4, align 8
  %19 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.cacheType*, %struct.cacheType** %4, align 8
  %25 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %24, i32 0, i32 0
  %26 = load %struct.precisionType*, %struct.precisionType** %25, align 8
  %27 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %28 = bitcast %struct.precisionType* %27 to %struct.cacheType*
  %29 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %28, i32 0, i32 0
  store %struct.precisionType* %26, %struct.precisionType** %29, align 8
  %30 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %31 = load %struct.cacheType*, %struct.cacheType** %4, align 8
  %32 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %31, i32 0, i32 0
  store %struct.precisionType* %30, %struct.precisionType** %32, align 8
  %33 = load %struct.cacheType*, %struct.cacheType** %4, align 8
  %34 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = add i16 %35, 1
  store i16 %36, i16* %34, align 8
  br label %40

37:                                               ; preds = %17, %11, %1
  %38 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %39 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @free to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %38)
  br label %40

40:                                               ; preds = %37, %23
  ret i32 0
}

declare dso_local i32 @free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psetv(%struct.precisionType** noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType**, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  store %struct.precisionType** %0, %struct.precisionType*** %3, align 8
  store %struct.precisionType* %1, %struct.precisionType** %4, align 8
  %6 = load %struct.precisionType**, %struct.precisionType*** %3, align 8
  %7 = icmp eq %struct.precisionType** %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.precisionType**, %struct.precisionType*** %3, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  store %struct.precisionType* %12, %struct.precisionType** %5, align 8
  %13 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %14 = load %struct.precisionType**, %struct.precisionType*** %3, align 8
  store %struct.precisionType* %13, %struct.precisionType** %14, align 8
  %15 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %16 = icmp ne %struct.precisionType* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 2
  %21 = add i16 %20, 1
  store i16 %21, i16* %19, align 2
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %24 = icmp ne %struct.precisionType* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 2
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, -2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  %38 = add i16 %37, -1
  store i16 %38, i16* %36, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %43 = call i32 @pfree(%struct.precisionType* noundef %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  ret %struct.precisionType* %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pparmv(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %4 = icmp eq %struct.precisionType* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %8, i32 0, i32 3
  %10 = load i8, i8* %9, align 2
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, -2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %7
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %18 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  %20 = add i16 %19, 1
  store i16 %20, i16* %18, align 2
  %21 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pparmf(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %4 = icmp ne %struct.precisionType* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = add i16 %8, 1
  store i16 %9, i16* %7, align 2
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pdestroyf(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %4 = icmp ne %struct.precisionType* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = add i16 %8, -1
  store i16 %9, i16* %7, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %14 = call i32 @pfree(%struct.precisionType* noundef %13)
  br label %15

15:                                               ; preds = %12, %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pnew(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %4 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %3, i32 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  %7 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @presult(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %4 = icmp ne %struct.precisionType* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = add i16 %8, -1
  store i16 %9, i16* %7, align 2
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType**, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  store %struct.precisionType** %0, %struct.precisionType*** %3, align 8
  store %struct.precisionType* %1, %struct.precisionType** %4, align 8
  %6 = load %struct.precisionType**, %struct.precisionType*** %3, align 8
  %7 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  store %struct.precisionType* %7, %struct.precisionType** %5, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %9 = load %struct.precisionType**, %struct.precisionType*** %3, align 8
  store %struct.precisionType* %8, %struct.precisionType** %9, align 8
  %10 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %11 = icmp ne %struct.precisionType* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 2
  %16 = add i16 %15, 1
  store i16 %16, i16* %14, align 2
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %19 = icmp ne %struct.precisionType* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = add i16 %23, -1
  store i16 %24, i16* %22, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %29 = call i32 @pfree(%struct.precisionType* noundef %28)
  br label %30

30:                                               ; preds = %27, %20, %17
  %31 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  ret %struct.precisionType* %31
}

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
