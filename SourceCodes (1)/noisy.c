; ModuleID = '/project/test/llvm-test-suite/MultiSource/Examples/Noisy/noisy.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Examples/Noisy/noisy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.big_array = internal global [4096 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local double @get_time() #0 {
  %1 = call i64 @clock() #4
  %2 = sitofp i64 %1 to double
  %3 = fdiv double %2, 1.000000e+06
  ret double %3
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 2.000000e-01, double* %2, align 8
  store double 1.000000e-01, double* %3, align 8
  %6 = call i64 @clock() #4
  call void @srand48(i64 noundef %6) #4
  %7 = load double, double* %2, align 8
  %8 = load double, double* %3, align 8
  %9 = call double @drand48() #4
  %10 = call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  store double %10, double* %4, align 8
  %11 = call double @get_time()
  store double %11, double* %5, align 8
  br label %12

12:                                               ; preds = %18, %0
  %13 = call double @get_time()
  %14 = load double, double* %5, align 8
  %15 = load double, double* %4, align 8
  %16 = fadd double %14, %15
  %17 = fcmp olt double %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @qsort(i8* noundef bitcast ([4096 x i32]* @main.big_array to i8*), i64 noundef 4096, i64 noundef 4, i32 (i8*, i8*)* noundef @cmp)
  br label %12, !llvm.loop !4

19:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand48(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local double @drand48() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
