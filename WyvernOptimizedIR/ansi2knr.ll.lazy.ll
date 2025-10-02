; ModuleID = './ansi2knr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/ansi2knr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"--varargs\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unrecognized switch: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage: ansi2knr input_file [output_file]\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot open output file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot open input file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"#line 1 \22%s\22\0A\00", align 1
@test1.words = internal global [25 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Unable to allocate break table!\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"va_alist\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"va_dcl\00", align 1
@str = private unnamed_addr constant [41 x i8] c"Usage: ansi2knr input_file [output_file]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8*, i8** %1, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #10
  %.not18 = icmp eq i32 %12, 0
  br i1 %.not18, label %13, label %14

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = getelementptr inbounds i8*, i8** %1, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %17) #11
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8*, i8** %1, i64 1
  %21 = add nsw i32 %0, -1
  br label %22

22:                                               ; preds = %19, %4, %2
  %.02 = phi i8** [ %20, %19 ], [ %1, %4 ], [ %1, %2 ]
  %.01 = phi i32 [ %21, %19 ], [ %0, %4 ], [ %0, %2 ]
  switch i32 %.01, label %23 [
    i32 2, label %24
    i32 3, label %26
  ]

23:                                               ; preds = %22
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #12
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8*, i8** %.02, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call noalias %struct._IO_FILE* @fopen(i8* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = getelementptr inbounds i8*, i8** %.02, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* noundef %34) #11
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %24
  %.04 = phi %struct._IO_FILE* [ %29, %36 ], [ %25, %24 ]
  %38 = getelementptr inbounds i8*, i8** %.02, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call noalias %struct._IO_FILE* @fopen(i8* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #13
  %41 = icmp eq %struct._IO_FILE* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = getelementptr inbounds i8*, i8** %.02, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef %45) #11
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8*, i8** %.02, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.04, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef %49) #13
  %51 = call i8* (i32, ...) bitcast (i8* (...)* @malloc to i8* (i32, ...)*)(i32 noundef 5000) #13
  br label %52

52:                                               ; preds = %.backedge, %47
  %.03.idx = phi i64 [ 0, %47 ], [ %.03.be.idx, %.backedge ]
  %.03.ptr = getelementptr inbounds i8, i8* %51, i64 %.03.idx
  %53 = trunc i64 %.03.idx to i32
  %54 = sub i32 5000, %53
  %55 = call i8* @fgets(i8* noundef %.03.ptr, i32 noundef %54, %struct._IO_FILE* noundef nonnull %40) #13
  %.not = icmp eq i8* %55, null
  br i1 %.not, label %91, label %56

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %80, %56
  %.1.idx = phi i64 [ %.03.idx, %56 ], [ 0, %80 ]
  %.1.ptr = getelementptr inbounds i8, i8* %51, i64 %.1.idx
  %58 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.1.ptr) #10
  %.1.add = add nsw i64 %.1.idx, %58
  %59 = call i32 @test1(i8* noundef %51)
  switch i32 %59, label %.loopexit [
    i32 2, label %60
    i32 1, label %62
    i32 -1, label %84
  ]

60:                                               ; preds = %57
  %61 = call i32 @convert1(i8* noundef %51, %struct._IO_FILE* noundef %.04, i32 noundef 1, i32 noundef 1)
  br label %90

62:                                               ; preds = %57
  %.ptr.add = add nsw i64 %.1.add, 1
  %.ptr17 = getelementptr inbounds i8, i8* %51, i64 %.ptr.add
  br label %63

63:                                               ; preds = %78, %62
  %.2.idx = phi i64 [ %.ptr.add, %62 ], [ %.2.add, %78 ]
  %.2.ptr = getelementptr inbounds i8, i8* %51, i64 %.2.idx
  %.not15 = icmp slt i64 %.2.idx, 4999
  br i1 %.not15, label %65, label %64

64:                                               ; preds = %63
  br label %88

