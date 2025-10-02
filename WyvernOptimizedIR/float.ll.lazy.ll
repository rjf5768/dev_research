; ModuleID = './float.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

@Z_err_buf = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.result = internal global %struct.R_flstr* null, align 8
@F_floatsub.needinit = internal global i32 1, align 4
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.result = internal global %struct.R_flstr* null, align 8
@F_floatmul.needinit = internal global i32 1, align 4
@F_floatmagadd.result = internal global %struct.R_flstr* null, align 8
@F_floatmagadd.needinit = internal global i32 1, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @F_isfloat(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %4

4:                                                ; preds = %3
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 43
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %0, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  br label %12

12:                                               ; preds = %10, %7, %3
  %.07 = phi i32 [ 1, %10 ], [ 0, %7 ], [ 0, %3 ]
  %.01 = phi i8* [ %11, %10 ], [ %0, %7 ], [ %0, %3 ]
  br label %13

13:                                               ; preds = %21, %12
  %.18 = phi i32 [ %.07, %12 ], [ %23, %21 ]
  %.02 = phi i32 [ 0, %12 ], [ 1, %21 ]
  %.1 = phi i8* [ %.01, %12 ], [ %22, %21 ]
  %14 = call i16** @__ctype_b_loc() #9
  %15 = load i16*, i16** %14, align 8
  %16 = load i8, i8* %.1, align 1
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 2048
  %.not11 = icmp eq i16 %20, 0
  br i1 %.not11, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, i8* %.1, i64 1
  %23 = add nuw nsw i32 %.18, 1
  br label %13, !llvm.loop !4

24:                                               ; preds = %13
  %25 = load i8, i8* %.1, align 1
  %26 = icmp eq i8 %25, 46
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %.1, i64 1
  %29 = add nuw nsw i32 %.18, 1
  br label %33

30:                                               ; preds = %24
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %32, label %31

31:                                               ; preds = %30
  br label %92

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %27
  %.29 = phi i32 [ %29, %27 ], [ %.18, %32 ]
  %.2 = phi i8* [ %28, %27 ], [ %.1, %32 ]
  br label %34

34:                                               ; preds = %42, %33
  %.310 = phi i32 [ %.29, %33 ], [ %44, %42 ]
  %.13 = phi i32 [ %.02, %33 ], [ 1, %42 ]
  %.3 = phi i8* [ %.2, %33 ], [ %43, %42 ]
  %35 = call i16** @__ctype_b_loc() #9
  %36 = load i16*, i16** %35, align 8
  %37 = load i8, i8* %.3, align 1
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = and i16 %40, 2048
  %.not13 = icmp eq i16 %41, 0
  br i1 %.not13, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds i8, i8* %.3, i64 1
  %44 = add nsw i32 %.310, 1
  br label %34, !llvm.loop !6

45:                                               ; preds = %34
  %.not14 = icmp eq i32 %.13, 0
  br i1 %.not14, label %46, label %47

46:                                               ; preds = %45
  br label %92

47:                                               ; preds = %45
  %48 = load i8, i8* %.3, align 1
  %49 = icmp eq i8 %48, 101
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i8, i8* %.3, align 1
  %52 = icmp eq i8 %51, 69
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8, i8* %.3, align 1
  %55 = icmp eq i8 %54, 100
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8, i8* %.3, align 1
  %58 = icmp eq i8 %57, 68
  br i1 %58, label %59, label %90

59:                                               ; preds = %56, %53, %50, %47
  %60 = getelementptr inbounds i8, i8* %.3, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = icmp eq i8 %61, 43
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %60, align 1
  %65 = icmp eq i8 %64, 45
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds i8, i8* %.3, i64 2
  br label %68

68:                                               ; preds = %66, %63
  %.04 = phi i32 [ 2, %66 ], [ 1, %63 ]
  %.4 = phi i8* [ %67, %66 ], [ %60, %63 ]
  %69 = call i16** @__ctype_b_loc() #9
  %70 = load i16*, i16** %69, align 8
  %71 = load i8, i8* %.4, align 1
  %72 = sext i8 %71 to i64
  %73 = getelementptr inbounds i16, i16* %70, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = and i16 %74, 2048
  %.not15 = icmp eq i16 %75, 0
  br i1 %.not15, label %76, label %77

76:                                               ; preds = %68
  br label %92

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %86, %77
  %.15 = phi i32 [ %.04, %77 ], [ %88, %86 ]
  %.5 = phi i8* [ %.4, %77 ], [ %87, %86 ]
  %79 = call i16** @__ctype_b_loc() #9
  %80 = load i16*, i16** %79, align 8
  %81 = load i8, i8* %.5, align 1
  %82 = sext i8 %81 to i64
  %83 = getelementptr inbounds i16, i16* %80, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = and i16 %84, 2048
  %.not16 = icmp eq i16 %85, 0
  br i1 %.not16, label %89, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds i8, i8* %.5, i64 1
  %88 = add nuw nsw i32 %.15, 1
  br label %78, !llvm.loop !7

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %56
  %.26 = phi i32 [ %.15, %89 ], [ 0, %56 ]
  %91 = add nsw i32 %.310, %.26
  br label %92

92:                                               ; preds = %90, %76, %46, %31
  %.0 = phi i32 [ %91, %90 ], [ %.310, %76 ], [ 0, %46 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_atof(i8* noundef %0, i32 noundef %1) #2 {
  %3 = alloca [200 x i8], align 16
  %4 = call %struct.R_flstr* (...) @R_makefloat() #10
  %5 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %6, align 16
  %7 = load i8, i8* %0, align 1
  %8 = icmp eq i8 %7, 43
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br label %18

11:                                               ; preds = %2
  %12 = load i8, i8* %0, align 1
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds i8, i8* %0, i64 1
  br label %17

17:                                               ; preds = %14, %11
  %.01 = phi i8* [ %16, %14 ], [ %0, %11 ]
  br label %18

18:                                               ; preds = %17, %9
  %.1 = phi i8* [ %10, %9 ], [ %.01, %17 ]
  br label %19

19:                                               ; preds = %22, %18
  %.2 = phi i8* [ %.1, %18 ], [ %23, %22 ]
  %20 = load i8, i8* %.2, align 1
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %19, !llvm.loop !8

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %33, %24
  %.not10 = phi i1 [ false, %33 ], [ true, %24 ]
  %.07 = phi i32 [ %36, %33 ], [ 0, %24 ]
  %.02 = phi i32 [ %41, %33 ], [ 0, %24 ]
  %.3 = phi i8* [ %34, %33 ], [ %.2, %24 ]
  %26 = call i16** @__ctype_b_loc() #9
  %27 = load i16*, i16** %26, align 8
  %28 = load i8, i8* %.3, align 1
  %29 = sext i8 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = and i16 %31, 2048
  %.not = icmp eq i16 %32, 0
  br i1 %.not, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds i8, i8* %.3, i64 1
  %35 = load i8, i8* %.3, align 1
  %36 = add nuw nsw i32 %.07, 1
  %37 = zext i32 %.07 to i64
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  %41 = add nuw nsw i32 %.02, 1
  br label %25, !llvm.loop !9

42:                                               ; preds = %25
  %43 = load i8, i8* %.3, align 1
  %44 = icmp eq i8 %43, 46
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %47

47:                                               ; preds = %45, %42
  %.4 = phi i8* [ %46, %45 ], [ %.3, %42 ]
  br i1 %.not10, label %48, label %56

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %52, %48
  %.13 = phi i32 [ %.02, %48 ], [ %54, %52 ]
  %.5 = phi i8* [ %.4, %48 ], [ %53, %52 ]
  %50 = load i8, i8* %.5, align 1
  %51 = icmp eq i8 %50, 48
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, i8* %.5, i64 1
  %54 = add nsw i32 %.13, -1
  br label %49, !llvm.loop !10

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %47
  %.24 = phi i32 [ %.02, %47 ], [ %.13, %55 ]
  %.6 = phi i8* [ %.4, %47 ], [ %.5, %55 ]
  br label %57

57:                                               ; preds = %65, %56
  %.18 = phi i32 [ %.07, %56 ], [ %68, %65 ]
  %.7 = phi i8* [ %.6, %56 ], [ %66, %65 ]
  %58 = call i16** @__ctype_b_loc() #9
  %59 = load i16*, i16** %58, align 8
  %60 = load i8, i8* %.7, align 1
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = and i16 %63, 2048
  %.not11 = icmp eq i16 %64, 0
  br i1 %.not11, label %73, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds i8, i8* %.7, i64 1
  %67 = load i8, i8* %.7, align 1
  %68 = add nuw nsw i32 %.18, 1
  %69 = zext i32 %.18 to i64
  %70 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %69
  store i8 %67, i8* %70, align 1
  %71 = zext i32 %68 to i64
  %72 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  br label %57, !llvm.loop !11

73:                                               ; preds = %57
  %74 = load i8, i8* %.7, align 1
  %75 = icmp eq i8 %74, 101
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i8, i8* %.7, align 1
  %78 = icmp eq i8 %77, 69
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i8, i8* %.7, align 1
  %81 = icmp eq i8 %80, 100
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %.7, align 1
  %84 = icmp eq i8 %83, 68
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %79, %76, %73
  %86 = getelementptr inbounds i8, i8* %.7, i64 1
  %87 = call i32 @atoi(i8* noundef nonnull %86) #11
  %88 = add nsw i32 %.24, %87
  br label %89

89:                                               ; preds = %85, %82
  %.35 = phi i32 [ %88, %85 ], [ %.24, %82 ]
  %.8 = phi i8* [ %86, %85 ], [ %.7, %82 ]
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %114, label %90

90:                                               ; preds = %89
  %91 = load i8, i8* %.8, align 1
  %92 = icmp eq i8 %91, 43
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i8, i8* %.8, align 1
  %95 = icmp eq i8 %94, 45
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %90
  %97 = getelementptr inbounds i8, i8* %.8, i64 1
  br label %98

98:                                               ; preds = %96, %93
  %.9 = phi i8* [ %97, %96 ], [ %.8, %93 ]
  br label %99

99:                                               ; preds = %107, %98
  %.10 = phi i8* [ %.9, %98 ], [ %108, %107 ]
  %100 = call i16** @__ctype_b_loc() #9
  %101 = load i16*, i16** %100, align 8
  %102 = load i8, i8* %.10, align 1
  %103 = sext i8 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = and i16 %105, 2048
  %.not14 = icmp eq i16 %106, 0
  br i1 %.not14, label %109, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds i8, i8* %.10, i64 1
  br label %99, !llvm.loop !12

109:                                              ; preds = %99
  %110 = load i8, i8* %.10, align 1
  %.not15 = icmp eq i8 %110, 0
  br i1 %.not15, label %113, label %111

111:                                              ; preds = %109
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %0) #10
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #10
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %129, %114
  %.06 = phi i32 [ 0, %114 ], [ %130, %129 ]
  %116 = icmp ult i32 %.06, %.18
  br i1 %116, label %117, label %131

117:                                              ; preds = %115
  %118 = zext i32 %.06 to i64
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %.not13 = icmp eq i8 %120, 48
  br i1 %.not13, label %128, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef nonnull %122) #10
  %123 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %126 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %124, i8* noundef nonnull %125) #10
  %127 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 0
  store i32 %.35, i32* %127, align 8
  br label %137

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128
  %130 = add nuw nsw i32 %.06, 1
  br label %115, !llvm.loop !13

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 2
  %133 = bitcast i8** %132 to i16**
  %134 = load i16*, i16** %133, align 8
  store i16 48, i16* %134, align 1
  %135 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i64 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %131, %121
  ret %struct.R_flstr* %4
}

