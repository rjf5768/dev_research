; ModuleID = './hsfcsort.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfcsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc2sort(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef readonly %2, i32 noundef %3, i32* nocapture noundef writeonly %4, i32 noundef %5) #0 {
  %7 = alloca [2 x double], align 16
  %8 = alloca [2 x i32], align 4
  %9 = sext i32 %0 to i64
  %10 = mul nsw i64 %9, 12
  %11 = call noalias i8* @malloc(i64 noundef %10) #4
  %12 = bitcast i8* %11 to i32*
  br label %13

13:                                               ; preds = %41, %6
  %.06 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %.05 = phi i32 [ 0, %6 ], [ %43, %41 ]
  %.04 = phi i32 [ 0, %6 ], [ %44, %41 ]
  %.0 = phi i32 [ 0, %6 ], [ %45, %41 ]
  %14 = zext i32 %.06 to i64
  %15 = icmp ult i64 %14, %9
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = zext i32 %.05 to i64
  %18 = getelementptr inbounds double, double* %1, i64 %17
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  store double %19, double* %20, align 16
  %21 = zext i32 %.04 to i64
  %22 = getelementptr inbounds double, double* %2, i64 %21
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  store double %23, double* %24, align 8
  %25 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %26 = load double, double* %25, align 16
  %27 = fmul double %26, 0x41EFFFFFFFE00000
  %28 = fptoui double %27 to i32
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, 0x41EFFFFFFFE00000
  %33 = fptoui double %32 to i32
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %36 = sext i32 %.0 to i64
  %37 = getelementptr inbounds i32, i32* %12, i64 %36
  call void @hsfc2d(i32* noundef nonnull %35, i32 noundef 2, i32* noundef %37) #4
  %38 = add i32 %.0, 2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %12, i64 %39
  store i32 %.06, i32* %40, align 4
  br label %41

41:                                               ; preds = %16
  %42 = add nuw nsw i32 %.06, 1
  %43 = add nuw nsw i32 %.05, 1
  %44 = add nuw nsw i32 %.04, 1
  %45 = add i32 %.0, 3
  br label %13, !llvm.loop !4

46:                                               ; preds = %13
  %47 = icmp ugt i32 %5, 2
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %65, %48
  %.17 = phi i32 [ 0, %48 ], [ %66, %65 ]
  %.01 = phi i32 [ 1, %48 ], [ %67, %65 ]
  %.1 = phi i32 [ 0, %48 ], [ %68, %65 ]
  %50 = zext i32 %.17 to i64
  %51 = icmp ult i64 %50, %9
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = sext i32 %.1 to i64
  %54 = getelementptr inbounds i32, i32* %12, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %.01 to i64
  %57 = getelementptr inbounds i32, i32* %4, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = add nsw i32 %.1, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %12, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %.01, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %4, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %52
  %66 = add nuw nsw i32 %.17, 1
  %67 = add i32 %.01, %5
  %68 = add i32 %.1, 3
  br label %49, !llvm.loop !6

69:                                               ; preds = %49
  br label %88

70:                                               ; preds = %46
  %71 = icmp eq i32 %5, 2
  br i1 %71, label %72, label %87

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %82, %72
  %.28 = phi i32 [ 0, %72 ], [ %83, %82 ]
  %.12 = phi i32 [ 1, %72 ], [ %84, %82 ]
  %.2 = phi i32 [ 0, %72 ], [ %85, %82 ]
  %74 = zext i32 %.28 to i64
  %75 = icmp ult i64 %74, %9
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = sext i32 %.2 to i64
  %78 = getelementptr inbounds i32, i32* %12, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %.12 to i64
  %81 = getelementptr inbounds i32, i32* %4, i64 %80
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76
  %83 = add nuw nsw i32 %.28, 1
  %84 = add i32 %.12, %5
  %85 = add i32 %.2, 3
  br label %73, !llvm.loop !7

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %69
  call void @qsort(i8* noundef %11, i64 noundef %9, i64 noundef 12, i32 (i8*, i8*)* noundef nonnull @ui2comp) #4
  br label %89

89:                                               ; preds = %99, %88
  %.39 = phi i32 [ 0, %88 ], [ %100, %99 ]
  %.23 = phi i32 [ 0, %88 ], [ %101, %99 ]
  %.3 = phi i32 [ 2, %88 ], [ %102, %99 ]
  %90 = zext i32 %.39 to i64
  %91 = icmp ult i64 %90, %9
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = sext i32 %.3 to i64
  %94 = getelementptr inbounds i32, i32* %12, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, %3
  %97 = sext i32 %.23 to i64
  %98 = getelementptr inbounds i32, i32* %4, i64 %97
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %92
  %100 = add nuw nsw i32 %.39, 1
  %101 = add i32 %.23, %5
  %102 = add i32 %.3, 3
  br label %89, !llvm.loop !8