65:                                               ; preds = %63
  %66 = trunc i64 %.2.idx to i32
  %67 = sub i32 5000, %66
  %68 = call i8* @fgets(i8* noundef %.2.ptr, i32 noundef %67, %struct._IO_FILE* noundef nonnull %40) #13
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %88

71:                                               ; preds = %65
  %72 = call i8* @skipspace(i8* noundef %.ptr17, i32 noundef 1)
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %80 [
    i32 123, label %75
    i32 0, label %78
  ]

75:                                               ; preds = %71
  %76 = call i32 @convert1(i8* noundef %51, %struct._IO_FILE* noundef %.04, i32 noundef 0, i32 noundef 1)
  %77 = call i32 @fputs(i8* noundef %.ptr17, %struct._IO_FILE* noundef %.04) #13
  br label %83

78:                                               ; preds = %71
  %79 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.2.ptr) #10
  %.2.add = add nsw i64 %.2.idx, %79
  br label %63

80:                                               ; preds = %71
  %81 = call i32 @fputs(i8* noundef %51, %struct._IO_FILE* noundef %.04) #13
  %82 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %51, i8* noundef nonnull dereferenceable(1) %.ptr17) #13
  br label %57

83:                                               ; preds = %75
  br label %90

84:                                               ; preds = %57
  %.not14 = icmp eq i64 %.1.add, 4999
  br i1 %.not14, label %86, label %85

85:                                               ; preds = %84
  br label %.backedge

.backedge:                                        ; preds = %85, %90
  %.03.be.idx = phi i64 [ 0, %90 ], [ %.1.add, %85 ]
  br label %52, !llvm.loop !4

86:                                               ; preds = %84
  br label %87

.loopexit:                                        ; preds = %57
  br label %87

87:                                               ; preds = %.loopexit, %86
  br label %88

88:                                               ; preds = %87, %70, %64
  %89 = call i32 @fputs(i8* noundef %51, %struct._IO_FILE* noundef %.04) #13
  br label %90

90:                                               ; preds = %88, %83, %60
  br label %.backedge

91:                                               ; preds = %52
  %.not13 = icmp eq i64 %.03.idx, 0
  br i1 %.not13, label %94, label %92

92:                                               ; preds = %91
  %93 = call i32 @fputs(i8* noundef %51, %struct._IO_FILE* noundef %.04) #13
  br label %94

94:                                               ; preds = %92, %91
  %95 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %51) #13
  %96 = call i32 @fclose(%struct._IO_FILE* noundef %.04) #13
  %97 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %40) #13
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %42, %31, %23, %14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i8* @malloc(...) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

declare dso_local i32 @free(...) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i8* @skipspace(i8* noundef readonly %0, i32 noundef %1) #5 {
  br label %3

3:                                                ; preds = %52, %2
  %.01 = phi i8* [ %0, %2 ], [ %56, %52 ]
  br label %4

4:                                                ; preds = %18, %3
  %.1 = phi i8* [ %.01, %3 ], [ %20, %18 ]
  %5 = load i8, i8* %.1, align 1
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = call i16** @__ctype_b_loc() #14
  %9 = load i16*, i16** %8, align 8
  %10 = load i8, i8* %.1, align 1
  %11 = sext i8 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = and i16 %13, 8192
  %15 = icmp ne i16 %14, 0
  br label %16

