; ModuleID = './memset-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [16 x i8] }

@A = dso_local global i8 65, align 1
@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @reset() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 31
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 %4
  store i8 97, i8* %5, align 1
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %10, %3
  %.01 = phi i8* [ bitcast (%union.anon* @u to i8*), %3 ], [ %12, %10 ]
  %.0 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = load i8, i8* %.01, align 1
  %.not7 = icmp eq i8 %7, 97
  br i1 %.not7, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %21, %13
  %.12 = phi i8* [ %.01, %13 ], [ %23, %21 ]
  %.1 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %15 = icmp slt i32 %.1, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = load i8, i8* %.12, align 1
  %18 = sext i8 %17 to i32
  %.not6 = icmp eq i32 %18, %2
  br i1 %.not6, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.1, 1
  %23 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %14, !llvm.loop !7

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %31, %24
  %.23 = phi i8* [ %.12, %24 ], [ %33, %31 ]
  %.2 = phi i32 [ 0, %24 ], [ %32, %31 ]
  %26 = icmp ult i32 %.2, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i8, i8* %.23, align 1
  %.not = icmp eq i8 %28, 97
  br i1 %.not, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.2, 1
  %33 = getelementptr inbounds i8, i8* %.23, i64 1
  br label %25, !llvm.loop !8

34:                                               ; preds = %25
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %19, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 15
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  call void @reset()
  %4 = zext i32 %.0 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast (%union.anon* @u to i8*), i8 0, i64 %4, i1 false)
  br i1 false, label %5, label %6

5:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @check(i32 noundef 0, i32 noundef %.0, i32 noundef 0)
  %7 = load i8, i8* @A, align 1
  %8 = zext i32 %.0 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast (%union.anon* @u to i8*), i8 %7, i64 %8, i1 false)
  br i1 false, label %9, label %10

9:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  call void @check(i32 noundef 0, i32 noundef %.0, i32 noundef 65)
  %11 = zext i32 %.0 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast (%union.anon* @u to i8*), i8 66, i64 %11, i1 false)
  br i1 false, label %12, label %13

12:                                               ; preds = %10
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  call void @check(i32 noundef 0, i32 noundef %.0, i32 noundef 66)
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %30, %16
  %.1 = phi i32 [ 0, %16 ], [ %31, %30 ]
  %18 = icmp ult i32 %.1, 15
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  call void @reset()
  %20 = zext i32 %.1 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 0, i64 %20, i1 false)
  br i1 false, label %21, label %22

21:                                               ; preds = %19
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  call void @check(i32 noundef 1, i32 noundef %.1, i32 noundef 0)
  %23 = load i8, i8* @A, align 1
  %24 = zext i32 %.1 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 %23, i64 %24, i1 false)
  br i1 false, label %25, label %26

25:                                               ; preds = %22
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %22
  call void @check(i32 noundef 1, i32 noundef %.1, i32 noundef 65)
  %27 = zext i32 %.1 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 66, i64 %27, i1 false)
  br i1 false, label %28, label %29

28:                                               ; preds = %26
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  call void @check(i32 noundef 1, i32 noundef %.1, i32 noundef 66)
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.1, 1
  br label %17, !llvm.loop !10

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %46, %32
  %.2 = phi i32 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp ult i32 %.2, 15
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  call void @reset()
  %36 = zext i32 %.2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 0, i64 %36, i1 false)
  br i1 false, label %37, label %38

37:                                               ; preds = %35
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  call void @check(i32 noundef 2, i32 noundef %.2, i32 noundef 0)
  %39 = load i8, i8* @A, align 1
  %40 = zext i32 %.2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 %39, i64 %40, i1 false)
  br i1 false, label %41, label %42

41:                                               ; preds = %38
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %38
  call void @check(i32 noundef 2, i32 noundef %.2, i32 noundef 65)
  %43 = zext i32 %.2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 66, i64 %43, i1 false)
  br i1 false, label %44, label %45

44:                                               ; preds = %42
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  call void @check(i32 noundef 2, i32 noundef %.2, i32 noundef 66)
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.2, 1
  br label %33, !llvm.loop !11

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %62, %48
  %.3 = phi i32 [ 0, %48 ], [ %63, %62 ]
  %50 = icmp ult i32 %.3, 15
  br i1 %50, label %51, label %64

51:                                               ; preds = %49
  call void @reset()
  %52 = zext i32 %.3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 0, i64 %52, i1 false)
  br i1 false, label %53, label %54

53:                                               ; preds = %51
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %51
  call void @check(i32 noundef 3, i32 noundef %.3, i32 noundef 0)
  %55 = load i8, i8* @A, align 1
  %56 = zext i32 %.3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 %55, i64 %56, i1 false)
  br i1 false, label %57, label %58

57:                                               ; preds = %54
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %54
  call void @check(i32 noundef 3, i32 noundef %.3, i32 noundef 65)
  %59 = zext i32 %.3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 66, i64 %59, i1 false)
  br i1 false, label %60, label %61

