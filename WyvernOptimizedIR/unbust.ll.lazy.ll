; ModuleID = './unbust.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/unbust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bustbox = type { i32, i32 }
%struct.Rangle = type { i32, i32, i32, i32 }

@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"Serious error: could not advance upward \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"from first vertex\0A\00", align 1
@PtsArray = external dso_local global %struct.bustbox*, align 8
@rectang = external dso_local global %struct.Rangle*, align 8
@PtsOut = external dso_local global %struct.bustbox*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Fatal error in unbust.c\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Two points in outline not rectilinear \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"and this constitutes death\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PtsOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"x:%d  y:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PtsArray:\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Rectangles:\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"l:%d  r:%d  b:%d  t:%d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [24 x i8] c"Fatal error in unbust.c\00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"PtsOut:\00", align 1
@str.2 = private unnamed_addr constant [10 x i8] c"PtsArray:\00", align 1
@str.3 = private unnamed_addr constant [12 x i8] c"Rectangles:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @unbust() #0 {
  call void @coincide()
  %1 = call i32 @firstP()
  %2 = call i32 @u(i32 noundef %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %7)
  call void @exit(i32 noundef 0) #7
  unreachable

9:                                                ; preds = %0
  call void @outputP(i32 noundef %1)
  br label %10

10:                                               ; preds = %135, %9
  %.01 = phi i32 [ 1, %9 ], [ %.918, %135 ]
  %.0 = phi i32 [ %2, %9 ], [ %.21, %135 ]
  switch i32 %.01, label %135 [
    i32 1, label %11
    i32 2, label %42
    i32 3, label %73
    i32 4, label %104
  ]

