; ModuleID = './fixoutput.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/fixoutput/fixoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@LEX_LEN = external dso_local global i32, align 4
@LEXEME = external dso_local global i8*, align 8
@EOF_FLAG = internal global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Scanner ERROR: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"===================> LINE NUMBER: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"   ADDOP: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"OR\0A\00", align 1
@ERROR_CNT = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an ADDOP Found: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"   MULOP: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"AND\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"DIV\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an MULOP Found: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"   RELOP: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"=\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"<>\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"<=\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c">=\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an RELOP Found: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"   ASSIGN (:=) \0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"   COLON (:) \0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"   DOTDOT (..) \0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"   DOT (.) \0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"   Integer: \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"illegal\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"---------->ERROR: Expected a VALID/ILLEGAL Code \0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"                  found: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"   Real: \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"   PROGRAM \0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"   VAR \0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"   INTEGER (KEYWORD) \0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"   REAL (KEYWORD) \0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"   ARRAY \0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"   OF \0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"   PROCEDURE \0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"   FORWARD \0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"   FUNCTION \0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"   BEGIN \0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"   END \0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"   READ \0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"   WRITE \0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"   WRITELN \0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"   IF \0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"   THEN \0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"   ELSE \0A\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"   WHILE \0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"   DO \0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"   NOT \0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"   Identifier:  \00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"   LEFT PAREN '(' \0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"   RIGHT PAREN ')' \0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"   LEFT BRACKET ([) \0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"   RIGHT BRACKET (]) \0A\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"   COMMA (,) \0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"   SEMICOLON (;) \0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"------------>ERROR: A Valid TOKEN Code is not the\0A\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"                    first item on the input line.\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c" <--------\0A\00", align 1
@CH = external dso_local global i8, align 1
@.str.65 = private unnamed_addr constant [60 x i8] c"------------>ERROR: Expected a Newline Character <--------\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"****** %d format errors found in output of your scanner.\0A\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c"------------>ERROR: Expected a SPACE between Token Code and\0A\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"                    the string following it <--------\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"   SEMICOLON (;) \00", align 1
@str.2 = private unnamed_addr constant [59 x i8] c"------------>ERROR: Expected a Newline Character <--------\00", align 1
@str.3 = private unnamed_addr constant [14 x i8] c"   COMMA (,) \00", align 1
@str.4 = private unnamed_addr constant [22 x i8] c"   RIGHT BRACKET (]) \00", align 1
@str.5 = private unnamed_addr constant [21 x i8] c"   LEFT BRACKET ([) \00", align 1
@str.6 = private unnamed_addr constant [20 x i8] c"   RIGHT PAREN ')' \00", align 1
@str.7 = private unnamed_addr constant [19 x i8] c"   LEFT PAREN '(' \00", align 1
@str.8 = private unnamed_addr constant [8 x i8] c"   NOT \00", align 1
@str.9 = private unnamed_addr constant [7 x i8] c"   DO \00", align 1
@str.10 = private unnamed_addr constant [10 x i8] c"   WHILE \00", align 1
@str.11 = private unnamed_addr constant [9 x i8] c"   ELSE \00", align 1
@str.12 = private unnamed_addr constant [9 x i8] c"   THEN \00", align 1
@str.13 = private unnamed_addr constant [7 x i8] c"   IF \00", align 1
@str.14 = private unnamed_addr constant [12 x i8] c"   WRITELN \00", align 1
@str.15 = private unnamed_addr constant [10 x i8] c"   WRITE \00", align 1
@str.16 = private unnamed_addr constant [9 x i8] c"   READ \00", align 1
@str.17 = private unnamed_addr constant [8 x i8] c"   END \00", align 1
@str.18 = private unnamed_addr constant [10 x i8] c"   BEGIN \00", align 1
@str.19 = private unnamed_addr constant [13 x i8] c"   FUNCTION \00", align 1
@str.20 = private unnamed_addr constant [12 x i8] c"   FORWARD \00", align 1
@str.21 = private unnamed_addr constant [14 x i8] c"   PROCEDURE \00", align 1
@str.22 = private unnamed_addr constant [7 x i8] c"   OF \00", align 1
@str.23 = private unnamed_addr constant [10 x i8] c"   ARRAY \00", align 1
@str.24 = private unnamed_addr constant [19 x i8] c"   REAL (KEYWORD) \00", align 1
@str.25 = private unnamed_addr constant [22 x i8] c"   INTEGER (KEYWORD) \00", align 1
@str.26 = private unnamed_addr constant [8 x i8] c"   VAR \00", align 1
@str.27 = private unnamed_addr constant [12 x i8] c"   PROGRAM \00", align 1
@str.28 = private unnamed_addr constant [49 x i8] c"---------->ERROR: Expected a VALID/ILLEGAL Code \00", align 1
@str.29 = private unnamed_addr constant [8 x i8] c"illegal\00", align 1
@str.30 = private unnamed_addr constant [49 x i8] c"---------->ERROR: Expected a VALID/ILLEGAL Code \00", align 1
@str.31 = private unnamed_addr constant [8 x i8] c"illegal\00", align 1
@str.32 = private unnamed_addr constant [12 x i8] c"   DOT (.) \00", align 1
@str.33 = private unnamed_addr constant [16 x i8] c"   DOTDOT (..) \00", align 1
@str.34 = private unnamed_addr constant [14 x i8] c"   COLON (:) \00", align 1
@str.35 = private unnamed_addr constant [16 x i8] c"   ASSIGN (:=) \00", align 1
@str.36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@str.37 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@str.38 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@str.39 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@str.40 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@str.41 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@str.42 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@str.43 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@str.44 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@str.45 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@str.46 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@str.47 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@str.49 = private unnamed_addr constant [50 x i8] c"------------>ERROR: A Valid TOKEN Code is not the\00", align 1
@str.50 = private unnamed_addr constant [11 x i8] c" <--------\00", align 1
@str.51 = private unnamed_addr constant [60 x i8] c"------------>ERROR: Expected a SPACE between Token Code and\00", align 1
@str.52 = private unnamed_addr constant [54 x i8] c"                    the string following it <--------\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = load i32, i32* @LEX_LEN, align 4
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 1) #6
  store i8* %8, i8** @LEXEME, align 8
  call void (...) @FLUSH() #6
  br label %9