16:                                               ; preds = %7, %4
  %17 = phi i1 [ false, %4 ], [ %15, %7 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds i8, i8* %.1, i64 %19
  br label %4, !llvm.loop !6

21:                                               ; preds = %16
  %22 = load i8, i8* %.1, align 1
  %23 = icmp eq i8 %22, 47
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds i8, i8* %.1, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp eq i8 %27, 42
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %21
  br label %57

30:                                               ; preds = %24
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds i8, i8* %.1, i64 %31
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  br label %35

35:                                               ; preds = %49, %30
  %.2 = phi i8* [ %34, %30 ], [ %51, %49 ]
  %36 = load i8, i8* %.2, align 1
  %37 = icmp eq i8 %36, 42
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds i8, i8* %.2, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 47
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load i8, i8* %.2, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %58

49:                                               ; preds = %45
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds i8, i8* %.2, i64 %50
  br label %35, !llvm.loop !7

52:                                               ; preds = %43
  %53 = sext i32 %1 to i64
  %54 = getelementptr inbounds i8, i8* %.2, i64 %53
  %55 = sext i32 %1 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  br label %3

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %48
  %.0 = phi i8* [ %.2, %48 ], [ %.1, %57 ]
  ret i8* %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @writeblanks(i8* noundef %0, i8* noundef readnone %1) #7 {
  br label %3

3:                                                ; preds = %11, %2
  %.0 = phi i8* [ %0, %2 ], [ %12, %11 ]
  %4 = icmp ult i8* %.0, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %6, 13
  br i1 %.not, label %10, label %7

7:                                                ; preds = %5
  %8 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %8, 10
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %7
  store i8 32, i8* %.0, align 1
  br label %10

10:                                               ; preds = %9, %7, %5
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %3, !llvm.loop !8

13:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @test1(i8* noundef %0) #8 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = call i16** @__ctype_b_loc() #14
  %6 = load i16*, i16** %5, align 8
  %7 = load i8, i8* %0, align 1
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds i16, i16* %6, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = and i16 %10, 1024
  %.not8 = icmp eq i16 %11, 0
  br i1 %.not8, label %12, label %16

12:                                               ; preds = %4, %1
  %13 = load i8, i8* %0, align 1
  %14 = icmp eq i8 %13, 95
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %74

16:                                               ; preds = %12, %4
  %17 = call i64 @strlen(i8* noundef nonnull %0) #10
  %18 = getelementptr inbounds i8, i8* %0, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = call i8* @skipspace(i8* noundef nonnull %19, i32 noundef -1)
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %27 [
    i32 59, label %23
    i32 41, label %24
    i32 123, label %25
    i32 125, label %26
  ]

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %28

25:                                               ; preds = %16
  br label %74

26:                                               ; preds = %16
  br label %74

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %24, %23
  %.03 = phi i32 [ -1, %27 ], [ 1, %24 ], [ 0, %23 ]
  br label %29

29:                                               ; preds = %45, %28
  %.02 = phi i8* [ %0, %28 ], [ %46, %45 ]
  %30 = load i8, i8* %.02, align 1
  %31 = icmp sgt i8 %30, -1
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = call i16** @__ctype_b_loc() #14
  %34 = load i16*, i16** %33, align 8
  %35 = load i8, i8* %.02, align 1
  %36 = sext i8 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = and i16 %38, 8
  %.not7 = icmp eq i16 %39, 0
  br i1 %.not7, label %40, label %43

40:                                               ; preds = %32, %29
  %41 = load i8, i8* %.02, align 1
  %42 = icmp eq i8 %41, 95
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i1 [ true, %32 ], [ %42, %40 ]
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %29, !llvm.loop !9

47:                                               ; preds = %43
  %48 = call i8* @skipspace(i8* noundef nonnull %.02, i32 noundef 1)
  %49 = load i8, i8* %48, align 1
  %.not = icmp eq i8 %49, 40
  br i1 %.not, label %51, label %50

50:                                               ; preds = %47
  br label %74

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, i8* %48, i64 1
  %53 = call i8* @skipspace(i8* noundef nonnull %52, i32 noundef 1)
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 41
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %74

57:                                               ; preds = %51
  %58 = ptrtoint i8* %.02 to i64
  %59 = ptrtoint i8* %0 to i64
  %60 = sub i64 %58, %59
  br label %61

61:                                               ; preds = %71, %57
  %.01 = phi i8** [ getelementptr inbounds ([25 x i8*], [25 x i8*]* @test1.words, i64 0, i64 0), %57 ], [ %72, %71 ]
  %62 = load i8*, i8** %.01, align 8
  %.not4 = icmp eq i8* %62, null
  br i1 %.not4, label %73, label %63

63:                                               ; preds = %61
  %64 = call i64 @strlen(i8* noundef nonnull %62) #10
  %sext = shl i64 %60, 32
  %65 = ashr exact i64 %sext, 32
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %sext5 = shl i64 %60, 32
  %68 = ashr exact i64 %sext5, 32
  %69 = call i32 @strncmp(i8* noundef nonnull %62, i8* noundef nonnull %0, i64 noundef %68) #10
  %.not6 = icmp eq i32 %69, 0
  br i1 %.not6, label %70, label %71

70:                                               ; preds = %67
  br label %74

71:                                               ; preds = %67, %63
  %72 = getelementptr inbounds i8*, i8** %.01, i64 1
  br label %61, !llvm.loop !10

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %70, %56, %50, %26, %25, %15
  %.0 = phi i32 [ 0, %50 ], [ 0, %56 ], [ 0, %70 ], [ %.03, %73 ], [ 0, %26 ], [ 0, %25 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @convert1(i8* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %8, %4
  %.011 = phi i8* [ %0, %4 ], [ %6, %8 ]
  %6 = getelementptr inbounds i8, i8* %.011, i64 1
  %7 = load i8, i8* %.011, align 1
  %.not = icmp eq i8 %7, 40
  br i1 %.not, label %9, label %8

8:                                                ; preds = %5
  br label %5, !llvm.loop !11

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %27, %9
  %.020 = phi i8* [ null, %9 ], [ %.121, %27 ]
  %.019 = phi i32 [ 2, %9 ], [ %29, %27 ]
  %.04 = phi i8* [ undef, %9 ], [ %.15, %27 ]
  %11 = zext i32 %.019 to i64
  %12 = shl nuw nsw i64 %11, 4
  %13 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 noundef %12) #13
  %14 = bitcast i8* %13 to i8**
  %15 = icmp eq i8* %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %17) #15
  %19 = call i32 @fputs(i8* noundef %0, %struct._IO_FILE* noundef %1) #13
  br label %279

20:                                               ; preds = %10
  %21 = shl i32 %.019, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %13, i64 -16
  %24 = bitcast i8* %23 to i8**
  %25 = getelementptr inbounds i8*, i8** %24, i64 %22
  br label %26

26:                                               ; preds = %167, %20
  %.024 = phi i8** [ %14, %20 ], [ %.226, %167 ]
  %.121 = phi i8* [ %.020, %20 ], [ %.323, %167 ]
  %.012 = phi i8* [ %6, %20 ], [ %168, %167 ]
  %.15 = phi i8* [ %.04, %20 ], [ %.26, %167 ]
  %.not39 = icmp ult i8** %.024, %25
  br i1 %.not39, label %30, label %27

27:                                               ; preds = %26
  %28 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef nonnull %13) #13
  %29 = shl i32 %.019, 1
  br label %10

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8*, i8** %.024, i64 1
  store i8* %.012, i8** %.024, align 8
  br label %32

