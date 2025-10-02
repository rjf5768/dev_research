; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/fixoutput/fixoutput.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @LEX_LEN, align 4
  %7 = add i32 1, %6
  %8 = zext i32 %7 to i64
  %9 = call noalias i8* @calloc(i64 noundef %8, i64 noundef 1) #4
  store i8* %9, i8** @LEXEME, align 8
  call void (...) @FLUSH()
  br label %10

10:                                               ; preds = %210, %0
  %11 = load i32, i32* @EOF_FLAG, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %211

13:                                               ; preds = %10
  %14 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %2)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %16 = call i32 @feof(%struct._IO_FILE* noundef %15) #4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %209, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %191 [
    i32 0, label %20
    i32 1, label %23
    i32 2, label %27
    i32 3, label %43
    i32 4, label %61
    i32 5, label %83
    i32 6, label %85
    i32 7, label %87
    i32 8, label %89
    i32 9, label %91
    i32 10, label %113
    i32 11, label %135
    i32 12, label %137
    i32 13, label %139
    i32 14, label %141
    i32 15, label %143
    i32 16, label %145
    i32 18, label %147
    i32 17, label %149
    i32 19, label %151
    i32 20, label %153
    i32 21, label %155
    i32 22, label %157
    i32 23, label %159
    i32 24, label %161
    i32 25, label %163
    i32 26, label %165
    i32 27, label %167
    i32 28, label %169
    i32 29, label %171
    i32 30, label %173
    i32 31, label %175
    i32 32, label %179
    i32 33, label %181
    i32 34, label %183
    i32 35, label %185
    i32 36, label %187
    i32 37, label %189
  ]

20:                                               ; preds = %18
  call void @GETSTR()
  %21 = load i8*, i8** @LEXEME, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %21)
  br label %197

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 noundef %25)
  br label %197

27:                                               ; preds = %18
  %28 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %37 [
    i32 43, label %31
    i32 45, label %33
    i32 260, label %35
  ]

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %42

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %42

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @ERROR_CNT, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @ERROR_CNT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 noundef %40)
  br label %42

42:                                               ; preds = %37, %35, %33, %31
  br label %197

43:                                               ; preds = %18
  %44 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %55 [
    i32 42, label %47
    i32 47, label %49
    i32 259, label %51
    i32 261, label %53
  ]

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %60

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %60

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %60

53:                                               ; preds = %43
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @ERROR_CNT, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @ERROR_CNT, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 noundef %58)
  br label %60

60:                                               ; preds = %55, %53, %51, %49, %47
  br label %197

61:                                               ; preds = %18
  %62 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  switch i32 %64, label %77 [
    i32 61, label %65
    i32 256, label %67
    i32 257, label %69
    i32 60, label %71
    i32 258, label %73
    i32 62, label %75
  ]

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %82

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %82

69:                                               ; preds = %61
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %82

71:                                               ; preds = %61
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %82

73:                                               ; preds = %61
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %82

75:                                               ; preds = %61
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %82

77:                                               ; preds = %61
  %78 = load i32, i32* @ERROR_CNT, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @ERROR_CNT, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 noundef %80)
  br label %82

82:                                               ; preds = %77, %75, %73, %71, %69, %67, %65
  br label %197

83:                                               ; preds = %18
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %197

85:                                               ; preds = %18
  %86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  br label %197

87:                                               ; preds = %18
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  br label %197

89:                                               ; preds = %18
  %90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  br label %197

91:                                               ; preds = %18
  %92 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %112

98:                                               ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %4)
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 noundef %103)
  br label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @ERROR_CNT, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @ERROR_CNT, align 4
  %108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0))
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %109)
  br label %111

111:                                              ; preds = %105, %101
  br label %112

112:                                              ; preds = %111, %96
  br label %197

113:                                              ; preds = %18
  %114 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %3)
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %134

120:                                              ; preds = %113
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), double* noundef %5)
  %125 = load double, double* %5, align 8
  %126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), double noundef %125)
  br label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @ERROR_CNT, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @ERROR_CNT, align 4
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0))
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 noundef %131)
  br label %133