9:                                                ; preds = %153, %0
  %10 = load i32, i32* @EOF_FLAG, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %154, label %11

11:                                               ; preds = %9
  %12 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %1) #6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = call i32 @feof(%struct._IO_FILE* noundef %13) #6
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %15, label %152

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  switch i32 %16, label %140 [
    i32 0, label %17
    i32 1, label %20
    i32 2, label %24
    i32 3, label %37
    i32 4, label %51
    i32 5, label %67
    i32 6, label %68
    i32 7, label %69
    i32 8, label %70
    i32 9, label %71
    i32 10, label %91
    i32 11, label %111
    i32 12, label %112
    i32 13, label %113
    i32 14, label %114
    i32 15, label %115
    i32 16, label %116
    i32 18, label %117
    i32 17, label %118
    i32 19, label %119
    i32 20, label %120
    i32 21, label %121
    i32 22, label %122
    i32 23, label %123
    i32 24, label %124
    i32 25, label %125
    i32 26, label %126
    i32 27, label %127
    i32 28, label %128
    i32 29, label %129
    i32 30, label %130
    i32 31, label %131
    i32 32, label %134
    i32 33, label %135
    i32 34, label %136
    i32 35, label %137
    i32 36, label %138
    i32 37, label %139
  ]

17:                                               ; preds = %15
  call void @GETSTR()
  %18 = load i8*, i8** @LEXEME, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18) #6
  br label %144

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 noundef %22) #6
  br label %144

24:                                               ; preds = %15
  %25 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #6
  %27 = load i32, i32* %2, align 4
  switch i32 %27, label %31 [
    i32 43, label %28
    i32 45, label %29
    i32 260, label %30
  ]

28:                                               ; preds = %24
  %puts53 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.48, i64 0, i64 0))
  br label %36

29:                                               ; preds = %24
  %puts52 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.47, i64 0, i64 0))
  br label %36

30:                                               ; preds = %24
  %puts51 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.46, i64 0, i64 0))
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @ERROR_CNT, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @ERROR_CNT, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 noundef %34) #6
  br label %36

36:                                               ; preds = %31, %30, %29, %28
  br label %144

37:                                               ; preds = %15
  %38 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)) #6
  %40 = load i32, i32* %2, align 4
  switch i32 %40, label %45 [
    i32 42, label %41
    i32 47, label %42
    i32 259, label %43
    i32 261, label %44
  ]