11:                                               ; preds = %10
  %12 = call i32 @l(i32 noundef %.0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = call i32 @u(i32 noundef %.0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = call i32 @r(i32 noundef %.0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @outputP(i32 noundef %.0)
  call void @condense()
  br label %136

21:                                               ; preds = %17
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0, i32 0
  %24 = load i32, i32* %23, align 4
  %.not32 = icmp sgt i32 %18, %24
  br i1 %.not32, label %26, label %25

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %21
  %.1 = phi i32 [ %18, %25 ], [ %.0, %21 ]
  br label %27

27:                                               ; preds = %26
  br label %34

28:                                               ; preds = %14
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0, i32 0
  %31 = load i32, i32* %30, align 4
  %.not31 = icmp sgt i32 %15, %31
  br i1 %.not31, label %33, label %32

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %28
  %.2 = phi i32 [ %15, %32 ], [ %.0, %28 ]
  br label %34

34:                                               ; preds = %33, %27
  %.110 = phi i32 [ 3, %27 ], [ 1, %33 ]
  %.3 = phi i32 [ %.1, %27 ], [ %.2, %33 ]
  br label %41

35:                                               ; preds = %11
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 0, i32 0
  %38 = load i32, i32* %37, align 4
  %.not30 = icmp sgt i32 %12, %38
  br i1 %.not30, label %40, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %35
  %.4 = phi i32 [ %12, %39 ], [ %.0, %35 ]
  br label %41

41:                                               ; preds = %40, %34
  %.211 = phi i32 [ %.110, %34 ], [ 2, %40 ]
  %.5 = phi i32 [ %.3, %34 ], [ %.4, %40 ]
  br label %135

42:                                               ; preds = %10
  %43 = call i32 @b(i32 noundef %.0)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = call i32 @l(i32 noundef %.0)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = call i32 @u(i32 noundef %.0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @outputP(i32 noundef %.0)
  call void @condense()
  br label %136

52:                                               ; preds = %48
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 0, i32 0
  %55 = load i32, i32* %54, align 4
  %.not29 = icmp sgt i32 %49, %55
  br i1 %.not29, label %57, label %56

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %52
  %.6 = phi i32 [ %49, %56 ], [ %.0, %52 ]
  br label %58

58:                                               ; preds = %57
  br label %65

59:                                               ; preds = %45
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %60 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %60, i64 0, i32 0
  %62 = load i32, i32* %61, align 4
  %.not28 = icmp sgt i32 %46, %62
  br i1 %.not28, label %64, label %63

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %59
  %.7 = phi i32 [ %46, %63 ], [ %.0, %59 ]
  br label %65

65:                                               ; preds = %64, %58
  %.312 = phi i32 [ 1, %58 ], [ 2, %64 ]
  %.8 = phi i32 [ %.6, %58 ], [ %.7, %64 ]
  br label %72

66:                                               ; preds = %42
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %67 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i64 0, i32 0
  %69 = load i32, i32* %68, align 4
  %.not27 = icmp sgt i32 %43, %69
  br i1 %.not27, label %71, label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  %.9 = phi i32 [ %43, %70 ], [ %.0, %66 ]
  br label %72

72:                                               ; preds = %71, %65
  %.413 = phi i32 [ %.312, %65 ], [ 4, %71 ]
  %.10 = phi i32 [ %.8, %65 ], [ %.9, %71 ]
  br label %135

73:                                               ; preds = %10
  %74 = call i32 @u(i32 noundef %.0)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = call i32 @r(i32 noundef %.0)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = call i32 @b(i32 noundef %.0)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @outputP(i32 noundef %.0)
  call void @condense()
  br label %136

83:                                               ; preds = %79
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %84 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %85 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %84, i64 0, i32 0
  %86 = load i32, i32* %85, align 4
  %.not26 = icmp sgt i32 %80, %86
  br i1 %.not26, label %88, label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %83
  %.11 = phi i32 [ %80, %87 ], [ %.0, %83 ]
  br label %89

89:                                               ; preds = %88
  br label %96

90:                                               ; preds = %76
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %91 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %92 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %91, i64 0, i32 0
  %93 = load i32, i32* %92, align 4
  %.not25 = icmp sgt i32 %77, %93
  br i1 %.not25, label %95, label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %90
  %.12 = phi i32 [ %77, %94 ], [ %.0, %90 ]
  br label %96

96:                                               ; preds = %95, %89
  %.514 = phi i32 [ 4, %89 ], [ 3, %95 ]
  %.13 = phi i32 [ %.11, %89 ], [ %.12, %95 ]
  br label %103

97:                                               ; preds = %73
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %98 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %99 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %98, i64 0, i32 0
  %100 = load i32, i32* %99, align 4
  %.not24 = icmp sgt i32 %74, %100
  br i1 %.not24, label %102, label %101

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %97
  %.14 = phi i32 [ %74, %101 ], [ %.0, %97 ]
  br label %103

103:                                              ; preds = %102, %96
  %.615 = phi i32 [ %.514, %96 ], [ 1, %102 ]
  %.15 = phi i32 [ %.13, %96 ], [ %.14, %102 ]
  br label %135

104:                                              ; preds = %10
  %105 = call i32 @r(i32 noundef %.0)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = call i32 @b(i32 noundef %.0)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = call i32 @l(i32 noundef %.0)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @outputP(i32 noundef %.0)
  call void @condense()
  br label %136

114:                                              ; preds = %110
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %115 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %116 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %115, i64 0, i32 0
  %117 = load i32, i32* %116, align 4
  %.not23 = icmp sgt i32 %111, %117
  br i1 %.not23, label %119, label %118

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %114
  %.16 = phi i32 [ %111, %118 ], [ %.0, %114 ]
  br label %120

120:                                              ; preds = %119
  br label %127

121:                                              ; preds = %107
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %122 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %123 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %122, i64 0, i32 0
  %124 = load i32, i32* %123, align 4
  %.not22 = icmp sgt i32 %108, %124
  br i1 %.not22, label %126, label %125

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %121
  %.17 = phi i32 [ %108, %125 ], [ %.0, %121 ]
  br label %127

127:                                              ; preds = %126, %120
  %.716 = phi i32 [ 2, %120 ], [ 4, %126 ]
  %.18 = phi i32 [ %.16, %120 ], [ %.17, %126 ]
  br label %134

128:                                              ; preds = %104
  call void @outputP(i32 noundef %.0)
  call void @elim(i32 noundef %.0)
  %129 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %130 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %129, i64 0, i32 0
  %131 = load i32, i32* %130, align 4
  %.not = icmp sgt i32 %105, %131
  br i1 %.not, label %133, label %132

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %128
  %.19 = phi i32 [ %105, %132 ], [ %.0, %128 ]
  br label %134

134:                                              ; preds = %133, %127
  %.817 = phi i32 [ %.716, %127 ], [ 3, %133 ]
  %.20 = phi i32 [ %.18, %127 ], [ %.19, %133 ]
  br label %135

135:                                              ; preds = %134, %103, %72, %41, %10
  %.918 = phi i32 [ %.01, %10 ], [ %.817, %134 ], [ %.615, %103 ], [ %.413, %72 ], [ %.211, %41 ]
  %.21 = phi i32 [ %.0, %10 ], [ %.20, %134 ], [ %.15, %103 ], [ %.10, %72 ], [ %.5, %41 ]
  br label %10

136:                                              ; preds = %113, %82, %51, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @coincide() #1 {
  br label %1

1:                                                ; preds = %51, %0
  %.0 = phi i32 [ 1, %0 ], [ %52, %51 ]
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %53, label %5

5:                                                ; preds = %1
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %7, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %10, i32 1
  %12 = load i32, i32* %11, align 4
  br label %13

13:                                               ; preds = %49, %5
  %.01.in = phi i32 [ %.0, %5 ], [ %.1, %49 ]
  %.01 = add nsw i32 %.01.in, 1
  %14 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 0, i32 0
  %16 = load i32, i32* %15, align 4
  %.not2.not = icmp slt i32 %.01.in, %16
  br i1 %.not2.not, label %17, label %50

17:                                               ; preds = %13
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %19 = sext i32 %.01 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %19, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %9, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %25 = sext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 %25, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %12, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i64 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i64 %33, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i64 %36, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 %42, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %46 = sext i32 %.01 to i64
  %47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %46, i32 1
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %29, %23, %17
  %.1 = phi i32 [ %.01.in, %29 ], [ %.01, %23 ], [ %.01, %17 ]
  br label %49

49:                                               ; preds = %48
  br label %13, !llvm.loop !4

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

53:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @firstP() #2 {
  br label %1

1:                                                ; preds = %17, %0
  %.01 = phi i32 [ 100000000, %0 ], [ %.12, %17 ]
  %.0 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %19, label %5

5:                                                ; preds = %1
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %7, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, %.01
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %13, i32 1
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %11, %5
  %.12 = phi i32 [ %15, %11 ], [ %.01, %5 ]
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %43, %19
  %.05 = phi i32 [ undef, %19 ], [ %.27, %43 ]
  %.03 = phi i32 [ 100000000, %19 ], [ %.2, %43 ]
  %.1 = phi i32 [ 1, %19 ], [ %44, %43 ]
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 0, i32 0
  %23 = load i32, i32* %22, align 4
  %.not8 = icmp sgt i32 %.1, %23
  br i1 %.not8, label %45, label %24

24:                                               ; preds = %20
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 %26, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, %.01
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %32 = zext i32 %.1 to i64
  %33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %31, i64 %32, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, %.03
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %37, i64 %38, i32 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %36, %30
  %.16 = phi i32 [ %.1, %36 ], [ %.05, %30 ]
  %.14 = phi i32 [ %40, %36 ], [ %.03, %30 ]
  br label %42

42:                                               ; preds = %41, %24
  %.27 = phi i32 [ %.16, %41 ], [ %.05, %24 ]
  %.2 = phi i32 [ %.14, %41 ], [ %.03, %24 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !8

45:                                               ; preds = %20
  ret i32 %.05
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @u(i32 noundef %0) #2 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %3, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %6, i32 1
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %1
  %.02 = phi i32 [ 100000000, %1 ], [ %.35, %43 ]
  %.01 = phi i32 [ 1, %1 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %1 ], [ %.3, %43 ]
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %.not = icmp sgt i32 %.01, %12
  br i1 %.not, label %45, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %.01, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %43

16:                                               ; preds = %13
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %18, i32 0
  %20 = load i32, i32* %19, align 4
  %.not7 = icmp eq i32 %20, %5
  br i1 %.not7, label %22, label %21

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %24, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, %8
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %30, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, %8
  %34 = icmp slt i32 %33, %.02
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 %37, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, %8
  br label %41

41:                                               ; preds = %35, %28
  %.13 = phi i32 [ %40, %35 ], [ %.02, %28 ]
  %.1 = phi i32 [ %.01, %35 ], [ %.0, %28 ]
  br label %42

42:                                               ; preds = %41, %22
  %.24 = phi i32 [ %.13, %41 ], [ %.02, %22 ]
  %.2 = phi i32 [ %.1, %41 ], [ %.0, %22 ]
  br label %43

43:                                               ; preds = %42, %21, %15
  %.35 = phi i32 [ %.02, %15 ], [ %.02, %21 ], [ %.24, %42 ]
  %.3 = phi i32 [ %.0, %15 ], [ %.0, %21 ], [ %.2, %42 ]
  %44 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !9

45:                                               ; preds = %9
  %.not6 = icmp eq i32 %.0, 0
  br i1 %.not6, label %51, label %46

46:                                               ; preds = %45
  %47 = call i32 @recCheck(i32 noundef %0, i32 noundef %.0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %46
  %.4 = phi i32 [ 0, %49 ], [ %.0, %46 ]
  br label %51

51:                                               ; preds = %50, %45
  %.5 = phi i32 [ %.4, %50 ], [ %.0, %45 ]
  ret i32 %.5
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @outputP(i32 noundef %0) #5 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %3, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %10, i32 0
  store i32 %5, i32* %11, align 4
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %13, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %19, i32 1
  store i32 %15, i32* %20, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @l(i32 noundef %0) #2 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %3, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %6, i32 1
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %1
  %.02 = phi i32 [ 100000000, %1 ], [ %.35, %43 ]
  %.01 = phi i32 [ 1, %1 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %1 ], [ %.3, %43 ]
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %.not = icmp sgt i32 %.01, %12
  br i1 %.not, label %45, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %.01, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %43

16:                                               ; preds = %13
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %18, i32 1
  %20 = load i32, i32* %19, align 4
  %.not7 = icmp eq i32 %20, %8
  br i1 %.not7, label %22, label %21

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %24, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, %5
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %30, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %5, %32
  %34 = icmp slt i32 %33, %.02
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 %37, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %5, %39
  br label %41

41:                                               ; preds = %35, %28
  %.13 = phi i32 [ %40, %35 ], [ %.02, %28 ]
  %.1 = phi i32 [ %.01, %35 ], [ %.0, %28 ]
  br label %42

42:                                               ; preds = %41, %22
  %.24 = phi i32 [ %.13, %41 ], [ %.02, %22 ]
  %.2 = phi i32 [ %.1, %41 ], [ %.0, %22 ]
  br label %43

43:                                               ; preds = %42, %21, %15
  %.35 = phi i32 [ %.02, %15 ], [ %.02, %21 ], [ %.24, %42 ]
  %.3 = phi i32 [ %.0, %15 ], [ %.0, %21 ], [ %.2, %42 ]
  %44 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !10

45:                                               ; preds = %9
  %.not6 = icmp eq i32 %.0, 0
  br i1 %.not6, label %51, label %46

46:                                               ; preds = %45
  %47 = call i32 @recCheck(i32 noundef %0, i32 noundef %.0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %46
  %.4 = phi i32 [ 0, %49 ], [ %.0, %46 ]
  br label %51

51:                                               ; preds = %50, %45
  %.5 = phi i32 [ %.4, %50 ], [ %.0, %45 ]
  ret i32 %.5
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @r(i32 noundef %0) #2 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %3, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %6, i32 1
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %1
  %.02 = phi i32 [ 100000000, %1 ], [ %.35, %43 ]
  %.01 = phi i32 [ 1, %1 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %1 ], [ %.3, %43 ]
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %.not = icmp sgt i32 %.01, %12
  br i1 %.not, label %45, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %.01, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %43

16:                                               ; preds = %13
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %18, i32 1
  %20 = load i32, i32* %19, align 4
  %.not7 = icmp eq i32 %20, %8
  br i1 %.not7, label %22, label %21

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %24, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, %5
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %30, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, %5
  %34 = icmp slt i32 %33, %.02
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 %37, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, %5
  br label %41

41:                                               ; preds = %35, %28
  %.13 = phi i32 [ %40, %35 ], [ %.02, %28 ]
  %.1 = phi i32 [ %.01, %35 ], [ %.0, %28 ]
  br label %42

42:                                               ; preds = %41, %22
  %.24 = phi i32 [ %.13, %41 ], [ %.02, %22 ]
  %.2 = phi i32 [ %.1, %41 ], [ %.0, %22 ]
  br label %43

43:                                               ; preds = %42, %21, %15
  %.35 = phi i32 [ %.02, %15 ], [ %.02, %21 ], [ %.24, %42 ]
  %.3 = phi i32 [ %.0, %15 ], [ %.0, %21 ], [ %.2, %42 ]
  %44 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !11

45:                                               ; preds = %9
  %.not6 = icmp eq i32 %.0, 0
  br i1 %.not6, label %51, label %46

46:                                               ; preds = %45
  %47 = call i32 @recCheck(i32 noundef %0, i32 noundef %.0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %46
  %.4 = phi i32 [ 0, %49 ], [ %.0, %46 ]
  br label %51

51:                                               ; preds = %50, %45
  %.5 = phi i32 [ %.4, %50 ], [ %.0, %45 ]
  ret i32 %.5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @condense() #0 {
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0))
  call void @dumpError()
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %105, %5
  %.05 = phi i32 [ 1, %5 ], [ %.38, %105 ]
  %.01 = phi i32 [ 2, %5 ], [ %.3, %105 ]
  %.0 = phi i32 [ 3, %5 ], [ %106, %105 ]
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 4
  %.not11 = icmp sgt i32 %.0, %9
  br i1 %.not11, label %107, label %10

10:                                               ; preds = %6
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %12 = sext i32 %.05 to i64
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %12, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %.05 to i64
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %15, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %19 = sext i32 %.01 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %19, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %22, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %14, %21
  br i1 %25, label %26, label %61

26:                                               ; preds = %10
  %27 = sext i32 %.0 to i64
  %28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %27, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, %14
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %51, %31
  %.09 = phi i32 [ %.0, %31 ], [ %52, %51 ]
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 0, i32 0
  %35 = load i32, i32* %34, align 4
  %.not13 = icmp sgt i32 %.09, %35
  br i1 %.not13, label %53, label %36

36:                                               ; preds = %32
  %37 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %38 = sext i32 %.09 to i64
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %37, i64 %38, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %.09, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %37, i64 %42, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %45 = sext i32 %.09 to i64
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 %45, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %.09, -1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 %49, i32 1
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = add nsw i32 %.09, 1
  br label %32, !llvm.loop !12

53:                                               ; preds = %32
  %54 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i64 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = add nsw i32 %.0, -1
  br label %60

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59, %53
  %.16 = phi i32 [ %.05, %53 ], [ %.01, %59 ]
  %.1 = phi i32 [ %58, %53 ], [ %.0, %59 ]
  br label %104

61:                                               ; preds = %10
  %62 = sext i32 %.01 to i64
  %63 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %62, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %17, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  %67 = icmp eq i32 %24, %17
  br i1 %67, label %68, label %96

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %88, %68
  %.110 = phi i32 [ %.0, %68 ], [ %89, %88 ]
  %70 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %70, i64 0, i32 0
  %72 = load i32, i32* %71, align 4
  %.not12 = icmp sgt i32 %.110, %72
  br i1 %.not12, label %90, label %73

73:                                               ; preds = %69
  %74 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %75 = sext i32 %.110 to i64
  %76 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i64 %75, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %.110, -1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i64 %79, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %82 = sext i32 %.110 to i64
  %83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %81, i64 %82, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %.110, -1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %81, i64 %86, i32 1
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %73
  %89 = add nsw i32 %.110, 1
  br label %69, !llvm.loop !13

90:                                               ; preds = %69
  %91 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %92 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %91, i64 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  %95 = add nsw i32 %.0, -1
  br label %97

96:                                               ; preds = %66
  br label %97

97:                                               ; preds = %96, %90
  %.27 = phi i32 [ %.05, %90 ], [ %.01, %96 ]
  %.2 = phi i32 [ %95, %90 ], [ %.0, %96 ]
  br label %103

98:                                               ; preds = %61
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %100 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %101)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %60
  %.38 = phi i32 [ %.16, %60 ], [ %.27, %103 ]
  %.3 = phi i32 [ %.1, %60 ], [ %.2, %103 ]
  br label %105

105:                                              ; preds = %104
  %106 = add nsw i32 %.3, 1
  br label %6, !llvm.loop !14

107:                                              ; preds = %6
  ret void

UnifiedUnreachableBlock:                          ; preds = %98, %4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @elim(i32 noundef %0) #5 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %5, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %8, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %14, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %18, i32 1
  store i32 %16, i32* %19, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @b(i32 noundef %0) #2 {
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %3, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %6, i32 1
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %1
  %.02 = phi i32 [ 100000000, %1 ], [ %.35, %43 ]
  %.01 = phi i32 [ 1, %1 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %1 ], [ %.3, %43 ]
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %.not = icmp sgt i32 %.01, %12
  br i1 %.not, label %45, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %.01, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %43

16:                                               ; preds = %13
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %18, i32 0
  %20 = load i32, i32* %19, align 4
  %.not7 = icmp eq i32 %20, %5
  br i1 %.not7, label %22, label %21

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %24, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, %8
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %30, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %8, %32
  %34 = icmp slt i32 %33, %.02
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 %37, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %8, %39
  br label %41

41:                                               ; preds = %35, %28
  %.13 = phi i32 [ %40, %35 ], [ %.02, %28 ]
  %.1 = phi i32 [ %.01, %35 ], [ %.0, %28 ]
  br label %42

42:                                               ; preds = %41, %22
  %.24 = phi i32 [ %.13, %41 ], [ %.02, %22 ]
  %.2 = phi i32 [ %.1, %41 ], [ %.0, %22 ]
  br label %43

43:                                               ; preds = %42, %21, %15
  %.35 = phi i32 [ %.02, %15 ], [ %.02, %21 ], [ %.24, %42 ]
  %.3 = phi i32 [ %.0, %15 ], [ %.0, %21 ], [ %.2, %42 ]
  %44 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !15

45:                                               ; preds = %9
  %.not6 = icmp eq i32 %.0, 0
  br i1 %.not6, label %51, label %46

46:                                               ; preds = %45
  %47 = call i32 @recCheck(i32 noundef %0, i32 noundef %.0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %46
  %.4 = phi i32 [ 0, %49 ], [ %.0, %46 ]
  br label %51

51:                                               ; preds = %50, %45
  %.5 = phi i32 [ %.4, %50 ], [ %.0, %45 ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @addPts(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 %9, i32 0
  store i32 %0, i32* %10, align 4
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %14, i32 1
  store i32 %2, i32* %15, align 4
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %20, i32 0
  store i32 %0, i32* %21, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %25, i32 1
  store i32 %3, i32* %26, align 4
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %31, i32 0
  store i32 %1, i32* %32, align 4
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %36, i32 1
  store i32 %2, i32* %37, align 4
  %38 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 %42, i32 0
  store i32 %1, i32* %43, align 4
  %44 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 %47, i32 1
  store i32 %3, i32* %48, align 4
  %49 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %50 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %49, i64 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %49, i64 %53, i32 0
  store i32 %0, i32* %54, align 4
  %55 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %56 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %55, i64 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %55, i64 %58, i32 1
  store i32 %1, i32* %59, align 4
  %60 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %61 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %60, i64 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %60, i64 %63, i32 2
  store i32 %2, i32* %64, align 4
  %65 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %66 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %65, i64 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %65, i64 %68, i32 3
  store i32 %3, i32* %69, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @initPts(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %19, %3
  %.0 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %5 = icmp ult i32 %.0, 101
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %8, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %11, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 %14, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %17, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %6
  %20 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !16

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %37, %21
  %.1 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %23 = icmp ult i32 %.1, 26
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %25, i64 %26, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %28, i64 %29, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %32 = zext i32 %.1 to i64
  %33 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %31, i64 %32, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %34, i64 %35, i32 3
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !17

39:                                               ; preds = %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @recCheck(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 %4, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 %7, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %11, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %14, i32 1
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %46, %2
  %.01 = phi i32 [ 1, %2 ], [ %47, %46 ]
  %18 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %19 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %18, i64 0, i32 0
  %20 = load i32, i32* %19, align 4
  %.not = icmp sgt i32 %.01, %20
  br i1 %.not, label %48, label %21

21:                                               ; preds = %17
  %22 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %22, i64 %23, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %22, i64 %26, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %29, i64 %30, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %29, i64 %33, i32 3
  %35 = load i32, i32* %34, align 4
  %.not2 = icmp slt i32 %6, %25
  br i1 %.not2, label %45, label %36

36:                                               ; preds = %21
  %.not3 = icmp sgt i32 %6, %28
  br i1 %.not3, label %45, label %37

37:                                               ; preds = %36
  %.not4 = icmp slt i32 %9, %32
  br i1 %.not4, label %45, label %38

38:                                               ; preds = %37
  %.not5 = icmp sgt i32 %9, %35
  br i1 %.not5, label %45, label %39

39:                                               ; preds = %38
  %.not6 = icmp slt i32 %13, %25
  br i1 %.not6, label %44, label %40

40:                                               ; preds = %39
  %.not7 = icmp sgt i32 %13, %28
  br i1 %.not7, label %44, label %41

41:                                               ; preds = %40
  %.not8 = icmp slt i32 %16, %32
  br i1 %.not8, label %44, label %42

42:                                               ; preds = %41
  %.not9 = icmp sgt i32 %16, %35
  br i1 %.not9, label %44, label %43

43:                                               ; preds = %42
  br label %49

44:                                               ; preds = %42, %41, %40, %39
  br label %45

45:                                               ; preds = %44, %38, %37, %36, %21
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !18

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48, %43
  %.0 = phi i32 [ 1, %43 ], [ 0, %48 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpError() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.1, i64 0, i64 0))
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %16, label %5

5:                                                ; preds = %1
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %7, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %10, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef %9, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %5
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !19

16:                                               ; preds = %1
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %30, %16
  %.1 = phi i32 [ 1, %16 ], [ %31, %30 ]
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 0, i32 0
  %20 = load i32, i32* %19, align 4
  %.not2 = icmp sgt i32 %.1, %20
  br i1 %.not2, label %32, label %21

21:                                               ; preds = %17
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %23, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %26, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef %25, i32 noundef %28) #8
  br label %30

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %.1, 1
  br label %17, !llvm.loop !20

32:                                               ; preds = %17
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %53, %32
  %.2 = phi i32 [ 1, %32 ], [ %54, %53 ]
  %34 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %35 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %34, i64 0, i32 0
  %36 = load i32, i32* %35, align 4
  %.not4 = icmp sgt i32 %.2, %36
  br i1 %.not4, label %55, label %37

37:                                               ; preds = %33
  %38 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %39 = zext i32 %.2 to i64
  %40 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %38, i64 %39, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %.2 to i64
  %43 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %38, i64 %42, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %46 = zext i32 %.2 to i64
  %47 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %45, i64 %46, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %.2 to i64
  %50 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %45, i64 %49, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %41, i32 noundef %44, i32 noundef %48, i32 noundef %51) #8
  br label %53

53:                                               ; preds = %37
  %54 = add nuw nsw i32 %.2, 1
  br label %33, !llvm.loop !21

55:                                               ; preds = %33
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = call i32 @fflush(%struct._IO_FILE* noundef %56) #8
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