declare dso_local %struct.R_flstr* @R_makefloat(...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #5

declare dso_local void @Z_fatal(...) #3

declare dso_local void @S_trimzeros(...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatsub(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #2 {
  %3 = load i32, i32* @F_floatsub.needinit, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = call %struct.R_flstr* (...) @R_makefloat() #10
  store %struct.R_flstr* %5, %struct.R_flstr** @F_floatsub.result, align 8
  store i32 0, i32* @F_floatsub.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), align 16
  %7 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %8 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  br label %9

9:                                                ; preds = %11, %6
  %.05 = phi i32 [ %7, %6 ], [ %13, %11 ]
  %10 = icmp slt i32 %.05, %8
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %strlen15 = call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0))
  %endptr16 = getelementptr [200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 %strlen15
  %12 = bitcast i8* %endptr16 to i16*
  store i16 48, i16* %12, align 1
  %13 = add nsw i32 %.05, 1
  br label %9, !llvm.loop !14

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %17, %14
  %.07 = phi i32 [ %8, %14 ], [ %19, %17 ]
  %16 = icmp sgt i32 %.05, %.07
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0))
  %endptr = getelementptr [200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 %strlen
  %18 = bitcast i8* %endptr to i16*
  store i16 48, i16* %18, align 1
  %19 = add nsw i32 %.07, 1
  br label %15, !llvm.loop !15

20:                                               ; preds = %15
  %.not12 = icmp eq i32 %.05, %.07
  br i1 %.not12, label %22, label %21

21:                                               ; preds = %20
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0)) #10
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %24) #10
  %26 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %27) #10
  %29 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %33 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %32, i64 0, i32 2
  %34 = bitcast i8** %33 to i16**
  %35 = load i16*, i16** %34, align 8
  store i16 48, i16* %35, align 1
  %36 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %37 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %36, i64 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %39 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %38, i64 0, i32 1
  store i32 0, i32* %39, align 4
  br label %126