41:                                               ; preds = %37
  %puts50 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.45, i64 0, i64 0))
  br label %50

42:                                               ; preds = %37
  %puts49 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.44, i64 0, i64 0))
  br label %50

43:                                               ; preds = %37
  %puts48 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @str.43, i64 0, i64 0))
  br label %50

44:                                               ; preds = %37
  %puts47 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @str.42, i64 0, i64 0))
  br label %50

45:                                               ; preds = %37
  %46 = load i32, i32* @ERROR_CNT, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @ERROR_CNT, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 noundef %48) #6
  br label %50

50:                                               ; preds = %45, %44, %43, %42, %41
  br label %144

51:                                               ; preds = %15
  %52 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #6
  %54 = load i32, i32* %2, align 4
  switch i32 %54, label %61 [
    i32 61, label %55
    i32 256, label %56
    i32 257, label %57
    i32 60, label %58
    i32 258, label %59
    i32 62, label %60
  ]

55:                                               ; preds = %51
  %puts46 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.41, i64 0, i64 0))
  br label %66

56:                                               ; preds = %51
  %puts45 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.40, i64 0, i64 0))
  br label %66

57:                                               ; preds = %51
  %puts44 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.39, i64 0, i64 0))
  br label %66

58:                                               ; preds = %51
  %puts43 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.38, i64 0, i64 0))
  br label %66

59:                                               ; preds = %51
  %puts42 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.37, i64 0, i64 0))
  br label %66

60:                                               ; preds = %51
  %puts41 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.36, i64 0, i64 0))
  br label %66

61:                                               ; preds = %51
  %62 = load i32, i32* @ERROR_CNT, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @ERROR_CNT, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 noundef %64) #6
  br label %66

66:                                               ; preds = %61, %60, %59, %58, %57, %56, %55
  br label %144

67:                                               ; preds = %15
  %puts40 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.35, i64 0, i64 0))
  br label %144

68:                                               ; preds = %15
  %puts39 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.34, i64 0, i64 0))
  br label %144

69:                                               ; preds = %15
  %puts38 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.33, i64 0, i64 0))
  br label %144

70:                                               ; preds = %15
  %puts37 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.32, i64 0, i64 0))
  br label %144

71:                                               ; preds = %15
  %72 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #6
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  %puts36 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.31, i64 0, i64 0))
  br label %90

77:                                               ; preds = %71
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %3) #6
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 noundef %82) #6
  br label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @ERROR_CNT, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @ERROR_CNT, align 4
  %puts35 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.30, i64 0, i64 0))
  %87 = load i32, i32* %2, align 4
  %88 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %87) #6
  br label %89

89:                                               ; preds = %84, %80
  br label %90

90:                                               ; preds = %89, %76
  br label %144

91:                                               ; preds = %15
  %92 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %2) #6
  %93 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #6
  %94 = load i32, i32* %2, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  %puts34 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.29, i64 0, i64 0))
  br label %110

97:                                               ; preds = %91
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), double* noundef nonnull %4) #6
  %102 = load double, double* %4, align 8
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), double noundef %102) #6
  br label %109

104:                                              ; preds = %97
  %105 = load i32, i32* @ERROR_CNT, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @ERROR_CNT, align 4
  %puts33 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.28, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %107) #6
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %96
  br label %144

111:                                              ; preds = %15
  %puts32 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.27, i64 0, i64 0))
  br label %144

112:                                              ; preds = %15
  %puts31 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.26, i64 0, i64 0))
  br label %144

113:                                              ; preds = %15
  %puts30 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.25, i64 0, i64 0))
  br label %144

114:                                              ; preds = %15
  %puts29 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.24, i64 0, i64 0))
  br label %144

115:                                              ; preds = %15
  %puts28 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.23, i64 0, i64 0))
  br label %144

116:                                              ; preds = %15
  %puts27 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.22, i64 0, i64 0))
  br label %144

117:                                              ; preds = %15
  %puts26 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.21, i64 0, i64 0))
  br label %144

118:                                              ; preds = %15
  %puts25 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.20, i64 0, i64 0))
  br label %144

119:                                              ; preds = %15
  %puts24 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.19, i64 0, i64 0))
  br label %144

120:                                              ; preds = %15
  %puts23 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.18, i64 0, i64 0))
  br label %144

