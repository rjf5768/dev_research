; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/symbol.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@Glastchar = dso_local global i32 -1, align 4
@Llastchar = dso_local global i32 -1, align 4
@Glastentry = dso_local global i32 0, align 4
@Llastentry = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0A\0ALOCAL SYMBOL TABLE\0A------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s\09%d\09%d\09%d\09%d\09%d\0A\00", align 1
@LocalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A\0AGLOBAL SYMBOL TABLE\0A-------------------\0A\00", align 1
@GlobalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"symbol table full\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"lexemes array full\00", align 1
@Glexemes = dso_local global [999 x i8] zeroinitializer, align 16
@Llexemes = dso_local global [999 x i8] zeroinitializer, align 16
@ErrorFlag = dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Main never declared\00", align 1
@lookahead = dso_local global i32 0, align 4
@tokenval = dso_local global i32 0, align 4
@ftokenval = dso_local global float 0.000000e+00, align 4
@FloatFlag = dso_local global i32 0, align 4
@DecCount = dso_local global i32 0, align 4
@offset = dso_local global i32 0, align 4
@lineno = dso_local global i32 0, align 4
@LabelCounter = dso_local global i32 0, align 4
@NumberC = dso_local global i32 0, align 4
@lexbuf = dso_local global [128 x i8] zeroinitializer, align 16
@LocalIndex = dso_local global i32 0, align 4
@GlobalIndex = dso_local global i32 0, align 4
@NextLookahead = dso_local global i32 0, align 4
@NextTokenval = dso_local global i32 0, align 4
@NextFtokenval = dso_local global float 0.000000e+00, align 4
@PreviousLookahead = dso_local global i32 0, align 4
@PreviousTokenval = dso_local global i32 0, align 4
@PreviousFtokenval = dso_local global float 0.000000e+00, align 4
@Scope = dso_local global i32 0, align 4
@ReturnLabel = dso_local global i32 0, align 4
@CallReturnAddr = dso_local global i32 0, align 4
@FuncNameIndex = dso_local global i32 0, align 4
@ArrayParsed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @OutputLocal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %39, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @Llastentry, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 16
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 16
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %12, i32 noundef %17, i32 noundef %22, i32 noundef %27, i32 noundef %32, i32 noundef %37)
  br label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %3, !llvm.loop !4

42:                                               ; preds = %3
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @OutputGlobal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %39, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @Glastentry, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 16
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 16
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %12, i32 noundef %17, i32 noundef %22, i32 noundef %27, i32 noundef %32, i32 noundef %37)
  br label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %3, !llvm.loop !6

42:                                               ; preds = %3
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GlobalLookup(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @Glastentry, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* noundef %14, i8* noundef %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %6, !llvm.loop !7

24:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LocalLookup(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @Llastentry, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* noundef %14, i8* noundef %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %6, !llvm.loop !8

24:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GlobalInsert(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* noundef %15) #4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @Glastentry, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sge i32 %19, 100
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  call void @error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %77

22:                                               ; preds = %6
  %23 = load i32, i32* @Glastchar, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = icmp sge i32 %26, 999
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %77

29:                                               ; preds = %22
  %30 = load i32, i32* @Glastentry, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @Glastentry, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @Glastentry, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @Glastchar, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [999 x i8], [999 x i8]* @Glexemes, i64 0, i64 %39
  %41 = load i32, i32* @Glastentry, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.entry, %struct.entry* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 16
  %45 = load i32, i32* @Glastchar, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @Glastchar, align 4
  %49 = load i32, i32* @Glastentry, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 16
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @strcpy(i8* noundef %53, i8* noundef %54) #5
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @Glastentry, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @Glastentry, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 16
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @Glastentry, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 4
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @Glastentry, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* @Glastentry, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %29, %28, %21
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @error(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LocalInsert(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* noundef %15) #4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @Llastentry, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sge i32 %19, 100
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  call void @error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %77

22:                                               ; preds = %6
  %23 = load i32, i32* @Llastchar, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = icmp sge i32 %26, 999
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %77

29:                                               ; preds = %22
  %30 = load i32, i32* @Llastentry, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @Llastentry, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @Llastentry, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @Llastchar, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [999 x i8], [999 x i8]* @Llexemes, i64 0, i64 %39
  %41 = load i32, i32* @Llastentry, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.entry, %struct.entry* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 16
  %45 = load i32, i32* @Llastchar, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @Llastchar, align 4
  %49 = load i32, i32* @Llastentry, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 16
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @strcpy(i8* noundef %53, i8* noundef %54) #5
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @Llastentry, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @Llastentry, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 16
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @Llastentry, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 4
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @Llastentry, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* @Llastentry, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %29, %28, %21
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ParamInt() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @Llastentry, align 4
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2041
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.entry, %struct.entry* %16, i32 0, i32 2
  store i32 2002, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %6
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %1, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LocalReset() #0 {
  store i32 -1, i32* @Llastchar, align 4
  store i32 0, i32* @Llastentry, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllBodsParsed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @Glastentry, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  call void @emit(i32 noundef 2062, i32 noundef %15, float noundef 0.000000e+00)
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %7
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %1, align 4
  br label %4, !llvm.loop !10

20:                                               ; preds = %4
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* @ErrorFlag, align 4
  ret void
}

declare dso_local void @emit(i32 noundef, i32 noundef, float noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CheckMain() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GlobalLookup(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  call void @error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 4
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %0
  store i32 0, i32* @ErrorFlag, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
