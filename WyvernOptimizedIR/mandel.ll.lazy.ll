; ModuleID = './mandel.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/mandel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@accum = dso_local global { double, double } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @emit(double noundef %0, double noundef %1) #0 {
  %3 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 0), align 8
  %4 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 1), align 8
  %5 = fadd double %3, %0
  %6 = fadd double %4, %1
  store volatile double %5, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 0), align 8
  store volatile double %6, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mandel() #1 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  br label %3

3:                                                ; preds = %68, %0
  %.0 = phi i32 [ 0, %0 ], [ %69, %68 ]
  %4 = icmp ult i32 %.0, 5000
  br i1 %4, label %5, label %70

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %65, %5
  %.01 = phi i32 [ 0, %5 ], [ %66, %65 ]
  %7 = icmp ult i32 %.01, 5000
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = sitofp i32 %.0 to double
  %10 = fmul double %9, 4.000000e+00
  %11 = fdiv double %10, 5.000000e+03
  %12 = fadd double %11, -2.000000e+00
  %13 = sitofp i32 %.01 to double
  %14 = fmul double %13, 4.000000e+00
  %15 = fdiv double %14, 5.000000e+03
  %16 = fsub double -2.000000e+00, %15
  %17 = fmul double %16, 0.000000e+00
  %18 = fadd double %12, %17
  %19 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %20 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  store double %18, double* %19, align 8
  store double %16, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %22 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  store double 0.000000e+00, double* %21, align 8
  store double 0.000000e+00, double* %22, align 8
  br label %23

23:                                               ; preds = %58, %8
  %.02 = phi i32 [ 0, %8 ], [ %59, %58 ]
  %24 = icmp ult i32 %.02, 10
  br i1 %24, label %25, label %.loopexit

25:                                               ; preds = %23
  %26 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fmul double %27, %27
  %31 = fmul double %29, %29
  %32 = fmul double %27, %29
  %33 = fmul double %29, %27
  %34 = fsub double %30, %31
  %35 = fadd double %32, %33
  %36 = fcmp uno double %34, 0.000000e+00
  br i1 %36, label %37, label %43, !prof !4

37:                                               ; preds = %25
  %38 = fcmp uno double %35, 0.000000e+00
  br i1 %38, label %39, label %43, !prof !4

39:                                               ; preds = %37
  %40 = call { double, double } @__muldc3(double noundef %27, double noundef %29, double noundef %27, double noundef %29) #4
  %41 = extractvalue { double, double } %40, 0
  %42 = extractvalue { double, double } %40, 1
  br label %43

43:                                               ; preds = %39, %37, %25
  %44 = phi double [ %34, %25 ], [ %34, %37 ], [ %41, %39 ]
  %45 = phi double [ %35, %25 ], [ %35, %37 ], [ %42, %39 ]
  %46 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fadd double %44, %47
  %51 = fadd double %45, %49
  %52 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %53 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  store double %50, double* %52, align 8
  store double %51, double* %53, align 8
  %54 = call double @hypot(double noundef %50, double noundef %51) #4
  %55 = fcmp ult double %54, 2.000000e+00
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %60

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = add nuw nsw i32 %.02, 1
  br label %23, !llvm.loop !5

.loopexit:                                        ; preds = %23
  br label %60

60:                                               ; preds = %.loopexit, %56
  %61 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %64 = load double, double* %63, align 8
  call void @emit(double noundef %62, double noundef %64)
  br label %65

65:                                               ; preds = %60
  %66 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !7

67:                                               ; preds = %6
  br label %68

68:                                               ; preds = %67
  %69 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

70:                                               ; preds = %3
  ret void
}

declare dso_local { double, double } @__muldc3(double, double, double, double)

; Function Attrs: nounwind
declare dso_local double @hypot(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @mandel()
  %1 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 0), align 8
  %2 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i64 0, i32 1), align 8
  %3 = fptosi double %1 to i32
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
