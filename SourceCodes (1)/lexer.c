; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/lexer.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/lexer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@lineno = dso_local global i32 0, align 4
@NextTokenval = dso_local global i32 0, align 4
@lexbuf = dso_local global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [50 x i8] c"Indentifier cannot begin with a double underscore\00", align 1
@lookahead = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"improperly formed indentifier\00", align 1
@LocalIndex = dso_local global i32 0, align 4
@GlobalIndex = dso_local global i32 0, align 4
@LocalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@GlobalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@NextFtokenval = dso_local global float 0.000000e+00, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Exponents must be integer values\00", align 1
@tokenval = dso_local global i32 0, align 4
@ftokenval = dso_local global float 0.000000e+00, align 4
@FloatFlag = dso_local global i32 0, align 4
@ErrorFlag = dso_local global i32 0, align 4
@DecCount = dso_local global i32 0, align 4
@offset = dso_local global i32 0, align 4
@LabelCounter = dso_local global i32 0, align 4
@NumberC = dso_local global i32 0, align 4
@NextLookahead = dso_local global i32 0, align 4
@PreviousLookahead = dso_local global i32 0, align 4
@PreviousTokenval = dso_local global i32 0, align 4
@PreviousFtokenval = dso_local global float 0.000000e+00, align 4
@Scope = dso_local global i32 0, align 4
@ReturnLabel = dso_local global i32 0, align 4
@CallReturnAddr = dso_local global i32 0, align 4
@FuncNameIndex = dso_local global i32 0, align 4
@ArrayParsed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lexan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %0, %69
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %3
  br label %69

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @lineno, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @lineno, align 4
  br label %68

18:                                               ; preds = %12
  %19 = call i16** @__ctype_b_loc() #3
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 2048
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @Number(i32 noundef %32)
  store i32 %33, i32* %1, align 4
  br label %70

34:                                               ; preds = %28
  %35 = call i16** @__ctype_b_loc() #3
  %36 = load i16*, i16** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 1024
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 95
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %34
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @Indentifier(i32 noundef %48)
  store i32 %49, i32* %1, align 4
  br label %70

50:                                               ; preds = %44
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @Equal(i32 noundef %54)
  store i32 %55, i32* %1, align 4
  br label %70

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 33
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @Nequal(i32 noundef %60)
  store i32 %61, i32* %1, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 260, i32* %1, align 4
  br label %70

66:                                               ; preds = %62
  store i32 -1, i32* @NextTokenval, align 4
  %67 = load i32, i32* %2, align 4
  store i32 %67, i32* %1, align 4
  br label %70

68:                                               ; preds = %15
  br label %69

69:                                               ; preds = %68, %11
  br label %3

70:                                               ; preds = %66, %65, %59, %53, %47, %31
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Number(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float 0.000000e+00, float* @NextFtokenval, align 4
  store i32 0, i32* @NextTokenval, align 4
  %7 = call i16** @__ctype_b_loc() #3
  %8 = load i16*, i16** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %8, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2048
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %19 = call i32 @ungetc(i32 noundef %17, %struct._IO_FILE* noundef %18)
  %20 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef @NextTokenval)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %22 = call i32 @getc(%struct._IO_FILE* noundef %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 46
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 101
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 69
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %34 = call i32 @ungetc(i32 noundef %32, %struct._IO_FILE* noundef %33)
  store i32 256, i32* %2, align 4
  br label %159

35:                                               ; preds = %28, %25, %16
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %91

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %41 = call i32 @getc(%struct._IO_FILE* noundef %40)
  store i32 %41, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %45, %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 48
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %49 = call i32 @getc(%struct._IO_FILE* noundef %48)
  store i32 %49, i32* %3, align 4
  br label %42, !llvm.loop !4

50:                                               ; preds = %42
  %51 = call i16** @__ctype_b_loc() #3
  %52 = load i16*, i16** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 2048
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %63 = call i32 @ungetc(i32 noundef %61, %struct._IO_FILE* noundef %62)
  %64 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %4)
  %65 = load i32, i32* %4, align 4
  %66 = sitofp i32 %65 to float
  store float %66, float* @NextFtokenval, align 4
  br label %67