60:                                               ; preds = %58
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %58
  call void @check(i32 noundef 3, i32 noundef %.3, i32 noundef 66)
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.3, 1
  br label %49, !llvm.loop !12

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %78, %64
  %.4 = phi i32 [ 0, %64 ], [ %79, %78 ]
  %66 = icmp ult i32 %.4, 15
  br i1 %66, label %67, label %80

67:                                               ; preds = %65
  call void @reset()
  %68 = zext i32 %.4 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 0, i64 %68, i1 false)
  br i1 false, label %69, label %70

69:                                               ; preds = %67
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  call void @check(i32 noundef 4, i32 noundef %.4, i32 noundef 0)
  %71 = load i8, i8* @A, align 1
  %72 = zext i32 %.4 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 %71, i64 %72, i1 false)
  br i1 false, label %73, label %74

73:                                               ; preds = %70
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %70
  call void @check(i32 noundef 4, i32 noundef %.4, i32 noundef 65)
  %75 = zext i32 %.4 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 66, i64 %75, i1 false)
  br i1 false, label %76, label %77

76:                                               ; preds = %74
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %74
  call void @check(i32 noundef 4, i32 noundef %.4, i32 noundef 66)
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.4, 1
  br label %65, !llvm.loop !13

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %94, %80
  %.5 = phi i32 [ 0, %80 ], [ %95, %94 ]
  %82 = icmp ult i32 %.5, 15
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  call void @reset()
  %84 = zext i32 %.5 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 0, i64 %84, i1 false)
  br i1 false, label %85, label %86

85:                                               ; preds = %83
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %83
  call void @check(i32 noundef 5, i32 noundef %.5, i32 noundef 0)
  %87 = load i8, i8* @A, align 1
  %88 = zext i32 %.5 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 %87, i64 %88, i1 false)
  br i1 false, label %89, label %90

89:                                               ; preds = %86
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %86
  call void @check(i32 noundef 5, i32 noundef %.5, i32 noundef 65)
  %91 = zext i32 %.5 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 66, i64 %91, i1 false)
  br i1 false, label %92, label %93

92:                                               ; preds = %90
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %90
  call void @check(i32 noundef 5, i32 noundef %.5, i32 noundef 66)
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.5, 1
  br label %81, !llvm.loop !14

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %110, %96
  %.6 = phi i32 [ 0, %96 ], [ %111, %110 ]
  %98 = icmp ult i32 %.6, 15
  br i1 %98, label %99, label %112

99:                                               ; preds = %97
  call void @reset()
  %100 = zext i32 %.6 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 0, i64 %100, i1 false)
  br i1 false, label %101, label %102

101:                                              ; preds = %99
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %99
  call void @check(i32 noundef 6, i32 noundef %.6, i32 noundef 0)
  %103 = load i8, i8* @A, align 1
  %104 = zext i32 %.6 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 %103, i64 %104, i1 false)
  br i1 false, label %105, label %106

105:                                              ; preds = %102
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %102
  call void @check(i32 noundef 6, i32 noundef %.6, i32 noundef 65)
  %107 = zext i32 %.6 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 66, i64 %107, i1 false)
  br i1 false, label %108, label %109

108:                                              ; preds = %106
  br label %UnifiedUnreachableBlock

109:                                              ; preds = %106
  call void @check(i32 noundef 6, i32 noundef %.6, i32 noundef 66)
  br label %110

110:                                              ; preds = %109
  %111 = add nuw nsw i32 %.6, 1
  br label %97, !llvm.loop !15

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %126, %112
  %.7 = phi i32 [ 0, %112 ], [ %127, %126 ]
  %114 = icmp ult i32 %.7, 15
  br i1 %114, label %115, label %128

115:                                              ; preds = %113
  call void @reset()
  %116 = zext i32 %.7 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 0, i64 %116, i1 false)
  br i1 false, label %117, label %118

117:                                              ; preds = %115
  br label %UnifiedUnreachableBlock

118:                                              ; preds = %115
  call void @check(i32 noundef 7, i32 noundef %.7, i32 noundef 0)
  %119 = load i8, i8* @A, align 1
  %120 = zext i32 %.7 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 %119, i64 %120, i1 false)
  br i1 false, label %121, label %122

121:                                              ; preds = %118
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %118
  call void @check(i32 noundef 7, i32 noundef %.7, i32 noundef 65)
  %123 = zext i32 %.7 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 66, i64 %123, i1 false)
  br i1 false, label %124, label %125

124:                                              ; preds = %122
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %122
  call void @check(i32 noundef 7, i32 noundef %.7, i32 noundef 66)
  br label %126

126:                                              ; preds = %125
  %127 = add nuw nsw i32 %.7, 1
  br label %113, !llvm.loop !16

128:                                              ; preds = %113
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %128, %124, %121, %117, %108, %105, %101, %92, %89, %85, %76, %73, %69, %60, %57, %53, %44, %41, %37, %28, %25, %21, %12, %9, %5
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