133:                                              ; preds = %127, %123
  br label %134

134:                                              ; preds = %133, %118
  br label %197

135:                                              ; preds = %18
  %136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  br label %197

137:                                              ; preds = %18
  %138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %197

139:                                              ; preds = %18
  %140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0))
  br label %197

141:                                              ; preds = %18
  %142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0))
  br label %197

143:                                              ; preds = %18
  %144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  br label %197

145:                                              ; preds = %18
  %146 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  br label %197

147:                                              ; preds = %18
  %148 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0))
  br label %197

149:                                              ; preds = %18
  %150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0))
  br label %197

151:                                              ; preds = %18
  %152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  br label %197

153:                                              ; preds = %18
  %154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0))
  br label %197

155:                                              ; preds = %18
  %156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0))
  br label %197

157:                                              ; preds = %18
  %158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0))
  br label %197

159:                                              ; preds = %18
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0))
  br label %197

161:                                              ; preds = %18
  %162 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0))
  br label %197

163:                                              ; preds = %18
  %164 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  br label %197

165:                                              ; preds = %18
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  br label %197

167:                                              ; preds = %18
  %168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0))
  br label %197

169:                                              ; preds = %18
  %170 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0))
  br label %197

171:                                              ; preds = %18
  %172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0))
  br label %197

173:                                              ; preds = %18
  %174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0))
  br label %197

175:                                              ; preds = %18
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0))
  call void @GETSTR()
  %177 = load i8*, i8** @LEXEME, align 8
  %178 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* noundef %177)
  br label %197

179:                                              ; preds = %18
  %180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0))
  br label %197

181:                                              ; preds = %18
  %182 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0))
  br label %197

183:                                              ; preds = %18
  %184 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0))
  br label %197

185:                                              ; preds = %18
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0))
  br label %197

187:                                              ; preds = %18
  %188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0))
  br label %197

189:                                              ; preds = %18
  %190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0))
  br label %197

191:                                              ; preds = %18
  %192 = load i32, i32* @ERROR_CNT, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @ERROR_CNT, align 4
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i64 0, i64 0))
  %195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0))
  call void @GETSTR()
  br label %197

197:                                              ; preds = %191, %189, %187, %185, %183, %181, %179, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %134, %112, %89, %87, %85, %83, %82, %60, %42, %23, %20
  call void (...) @GETCHR()
  %198 = load i8, i8* @CH, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 10
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load i32, i32* @EOF_FLAG, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* @ERROR_CNT, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @ERROR_CNT, align 4
  %207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.65, i64 0, i64 0))
  br label %208

208:                                              ; preds = %204, %201, %197
  call void (...) @FLUSH()
  br label %210

209:                                              ; preds = %13
  store i32 0, i32* @EOF_FLAG, align 4
  br label %210

210:                                              ; preds = %209, %208
  br label %10, !llvm.loop !4

211:                                              ; preds = %10
  %212 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0))
  %213 = load i32, i32* @ERROR_CNT, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* @ERROR_CNT, align 4
  %217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.67, i64 0, i64 0), i32 noundef %216)
  br label %218

218:                                              ; preds = %215, %211
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @FLUSH(...) #2

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @GETSTR() #0 {
  call void (...) @GETCHR()
  %1 = load i8, i8* @CH, align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 32
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void (...) @FLUSH()
  call void (...) @GETCHR()
  br label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @ERROR_CNT, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @ERROR_CNT, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.68, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i64 0, i64 0))
  br label %10

10:                                               ; preds = %5, %4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i8, i8* @CH, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8, i8* @CH, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, -1
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void (...) @GETCHR()
  br label %11, !llvm.loop !6

22:                                               ; preds = %19
  %23 = load i8, i8* @CH, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void (...) @BACKUP()
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* @EOF_FLAG, align 4
  br label %28

28:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @GETCHR(...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @BACKUP(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