32:                                               ; preds = %55, %30
  %.017 = phi i32 [ 0, %30 ], [ %.118, %55 ]
  %.113 = phi i8* [ %.012, %30 ], [ %56, %55 ]
  %.08 = phi i8* [ null, %30 ], [ %.210, %55 ]
  %.26 = phi i8* [ %.15, %30 ], [ %.4, %55 ]
  %.02 = phi i8* [ null, %30 ], [ %.3, %55 ]
  %33 = icmp eq i8* %.02, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %32
  %35 = load i8, i8* %.113, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %53 [
    i32 44, label %37
    i32 40, label %40
    i32 41, label %44
    i32 47, label %50
  ]

37:                                               ; preds = %34
  %.not53 = icmp eq i32 %.017, 0
  br i1 %.not53, label %38, label %39

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %37
  %.13 = phi i8* [ %.02, %37 ], [ %.113, %38 ]
  br label %54

40:                                               ; preds = %34
  %.not52 = icmp eq i32 %.017, 0
  br i1 %.not52, label %41, label %42

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %40
  %.19 = phi i8* [ %.08, %40 ], [ %.113, %41 ]
  %43 = add nsw i32 %.017, 1
  br label %54

44:                                               ; preds = %34
  %45 = add nsw i32 %.017, -1
  %46 = icmp slt i32 %.017, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %47
  %.37 = phi i8* [ %.26, %47 ], [ %.113, %48 ]
  %.2 = phi i8* [ %.113, %47 ], [ %.02, %48 ]
  br label %54

