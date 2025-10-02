; ModuleID = './lexer.ll'
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
  br label %1

1:                                                ; preds = %48, %0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2) #3
  %4 = icmp eq i32 %3, 32
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 9
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %1
  br label %48

8:                                                ; preds = %5
  %9 = icmp eq i32 %3, 10
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load i32, i32* @lineno, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @lineno, align 4
  br label %47

13:                                               ; preds = %8
  %14 = call i16** @__ctype_b_loc() #4
  %15 = load i16*, i16** %14, align 8
  %16 = sext i32 %3 to i64
  %17 = getelementptr inbounds i16, i16* %15, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = and i16 %18, 2048
  %.not = icmp eq i16 %19, 0
  br i1 %.not, label %20, label %22

20:                                               ; preds = %13
  %21 = icmp eq i32 %3, 46
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %13
  %23 = call i32 @Number(i32 noundef %3)
  br label %49

24:                                               ; preds = %20
  %25 = call i16** @__ctype_b_loc() #4
  %26 = load i16*, i16** %25, align 8
  %27 = sext i32 %3 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = and i16 %29, 1024
  %.not1 = icmp eq i16 %30, 0
  br i1 %.not1, label %31, label %33

31:                                               ; preds = %24
  %32 = icmp eq i32 %3, 95
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %24
  %34 = call i32 @Indentifier(i32 noundef %3)
  br label %49

35:                                               ; preds = %31
  %36 = icmp eq i32 %3, 61
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call i32 @Equal(i32 noundef %3)
  br label %49

39:                                               ; preds = %35
  %40 = icmp eq i32 %3, 33
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 @Nequal(i32 noundef %3)
  br label %49

43:                                               ; preds = %39
  %44 = icmp eq i32 %3, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %49

46:                                               ; preds = %43
  store i32 -1, i32* @NextTokenval, align 4
  br label %49

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %47, %7
  br label %1

49:                                               ; preds = %46, %45, %41, %37, %33, %22
  %.0 = phi i32 [ %23, %22 ], [ %34, %33 ], [ %38, %37 ], [ %42, %41 ], [ 260, %45 ], [ %3, %46 ]
  ret i32 %.0
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Number(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store float 0.000000e+00, float* @NextFtokenval, align 4
  store i32 0, i32* @NextTokenval, align 4
  %4 = call i16** @__ctype_b_loc() #4
  %5 = load i16*, i16** %4, align 8
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds i16, i16* %5, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = and i16 %8, 2048
  %.not = icmp eq i16 %9, 0
  br i1 %.not, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %12 = call i32 @ungetc(i32 noundef %0, %struct._IO_FILE* noundef %11) #3
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull @NextTokenval) #3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %15 = call i32 @getc(%struct._IO_FILE* noundef %14) #3
  %.not7 = icmp eq i32 %15, 46
  br i1 %.not7, label %21, label %16

16:                                               ; preds = %10
  %.not8 = icmp eq i32 %15, 101
  br i1 %.not8, label %21, label %17

17:                                               ; preds = %16
  %.not9 = icmp eq i32 %15, 69
  br i1 %.not9, label %21, label %18

18:                                               ; preds = %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %20 = call i32 @ungetc(i32 noundef %15, %struct._IO_FILE* noundef %19) #3
  br label %122

21:                                               ; preds = %17, %16, %10
  br label %22

22:                                               ; preds = %21, %1
  %.01 = phi i32 [ %15, %21 ], [ %0, %1 ]
  %23 = icmp eq i32 %.01, 46
  br i1 %23, label %24, label %64

24:                                               ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %26 = call i32 @getc(%struct._IO_FILE* noundef %25) #3
  br label %27

27:                                               ; preds = %29, %24
  %.02 = phi i32 [ 0, %24 ], [ %30, %29 ]
  %.1 = phi i32 [ %26, %24 ], [ %32, %29 ]
  %28 = icmp eq i32 %.1, 48
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = add nuw nsw i32 %.02, 1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %32 = call i32 @getc(%struct._IO_FILE* noundef %31) #3
  br label %27, !llvm.loop !4

33:                                               ; preds = %27
  %34 = call i16** @__ctype_b_loc() #4
  %35 = load i16*, i16** %34, align 8
  %36 = sext i32 %.1 to i64
  %37 = getelementptr inbounds i16, i16* %35, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = and i16 %38, 2048
  %.not5 = icmp eq i16 %39, 0
  br i1 %.not5, label %63, label %40

