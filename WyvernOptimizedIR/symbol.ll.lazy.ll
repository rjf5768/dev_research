; ModuleID = './symbol.ll'
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
@str = private unnamed_addr constant [40 x i8] c"\0A\0ALOCAL SYMBOL TABLE\0A------------------\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.2 = private unnamed_addr constant [42 x i8] c"\0A\0AGLOBAL SYMBOL TABLE\0A-------------------\00", align 1
@str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @OutputLocal() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str, i64 0, i64 0))
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %2 = load i32, i32* @Llastentry, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %25, label %3

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %4, i32 0
  %6 = load i8*, i8** %5, align 16
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %7, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %10, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %13, i32 3
  %15 = load i32, i32* %14, align 16
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %16, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %19, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21) #8
  br label %23

23:                                               ; preds = %3
  %24 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

25:                                               ; preds = %1
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @OutputGlobal() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.2, i64 0, i64 0))
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %2 = load i32, i32* @Glastentry, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %25, label %3

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %4, i32 0
  %6 = load i8*, i8** %5, align 16
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %7, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %10, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %13, i32 3
  %15 = load i32, i32* %14, align 16
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %16, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %19, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21) #8
  br label %23

23:                                               ; preds = %3
  %24 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

25:                                               ; preds = %1
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @GlobalLookup(i8* noundef readonly %0) #2 {
  %2 = load i32, i32* @Glastentry, align 4
  br label %3

3:                                                ; preds = %13, %1
  %.01 = phi i32 [ %2, %1 ], [ %14, %13 ]
  %4 = icmp sgt i32 %.01, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %6, i32 0
  %8 = load i8*, i8** %7, align 16
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(1) %0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %16

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.01, -1
  br label %3, !llvm.loop !7

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %.0 = phi i32 [ %.01, %11 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @LocalLookup(i8* noundef readonly %0) #2 {
  %2 = load i32, i32* @Llastentry, align 4
  br label %3

3:                                                ; preds = %13, %1
  %.01 = phi i32 [ %2, %1 ], [ %14, %13 ]
  %4 = icmp sgt i32 %.01, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %6, i32 0
  %8 = load i8*, i8** %7, align 16
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(1) %0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %16

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.01, -1
  br label %3, !llvm.loop !8

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %.0 = phi i32 [ %.01, %11 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GlobalInsert(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #9
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @Glastentry, align 4
  %10 = icmp sgt i32 %9, 98
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %48

12:                                               ; preds = %6
  %13 = load i32, i32* @Glastchar, align 4
  %14 = add nsw i32 %13, %8
  %15 = icmp sgt i32 %14, 997
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8
  br label %48

17:                                               ; preds = %12
  %18 = load i32, i32* @Glastentry, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @Glastentry, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %20, i32 1
  store i32 %1, i32* %21, align 8
  %22 = load i32, i32* @Glastchar, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [999 x i8], [999 x i8]* @Glexemes, i64 0, i64 %24
  %26 = load i32, i32* @Glastentry, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %27, i32 0
  store i8* %25, i8** %28, align 16
  %29 = load i32, i32* @Glastchar, align 4
  %30 = add nsw i32 %29, %8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @Glastchar, align 4
  %32 = load i32, i32* @Glastentry, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %33, i32 0
  %35 = load i8*, i8** %34, align 16
  %36 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %35, i8* noundef nonnull dereferenceable(1) %0) #8
  %37 = load i32, i32* @Glastentry, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %38, i32 2
  store i32 %2, i32* %39, align 4
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %40, i32 3
  store i32 %3, i32* %41, align 16
  %42 = load i32, i32* @Glastentry, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %43, i32 4
  store i32 %4, i32* %44, align 4
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %45, i32 5
  store i32 %5, i32* %46, align 8
  %47 = load i32, i32* @Glastentry, align 4
  br label %48

48:                                               ; preds = %17, %16, %11
  %.0 = phi i32 [ 0, %11 ], [ 0, %16 ], [ %47, %17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @error(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LocalInsert(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #9
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @Llastentry, align 4
  %10 = icmp sgt i32 %9, 98
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %48

12:                                               ; preds = %6
  %13 = load i32, i32* @Llastchar, align 4
  %14 = add nsw i32 %13, %8
  %15 = icmp sgt i32 %14, 997
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8
  br label %48

17:                                               ; preds = %12
  %18 = load i32, i32* @Llastentry, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @Llastentry, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %20, i32 1
  store i32 %1, i32* %21, align 8
  %22 = load i32, i32* @Llastchar, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [999 x i8], [999 x i8]* @Llexemes, i64 0, i64 %24
  %26 = load i32, i32* @Llastentry, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %27, i32 0
  store i8* %25, i8** %28, align 16
  %29 = load i32, i32* @Llastchar, align 4
  %30 = add nsw i32 %29, %8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @Llastchar, align 4
  %32 = load i32, i32* @Llastentry, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %33, i32 0
  %35 = load i8*, i8** %34, align 16
  %36 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %35, i8* noundef nonnull dereferenceable(1) %0) #8
  %37 = load i32, i32* @Llastentry, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %38, i32 2
  store i32 %2, i32* %39, align 4
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %40, i32 3
  store i32 %3, i32* %41, align 16
  %42 = load i32, i32* @Llastentry, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %43, i32 4
  store i32 %4, i32* %44, align 4
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %45, i32 5
  store i32 %5, i32* %46, align 8
  %47 = load i32, i32* @Llastentry, align 4
  br label %48

48:                                               ; preds = %17, %16, %11
  %.0 = phi i32 [ 0, %11 ], [ 0, %16 ], [ %47, %17 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ParamInt() #5 {
  %1 = load i32, i32* @Llastentry, align 4
  br label %2

2:                                                ; preds = %13, %0
  %.0 = phi i32 [ %1, %0 ], [ %14, %13 ]
  %3 = icmp sgt i32 %.0, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %5, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 2041
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %10, i32 2
  store i32 2002, i32* %11, align 4
  br label %12

12:                                               ; preds = %9, %4
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !9

15:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @LocalReset() #6 {
  store i32 -1, i32* @Llastchar, align 4
  store i32 0, i32* @Llastentry, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllBodsParsed() #0 {
  %1 = load i32, i32* @Glastentry, align 4
  br label %2

2:                                                ; preds = %11, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %11 ]
  %.0 = phi i32 [ %1, %0 ], [ %12, %11 ]
  %3 = icmp sgt i32 %.0, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %5, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @emit(i32 noundef 2062, i32 noundef %.0, float noundef 0.000000e+00) #8
  br label %10

10:                                               ; preds = %9, %4
  %.1 = phi i32 [ 1, %9 ], [ %.01, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !10

13:                                               ; preds = %2
  store i32 %.01, i32* @ErrorFlag, align 4
  ret void
}

declare dso_local void @emit(i32 noundef, i32 noundef, float noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CheckMain() #0 {
  %1 = call i32 @GlobalLookup(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %2, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  call void @error(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #8
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %7, i32 4
  store i32 -1, i32* %8, align 4
  br label %9

9:                                                ; preds = %6, %0
  store i32 0, i32* @ErrorFlag, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