40:                                               ; preds = %22
  %41 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #11
  %42 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #11
  %46 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i32 noundef %48)
  br label %59

49:                                               ; preds = %40
  %50 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #11
  %51 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %55 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #11
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i32 noundef %57)
  br label %58

58:                                               ; preds = %53, %49
  br label %59

59:                                               ; preds = %58, %44
  %60 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #11
  %61 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #11
  %.not13 = icmp eq i64 %60, %61
  br i1 %.not13, label %63, label %62

62:                                               ; preds = %59
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %63

63:                                               ; preds = %62, %59
  %64 = icmp slt i32 %29, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %67

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %65
  %.010 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), %65 ], [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), %66 ]
  %.09 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), %65 ], [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), %66 ]
  %68 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.09) #11
  %69 = trunc i64 %68 to i32
  %70 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.09) #11
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %109, %67
  %.011.in = phi i32 [ %69, %67 ], [ %.011, %109 ]
  %.02 = phi i32 [ 0, %67 ], [ %.3, %109 ]
  %.011 = add i32 %.011.in, -1
  %73 = icmp sgt i32 %.011, -1
  br i1 %73, label %74, label %110

74:                                               ; preds = %72
  %.not14 = icmp eq i32 %.02, 0
  br i1 %.not14, label %87, label %75

