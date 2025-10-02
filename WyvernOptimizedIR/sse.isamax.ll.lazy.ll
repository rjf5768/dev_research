; ModuleID = './sse.isamax.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.isamax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c" maximum index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" maximum value = %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [20 x float], align 16
  br label %2

2:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %3 = icmp ult i32 %.0, 20
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sitofp i32 %.0 to float
  %6 = fadd float %5, -2.000000e+00
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [20 x float], [20 x float]* %1, i64 0, i64 %7
  store float %6, float* %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  %12 = getelementptr inbounds [20 x float], [20 x float]* %1, i64 0, i64 7
  store float 3.300000e+01, float* %12, align 4
  %13 = getelementptr inbounds [20 x float], [20 x float]* %1, i64 0, i64 0
  %14 = call i32 @isamax0(i32 noundef 20, float* noundef nonnull %13)
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %14) #5
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [20 x float], [20 x float]* %1, i64 0, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), double noundef %19) #5
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @isamax0(i32 noundef %0, float* noundef %1) #1 {
  %3 = alloca [8 x float], align 16
  %4 = alloca [8 x float], align 16
  %5 = icmp slt i32 %0, 12
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %21, %6
  %.028 = phi float [ 0.000000e+00, %6 ], [ %.129, %21 ]
  %.016 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %.09 = phi i32 [ 0, %6 ], [ %.110, %21 ]
  %8 = icmp slt i32 %.016, %0
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = zext i32 %.016 to i64
  %11 = getelementptr inbounds float, float* %1, i64 %10
  %12 = load float, float* %11, align 4
  %13 = call float @llvm.fabs.f32(float %12)
  %14 = fcmp ogt float %13, %.028
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = zext i32 %.016 to i64
  %17 = getelementptr inbounds float, float* %1, i64 %16
  %18 = load float, float* %17, align 4
  %19 = call float @llvm.fabs.f32(float %18)
  br label %20

20:                                               ; preds = %15, %9
  %.129 = phi float [ %19, %15 ], [ %.028, %9 ]
  %.110 = phi i32 [ %.016, %15 ], [ %.09, %9 ]
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.016, 1
  br label %7, !llvm.loop !6

23:                                               ; preds = %7
  br label %154

24:                                               ; preds = %2
  %25 = ptrtoint float* %1 to i64
  %26 = trunc i64 %25 to i32
  %27 = lshr i32 %26, 2
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load float, float* %1, align 4
  %32 = call float @llvm.fabs.f32(float %31)
  %33 = add nsw i32 %0, -3
  br label %34

34:                                               ; preds = %48, %30
  %.230 = phi float [ %32, %30 ], [ %.331, %48 ]
  %.117 = phi i32 [ 1, %30 ], [ %49, %48 ]
  %.012 = phi i32 [ 0, %30 ], [ %.113, %48 ]
  %35 = icmp ult i32 %.117, 3
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = zext i32 %.117 to i64
  %38 = getelementptr inbounds float, float* %1, i64 %37
  %39 = load float, float* %38, align 4
  %40 = call float @llvm.fabs.f32(float %39)
  %41 = fcmp ogt float %40, %.230
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = zext i32 %.117 to i64
  %44 = getelementptr inbounds float, float* %1, i64 %43
  %45 = load float, float* %44, align 4
  %46 = call float @llvm.fabs.f32(float %45)
  br label %47