50:                                               ; preds = %34
  %51 = call i8* @skipspace(i8* noundef nonnull %.113, i32 noundef 1)
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  br label %54

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %50, %49, %42, %39
  %.118 = phi i32 [ %.017, %53 ], [ %.017, %50 ], [ %45, %49 ], [ %43, %42 ], [ %.017, %39 ]
  %.214 = phi i8* [ %.113, %53 ], [ %52, %50 ], [ %.113, %49 ], [ %.113, %42 ], [ %.113, %39 ]
  %.210 = phi i8* [ %.08, %53 ], [ %.08, %50 ], [ %.08, %49 ], [ %.19, %42 ], [ %.08, %39 ]
  %.4 = phi i8* [ %.26, %53 ], [ %.26, %50 ], [ %.37, %49 ], [ %.26, %42 ], [ %.26, %39 ]
  %.3 = phi i8* [ %.02, %53 ], [ %.02, %50 ], [ %.2, %49 ], [ %.02, %42 ], [ %.13, %39 ]
  br label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds i8, i8* %.214, i64 1
  br label %32, !llvm.loop !12

57:                                               ; preds = %32
  %.not40 = icmp eq i8* %.08, null
  br i1 %.not40, label %61, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i8, i8* %.08, i64 1
  %60 = call i32 @writeblanks(i8* noundef nonnull %59, i8* noundef %.26)
  br label %61

61:                                               ; preds = %58, %57
  %62 = getelementptr inbounds i8, i8* %.113, i64 -1
  br label %63

63:                                               ; preds = %114, %61
  %.315 = phi i8* [ %62, %61 ], [ %.416, %114 ]
  %64 = getelementptr inbounds i8, i8* %.315, i64 -1
  %65 = call i8* @skipspace(i8* noundef nonnull %64, i32 noundef -1)
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %113 [
    i32 93, label %68
    i32 41, label %68
  ]

68:                                               ; preds = %63, %63
  br label %69

69:                                               ; preds = %82, %68
  %.416 = phi i8* [ %65, %68 ], [ %.5, %82 ]
  %.01 = phi i32 [ 1, %68 ], [ %.1, %82 ]
  %.not41 = icmp eq i32 %.01, 0
  br i1 %.not41, label %83, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds i8, i8* %.416, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %81 [
    i32 93, label %74
    i32 41, label %74
    i32 91, label %76
    i32 40, label %76
    i32 47, label %78
  ]

74:                                               ; preds = %70, %70
  %75 = add nsw i32 %.01, 1
  br label %82

76:                                               ; preds = %70, %70
  %77 = add nsw i32 %.01, -1
  br label %82

78:                                               ; preds = %70
  %79 = call i8* @skipspace(i8* noundef nonnull %71, i32 noundef -1)
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %78, %76, %74
  %.5 = phi i8* [ %71, %81 ], [ %80, %78 ], [ %71, %76 ], [ %71, %74 ]
  %.1 = phi i32 [ %.01, %81 ], [ %.01, %78 ], [ %77, %76 ], [ %75, %74 ]
  br label %69, !llvm.loop !13