75:                                               ; preds = %74
  %76 = sext i32 %.011 to i64
  %77 = getelementptr inbounds i8, i8* %.09, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = icmp eq i8 %78, 48
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  %82 = sext i32 %.011 to i64
  %83 = getelementptr inbounds i8, i8* %.09, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = add i8 %84, -1
  br label %86

86:                                               ; preds = %81, %80
  %.13 = phi i32 [ %.02, %80 ], [ 0, %81 ]
  %.01 = phi i8 [ 57, %80 ], [ %85, %81 ]
  br label %101

87:                                               ; preds = %74
  %88 = sext i32 %.011 to i64
  %89 = getelementptr inbounds i8, i8* %.09, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i32 %.011 to i64
  %92 = getelementptr inbounds i8, i8* %.010, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = icmp slt i8 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %100

96:                                               ; preds = %87
  %97 = sext i32 %.011 to i64
  %98 = getelementptr inbounds i8, i8* %.09, i64 %97
  %99 = load i8, i8* %98, align 1
  br label %100

100:                                              ; preds = %96, %95
  %.24 = phi i32 [ 1, %95 ], [ %.02, %96 ]
  %.1 = phi i8 [ 58, %95 ], [ %99, %96 ]
  br label %101

101:                                              ; preds = %100, %86
  %.3 = phi i32 [ %.13, %86 ], [ %.24, %100 ]
  %.2 = phi i8 [ %.01, %86 ], [ %.1, %100 ]
  %102 = sext i32 %.011 to i64
  %103 = getelementptr inbounds i8, i8* %.010, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sub i8 %.2, %104
  %106 = add i8 %105, 48
  %107 = sext i32 %.011 to i64
  %108 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %107
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %101
  br label %72, !llvm.loop !16

110:                                              ; preds = %72
  br label %111

111:                                              ; preds = %114, %110
  %.08 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 0), %110 ], [ %115, %114 ]
  %.16 = phi i32 [ %.05, %110 ], [ %116, %114 ]
  %112 = load i8, i8* %.08, align 1
  %113 = icmp eq i8 %112, 48
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %.08, i64 1
  %116 = add nsw i32 %.16, -1
  br label %111, !llvm.loop !17

