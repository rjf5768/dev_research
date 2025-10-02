; ModuleID = './emitter.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/emitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@ErrorFlag = dso_local global i32 0, align 4
@NumberC = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RADD, \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ADD, \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"RSUB, \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SUB, \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"RMUL, \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"MUL, \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RDIV, \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DIV, \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"'%s#%d, \00", align 1
@LocalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@Scope = dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"'%s#0, \00", align 1
@GlobalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"WRITEI, \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"WRITER, \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"NEWLINE, \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ST, \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"IST, \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"STH, \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"VAL, \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VALB, \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"@%s#0, \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c">%s#%d, \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"READ, \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%16.4e, \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%s#0 = %d, \00", align 1
@DecCount = dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"%s#%d = %d, \00", align 1
@offset = dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"NEG, \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"RNEG, \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"FIX, \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"FLOAT, \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"POP, \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"$%d: \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"$%d, \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"COMP, \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"SWAP, \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"BEQ, \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"BNE, \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"B, \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"STHB, \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ISTB, \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"RA%s = 0, \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"'RA%s, \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"istb, \00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"frame%s = %d, \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"'frame%s, \00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"IB, \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"DB, \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c">RA%s, \00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"\0A%%%d, START: $3, sb, $2, $1, b,\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"\0A$2: STOP, $3: ->START.\0A\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"\0A Function %s called but not parsed.\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"token %d, tval %d, rval %f\0A\00", align 1
@lookahead = dso_local global i32 0, align 4
@tokenval = dso_local global i32 0, align 4
@ftokenval = dso_local global float 0.000000e+00, align 4
@FloatFlag = dso_local global i32 0, align 4
@lineno = dso_local global i32 0, align 4
@LabelCounter = dso_local global i32 0, align 4
@lexbuf = dso_local global [128 x i8] zeroinitializer, align 16
@LocalIndex = dso_local global i32 0, align 4
@GlobalIndex = dso_local global i32 0, align 4
@NextLookahead = dso_local global i32 0, align 4
@NextTokenval = dso_local global i32 0, align 4
@NextFtokenval = dso_local global float 0.000000e+00, align 4
@PreviousLookahead = dso_local global i32 0, align 4
@PreviousTokenval = dso_local global i32 0, align 4
@PreviousFtokenval = dso_local global float 0.000000e+00, align 4
@ReturnLabel = dso_local global i32 0, align 4
@CallReturnAddr = dso_local global i32 0, align 4
@FuncNameIndex = dso_local global i32 0, align 4
@ArrayParsed = dso_local global i32 0, align 4
@str = private unnamed_addr constant [24 x i8] c"\0A$2: STOP, $3: ->START.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @emit(i32 noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = load i32, i32* @ErrorFlag, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  br label %161

6:                                                ; preds = %3
  %7 = load i32, i32* @NumberC, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @NumberC, align 4
  %9 = icmp sgt i32 %7, 6
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
  store i32 0, i32* @NumberC, align 4
  br label %11

11:                                               ; preds = %10, %6
  switch i32 %0, label %158 [
    i32 2030, label %12
    i32 2029, label %14
    i32 2032, label %16
    i32 2031, label %18
    i32 2034, label %20
    i32 2033, label %22
    i32 2036, label %24
    i32 2035, label %26
    i32 2049, label %28
    i32 2050, label %34
    i32 2046, label %39
    i32 2045, label %41
    i32 2011, label %43
    i32 2020, label %45
    i32 2028, label %47
    i32 2022, label %49
    i32 2023, label %51
    i32 2063, label %53
    i32 2052, label %55
    i32 2051, label %60
    i32 2009, label %66
    i32 256, label %68
    i32 2001, label %70
    i32 2048, label %73
    i32 2047, label %79
    i32 2038, label %86
    i32 2039, label %88
    i32 2002, label %90
    i32 2003, label %92
    i32 2004, label %94
    i32 2014, label %96
    i32 2015, label %98
    i32 2016, label %100
    i32 2037, label %102
    i32 2017, label %104
    i32 2025, label %106
    i32 2018, label %108
    i32 2053, label %110
    i32 2054, label %112
    i32 2055, label %117
    i32 2056, label %119
    i32 2057, label %129
    i32 2059, label %135
    i32 2060, label %140
    i32 2061, label %142
    i32 2058, label %144
    i32 2026, label %149
    i32 2027, label %152
    i32 2062, label %153
  ]

12:                                               ; preds = %11
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %161

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %161

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %161

18:                                               ; preds = %11
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %161

20:                                               ; preds = %11
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #3
  br label %161

22:                                               ; preds = %11
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %161

24:                                               ; preds = %11
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %161

26:                                               ; preds = %11
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %161

28:                                               ; preds = %11
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %29, i32 0
  %31 = load i8*, i8** %30, align 16
  %32 = load i32, i32* @Scope, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %31, i32 noundef %32) #3
  br label %161

34:                                               ; preds = %11
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %35, i32 0
  %37 = load i8*, i8** %36, align 16
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %37) #3
  br label %161