67:                                               ; preds = %71, %60
  %68 = load float, float* @NextFtokenval, align 4
  %69 = fpext float %68 to double
  %70 = fcmp oge double %69, 1.000000e+00
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load float, float* @NextFtokenval, align 4
  %73 = fdiv float %72, 1.000000e+01
  store float %73, float* @NextFtokenval, align 4
  br label %67, !llvm.loop !6

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %81, %77
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load float, float* @NextFtokenval, align 4
  %83 = fdiv float %82, 1.000000e+01
  store float %83, float* @NextFtokenval, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %78, !llvm.loop !7

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %89 = call i32 @getc(%struct._IO_FILE* noundef %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %50
  br label %91

91:                                               ; preds = %90, %36
  %92 = load i32, i32* @NextTokenval, align 4
  %93 = sitofp i32 %92 to float
  %94 = load float, float* @NextFtokenval, align 4
  %95 = fadd float %94, %93
  store float %95, float* @NextFtokenval, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 101
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 69
  br i1 %100, label %101, label %155

101:                                              ; preds = %98, %91
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %103 = call i32 @getc(%struct._IO_FILE* noundef %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 43
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 45
  br i1 %108, label %119, label %109

109:                                              ; preds = %106
  %110 = call i16** @__ctype_b_loc() #3
  %111 = load i16*, i16** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = and i32 %116, 2048
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %109, %106, %101
  %120 = load i32, i32* %3, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %122 = call i32 @ungetc(i32 noundef %120, %struct._IO_FILE* noundef %121)
  %123 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %5)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %125 = call i32 @getc(%struct._IO_FILE* noundef %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  call void @error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @lookahead, align 4
  store i32 %129, i32* %2, align 4
  br label %159

130:                                              ; preds = %119
  %131 = load i32, i32* %5, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %137, %133
  %135 = load i32, i32* %5, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load float, float* @NextFtokenval, align 4
  %139 = fmul float %138, 1.000000e+01
  store float %139, float* @NextFtokenval, align 4
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %5, align 4
  br label %134, !llvm.loop !8

142:                                              ; preds = %134
  br label %153

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %147, %143
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load float, float* @NextFtokenval, align 4
  %149 = fdiv float %148, 1.000000e+01
  store float %149, float* @NextFtokenval, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %144, !llvm.loop !9

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %142
  br label %154

154:                                              ; preds = %153, %109
  br label %155

155:                                              ; preds = %154, %98
  %156 = load i32, i32* %3, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %158 = call i32 @ungetc(i32 noundef %156, %struct._IO_FILE* noundef %157)
  store i32 2001, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %128, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Indentifier(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 95
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %11
  store i8 %9, i8* %12, align 1
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %16 = call i32 @getc(%struct._IO_FILE* noundef %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 95
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  call void @error(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @lookahead, align 4
  store i32 %20, i32* %2, align 4
  br label %107

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %1
  %23 = call i16** @__ctype_b_loc() #3
  %24 = load i16*, i16** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 1024
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %36
  store i8 %34, i8* %37, align 1
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %41 = call i32 @getc(%struct._IO_FILE* noundef %40)
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %22
  call void @error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @lookahead, align 4
  store i32 %43, i32* %2, align 4
  br label %107

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %70, %44
  %46 = call i16** @__ctype_b_loc() #3
  %47 = load i16*, i16** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 1024
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %45
  %56 = call i16** @__ctype_b_loc() #3
  %57 = load i16*, i16** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 2048
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 95
  br label %68

68:                                               ; preds = %65, %55, %45
  %69 = phi i1 [ true, %55 ], [ true, %45 ], [ %67, %65 ]
  br i1 %69, label %70, label %80

70:                                               ; preds = %68
  %71 = load i32, i32* %3, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %74
  store i8 %72, i8* %75, align 1
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %79 = call i32 @getc(%struct._IO_FILE* noundef %78)
  store i32 %79, i32* %3, align 4
  br label %45, !llvm.loop !10

80:                                               ; preds = %68
  %81 = load i32, i32* %3, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %83 = call i32 @ungetc(i32 noundef %81, %struct._IO_FILE* noundef %82)
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = call i32 @LocalLookup(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i64 0, i64 0))
  store i32 %87, i32* @LocalIndex, align 4
  %88 = call i32 @GlobalLookup(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i64 0, i64 0))
  store i32 %88, i32* @GlobalIndex, align 4
  %89 = load i32, i32* @LocalIndex, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = load i32, i32* @LocalIndex, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.entry, %struct.entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %2, align 4
  br label %107

97:                                               ; preds = %80
  %98 = load i32, i32* @GlobalIndex, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @GlobalIndex, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.entry, %struct.entry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %97
  store i32 259, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %100, %91, %42, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Equal(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 2012, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %12 = call i32 @ungetc(i32 noundef %10, %struct._IO_FILE* noundef %11)
  store i32 -1, i32* @NextTokenval, align 4
  store i32 61, i32* %2, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Nequal(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 2013, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %12 = call i32 @ungetc(i32 noundef %10, %struct._IO_FILE* noundef %11)
  store i32 -1, i32* @NextTokenval, align 4
  store i32 33, i32* %2, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @LocalLookup(i8* noundef) #1

declare dso_local i32 @GlobalLookup(i8* noundef) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