117:                                              ; preds = %111
  %118 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %119 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %118, i64 0, i32 0
  store i32 %.16, i32* %119, align 8
  %120 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %121 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %120, i64 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %122, i8* noundef nonnull %.08) #10
  %124 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %125 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %124, i64 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %31
  %.0 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  ret %struct.R_flstr* %.0
}

declare dso_local i32 @R_getexp(...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #6

; Function Attrs: noinline nounwind uwtable
define internal void @addzeros(i8* noundef %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi i32 [ %1, %2 ], [ %8, %7 ]
  %4 = icmp sgt i32 %.0, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %0)
  %endptr = getelementptr i8, i8* %0, i64 %strlen
  %6 = bitcast i8* %endptr to i16*
  store i16 48, i16* %6, align 1
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %.0, -1
  br label %3, !llvm.loop !18

9:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @F_floatcmp(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %16, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %18, label %19

18:                                               ; preds = %14
  br label %48

19:                                               ; preds = %14, %10
  br label %48

20:                                               ; preds = %6, %2
  %21 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %26, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %28, label %29

28:                                               ; preds = %24
  br label %48

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29
  %31 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %32 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %48

35:                                               ; preds = %30
  %36 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %37 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %42) #10
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0)) #10
  %44 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %45) #10
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0)) #10
  %47 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0)) #11
  br label %48

48:                                               ; preds = %40, %39, %34, %28, %19, %18
  %.0 = phi i32 [ -1, %34 ], [ 1, %39 ], [ %47, %40 ], [ 1, %28 ], [ -1, %19 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmul(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #2 {
  %3 = load i32, i32* @F_floatmul.needinit, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = call %struct.R_flstr* (...) @R_makefloat() #10
  store %struct.R_flstr* %5, %struct.R_flstr** @F_floatmul.result, align 8
  store i32 0, i32* @F_floatmul.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %.not13 = icmp eq i32 %13, 0
  br i1 %.not13, label %22, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %.not12 = icmp eq i32 %21, 0
  br i1 %.not12, label %22, label %31

22:                                               ; preds = %18, %10
  %23 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %24 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %23, i64 0, i32 2
  %25 = bitcast i8** %24 to i16**
  %26 = load i16*, i16** %25, align 8
  store i16 48, i16* %26, align 1
  %27 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %28 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %27, i64 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %30 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %29, i64 0, i32 1
  store i32 0, i32* %30, align 4
  br label %109

31:                                               ; preds = %18, %14
  %32 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %33) #10
  %35 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %36) #10
  %38 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)) #11
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 %39
  %41 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)) #11
  %42 = add i64 %41, -1
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 %42
  br label %44

44:                                               ; preds = %45, %31
  %.08 = phi i8* [ %40, %31 ], [ %50, %45 ]
  %.04 = phi i32 [ 0, %31 ], [ %49, %45 ]
  %.not9 = icmp ult i8* %.08, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)
  br i1 %.not9, label %51, label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %.08, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = add nsw i32 %.04, %48
  %50 = getelementptr inbounds i8, i8* %.08, i64 -1
  br label %44, !llvm.loop !19

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %53, %51
  %.07 = phi i8* [ %43, %51 ], [ %58, %53 ]
  %.05 = phi i32 [ 0, %51 ], [ %57, %53 ]
  %.not10 = icmp ult i8* %.07, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)
  br i1 %.not10, label %59, label %53

53:                                               ; preds = %52
  %54 = load i8, i8* %.07, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, -48
  %57 = add nsw i32 %.05, %56
  %58 = getelementptr inbounds i8, i8* %.07, i64 -1
  br label %52, !llvm.loop !20

59:                                               ; preds = %52
  %60 = icmp sgt i32 %.04, %.05
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %61
  %.02 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), %61 ], [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), %62 ]
  %.01 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), %61 ], [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), %62 ]
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef %.02) #10
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef %.01) #10
  %64 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.02) #11
  %65 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.01) #11
  %66 = add i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.01) #11
  %69 = add i64 %68, -1
  %70 = getelementptr inbounds i8, i8* %.01, i64 %69
  store i16 48, i16* bitcast ([200 x i8]* @F_floatmul.prod to i16*), align 16
  br label %71