83:                                               ; preds = %69
  %84 = load i8, i8* %.416, align 1
  %85 = icmp eq i8 %84, 40
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %.416, i64 1
  %88 = call i8* @skipspace(i8* noundef nonnull %87, i32 noundef 1)
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 42
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %108, %91
  %.6 = phi i8* [ %.416, %91 ], [ %110, %108 ]
  %93 = load i8, i8* %.6, align 1
  %94 = icmp sgt i8 %93, -1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = call i16** @__ctype_b_loc() #14
  %97 = load i16*, i16** %96, align 8
  %98 = load i8, i8* %.6, align 1
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds i16, i16* %97, i64 %99
  %101 = load i16, i16* %100, align 2
  %102 = and i16 %101, 1024
  %.not51 = icmp eq i16 %102, 0
  br i1 %.not51, label %103, label %106

103:                                              ; preds = %95, %92
  %104 = load i8, i8* %.6, align 1
  %105 = icmp eq i8 %104, 95
  br label %106

106:                                              ; preds = %103, %95
  %107 = phi i1 [ true, %95 ], [ %105, %103 ]
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = call i8* @skipspace(i8* noundef nonnull %.6, i32 noundef 1)
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  br label %92, !llvm.loop !14

111:                                              ; preds = %106
  br label %115

112:                                              ; preds = %86, %83
  br label %114

113:                                              ; preds = %63
  br label %115

114:                                              ; preds = %112
  br label %63

115:                                              ; preds = %113, %111
  %.7 = phi i8* [ %65, %113 ], [ %.6, %111 ]
  %116 = load i8, i8* %.7, align 1
  %117 = icmp eq i8 %116, 46
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = getelementptr inbounds i8, i8* %.7, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 46
  br i1 %121, label %122, label %144

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, i8* %.7, i64 -2
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 46
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %.not50 = icmp eq i32 %3, 0
  br i1 %.not50, label %130, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds i8*, i8** %.024, i64 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %31, align 8
  %129 = getelementptr inbounds i8, i8* %.7, i64 -2
  br label %143

130:                                              ; preds = %126
  %131 = getelementptr inbounds i8, i8* %.7, i64 1
  %132 = getelementptr inbounds i8, i8* %13, i64 8
  %133 = bitcast i8* %132 to i8**
  %134 = icmp eq i8** %31, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @writeblanks(i8* noundef %136, i8* noundef nonnull %131)
  br label %142

138:                                              ; preds = %130
  %139 = load i8*, i8** %.024, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -1
  %141 = call i32 @writeblanks(i8* noundef nonnull %140, i8* noundef nonnull %131)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %142, %127
  %.125 = phi i8** [ %128, %127 ], [ %.024, %142 ]
  %.222 = phi i8* [ %129, %127 ], [ %.121, %142 ]
  br label %166

144:                                              ; preds = %122, %118, %115
  br label %145

145:                                              ; preds = %161, %144
  %.8 = phi i8* [ %.7, %144 ], [ %162, %161 ]
  %146 = load i8, i8* %.8, align 1
  %147 = icmp sgt i8 %146, -1
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = call i16** @__ctype_b_loc() #14
  %150 = load i16*, i16** %149, align 8
  %151 = load i8, i8* %.8, align 1
  %152 = sext i8 %151 to i64
  %153 = getelementptr inbounds i16, i16* %150, i64 %152
  %154 = load i16, i16* %153, align 2
  %155 = and i16 %154, 8
  %.not49 = icmp eq i16 %155, 0
  br i1 %.not49, label %156, label %159

156:                                              ; preds = %148, %145
  %157 = load i8, i8* %.8, align 1
  %158 = icmp eq i8 %157, 95
  br label %159