47:                                               ; preds = %42, %36
  %.331 = phi float [ %46, %42 ], [ %.230, %36 ]
  %.113 = phi i32 [ %.117, %42 ], [ %.012, %36 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.117, 1
  br label %34, !llvm.loop !7

50:                                               ; preds = %34
  br label %75

51:                                               ; preds = %24
  %52 = icmp eq i32 %28, 2
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load float, float* %1, align 4
  %55 = call float @llvm.fabs.f32(float %54)
  %56 = add nsw i32 %0, -2
  %57 = getelementptr inbounds float, float* %1, i64 1
  %58 = load float, float* %57, align 4
  %59 = call float @llvm.fabs.f32(float %58)
  %60 = fcmp ogt float %59, %55
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = getelementptr inbounds float, float* %1, i64 1
  %63 = load float, float* %62, align 4
  %64 = call float @llvm.fabs.f32(float %63)
  br label %65

65:                                               ; preds = %61, %53
  %.432 = phi float [ %64, %61 ], [ %55, %53 ]
  %.214 = phi i32 [ 1, %61 ], [ 0, %53 ]
  br label %74

66:                                               ; preds = %51
  %67 = icmp eq i32 %28, 3
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load float, float* %1, align 4
  %70 = call float @llvm.fabs.f32(float %69)
  %71 = add nsw i32 %0, -1
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %68
  %.533 = phi float [ %70, %68 ], [ 0.000000e+00, %72 ]
  %.023 = phi float [ 1.000000e+00, %68 ], [ 0.000000e+00, %72 ]
  %.06 = phi i32 [ %71, %68 ], [ %0, %72 ]
  br label %74

74:                                               ; preds = %73, %65
  %.6 = phi float [ %.432, %65 ], [ %.533, %73 ]
  %.124 = phi float [ 2.000000e+00, %65 ], [ %.023, %73 ]
  %.4 = phi i32 [ %.214, %65 ], [ 0, %73 ]
  %.17 = phi i32 [ %56, %65 ], [ %.06, %73 ]
  br label %75

75:                                               ; preds = %74, %50
  %.7 = phi float [ %.230, %50 ], [ %.6, %74 ]
  %.225 = phi float [ 3.000000e+00, %50 ], [ %.124, %74 ]
  %.5 = phi i32 [ %.012, %50 ], [ %.4, %74 ]
  %.28 = phi i32 [ %33, %50 ], [ %.17, %74 ]
  %76 = fptosi float %.225 to i32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %1, i64 %77
  %79 = ashr i32 %.28, 2
  %80 = add nsw i32 %79, -2
  %81 = and i32 %.28, 3
  %82 = bitcast float* %78 to <4 x i32>*
  %83 = load <4 x i32>, <4 x i32>* %82, align 16
  %84 = getelementptr inbounds float, float* %78, i64 4
  %85 = and <4 x i32> %83, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
  %86 = bitcast <4 x i32> %85 to <4 x float>
  br label %87

87:                                               ; preds = %100, %75
  %.pn = phi float* [ %84, %75 ], [ %.021, %100 ]
  %.218 = phi i32 [ 0, %75 ], [ %101, %100 ]
  %.03 = phi <4 x float> [ %86, %75 ], [ %.14, %100 ]
  %.01 = phi <4 x float> [ <float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>, %75 ], [ %phi.bo, %100 ]
  %.0 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>, %75 ], [ %.1, %100 ]
  %.in = bitcast float* %.pn to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %.in, align 16
  %.021 = getelementptr inbounds float, float* %.pn, i64 4
  %89 = icmp slt i32 %.218, %80
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = and <4 x i32> %88, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
  %92 = bitcast <4 x i32> %91 to <4 x float>
  %93 = fcmp ult <4 x float> %.03, %92
  %94 = bitcast <4 x i1> %93 to i4
  %.not36 = icmp eq i4 %94, 0
  br i1 %.not36, label %99, label %95

95:                                               ; preds = %90
  %96 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.03, <4 x float> %92) #5
  %97 = select <4 x i1> %93, <4 x float> %.01, <4 x float> zeroinitializer
  %98 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.0, <4 x float> %97) #5
  br label %99

99:                                               ; preds = %95, %90
  %.14 = phi <4 x float> [ %96, %95 ], [ %.03, %90 ]
  %.1 = phi <4 x float> [ %98, %95 ], [ %.0, %90 ]
  br label %100

100:                                              ; preds = %99
  %101 = add nuw nsw i32 %.218, 1
  %phi.bo = fadd <4 x float> %.01, <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  br label %87, !llvm.loop !8