103:                                              ; preds = %89
  call void @free(i8* noundef %11) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @hsfc2d(i32* noundef, i32 noundef, i32* noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ui2comp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #3 {
  %3 = bitcast i8* %0 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %4, %6
  br i1 %.not, label %14, label %7

7:                                                ; preds = %2
  %8 = bitcast i8* %0 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %9, %11
  %13 = select i1 %12, i32 -1, i32 1
  br label %33

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, i8* %0, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds i8, i8* %1, i64 4
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %.not1 = icmp eq i32 %17, %20
  br i1 %.not1, label %30, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds i8, i8* %0, i64 4
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds i8, i8* %1, i64 4
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  %29 = select i1 %28, i32 -1, i32 1
  br label %31

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %21
  %32 = phi i32 [ %29, %21 ], [ 0, %30 ]
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i32 [ %13, %7 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc3sort(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef readonly %2, double* nocapture noundef readonly %3, i32 noundef %4, i32* nocapture noundef writeonly %5, i32 noundef %6) #0 {
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x i32], align 4
  %10 = sext i32 %0 to i64
  %11 = shl nsw i64 %10, 4
  %12 = call noalias i8* @malloc(i64 noundef %11) #4
  %13 = bitcast i8* %12 to i32*
  br label %14

14:                                               ; preds = %51, %7
  %.08 = phi i32 [ 0, %7 ], [ %52, %51 ]
  %.07 = phi i32 [ 0, %7 ], [ %53, %51 ]
  %.06 = phi i32 [ 0, %7 ], [ %54, %51 ]
  %.05 = phi i32 [ 0, %7 ], [ %55, %51 ]
  %.0 = phi i32 [ 0, %7 ], [ %56, %51 ]
  %15 = zext i32 %.08 to i64
  %16 = icmp ult i64 %15, %10
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = zext i32 %.07 to i64
  %19 = getelementptr inbounds double, double* %1, i64 %18
  %20 = load double, double* %19, align 8
  %21 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %20, double* %21, align 16
  %22 = zext i32 %.06 to i64
  %23 = getelementptr inbounds double, double* %2, i64 %22
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %24, double* %25, align 8
  %26 = zext i32 %.05 to i64
  %27 = getelementptr inbounds double, double* %3, i64 %26
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %28, double* %29, align 16
  %30 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %31 = load double, double* %30, align 16
  %32 = fmul double %31, 0x41EFFFFFFFE00000
  %33 = fptoui double %32 to i32
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 0x41EFFFFFFFE00000
  %38 = fptoui double %37 to i32
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %41 = load double, double* %40, align 16
  %42 = fmul double %41, 0x41EFFFFFFFE00000
  %43 = fptoui double %42 to i32
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %46 = sext i32 %.0 to i64
  %47 = getelementptr inbounds i32, i32* %13, i64 %46
  call void @hsfc3d(i32* noundef nonnull %45, i32 noundef 3, i32* noundef %47) #4
  %48 = or i32 %.0, 3
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %13, i64 %49
  store i32 %.08, i32* %50, align 4
  br label %51

51:                                               ; preds = %17
  %52 = add nuw nsw i32 %.08, 1
  %53 = add nuw nsw i32 %.07, 1
  %54 = add nuw nsw i32 %.06, 1
  %55 = add nuw nsw i32 %.05, 1
  %56 = add i32 %.0, 4
  br label %14, !llvm.loop !9

57:                                               ; preds = %14
  %58 = icmp ugt i32 %6, 3
  br i1 %58, label %59, label %88

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %83, %59
  %.19 = phi i32 [ 0, %59 ], [ %84, %83 ]
  %.01 = phi i32 [ 1, %59 ], [ %85, %83 ]
  %.1 = phi i32 [ 0, %59 ], [ %86, %83 ]
  %61 = zext i32 %.19 to i64
  %62 = icmp ult i64 %61, %10
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = sext i32 %.1 to i64
  %65 = getelementptr inbounds i32, i32* %13, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %.01 to i64
  %68 = getelementptr inbounds i32, i32* %5, i64 %67
  store i32 %66, i32* %68, align 4
  %69 = or i32 %.1, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %13, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %.01, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %5, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = or i32 %.1, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %13, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %.01, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %5, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %63
  %84 = add nuw nsw i32 %.19, 1
  %85 = add i32 %.01, %6
  %86 = add i32 %.1, 4
  br label %60, !llvm.loop !10

87:                                               ; preds = %60
  br label %131

88:                                               ; preds = %57
  %89 = icmp eq i32 %6, 3
  br i1 %89, label %90, label %112

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %107, %90
  %.210 = phi i32 [ 0, %90 ], [ %108, %107 ]
  %.12 = phi i32 [ 1, %90 ], [ %109, %107 ]
  %.2 = phi i32 [ 0, %90 ], [ %110, %107 ]
  %92 = zext i32 %.210 to i64
  %93 = icmp ult i64 %92, %10
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = sext i32 %.2 to i64
  %96 = getelementptr inbounds i32, i32* %13, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %.12 to i64
  %99 = getelementptr inbounds i32, i32* %5, i64 %98
  store i32 %97, i32* %99, align 4
  %100 = or i32 %.2, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %13, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %.12, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %5, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %94
  %108 = add nuw nsw i32 %.210, 1
  %109 = add i32 %.12, %6
  %110 = add i32 %.2, 4
  br label %91, !llvm.loop !11

111:                                              ; preds = %91
  br label %130

112:                                              ; preds = %88
  %113 = icmp ugt i32 %6, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %124, %114
  %.311 = phi i32 [ 0, %114 ], [ %125, %124 ]
  %.23 = phi i32 [ 1, %114 ], [ %126, %124 ]
  %.3 = phi i32 [ 0, %114 ], [ %127, %124 ]
  %116 = zext i32 %.311 to i64
  %117 = icmp ult i64 %116, %10
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = sext i32 %.3 to i64
  %120 = getelementptr inbounds i32, i32* %13, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %.23 to i64
  %123 = getelementptr inbounds i32, i32* %5, i64 %122
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %118
  %125 = add nuw nsw i32 %.311, 1
  %126 = add i32 %.23, %6
  %127 = add i32 %.3, 4
  br label %115, !llvm.loop !12

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %111
  br label %131

131:                                              ; preds = %130, %87
  call void @qsort(i8* noundef %12, i64 noundef %10, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @ui3comp) #4
  br label %132

132:                                              ; preds = %142, %131
  %.412 = phi i32 [ 0, %131 ], [ %143, %142 ]
  %.34 = phi i32 [ 0, %131 ], [ %144, %142 ]
  %.4 = phi i32 [ 3, %131 ], [ %145, %142 ]
  %133 = zext i32 %.412 to i64
  %134 = icmp ult i64 %133, %10
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = sext i32 %.4 to i64
  %137 = getelementptr inbounds i32, i32* %13, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, %4
  %140 = sext i32 %.34 to i64
  %141 = getelementptr inbounds i32, i32* %5, i64 %140
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %135
  %143 = add nuw nsw i32 %.412, 1
  %144 = add i32 %.34, %6
  %145 = add i32 %.4, 4
  br label %132, !llvm.loop !13

146:                                              ; preds = %132
  call void @free(i8* noundef %12) #4
  ret void
}