40:                                               ; preds = %33
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %42 = call i32 @ungetc(i32 noundef %.1, %struct._IO_FILE* noundef %41) #3
  %43 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %2) #3
  %44 = load i32, i32* %2, align 4
  %45 = sitofp i32 %44 to float
  br label %46

46:                                               ; preds = %48, %40
  %storemerge = phi float [ %45, %40 ], [ %50, %48 ]
  store float %storemerge, float* @NextFtokenval, align 4
  %47 = fcmp ult float %storemerge, 1.000000e+00
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = load float, float* @NextFtokenval, align 4
  %50 = fdiv float %49, 1.000000e+01
  br label %46, !llvm.loop !6

51:                                               ; preds = %46
  %.not6 = icmp eq i32 %.02, 0
  br i1 %.not6, label %60, label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %55, %52
  %.13 = phi i32 [ %.02, %52 ], [ %58, %55 ]
  %54 = icmp sgt i32 %.13, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = load float, float* @NextFtokenval, align 4
  %57 = fdiv float %56, 1.000000e+01
  store float %57, float* @NextFtokenval, align 4
  %58 = add nsw i32 %.13, -1
  br label %53, !llvm.loop !7

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %62 = call i32 @getc(%struct._IO_FILE* noundef %61) #3
  br label %63

63:                                               ; preds = %60, %33
  %.2 = phi i32 [ %62, %60 ], [ %.1, %33 ]
  br label %64

64:                                               ; preds = %63, %22
  %.3 = phi i32 [ %.2, %63 ], [ %.01, %22 ]
  %65 = load i32, i32* @NextTokenval, align 4
  %66 = sitofp i32 %65 to float
  %67 = load float, float* @NextFtokenval, align 4
  %68 = fadd float %67, %66
  store float %68, float* @NextFtokenval, align 4
  %69 = icmp eq i32 %.3, 101
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = icmp eq i32 %.3, 69
  br i1 %71, label %72, label %119

72:                                               ; preds = %70, %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %74 = call i32 @getc(%struct._IO_FILE* noundef %73) #3
  %75 = icmp eq i32 %74, 43
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = icmp eq i32 %74, 45
  br i1 %77, label %85, label %78

78:                                               ; preds = %76
  %79 = call i16** @__ctype_b_loc() #4
  %80 = load i16*, i16** %79, align 8
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds i16, i16* %80, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = and i16 %83, 2048
  %.not4 = icmp eq i16 %84, 0
  br i1 %.not4, label %118, label %85

85:                                               ; preds = %78, %76, %72
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %87 = call i32 @ungetc(i32 noundef %74, %struct._IO_FILE* noundef %86) #3
  %88 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %3) #3
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %90 = call i32 @getc(%struct._IO_FILE* noundef %89) #3
  %91 = icmp eq i32 %90, 46
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  call void @error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0)) #3
  %93 = load i32, i32* @lookahead, align 4
  br label %122

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %101, %97
  %99 = load i32, i32* %3, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load float, float* @NextFtokenval, align 4
  %103 = fmul float %102, 1.000000e+01
  store float %103, float* @NextFtokenval, align 4
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %3, align 4
  br label %98, !llvm.loop !8

106:                                              ; preds = %98
  br label %117

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %111, %107
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load float, float* @NextFtokenval, align 4
  %113 = fdiv float %112, 1.000000e+01
  store float %113, float* @NextFtokenval, align 4
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %108, !llvm.loop !9

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %106
  br label %118

118:                                              ; preds = %117, %78
  %.4 = phi i32 [ %90, %117 ], [ %74, %78 ]
  br label %119

119:                                              ; preds = %118, %70
  %.5 = phi i32 [ %.4, %118 ], [ %.3, %70 ]
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %121 = call i32 @ungetc(i32 noundef %.5, %struct._IO_FILE* noundef %120) #3
  br label %122

122:                                              ; preds = %119, %92, %18
  %.0 = phi i32 [ 256, %18 ], [ %93, %92 ], [ 2001, %119 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Indentifier(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 95
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i64 0, i64 0), align 16
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %6 = call i32 @getc(%struct._IO_FILE* noundef %5) #3
  %7 = icmp eq i32 %6, 95
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  call void @error(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0)) #3
  %9 = load i32, i32* @lookahead, align 4
  br label %72

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %1
  %.02 = phi i32 [ 1, %10 ], [ 0, %1 ]
  %.01 = phi i32 [ %6, %10 ], [ %0, %1 ]
  %12 = call i16** @__ctype_b_loc() #4
  %13 = load i16*, i16** %12, align 8
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = and i16 %16, 1024
  %.not = icmp eq i16 %17, 0
  br i1 %.not, label %24, label %18