121:                                              ; preds = %15
  %puts22 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.17, i64 0, i64 0))
  br label %144

122:                                              ; preds = %15
  %puts21 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.16, i64 0, i64 0))
  br label %144

123:                                              ; preds = %15
  %puts20 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.15, i64 0, i64 0))
  br label %144

124:                                              ; preds = %15
  %puts19 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.14, i64 0, i64 0))
  br label %144

125:                                              ; preds = %15
  %puts18 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.13, i64 0, i64 0))
  br label %144

126:                                              ; preds = %15
  %puts17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.12, i64 0, i64 0))
  br label %144

127:                                              ; preds = %15
  %puts16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.11, i64 0, i64 0))
  br label %144

128:                                              ; preds = %15
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.10, i64 0, i64 0))
  br label %144

129:                                              ; preds = %15
  %puts14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.9, i64 0, i64 0))
  br label %144

130:                                              ; preds = %15
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.8, i64 0, i64 0))
  br label %144

131:                                              ; preds = %15
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0)) #6
  call void @GETSTR()
  %133 = load i8*, i8** @LEXEME, align 8
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) %133)
  br label %144

134:                                              ; preds = %15
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.7, i64 0, i64 0))
  br label %144

135:                                              ; preds = %15
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.6, i64 0, i64 0))
  br label %144

136:                                              ; preds = %15
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.5, i64 0, i64 0))
  br label %144

137:                                              ; preds = %15
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.4, i64 0, i64 0))
  br label %144

138:                                              ; preds = %15
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.3, i64 0, i64 0))
  br label %144

139:                                              ; preds = %15
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.1, i64 0, i64 0))
  br label %144

140:                                              ; preds = %15
  %141 = load i32, i32* @ERROR_CNT, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @ERROR_CNT, align 4
  %puts54 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.49, i64 0, i64 0))
  %143 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0)) #6
  %puts55 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.50, i64 0, i64 0))
  call void @GETSTR()
  br label %144

144:                                              ; preds = %140, %139, %138, %137, %136, %135, %134, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %90, %70, %69, %68, %67, %66, %50, %36, %20, %17
  call void (...) @GETCHR() #6
  %145 = load i8, i8* @CH, align 1
  %.not4 = icmp eq i8 %145, 10
  br i1 %.not4, label %151, label %146

146:                                              ; preds = %144
  %147 = load i32, i32* @EOF_FLAG, align 4
  %.not5 = icmp eq i32 %147, 0
  br i1 %.not5, label %151, label %148

148:                                              ; preds = %146
  %149 = load i32, i32* @ERROR_CNT, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @ERROR_CNT, align 4
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %146, %144
  call void (...) @FLUSH() #6
  br label %153

152:                                              ; preds = %11
  store i32 0, i32* @EOF_FLAG, align 4
  br label %153

153:                                              ; preds = %152, %151
  br label %9, !llvm.loop !4

154:                                              ; preds = %9
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @str, i64 0, i64 0))
  %155 = load i32, i32* @ERROR_CNT, align 4
  %.not1 = icmp eq i32 %155, 0
  br i1 %.not1, label %159, label %156

156:                                              ; preds = %154
  %157 = load i32, i32* @ERROR_CNT, align 4
  %158 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.67, i64 0, i64 0), i32 noundef %157) #6
  br label %159

159:                                              ; preds = %156, %154
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @FLUSH(...) #2

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @GETSTR() #3 {
  call void (...) @GETCHR() #6
  %1 = load i8, i8* @CH, align 1
  %2 = icmp eq i8 %1, 32
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void (...) @FLUSH() #6
  call void (...) @GETCHR() #6
  br label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @ERROR_CNT, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @ERROR_CNT, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.51, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @str.52, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %3
  br label %8

8:                                                ; preds = %15, %7
  %9 = load i8, i8* @CH, align 1
  %.not = icmp eq i8 %9, 10
  br i1 %.not, label %13, label %10

10:                                               ; preds = %8
  %11 = load i8, i8* @CH, align 1
  %12 = icmp ne i8 %11, -1
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i1 [ false, %8 ], [ %12, %10 ]
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void (...) @GETCHR() #6
  br label %8, !llvm.loop !6

16:                                               ; preds = %13
  %17 = load i8, i8* @CH, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void (...) @BACKUP() #6
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* @EOF_FLAG, align 4
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @GETCHR(...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @BACKUP(...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