declare dso_local void @hsfc3d(i32* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ui3comp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #3 {
  %3 = bitcast i8* %0 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %4, %6
  br i1 %.not, label %14, label %7

7:                                                ; preds = %2
  %8 = bitcast i8* %0 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %9, %11
  %13 = select i1 %12, i32 -1, i32 1
  br label %51

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, i8* %0, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds i8, i8* %1, i64 4
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %.not1 = icmp eq i32 %17, %20
  br i1 %.not1, label %30, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds i8, i8* %0, i64 4
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds i8, i8* %1, i64 4
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  %29 = select i1 %28, i32 -1, i32 1
  br label %49

30:                                               ; preds = %14
  %31 = getelementptr inbounds i8, i8* %0, i64 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds i8, i8* %1, i64 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %.not2 = icmp eq i32 %33, %36
  br i1 %.not2, label %46, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %0, i64 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds i8, i8* %1, i64 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  %45 = select i1 %44, i32 -1, i32 1
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %37
  %48 = phi i32 [ %45, %37 ], [ 0, %46 ]
  br label %49

49:                                               ; preds = %47, %21
  %50 = phi i32 [ %29, %21 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %7
  %52 = phi i32 [ %13, %7 ], [ %50, %49 ]
  ret i32 %52
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
