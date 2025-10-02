; ModuleID = './gofast.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/gofast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@fail_count = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Test failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fp_add 1+1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fp_sub 3-2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fp_mul 2*3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fp_div 3/2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fp_neg 1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dp_add 1+1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dp_sub 3-2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dp_mul 2*3\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"dp_div 3/2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dp_neg 1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fp_to_dp 1.5\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"dp_to_fp 1.5\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"floatsisf 1\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"floatsidf 1\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"fixsfsi 1.42\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"fixunssfsi 1.42\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"fixdfsi 1.42\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"fixunsdfsi 1.42\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"eqsf2 1==1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"eqsf2 1==2\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"nesf2 1!=1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gtsf2 2>1\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"gtsf2 1>1\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"gtsf2 0>1\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gesf2 2>=1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gesf2 1>=1\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gesf2 0>=1\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ltsf2 1<2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"ltsf2 1<1\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"ltsf2 1<0\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"lesf2 1<=2\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"lesf2 1<=1\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"lesf2 1<=0\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fp_add(float noundef %0, float noundef %1) #0 {
  %3 = fadd float %0, %1
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fp_sub(float noundef %0, float noundef %1) #0 {
  %3 = fsub float %0, %1
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fp_mul(float noundef %0, float noundef %1) #0 {
  %3 = fmul float %0, %1
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fp_div(float noundef %0, float noundef %1) #0 {
  %3 = fdiv float %0, %1
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fp_neg(float noundef %0) #0 {
  %2 = fneg float %0
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @dp_add(double noundef %0, double noundef %1) #0 {
  %3 = fadd double %0, %1
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @dp_sub(double noundef %0, double noundef %1) #0 {
  %3 = fsub double %0, %1
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @dp_mul(double noundef %0, double noundef %1) #0 {
  %3 = fmul double %0, %1
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @dp_div(double noundef %0, double noundef %1) #0 {
  %3 = fdiv double %0, %1
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @dp_neg(double noundef %0) #0 {
  %2 = fneg double %0
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @fp_to_dp(float noundef %0) #0 {
  %2 = fpext float %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @dp_to_fp(double noundef %0) #0 {
  %2 = fptrunc double %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @eqsf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oeq float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @nesf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp une float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gtsf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ogt float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gesf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oge float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ltsf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp olt float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @lesf2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ole float %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @eqdf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp oeq double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @nedf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp une double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gtdf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp ogt double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gedf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp oge double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ltdf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp olt double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ledf2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp ole double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @floatsisf(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @floatsidf(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fixsfsi(float noundef %0) #0 {
  %2 = fptosi float %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fixdfsi(double noundef %0) #0 {
  %2 = fptosi double %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fixunssfsi(float noundef %0) #0 {
  %2 = fptoui float %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fixunsdfsi(double noundef %0) #0 {
  %2 = fptoui double %0 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fail(i8* noundef %0) #1 {
  %2 = load i32, i32* @fail_count, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @fail_count, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  ret i32 undef
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call float @fp_add(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %2 = fcmp une float %1, 2.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = call float @fp_sub(float noundef 3.000000e+00, float noundef 2.000000e+00)
  %7 = fcmp une float %6, 1.000000e+00
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %5
  %11 = call float @fp_mul(float noundef 2.000000e+00, float noundef 3.000000e+00)
  %12 = fcmp une float %11, 6.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = call float @fp_div(float noundef 3.000000e+00, float noundef 2.000000e+00)
  %17 = fcmp une float %16, 1.500000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = call float @fp_neg(float noundef 1.000000e+00)
  %22 = fcmp une float %21, -1.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call double @dp_add(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %27 = fcmp une double %26, 2.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = call double @dp_sub(double noundef 3.000000e+00, double noundef 2.000000e+00)
  %32 = fcmp une double %31, 1.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = call double @dp_mul(double noundef 2.000000e+00, double noundef 3.000000e+00)
  %37 = fcmp une double %36, 6.000000e+00
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = call double @dp_div(double noundef 3.000000e+00, double noundef 2.000000e+00)
  %42 = fcmp une double %41, 1.500000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = call double @dp_neg(double noundef 1.000000e+00)
  %47 = fcmp une double %46, -1.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = call double @fp_to_dp(float noundef 1.500000e+00)
  %52 = fcmp une double %51, 1.500000e+00
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = call float @dp_to_fp(double noundef 1.500000e+00)
  %57 = fcmp une float %56, 1.500000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = call float @floatsisf(i32 noundef 1)
  %62 = fcmp une float %61, 1.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = call double @floatsidf(i32 noundef 1)
  %67 = fcmp une double %66, 1.000000e+00
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = call i32 @fixsfsi(float noundef 0x3FF6B851E0000000)
  %.not = icmp eq i32 %71, 1
  br i1 %.not, label %74, label %72

72:                                               ; preds = %70
  %73 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %70
  %75 = call i32 @fixunssfsi(float noundef 0x3FF6B851E0000000)
  %.not1 = icmp eq i32 %75, 1
  br i1 %.not1, label %78, label %76

76:                                               ; preds = %74
  %77 = call i32 @fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  %79 = call i32 @fixdfsi(double noundef 1.420000e+00)
  %.not2 = icmp eq i32 %79, 1
  br i1 %.not2, label %82, label %80

80:                                               ; preds = %78
  %81 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78
  %83 = call i32 @fixunsdfsi(double noundef 1.420000e+00)
  %.not3 = icmp eq i32 %83, 1
  br i1 %.not3, label %86, label %84

84:                                               ; preds = %82
  %85 = call i32 @fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  %87 = call i32 @eqsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = call i32 @eqsf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %.not4 = icmp eq i32 %92, 0
  br i1 %.not4, label %95, label %93

93:                                               ; preds = %91
  %94 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %91
  %96 = call i32 @nesf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  %101 = call i32 @nesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %.not5 = icmp eq i32 %101, 0
  br i1 %.not5, label %104, label %102

102:                                              ; preds = %100
  %103 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %100
  %105 = call i32 @gtsf2(float noundef 2.000000e+00, float noundef 1.000000e+00)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  %110 = call i32 @gtsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %.not6 = icmp eq i32 %110, 0
  br i1 %.not6, label %113, label %111

111:                                              ; preds = %109
  %112 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %109
  %114 = call i32 @gtsf2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %.not7 = icmp eq i32 %114, 0
  br i1 %.not7, label %117, label %115

115:                                              ; preds = %113
  %116 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %113
  %118 = call i32 @gesf2(float noundef 2.000000e+00, float noundef 1.000000e+00)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = call i32 @gesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  %128 = call i32 @gesf2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %.not8 = icmp eq i32 %128, 0
  br i1 %.not8, label %131, label %129

129:                                              ; preds = %127
  %130 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %127
  %132 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  %137 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %.not9 = icmp eq i32 %137, 0
  br i1 %.not9, label %140, label %138

138:                                              ; preds = %136
  %139 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %136
  %141 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %.not10 = icmp eq i32 %141, 0
  br i1 %.not10, label %144, label %142

142:                                              ; preds = %140
  %143 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %140
  %145 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149
  %155 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %.not11 = icmp eq i32 %155, 0
  br i1 %.not11, label %158, label %156

156:                                              ; preds = %154
  %157 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32, i32* @fail_count, align 4
  %.not12 = icmp eq i32 %159, 0
  br i1 %.not12, label %161, label %160

160:                                              ; preds = %158
  call void @abort() #6
  br label %UnifiedUnreachableBlock

161:                                              ; preds = %158
  call void @exit(i32 noundef 0) #6
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %161, %160
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