71:                                               ; preds = %81, %63
  %.03 = phi i8* [ %70, %63 ], [ %82, %81 ]
  %.not11 = icmp ult i8* %.03, %.01
  br i1 %.not11, label %83, label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %79, %72
  %.06 = phi i32 [ 0, %72 ], [ %80, %79 ]
  %74 = load i8, i8* %.03, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp slt i32 %.06, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  call void @_F_stradd(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0), i8* noundef %.02)
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.06, 1
  br label %73, !llvm.loop !21

81:                                               ; preds = %73
  call void @addzeros(i8* noundef %.02, i32 noundef 1)
  %82 = getelementptr inbounds i8, i8* %.03, i64 -1
  br label %71, !llvm.loop !22

83:                                               ; preds = %71
  %84 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %85 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %84, i64 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %86, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #10
  %88 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %89 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, %67
  %92 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #11
  %93 = trunc i64 %92 to i32
  %94 = add i32 %91, %93
  %95 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %96 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %95, i64 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %83
  %103 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %104 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %103, i64 0, i32 1
  store i32 0, i32* %104, align 4
  br label %108

105:                                              ; preds = %83
  %106 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %107 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %106, i64 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %22
  %.0 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  ret %struct.R_flstr* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @_F_stradd(i8* noundef %0, i8* noundef %1) #2 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %4 = add i64 %3, -1
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds i8, i8* %1, i64 %7
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @_F_stradd.result, i64 0, i64 199), align 1
  br label %9

9:                                                ; preds = %35, %2
  %.07 = phi i32 [ 0, %2 ], [ %.18, %35 ]
  %.05 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @_F_stradd.result, i64 0, i64 198), %2 ], [ %38, %35 ]
  %.03 = phi i8* [ %8, %2 ], [ %.14, %35 ]
  %.02 = phi i8* [ %5, %2 ], [ %.1, %35 ]
  %.not = icmp ult i8* %.02, %0
  br i1 %.not, label %10, label %12

10:                                               ; preds = %9
  %11 = icmp uge i8* %.03, %1
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i1 [ true, %9 ], [ %11, %10 ]
  br i1 %13, label %14, label %39

14:                                               ; preds = %12
  %.not11 = icmp ult i8* %.02, %0
  br i1 %.not11, label %20, label %15

15:                                               ; preds = %14
  %16 = load i8, i8* %.02, align 1
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %17, -48
  %19 = getelementptr inbounds i8, i8* %.02, i64 -1
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %15
  %.1 = phi i8* [ %19, %15 ], [ %.02, %20 ]
  %.01 = phi i32 [ %18, %15 ], [ 0, %20 ]
  %.not12 = icmp ult i8* %.03, %1
  br i1 %.not12, label %27, label %22

22:                                               ; preds = %21
  %23 = load i8, i8* %.03, align 1
  %24 = sext i8 %23 to i32
  %25 = add nsw i32 %24, -48
  %26 = getelementptr inbounds i8, i8* %.03, i64 -1
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %22
  %.14 = phi i8* [ %26, %22 ], [ %.03, %27 ]
  %.0 = phi i32 [ %25, %22 ], [ 0, %27 ]
  %29 = add nsw i32 %.01, %.0
  %30 = add nsw i32 %29, %.07
  %31 = icmp sgt i32 %30, 9
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = add nsw i32 %30, -10
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %32
  %.09 = phi i32 [ %33, %32 ], [ %30, %34 ]
  %.18 = phi i32 [ 1, %32 ], [ 0, %34 ]
  %36 = trunc i32 %.09 to i8
  %37 = add i8 %36, 48
  %38 = getelementptr inbounds i8, i8* %.05, i64 -1
  store i8 %37, i8* %.05, align 1
  br label %9, !llvm.loop !23

39:                                               ; preds = %12
  %.not10 = icmp eq i32 %.07, 0
  br i1 %.not10, label %41, label %40

40:                                               ; preds = %39
  store i8 49, i8* %.05, align 1
  br label %43

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, i8* %.05, i64 1
  br label %43

43:                                               ; preds = %41, %40
  %.16 = phi i8* [ %.05, %40 ], [ %42, %41 ]
  %44 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %.16) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_F_xor(i32 noundef %0, i32 noundef %1) #7 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %9, label %4

4:                                                ; preds = %3, %2
  %.not1 = icmp eq i32 %0, 0
  br i1 %.not1, label %5, label %7

