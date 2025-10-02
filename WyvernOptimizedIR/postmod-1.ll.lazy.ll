; ModuleID = './postmod-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/postmod-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@counter0 = dso_local global float 0.000000e+00, align 4
@counter1 = dso_local global float 0.000000e+00, align 4
@counter2 = dso_local global float 0.000000e+00, align 4
@counter3 = dso_local global float 0.000000e+00, align 4
@counter4 = dso_local global float 0.000000e+00, align 4
@counter5 = dso_local global float 0.000000e+00, align 4
@stop = dso_local global i32 1, align 4
@array0 = dso_local global [16 x float] zeroinitializer, align 16
@array1 = dso_local global [16 x float] zeroinitializer, align 16
@array2 = dso_local global [16 x float] zeroinitializer, align 16
@array3 = dso_local global [16 x float] zeroinitializer, align 16
@array4 = dso_local global [16 x float] zeroinitializer, align 16
@array5 = dso_local global [16 x float] zeroinitializer, align 16
@vol = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [16 x float], [16 x float]* @array0, i64 0, i64 %2
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [16 x float], [16 x float]* @array1, i64 0, i64 %4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [16 x float], [16 x float]* @array2, i64 0, i64 %6
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [16 x float], [16 x float]* @array3, i64 0, i64 %8
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [16 x float], [16 x float]* @array4, i64 0, i64 %10
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [16 x float], [16 x float]* @array5, i64 0, i64 %12
  br label %14

14:                                               ; preds = %90, %1
  %.06 = phi float* [ %13, %1 ], [ %38, %90 ]
  %.05 = phi float* [ %11, %1 ], [ %34, %90 ]
  %.04 = phi float* [ %9, %1 ], [ %30, %90 ]
  %.03 = phi float* [ %7, %1 ], [ %26, %90 ]
  %.02 = phi float* [ %5, %1 ], [ %22, %90 ]
  %.01 = phi float* [ %3, %1 ], [ %18, %90 ]
  %15 = load float, float* %.01, align 4
  %16 = load float, float* @counter0, align 4
  %17 = fadd float %16, %15
  store float %17, float* @counter0, align 4
  %18 = getelementptr inbounds float, float* %.01, i64 3
  %19 = load float, float* %.02, align 4
  %20 = load float, float* @counter1, align 4
  %21 = fadd float %20, %19
  store float %21, float* @counter1, align 4
  %22 = getelementptr inbounds float, float* %.02, i64 3
  %23 = load float, float* %.03, align 4
  %24 = load float, float* @counter2, align 4
  %25 = fadd float %24, %23
  store float %25, float* @counter2, align 4
  %26 = getelementptr inbounds float, float* %.03, i64 3
  %27 = load float, float* %.04, align 4
  %28 = load float, float* @counter3, align 4
  %29 = fadd float %28, %27
  store float %29, float* @counter3, align 4
  %30 = getelementptr inbounds float, float* %.04, i64 3
  %31 = load float, float* %.05, align 4
  %32 = load float, float* @counter4, align 4
  %33 = fadd float %32, %31
  store float %33, float* @counter4, align 4
  %34 = getelementptr inbounds float, float* %.05, i64 3
  %35 = load float, float* %.06, align 4
  %36 = load float, float* @counter5, align 4
  %37 = fadd float %36, %35
  store float %37, float* @counter5, align 4
  %38 = getelementptr inbounds float, float* %.06, i64 3
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds float, float* %18, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* @counter0, align 4
  %43 = fadd float %42, %41
  store float %43, float* @counter0, align 4
  %44 = sext i32 %0 to i64
  %45 = getelementptr inbounds float, float* %22, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float, float* @counter1, align 4
  %48 = fadd float %47, %46
  store float %48, float* @counter1, align 4
  %49 = sext i32 %0 to i64
  %50 = getelementptr inbounds float, float* %26, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float, float* @counter2, align 4
  %53 = fadd float %52, %51
  store float %53, float* @counter2, align 4
  %54 = sext i32 %0 to i64
  %55 = getelementptr inbounds float, float* %30, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float, float* @counter3, align 4
  %58 = fadd float %57, %56
  store float %58, float* @counter3, align 4
  %59 = sext i32 %0 to i64
  %60 = getelementptr inbounds float, float* %34, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float, float* @counter4, align 4
  %63 = fadd float %62, %61
  store float %63, float* @counter4, align 4
  %64 = sext i32 %0 to i64
  %65 = getelementptr inbounds float, float* %38, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* @counter5, align 4
  %68 = fadd float %67, %66
  store float %68, float* @counter5, align 4
  %69 = load volatile i32, i32* @vol, align 4
  %70 = load volatile i32, i32* @vol, align 4
  %71 = load volatile i32, i32* @vol, align 4
  %72 = load volatile i32, i32* @vol, align 4
  %73 = load volatile i32, i32* @vol, align 4
  br label %74

74:                                               ; preds = %87, %14
  %.0 = phi i32 [ 0, %14 ], [ %88, %87 ]
  %75 = icmp ult i32 %.0, 10
  br i1 %75, label %76, label %89

76:                                               ; preds = %74
  %77 = load volatile i32, i32* @vol, align 4
  %78 = add nsw i32 %77, %69
  store volatile i32 %78, i32* @vol, align 4
  %79 = load volatile i32, i32* @vol, align 4
  %80 = add nsw i32 %79, %70
  store volatile i32 %80, i32* @vol, align 4
  %81 = load volatile i32, i32* @vol, align 4
  %82 = add nsw i32 %81, %71
  store volatile i32 %82, i32* @vol, align 4
  %83 = load volatile i32, i32* @vol, align 4
  %84 = add nsw i32 %83, %72
  store volatile i32 %84, i32* @vol, align 4
  %85 = load volatile i32, i32* @vol, align 4
  %86 = add nsw i32 %85, %73
  store volatile i32 %86, i32* @vol, align 4
  br label %87

87:                                               ; preds = %76
  %88 = add nuw nsw i32 %.0, 1
  br label %74, !llvm.loop !4

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load volatile i32, i32* @stop, align 4
  %.not = icmp eq i32 %91, 0
  br i1 %.not, label %14, label %92, !llvm.loop !6

92:                                               ; preds = %90
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @main() #0 {
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array0, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array0, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array1, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array1, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array2, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array2, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array3, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array3, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array4, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array4, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array5, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array5, i64 0, i64 5), align 4
  call void @foo(i32 noundef 1)
  %1 = load float, float* @counter0, align 4
  %2 = fcmp une float %1, 3.000000e+00
  %3 = load float, float* @counter1, align 4
  %4 = fcmp une float %3, 3.000000e+00
  %5 = or i1 %2, %4
  %6 = load float, float* @counter2, align 4
  %7 = fcmp une float %6, 3.000000e+00
  %8 = or i1 %5, %7
  %9 = load float, float* @counter3, align 4
  %10 = fcmp une float %9, 3.000000e+00
  %11 = or i1 %8, %10
  %12 = load float, float* @counter4, align 4
  %13 = fcmp une float %12, 3.000000e+00
  %14 = or i1 %11, %13
  %15 = load float, float* @counter5, align 4
  %16 = fcmp une float %15, 3.000000e+00
  %17 = or i1 %14, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
