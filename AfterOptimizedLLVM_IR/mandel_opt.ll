; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/mandel.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/mandel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@accum = dso_local global { double, double } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @emit(double noundef %0, double noundef %1) #0 {
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %1, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %11 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %12 = fadd double %10, %7
  %13 = fadd double %11, %9
  store volatile double %12, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  store volatile double %13, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mandel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = alloca { double, double }, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %94, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 5000
  br i1 %9, label %10, label %97

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %90, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 5000
  br i1 %13, label %14, label %93

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 4.000000e+00
  %18 = fdiv double %17, 5.000000e+03
  %19 = fadd double -2.000000e+00, %18
  %20 = load i32, i32* %2, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %21, 4.000000e+00
  %23 = fdiv double %22, 5.000000e+03
  %24 = fsub double -2.000000e+00, %23
  %25 = fmul double %24, 0.000000e+00
  %26 = fmul double %24, 1.000000e+00
  %27 = fadd double %19, %25
  %28 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %27, double* %28, align 8
  store double %26, double* %29, align 8
  %30 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %31 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double 0.000000e+00, double* %30, align 8
  store double 0.000000e+00, double* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %76, %14
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fmul double %37, %41
  %45 = fmul double %39, %43
  %46 = fmul double %37, %43
  %47 = fmul double %39, %41
  %48 = fsub double %44, %45
  %49 = fadd double %46, %47
  %50 = fcmp uno double %48, %48
  br i1 %50, label %51, label %57, !prof !4

51:                                               ; preds = %35
  %52 = fcmp uno double %49, %49
  br i1 %52, label %53, label %57, !prof !4

53:                                               ; preds = %51
  %54 = call { double, double } @__muldc3(double noundef %37, double noundef %39, double noundef %41, double noundef %43) #3
  %55 = extractvalue { double, double } %54, 0
  %56 = extractvalue { double, double } %54, 1
  br label %57

57:                                               ; preds = %53, %51, %35
  %58 = phi double [ %48, %35 ], [ %48, %51 ], [ %55, %53 ]
  %59 = phi double [ %49, %35 ], [ %49, %51 ], [ %56, %53 ]
  %60 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = fadd double %58, %61
  %65 = fadd double %59, %63
  %66 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %67 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %64, double* %66, align 8
  store double %65, double* %67, align 8
  %68 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = call double @hypot(double noundef %69, double noundef %71) #3
  %73 = fcmp oge double %72, 2.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  br label %79

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %32, !llvm.loop !5

79:                                               ; preds = %74, %32
  %80 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %85 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double %81, double* %84, align 8
  store double %83, double* %85, align 8
  %86 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %89 = load double, double* %88, align 8
  call void @emit(double noundef %87, double noundef %89)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %11, !llvm.loop !7

93:                                               ; preds = %11
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %7, !llvm.loop !8

97:                                               ; preds = %7
  ret void
}

declare dso_local { double, double } @__muldc3(double, double, double, double)

; Function Attrs: nounwind
declare dso_local double @hypot(double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @mandel()
  %2 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %3 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %4 = fptosi double %2 to i32
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %4)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
