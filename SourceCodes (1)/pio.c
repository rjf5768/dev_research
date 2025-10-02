; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pio.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@pzero = external dso_local global %struct.precisionType*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fputp(%struct._IO_FILE* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.precisionType* %1, %struct.precisionType** %4, align 8
  %7 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %8 = icmp ne %struct.precisionType* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %11 = bitcast %struct.precisionType* %10 to i16*
  %12 = load i16, i16* %11, align 2
  %13 = add i16 %12, 1
  store i16 %13, i16* %11, align 2
  %14 = zext i16 %12 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %20 = call i8* @ptoa(%struct.precisionType* noundef %19)
  store i8* %20, i8** %6, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @fouts(%struct._IO_FILE* noundef %21, i8* noundef %22)
  store i32 %23, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %24)
  %26 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %27 = icmp ne %struct.precisionType* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %30 = bitcast %struct.precisionType* %29 to i16*
  %31 = load i16, i16* %30, align 2
  %32 = add i16 %31, -1
  store i16 %32, i16* %30, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %37 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %35, %28, %16
  %40 = phi i1 [ false, %28 ], [ false, %16 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i8* @ptoa(%struct.precisionType* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fouts(%struct._IO_FILE* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %22 = call i32 @putc(i32 noundef %20, %struct._IO_FILE* noundef %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, -1
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  br i1 %33, label %15, label %34, !llvm.loop !4

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %9, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @free(...) #1

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @putp(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %6 = icmp ne %struct.precisionType* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %9 = bitcast %struct.precisionType* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %18 = call i8* @ptoa(%struct.precisionType* noundef %17)
  store i8* %18, i8** %4, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fouts(%struct._IO_FILE* noundef %19, i8* noundef %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %22)
  store i32 %23, i32* %3, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %24)
  %26 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %27 = icmp ne %struct.precisionType* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %14
  %29 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %30 = bitcast %struct.precisionType* %29 to i16*
  %31 = load i16, i16* %30, align 2
  %32 = add i16 %31, -1
  store i16 %32, i16* %30, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %37 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %35, %28, %14
  %40 = phi i1 [ false, %28 ], [ false, %14 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fprintp(%struct._IO_FILE* noundef %0, %struct.precisionType* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.precisionType* %1, %struct.precisionType** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %11 = icmp ne %struct.precisionType* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %14 = bitcast %struct.precisionType* %13 to i16*
  %15 = load i16, i16* %14, align 2
  %16 = add i16 %15, 1
  store i16 %16, i16* %14, align 2
  %17 = zext i16 %15 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %3
  %20 = phi i1 [ false, %3 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %23 = call i8* @ptoa(%struct.precisionType* noundef %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strlen(i8* noundef %24) #4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %19
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @fouts(%struct._IO_FILE* noundef %30, i8* noundef %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %39, %29
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %41 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %40)
  br label %33, !llvm.loop !6

42:                                               ; preds = %33
  br label %56

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %50)
  br label %44, !llvm.loop !7

52:                                               ; preds = %44
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @fouts(%struct._IO_FILE* noundef %53, i8* noundef %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %57)
  %59 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %60 = icmp ne %struct.precisionType* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %63 = bitcast %struct.precisionType* %62 to i16*
  %64 = load i16, i16* %63, align 2
  %65 = add i16 %64, -1
  store i16 %65, i16* %63, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %70 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %69)
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %68, %61, %56
  %73 = phi i1 [ false, %61 ], [ false, %56 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @fgetp(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.precisionType* null, %struct.precisionType** %4, align 8
  store %struct.precisionType* null, %struct.precisionType** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %144

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %26, %15
  %17 = call i16** @__ctype_b_loc() #5
  %18 = load i16*, i16** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8192
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %28 = call i32 @getc(%struct._IO_FILE* noundef %27)
  store i32 %28, i32* %7, align 4
  br label %16, !llvm.loop !8

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i32 @getc(%struct._IO_FILE* noundef %33)
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %40 = call i32 @getc(%struct._IO_FILE* noundef %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %32
  %43 = call i16** @__ctype_b_loc() #5
  %44 = load i16*, i16** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 2048
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %134

52:                                               ; preds = %42
  %53 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %54 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %4, %struct.precisionType* noundef %53)
  %55 = call %struct.precisionType* @utop(i32 noundef 1000000000)
  %56 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %5, %struct.precisionType* noundef %55)
  br label %57

57:                                               ; preds = %90, %52
  store i32 8, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 48
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %78, %57
  %61 = call i16** @__ctype_b_loc() #5
  %62 = load i16*, i16** %61, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %64 = call i32 @getc(%struct._IO_FILE* noundef %63)
  store i32 %64, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %62, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 2048
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %102

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = mul i32 %73, 10
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 48
  %77 = add i32 %74, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %60, label %82, !llvm.loop !9

82:                                               ; preds = %78
  %83 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %84 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %85 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %83, %struct.precisionType* noundef %84)
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.precisionType* @utop(i32 noundef %86)
  %88 = call %struct.precisionType* @padd(%struct.precisionType* noundef %85, %struct.precisionType* noundef %87)
  %89 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %4, %struct.precisionType* noundef %88)
  br label %90

90:                                               ; preds = %82
  %91 = call i16** @__ctype_b_loc() #5
  %92 = load i16*, i16** %91, align 8
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %94 = call i32 @getc(%struct._IO_FILE* noundef %93)
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %92, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 2048
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %57, label %101, !llvm.loop !10

101:                                              ; preds = %90
  br label %119

102:                                              ; preds = %71
  store i32 10, i32* %9, align 4
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = icmp slt i32 %104, 8
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = mul i32 %108, 10
  store i32 %109, i32* %9, align 4
  br label %103, !llvm.loop !11

110:                                              ; preds = %103
  %111 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.precisionType* @utop(i32 noundef %112)
  %114 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %111, %struct.precisionType* noundef %113)
  %115 = load i32, i32* %8, align 4
  %116 = call %struct.precisionType* @utop(i32 noundef %115)
  %117 = call %struct.precisionType* @padd(%struct.precisionType* noundef %114, %struct.precisionType* noundef %116)
  %118 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %4, %struct.precisionType* noundef %117)
  br label %119

119:                                              ; preds = %110, %101
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %125 = call i32 @ungetc(i32 noundef %123, %struct._IO_FILE* noundef %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %131 = call %struct.precisionType* @pneg(%struct.precisionType* noundef %130)
  %132 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %4, %struct.precisionType* noundef %131)
  br label %133

133:                                              ; preds = %129, %126
  br label %143

134:                                              ; preds = %42
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store %struct.precisionType* null, %struct.precisionType** %4, align 8
  br label %142

138:                                              ; preds = %134
  %139 = load i32, i32* %7, align 4
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %141 = call i32 @ungetc(i32 noundef %139, %struct._IO_FILE* noundef %140)
  br label %142

142:                                              ; preds = %138, %137
  br label %143

143:                                              ; preds = %142, %133
  br label %145

144:                                              ; preds = %1
  store %struct.precisionType* null, %struct.precisionType** %4, align 8
  br label %145

145:                                              ; preds = %144, %143
  %146 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %147 = icmp ne %struct.precisionType* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %150 = bitcast %struct.precisionType* %149 to i16*
  %151 = load i16, i16* %150, align 2
  %152 = add i16 %151, -1
  store i16 %152, i16* %150, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %157 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %156)
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %155, %148, %145
  %160 = phi i1 [ false, %148 ], [ false, %145 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %163 = icmp eq %struct.precisionType* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %165, %struct.precisionType** %2, align 8
  br label %169

166:                                              ; preds = %159
  %167 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %168 = call %struct.precisionType* @presult(%struct.precisionType* noundef %167)
  store %struct.precisionType* %168, %struct.precisionType** %2, align 8
  br label %169

169:                                              ; preds = %166, %164
  %170 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %170
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind readnone willreturn }

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
