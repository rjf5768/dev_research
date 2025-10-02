; ModuleID = './findpatn.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findpatn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@findpatn.cnd = internal global i32 0, align 4
@findpatn.mtype = internal global i32 0, align 4
@opn = external dso_local global [9 x i32], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findpatn(i32* noundef %0, i32* noundef %1, i32* nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %23, label %8

8:                                                ; preds = %3
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %9 = load i32, i32* @findpatn.mtype, align 4
  %10 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef %9) #2
  %.not24 = icmp eq i32 %10, 0
  br i1 %.not24, label %12, label %11

11:                                               ; preds = %8
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %0, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 80, i32* %2, align 4
  br label %126

21:                                               ; preds = %12
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %.not3 = icmp eq i32 %24, 0
  br i1 %.not3, label %34, label %25

25:                                               ; preds = %23
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %26 = call i32 @openregion(i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 5) #2
  %.not22 = icmp eq i32 %26, 0
  br i1 %.not22, label %33, label %27

27:                                               ; preds = %25
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 0, i32* @findpatn.mtype, align 4
  %28 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef 0) #2
  %29 = load i32, i32* @findpatn.mtype, align 4
  %30 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef %29) #2
  %.not23 = icmp eq i32 %30, 0
  br i1 %.not23, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %32

32:                                               ; preds = %31, %27
  store i32 80, i32* %2, align 4
  br label %126

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %.not4 = icmp eq i32 %35, 0
  br i1 %.not4, label %45, label %36

36:                                               ; preds = %34
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %37 = call i32 @openregion(i32 noundef 13, i32 noundef 0, i32 noundef 18, i32 noundef 5) #2
  %.not20 = icmp eq i32 %37, 0
  br i1 %.not20, label %44, label %38

38:                                               ; preds = %36
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 1, i32* @findpatn.mtype, align 4
  %39 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef 1) #2
  %40 = load i32, i32* @findpatn.mtype, align 4
  %41 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef %40) #2
  %.not21 = icmp eq i32 %41, 0
  br i1 %.not21, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %43

43:                                               ; preds = %42, %38
  store i32 80, i32* %2, align 4
  br label %126

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %.not5 = icmp eq i32 %46, 0
  br i1 %.not5, label %56, label %47

47:                                               ; preds = %45
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %48 = call i32 @openregion(i32 noundef 0, i32 noundef 13, i32 noundef 5, i32 noundef 18) #2
  %.not18 = icmp eq i32 %48, 0
  br i1 %.not18, label %55, label %49

49:                                               ; preds = %47
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 2, i32* @findpatn.mtype, align 4
  %50 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef 2) #2
  %51 = load i32, i32* @findpatn.mtype, align 4
  %52 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef %51) #2
  %.not19 = icmp eq i32 %52, 0
  br i1 %.not19, label %54, label %53

53:                                               ; preds = %49
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %54

54:                                               ; preds = %53, %49
  store i32 80, i32* %2, align 4
  br label %126

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %.not6 = icmp eq i32 %57, 0
  br i1 %.not6, label %67, label %58

58:                                               ; preds = %56
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %59 = call i32 @openregion(i32 noundef 13, i32 noundef 13, i32 noundef 18, i32 noundef 18) #2
  %.not16 = icmp eq i32 %59, 0
  br i1 %.not16, label %66, label %60

60:                                               ; preds = %58
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 3, i32* @findpatn.mtype, align 4
  %61 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef 3) #2
  %62 = load i32, i32* @findpatn.mtype, align 4
  %63 = call i32 @opening(i32* noundef %0, i32* noundef %1, i32* noundef nonnull @findpatn.cnd, i32 noundef %62) #2
  %.not17 = icmp eq i32 %63, 0
  br i1 %.not17, label %65, label %64

64:                                               ; preds = %60
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %65

65:                                               ; preds = %64, %60
  store i32 80, i32* %2, align 4
  br label %126

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %.not7 = icmp eq i32 %68, 0
  br i1 %.not7, label %73, label %69

