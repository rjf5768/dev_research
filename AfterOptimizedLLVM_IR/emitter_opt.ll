; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/emitter.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @emit(i32 noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %7 = load i32, i32* @ErrorFlag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %202

10:                                               ; preds = %3
  %11 = load i32, i32* @NumberC, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @NumberC, align 4
  %13 = load i32, i32* @NumberC, align 4
  %14 = icmp sge i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @NumberC, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %196 [
    i32 2030, label %19
    i32 2029, label %21
    i32 2032, label %23
    i32 2031, label %25
    i32 2034, label %27
    i32 2033, label %29
    i32 2036, label %31
    i32 2035, label %33
    i32 2049, label %35
    i32 2050, label %43
    i32 2046, label %50
    i32 2045, label %52
    i32 2011, label %54
    i32 2020, label %56
    i32 2028, label %58
    i32 2022, label %60
    i32 2023, label %62
    i32 2063, label %64
    i32 2052, label %66
    i32 2051, label %73
    i32 2009, label %81
    i32 256, label %83
    i32 2001, label %86
    i32 2048, label %90
    i32 2047, label %98
    i32 2038, label %107
    i32 2039, label %109
    i32 2002, label %111
    i32 2003, label %113
    i32 2004, label %115
    i32 2014, label %117
    i32 2015, label %120
    i32 2016, label %123
    i32 2037, label %125
    i32 2017, label %127
    i32 2025, label %129
    i32 2018, label %131
    i32 2053, label %133
    i32 2054, label %135
    i32 2055, label %142
    i32 2056, label %144
    i32 2057, label %158
    i32 2059, label %166
    i32 2060, label %173
    i32 2061, label %175
    i32 2058, label %177
    i32 2026, label %184
    i32 2027, label %187
    i32 2062, label %189
  ]

19:                                               ; preds = %17
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %202

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %202

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %202

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %202

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %202

29:                                               ; preds = %17
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %202

31:                                               ; preds = %17
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %202

33:                                               ; preds = %17
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %202

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 16
  %41 = load i32, i32* @Scope, align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %40, i32 noundef %41)
  br label %202

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.entry, %struct.entry* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 16
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %48)
  br label %202

50:                                               ; preds = %17
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %202

52:                                               ; preds = %17
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %202

54:                                               ; preds = %17
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %202

56:                                               ; preds = %17
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %202

58:                                               ; preds = %17
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %202

60:                                               ; preds = %17
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %202

62:                                               ; preds = %17
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %202

64:                                               ; preds = %17
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %202

66:                                               ; preds = %17
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 16
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* noundef %71)
  br label %202

73:                                               ; preds = %17
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.entry, %struct.entry* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 16
  %79 = load i32, i32* @Scope, align 4
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* noundef %78, i32 noundef %79)
  br label %202

81:                                               ; preds = %17
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  br label %202

83:                                               ; preds = %17
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 noundef %84)
  br label %202

86:                                               ; preds = %17
  %87 = load float, float* %6, align 4
  %88 = fpext float %87 to double
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), double noundef %88)
  br label %202

90:                                               ; preds = %17
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.entry, %struct.entry* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 16
  %96 = load i32, i32* @DecCount, align 4
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %95, i32 noundef %96)
  br label %202

98:                                               ; preds = %17
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.entry, %struct.entry* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 16
  %104 = load i32, i32* @Scope, align 4
  %105 = load i32, i32* @offset, align 4
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef %103, i32 noundef %104, i32 noundef %105)
  br label %202

107:                                              ; preds = %17
  %108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %202

109:                                              ; preds = %17
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %202

111:                                              ; preds = %17
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  br label %202

113:                                              ; preds = %17
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  br label %202

115:                                              ; preds = %17
  %116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  br label %202

117:                                              ; preds = %17
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %118)
  br label %202

120:                                              ; preds = %17
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 noundef %121)
  br label %202

123:                                              ; preds = %17
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  br label %202

125:                                              ; preds = %17
  %126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %202

127:                                              ; preds = %17
  %128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  br label %202

129:                                              ; preds = %17
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  br label %202

131:                                              ; preds = %17
  %132 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0))
  br label %202

133:                                              ; preds = %17
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  br label %202

135:                                              ; preds = %17
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.entry, %struct.entry* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 16
  %141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef %140)
  br label %202

142:                                              ; preds = %17
  %143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  br label %202

144:                                              ; preds = %17
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.entry, %struct.entry* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 16
  %150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* noundef %149)
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.entry, %struct.entry* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 16
  %156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* noundef %155)
  %157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  br label %202

158:                                              ; preds = %17
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.entry, %struct.entry* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 16
  %164 = load i32, i32* @offset, align 4
  %165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef %163, i32 noundef %164)
  br label %202

166:                                              ; preds = %17
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.entry, %struct.entry* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 16
  %172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8* noundef %171)
  br label %202

173:                                              ; preds = %17
  %174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0))
  br label %202

175:                                              ; preds = %17
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0))
  br label %202

177:                                              ; preds = %17
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.entry, %struct.entry* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 16
  %183 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef %182)
  br label %202

184:                                              ; preds = %17
  %185 = load i32, i32* @DecCount, align 4
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i32 noundef %185)
  store i32 0, i32* @NumberC, align 4
  br label %202

187:                                              ; preds = %17
  %188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0))
  br label %202

189:                                              ; preds = %17
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.entry, %struct.entry* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 16
  %195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i64 0, i64 0), i8* noundef %194)
  br label %202

196:                                              ; preds = %17
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %5, align 4
  %199 = load float, float* %6, align 4
  %200 = fpext float %199 to double
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0), i32 noundef %197, i32 noundef %198, double noundef %200)
  br label %202

202:                                              ; preds = %9, %196, %189, %187, %184, %177, %175, %173, %166, %158, %144, %142, %135, %133, %131, %129, %127, %125, %123, %120, %117, %115, %113, %111, %109, %107, %98, %90, %86, %83, %81, %73, %66, %64, %62, %60, %58, %56, %54, %52, %50, %43, %35, %33, %31, %29, %27, %25, %23, %21, %19
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