5:                                                ; preds = %4
  %6 = icmp ne i32 %1, 0
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i1 [ false, %4 ], [ %6, %5 ]
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i1 [ true, %3 ], [ %8, %7 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_F_ABSDIFF(i32 noundef %0, i32 noundef %1) #7 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = sub nsw i32 0, %0
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i32 [ %5, %4 ], [ %0, %6 ]
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = sub nsw i32 0, %1
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ %1, %12 ]
  %15 = icmp slt i32 %8, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = icmp slt i32 %1, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = sub nsw i32 0, %1
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ %1, %20 ]
  %23 = icmp slt i32 %0, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = sub nsw i32 0, %0
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ %0, %26 ]
  %29 = sub nsw i32 %22, %28
  br label %44

30:                                               ; preds = %13
  %31 = icmp slt i32 %0, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = sub nsw i32 0, %0
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ %0, %34 ]
  %37 = icmp slt i32 %1, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = sub nsw i32 0, %1
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ %1, %40 ]
  %43 = sub nsw i32 %36, %42
  br label %44

44:                                               ; preds = %41, %27
  %.0 = phi i32 [ %29, %27 ], [ %43, %41 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmagadd(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #2 {
  %3 = load i32, i32* @F_floatmagadd.needinit, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = call %struct.R_flstr* (...) @R_makefloat() #10
  store %struct.R_flstr* %5, %struct.R_flstr** @F_floatmagadd.result, align 8
  store i32 0, i32* @F_floatmagadd.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), align 16
  %7 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %.lobit = lshr i32 %7, 31
  %8 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %.lobit3 = lshr i32 %8, 31
  %9 = call i32 @_F_xor(i32 noundef %.lobit, i32 noundef %.lobit3)
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %14, label %10

10:                                               ; preds = %6
  %11 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %12 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %13 = call i32 @_F_ABSDIFF(i32 noundef %11, i32 noundef %12)
  br label %34

14:                                               ; preds = %6
  %15 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %14
  %21 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %28 = sub nsw i32 0, %27
  br label %31

29:                                               ; preds = %22
  %30 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  %33 = add nsw i32 %23, %32
  br label %34

34:                                               ; preds = %31, %10
  %.02 = phi i32 [ %13, %10 ], [ %33, %31 ]
  %35 = icmp sgt i32 %.02, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %38 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = sext i32 %.02 to i64
  %42 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %43) #11
  %45 = add i64 %44, %41
  %46 = icmp ugt i64 %45, 199
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 40, i1 false)
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #10
  br label %48

48:                                               ; preds = %47, %40
  br label %58

49:                                               ; preds = %36
  %50 = sext i32 %.02 to i64
  %51 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %52) #11
  %54 = add i64 %53, %50
  %55 = icmp ugt i64 %54, 199
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 40, i1 false)
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #10
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %48
  br label %80

59:                                               ; preds = %34
  %60 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %61) #11
  %63 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %64) #11
  %66 = icmp ugt i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %69) #11
  br label %75

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #11
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i64 [ %70, %67 ], [ %74, %71 ]
  %77 = icmp ugt i64 %76, 198
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(40) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 40, i1 false)
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #10
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %58
  %81 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  %82 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i32 noundef %.02)
  %85 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %1) #10
  br label %88

86:                                               ; preds = %80
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i32 noundef %.02)
  %87 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %0) #10
  br label %88

88:                                               ; preds = %86, %84
  %.01 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %89 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %90) #10
  %92 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i64 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %93) #10
  %95 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #11
  %96 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #11
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #11
  br label %102

100:                                              ; preds = %88
  %101 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #11
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  call void @_F_stradd(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0))
  %104 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #11
  %105 = sub i64 %104, %103
  %106 = trunc i64 %105 to i32
  %107 = add i32 %.01, %106
  br label %108

108:                                              ; preds = %111, %102
  %.1 = phi i32 [ %107, %102 ], [ %113, %111 ]
  %.0 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), %102 ], [ %112, %111 ]
  %109 = load i8, i8* %.0, align 1
  %110 = icmp eq i8 %109, 48
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, i8* %.0, i64 1
  %113 = add nsw i32 %.1, -1
  br label %108, !llvm.loop !24

114:                                              ; preds = %108
  %115 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %116 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %115, i64 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %117, i8* noundef nonnull %.0) #10
  %119 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %120 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %119, i64 0, i32 0
  store i32 %.1, i32* %120, align 8
  %121 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %122 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %121, i64 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  ret %struct.R_flstr* %123
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

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
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