69:                                               ; preds = %67
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %70 = call i32 @openregion(i32 noundef 0, i32 noundef 6, i32 noundef 4, i32 noundef 11) #2
  %.not15 = icmp eq i32 %70, 0
  br i1 %.not15, label %72, label %71

71:                                               ; preds = %69
  store i32 3, i32* %0, align 4
  store i32 9, i32* %1, align 4
  store i32 80, i32* %2, align 4
  br label %126

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %.not8 = icmp eq i32 %74, 0
  br i1 %.not8, label %79, label %75

75:                                               ; preds = %73
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %76 = call i32 @openregion(i32 noundef 18, i32 noundef 6, i32 noundef 14, i32 noundef 11) #2
  %.not14 = icmp eq i32 %76, 0
  br i1 %.not14, label %78, label %77

77:                                               ; preds = %75
  store i32 15, i32* %0, align 4
  store i32 9, i32* %1, align 4
  store i32 80, i32* %2, align 4
  br label %126

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %.not9 = icmp eq i32 %80, 0
  br i1 %.not9, label %85, label %81

81:                                               ; preds = %79
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %82 = call i32 @openregion(i32 noundef 6, i32 noundef 0, i32 noundef 11, i32 noundef 4) #2
  %.not13 = icmp eq i32 %82, 0
  br i1 %.not13, label %84, label %83

83:                                               ; preds = %81
  store i32 9, i32* %0, align 4
  store i32 3, i32* %1, align 4
  store i32 80, i32* %2, align 4
  br label %126

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %.not10 = icmp eq i32 %86, 0
  br i1 %.not10, label %91, label %87

87:                                               ; preds = %85
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %88 = call i32 @openregion(i32 noundef 6, i32 noundef 18, i32 noundef 11, i32 noundef 14) #2
  %.not12 = icmp eq i32 %88, 0
  br i1 %.not12, label %90, label %89

89:                                               ; preds = %87
  store i32 9, i32* %0, align 4
  store i32 15, i32* %1, align 4
  store i32 80, i32* %2, align 4
  br label %126

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %85
  store i32 -1, i32* %0, align 4
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  br label %92

92:                                               ; preds = %119, %91
  %.02 = phi i32 [ 0, %91 ], [ %120, %119 ]
  %93 = icmp ult i32 %.02, 19
  br i1 %93, label %94, label %121

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %116, %94
  %.01 = phi i32 [ 0, %94 ], [ %117, %116 ]
  %96 = icmp ult i32 %.01, 19
  br i1 %96, label %97, label %118

97:                                               ; preds = %95
  %98 = zext i32 %.02 to i64
  %99 = zext i32 %.01 to i64
  %100 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* @mymove, align 4
  %104 = icmp eq i32 %103, %102
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = call i32 @matchpat(i32 noundef %.02, i32 noundef %.01, i32* noundef nonnull %4, i32* noundef nonnull %5, i32* noundef nonnull %6) #2
  %.not11 = icmp eq i32 %106, 0
  br i1 %.not11, label %115, label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %2, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %0, align 4
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %1, align 4
  br label %115

115:                                              ; preds = %111, %107, %105, %97
  br label %116

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %.01, 1
  br label %95, !llvm.loop !4

118:                                              ; preds = %95
  br label %119

119:                                              ; preds = %118
  %120 = add nuw nsw i32 %.02, 1
  br label %92, !llvm.loop !6

121:                                              ; preds = %92
  %122 = load i32, i32* %2, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %126

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %124, %89, %83, %77, %71, %65, %54, %43, %32, %20
  %.0 = phi i32 [ 1, %20 ], [ 1, %32 ], [ 1, %43 ], [ 1, %54 ], [ 1, %65 ], [ 1, %71 ], [ 1, %77 ], [ 1, %83 ], [ 1, %89 ], [ 1, %124 ], [ 0, %125 ]
  ret i32 %.0
}

declare dso_local i32 @opening(i32* noundef, i32* noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @openregion(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @matchpat(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