102:                                              ; preds = %87
  %103 = and <4 x i32> %88, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
  %104 = bitcast <4 x i32> %103 to <4 x float>
  %105 = fcmp ult <4 x float> %.03, %104
  %106 = bitcast <4 x i1> %105 to i4
  %.not = icmp eq i4 %106, 0
  br i1 %.not, label %111, label %107

107:                                              ; preds = %102
  %108 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.03, <4 x float> %104) #5
  %109 = select <4 x i1> %105, <4 x float> %.01, <4 x float> zeroinitializer
  %110 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.0, <4 x float> %109) #5
  br label %111

111:                                              ; preds = %107, %102
  %.25 = phi <4 x float> [ %108, %107 ], [ %.03, %102 ]
  %.2 = phi <4 x float> [ %110, %107 ], [ %.0, %102 ]
  %112 = bitcast [8 x float]* %3 to <4 x float>*
  store <4 x float> %.25, <4 x float>* %112, align 16
  %113 = bitcast [8 x float]* %4 to <4 x float>*
  store <4 x float> %.2, <4 x float>* %113, align 16
  %.not35 = icmp eq i32 %81, 0
  br i1 %.not35, label %132, label %114

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %128, %114
  %.122 = phi float* [ %.021, %114 ], [ %129, %128 ]
  %.319 = phi i32 [ 0, %114 ], [ %130, %128 ]
  %116 = icmp ult i32 %.319, %81
  br i1 %116, label %117, label %131

117:                                              ; preds = %115
  %118 = load float, float* %.122, align 4
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = add nuw nsw i32 %.319, 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [8 x float], [8 x float]* %3, i64 0, i64 %121
  store float %119, float* %122, align 4
  %123 = add nsw i32 %.28, %.319
  %124 = sitofp i32 %123 to float
  %125 = add nuw nsw i32 %.319, 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [8 x float], [8 x float]* %4, i64 0, i64 %126
  store float %124, float* %127, align 4
  br label %128

128:                                              ; preds = %117
  %129 = getelementptr inbounds float, float* %.122, i64 1
  %130 = add nuw nsw i32 %.319, 1
  br label %115, !llvm.loop !9

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131, %111
  br label %133

133:                                              ; preds = %151, %132
  %.026 = phi float [ %.7, %132 ], [ %.127, %151 ]
  %.420 = phi i32 [ 0, %132 ], [ %152, %151 ]
  %.211 = phi i32 [ %.5, %132 ], [ %.3, %151 ]
  %134 = or i32 %81, 4
  %135 = icmp ult i32 %.420, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = zext i32 %.420 to i64
  %138 = getelementptr inbounds [8 x float], [8 x float]* %3, i64 0, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fcmp ogt float %139, %.026
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = zext i32 %.420 to i64
  %143 = getelementptr inbounds [8 x float], [8 x float]* %3, i64 0, i64 %142
  %144 = load float, float* %143, align 4
  %145 = zext i32 %.420 to i64
  %146 = getelementptr inbounds [8 x float], [8 x float]* %4, i64 0, i64 %145
  %147 = load float, float* %146, align 4
  %148 = fadd float %147, %.225
  %149 = fptosi float %148 to i32
  br label %150

150:                                              ; preds = %141, %136
  %.127 = phi float [ %144, %141 ], [ %.026, %136 ]
  %.3 = phi i32 [ %149, %141 ], [ %.211, %136 ]
  br label %151

151:                                              ; preds = %150
  %152 = add nuw nsw i32 %.420, 1
  br label %133, !llvm.loop !10

153:                                              ; preds = %133
  br label %154

154:                                              ; preds = %153, %23
  %.034 = phi i32 [ %.09, %23 ], [ %.211, %153 ]
  ret i32 %.034
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nofree nosync nounwind readnone
declare i32 @llvm.x86.sse.movmsk.ps(<4 x float>) #4

; Function Attrs: nofree nosync nounwind readnone
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone }
attributes #5 = { nounwind }

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