39:                                               ; preds = %11
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %161

41:                                               ; preds = %11
  %42 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %161

43:                                               ; preds = %11
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #3
  br label %161

45:                                               ; preds = %11
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #3
  br label %161

47:                                               ; preds = %11
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %161

49:                                               ; preds = %11
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #3
  br label %161

51:                                               ; preds = %11
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #3
  br label %161

53:                                               ; preds = %11
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #3
  br label %161

55:                                               ; preds = %11
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %56, i32 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* noundef %58) #3
  br label %161

60:                                               ; preds = %11
  %61 = sext i32 %1 to i64
  %62 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %61, i32 0
  %63 = load i8*, i8** %62, align 16
  %64 = load i32, i32* @Scope, align 4
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %63, i32 noundef %64) #3
  br label %161

66:                                               ; preds = %11
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #3
  br label %161

68:                                               ; preds = %11
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 noundef %1) #3
  br label %161

70:                                               ; preds = %11
  %71 = fpext float %2 to double
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), double noundef %71) #3
  br label %161

73:                                               ; preds = %11
  %74 = sext i32 %1 to i64
  %75 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %74, i32 0
  %76 = load i8*, i8** %75, align 16
  %77 = load i32, i32* @DecCount, align 4
  %78 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %76, i32 noundef %77) #3
  br label %161

79:                                               ; preds = %11
  %80 = sext i32 %1 to i64
  %81 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %80, i32 0
  %82 = load i8*, i8** %81, align 16
  %83 = load i32, i32* @Scope, align 4
  %84 = load i32, i32* @offset, align 4
  %85 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef %82, i32 noundef %83, i32 noundef %84) #3
  br label %161

86:                                               ; preds = %11
  %87 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #3
  br label %161

88:                                               ; preds = %11
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #3
  br label %161

90:                                               ; preds = %11
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #3
  br label %161

92:                                               ; preds = %11
  %93 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #3
  br label %161

94:                                               ; preds = %11
  %95 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #3
  br label %161

96:                                               ; preds = %11
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %1) #3
  br label %161

98:                                               ; preds = %11
  %99 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 noundef %1) #3
  br label %161

100:                                              ; preds = %11
  %101 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)) #3
  br label %161

102:                                              ; preds = %11
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #3
  br label %161

104:                                              ; preds = %11
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #3
  br label %161

106:                                              ; preds = %11
  %107 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #3
  br label %161

108:                                              ; preds = %11
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #3
  br label %161

110:                                              ; preds = %11
  %111 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #3
  br label %161

112:                                              ; preds = %11
  %113 = sext i32 %1 to i64
  %114 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %113, i32 0
  %115 = load i8*, i8** %114, align 16
  %116 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef %115) #3
  br label %161

117:                                              ; preds = %11
  %118 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #3
  br label %161

119:                                              ; preds = %11
  %120 = sext i32 %1 to i64
  %121 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %120, i32 0
  %122 = load i8*, i8** %121, align 16
  %123 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* noundef %122) #3
  %124 = sext i32 %1 to i64
  %125 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %124, i32 0
  %126 = load i8*, i8** %125, align 16
  %127 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* noundef %126) #3
  %128 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)) #3
  br label %161

129:                                              ; preds = %11
  %130 = sext i32 %1 to i64
  %131 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %130, i32 0
  %132 = load i8*, i8** %131, align 16
  %133 = load i32, i32* @offset, align 4
  %134 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef %132, i32 noundef %133) #3
  br label %161

135:                                              ; preds = %11
  %136 = sext i32 %1 to i64
  %137 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %136, i32 0
  %138 = load i8*, i8** %137, align 16
  %139 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8* noundef %138) #3
  br label %161

140:                                              ; preds = %11
  %141 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #3
  br label %161

142:                                              ; preds = %11
  %143 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #3
  br label %161

144:                                              ; preds = %11
  %145 = sext i32 %1 to i64
  %146 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %145, i32 0
  %147 = load i8*, i8** %146, align 16
  %148 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef %147) #3
  br label %161

149:                                              ; preds = %11
  %150 = load i32, i32* @DecCount, align 4
  %151 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i32 noundef %150) #3
  store i32 0, i32* @NumberC, align 4
  br label %161

152:                                              ; preds = %11
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0))
  br label %161

153:                                              ; preds = %11
  %154 = sext i32 %1 to i64
  %155 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %154, i32 0
  %156 = load i8*, i8** %155, align 16
  %157 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i64 0, i64 0), i8* noundef %156) #3
  br label %161

158:                                              ; preds = %11
  %159 = fpext float %2 to double
  %160 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0), i32 noundef %0, i32 noundef %1, double noundef %159) #3
  br label %161

161:                                              ; preds = %158, %153, %152, %149, %144, %142, %140, %135, %129, %119, %117, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %79, %73, %70, %68, %66, %60, %55, %53, %51, %49, %47, %45, %43, %41, %39, %34, %28, %26, %24, %22, %20, %18, %16, %14, %12, %5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