159:                                              ; preds = %156, %148
  %160 = phi i1 [ true, %148 ], [ %158, %156 ]
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = getelementptr inbounds i8, i8* %.8, i64 -1
  br label %145, !llvm.loop !15

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, i8* %.8, i64 1
  %165 = getelementptr inbounds i8*, i8** %.024, i64 2
  store i8* %164, i8** %31, align 8
  br label %166

166:                                              ; preds = %163, %143
  %.226 = phi i8** [ %.125, %143 ], [ %165, %163 ]
  %.323 = phi i8* [ %.222, %143 ], [ %.121, %163 ]
  br label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds i8, i8* %.02, i64 1
  %169 = load i8, i8* %.02, align 1
  %170 = icmp eq i8 %169, 44
  br i1 %170, label %26, label %171, !llvm.loop !16

171:                                              ; preds = %167
  store i8* %168, i8** %.226, align 8
  %172 = getelementptr inbounds i8, i8* %13, i64 16
  %173 = bitcast i8* %172 to i8**
  %174 = icmp eq i8** %.226, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %171
  %176 = load i8*, i8** %14, align 8
  %177 = call i8* @skipspace(i8* noundef %176, i32 noundef 1)
  %178 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %177, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef 4) #10
  %.not48 = icmp eq i32 %178, 0
  br i1 %.not48, label %179, label %192

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, i8* %177, i64 4
  %181 = call i8* @skipspace(i8* noundef nonnull %180, i32 noundef 1)
  %182 = getelementptr inbounds i8, i8* %13, i64 16
  %183 = bitcast i8* %182 to i8**
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 -1
  %186 = icmp eq i8* %181, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i8*, i8** %14, align 8
  %189 = getelementptr inbounds i8, i8* %181, i64 1
  %190 = call i32 @writeblanks(i8* noundef %188, i8* noundef nonnull %189)
  br label %191

191:                                              ; preds = %187, %179
  %.327 = phi i8** [ %14, %187 ], [ %.226, %179 ]
  br label %192

192:                                              ; preds = %191, %175
  %.428 = phi i8** [ %.226, %175 ], [ %.327, %191 ]
  br label %193

193:                                              ; preds = %192, %171
  %.529 = phi i8** [ %.428, %192 ], [ %.226, %171 ]
  br label %194

194:                                              ; preds = %195, %193
  %.9 = phi i8* [ %0, %193 ], [ %199, %195 ]
  %.not42 = icmp eq i8* %.9, %6
  br i1 %.not42, label %200, label %195

195:                                              ; preds = %194
  %196 = load i8, i8* %.9, align 1
  %197 = sext i8 %196 to i32
  %198 = call i32 @putc(i32 noundef %197, %struct._IO_FILE* noundef %1) #13
  %199 = getelementptr inbounds i8, i8* %.9, i64 1
  br label %194, !llvm.loop !17

200:                                              ; preds = %194
  %.not43 = icmp eq i32 %2, 0
  br i1 %.not43, label %220, label %201

201:                                              ; preds = %200
  %202 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1)
  %203 = load i8*, i8** %14, align 8
  br label %204

204:                                              ; preds = %217, %201
  %.10 = phi i8* [ %203, %201 ], [ %218, %217 ]
  %205 = load i8, i8* %.10, align 1
  %.not47 = icmp eq i8 %205, 0
  br i1 %.not47, label %219, label %206

206:                                              ; preds = %204
  %207 = load i8, i8* %.10, align 1
  %208 = icmp eq i8 %207, 13
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i8, i8* %.10, align 1
  %211 = icmp eq i8 %210, 10
  br i1 %211, label %212, label %216

212:                                              ; preds = %209, %206
  %213 = load i8, i8* %.10, align 1
  %214 = sext i8 %213 to i32
  %215 = call i32 @putc(i32 noundef %214, %struct._IO_FILE* noundef %1) #13
  br label %216

216:                                              ; preds = %212, %209
  br label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds i8, i8* %.10, i64 1
  br label %204, !llvm.loop !18