18:                                               ; preds = %11
  %19 = trunc i32 %.01 to i8
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %20
  store i8 %19, i8* %21, align 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %23 = call i32 @getc(%struct._IO_FILE* noundef %22) #3
  br label %26

24:                                               ; preds = %11
  call void @error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #3
  %25 = load i32, i32* @lookahead, align 4
  br label %72

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %45, %26
  %.13.in = phi i32 [ %.02, %26 ], [ %.13, %45 ]
  %.1 = phi i32 [ %23, %26 ], [ %50, %45 ]
  %.13 = add nuw nsw i32 %.13.in, 1
  %28 = call i16** @__ctype_b_loc() #4
  %29 = load i16*, i16** %28, align 8
  %30 = sext i32 %.1 to i64
  %31 = getelementptr inbounds i16, i16* %29, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = and i16 %32, 1024
  %.not4 = icmp eq i16 %33, 0
  br i1 %.not4, label %34, label %43

34:                                               ; preds = %27
  %35 = call i16** @__ctype_b_loc() #4
  %36 = load i16*, i16** %35, align 8
  %37 = sext i32 %.1 to i64
  %38 = getelementptr inbounds i16, i16* %36, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = and i16 %39, 2048
  %.not5 = icmp eq i16 %40, 0
  br i1 %.not5, label %41, label %43

41:                                               ; preds = %34
  %42 = icmp eq i32 %.1, 95
  br label %43

43:                                               ; preds = %41, %34, %27
  %44 = phi i1 [ true, %34 ], [ true, %27 ], [ %42, %41 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = trunc i32 %.1 to i8
  %47 = zext i32 %.13 to i64
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %47
  store i8 %46, i8* %48, align 1
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %50 = call i32 @getc(%struct._IO_FILE* noundef %49) #3
  br label %27, !llvm.loop !10

51:                                               ; preds = %43
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %53 = call i32 @ungetc(i32 noundef %.1, %struct._IO_FILE* noundef %52) #3
  %54 = zext i32 %.13 to i64
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i64 0, i64 %54
  store i8 0, i8* %55, align 1
  %56 = call i32 @LocalLookup(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i64 0, i64 0)) #3
  store i32 %56, i32* @LocalIndex, align 4
  %57 = call i32 @GlobalLookup(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i64 0, i64 0)) #3
  store i32 %57, i32* @GlobalIndex, align 4
  %58 = load i32, i32* @LocalIndex, align 4
  %.not6 = icmp eq i32 %58, 0
  br i1 %.not6, label %64, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @LocalIndex, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i64 0, i64 %61, i32 1
  %63 = load i32, i32* %62, align 8
  br label %72

64:                                               ; preds = %51
  %65 = load i32, i32* @GlobalIndex, align 4
  %.not7 = icmp eq i32 %65, 0
  br i1 %.not7, label %71, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* @GlobalIndex, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i64 0, i64 %68, i32 1
  %70 = load i32, i32* %69, align 8
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %66, %59, %24, %8
  %.0 = phi i32 [ %9, %8 ], [ %63, %59 ], [ %70, %66 ], [ 259, %71 ], [ %25, %24 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Equal(i32 noundef %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2) #3
  %4 = icmp eq i32 %3, 61
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 @ungetc(i32 noundef %3, %struct._IO_FILE* noundef %7) #3
  store i32 -1, i32* @NextTokenval, align 4
  br label %9

9:                                                ; preds = %6, %5
  %.0 = phi i32 [ 2012, %5 ], [ 61, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Nequal(i32 noundef %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2) #3
  %4 = icmp eq i32 %3, 61
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 @ungetc(i32 noundef %3, %struct._IO_FILE* noundef %7) #3
  store i32 -1, i32* @NextTokenval, align 4
  br label %9

9:                                                ; preds = %6, %5
  %.0 = phi i32 [ 2013, %5 ], [ 33, %6 ]
  ret i32 %.0
}

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @LocalLookup(i8* noundef) #1

declare dso_local i32 @GlobalLookup(i8* noundef) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone willreturn }

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