219:                                              ; preds = %204
  br label %277

220:                                              ; preds = %200
  %221 = getelementptr inbounds i8, i8* %13, i64 8
  %222 = bitcast i8* %221 to i8**
  br label %223

223:                                              ; preds = %254, %220
  %.030 = phi i8** [ %222, %220 ], [ %255, %254 ]
  %224 = icmp ult i8** %.030, %.529
  br i1 %224, label %225, label %256

225:                                              ; preds = %223
  %226 = load i8*, i8** %.030, align 8
  br label %227

227:                                              ; preds = %243, %225
  %.11 = phi i8* [ %226, %225 ], [ %247, %243 ]
  %228 = load i8, i8* %.11, align 1
  %229 = icmp sgt i8 %228, -1
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = call i16** @__ctype_b_loc() #14
  %232 = load i16*, i16** %231, align 8
  %233 = load i8, i8* %.11, align 1
  %234 = sext i8 %233 to i64
  %235 = getelementptr inbounds i16, i16* %232, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = and i16 %236, 8
  %.not46 = icmp eq i16 %237, 0
  br i1 %.not46, label %238, label %241

238:                                              ; preds = %230, %227
  %239 = load i8, i8* %.11, align 1
  %240 = icmp eq i8 %239, 95
  br label %241

241:                                              ; preds = %238, %230
  %242 = phi i1 [ true, %230 ], [ %240, %238 ]
  br i1 %242, label %243, label %248

243:                                              ; preds = %241
  %244 = load i8, i8* %.11, align 1
  %245 = sext i8 %244 to i32
  %246 = call i32 @putc(i32 noundef %245, %struct._IO_FILE* noundef %1) #13
  %247 = getelementptr inbounds i8, i8* %.11, i64 1
  br label %227, !llvm.loop !19

248:                                              ; preds = %241
  %249 = getelementptr inbounds i8*, i8** %.529, i64 -1
  %250 = icmp ult i8** %.030, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1)
  br label %253

253:                                              ; preds = %251, %248
  br label %254

254:                                              ; preds = %253
  %255 = getelementptr inbounds i8*, i8** %.030, i64 2
  br label %223, !llvm.loop !20

256:                                              ; preds = %223
  %257 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %1)
  %258 = getelementptr inbounds i8, i8* %13, i64 16
  %259 = bitcast i8* %258 to i8**
  br label %260

260:                                              ; preds = %264, %256
  %.131 = phi i8** [ %259, %256 ], [ %265, %264 ]
  %.not44 = icmp ugt i8** %.131, %.529
  br i1 %.not44, label %266, label %261

261:                                              ; preds = %260
  %262 = load i8*, i8** %.131, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 -1
  store i8 59, i8* %263, align 1
  br label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds i8*, i8** %.131, i64 2
  br label %260, !llvm.loop !21

266:                                              ; preds = %260
  %.not45 = icmp eq i8* %.323, null
  br i1 %.not45, label %273, label %267

267:                                              ; preds = %266
  store i8 0, i8* %.323, align 1
  %268 = load i8*, i8** %14, align 8
  %269 = call i32 @fputs(i8* noundef %268, %struct._IO_FILE* noundef %1) #13
  %270 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %1)
  %271 = load i8*, i8** %.529, align 8
  %272 = call i32 @fputs(i8* noundef %271, %struct._IO_FILE* noundef %1) #13
  br label %276

273:                                              ; preds = %266
  %274 = load i8*, i8** %14, align 8
  %275 = call i32 @fputs(i8* noundef %274, %struct._IO_FILE* noundef %1) #13
  br label %276

276:                                              ; preds = %273, %267
  br label %277

277:                                              ; preds = %276, %219
  %278 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef nonnull %13) #13
  br label %279

279:                                              ; preds = %277, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %277 ]
  ret i32 %.0
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { cold }

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
