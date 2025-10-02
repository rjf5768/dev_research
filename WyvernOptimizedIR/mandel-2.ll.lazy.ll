; ModuleID = './mandel-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/mandel-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_i = dso_local global i32 65536, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @sqr(double noundef %0) #0 {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @cnorm2(double noundef %0, double noundef %1) #0 {
  %3 = call double @sqr(double noundef %0)
  %4 = call double @sqr(double noundef %1)
  %5 = fadd double %3, %4
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loop(double noundef %0, double noundef %1) #1 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  store double %0, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  br label %9

9:                                                ; preds = %40, %2
  %.0 = phi i32 [ 1, %2 ], [ %.1, %40 ]
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = call double @cnorm2(double noundef %11, double noundef %13)
  %15 = fcmp ugt double %14, 4.000000e+00
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = add nsw i32 %.0, 1
  %18 = load i32, i32* @max_i, align 4
  %19 = icmp slt i32 %.0, %18
  br label %20

20:                                               ; preds = %16, %9
  %.1 = phi i32 [ %17, %16 ], [ %.0, %9 ]
  %21 = phi i1 [ %19, %16 ], [ false, %9 ]
  br i1 %21, label %22, label %51

22:                                               ; preds = %20
  %23 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fmul double %24, %24
  %28 = fmul double %26, %26
  %29 = fmul double %24, %26
  %30 = fmul double %26, %24
  %31 = fsub double %27, %28
  %32 = fadd double %29, %30
  %33 = fcmp uno double %31, 0.000000e+00
  br i1 %33, label %34, label %40, !prof !4

34:                                               ; preds = %22
  %35 = fcmp uno double %32, 0.000000e+00
  br i1 %35, label %36, label %40, !prof !4

36:                                               ; preds = %34
  %37 = call { double, double } @__muldc3(double noundef %24, double noundef %26, double noundef %24, double noundef %26) #4
  %38 = extractvalue { double, double } %37, 0
  %39 = extractvalue { double, double } %37, 1
  br label %40

40:                                               ; preds = %36, %34, %22
  %41 = phi double [ %31, %22 ], [ %31, %34 ], [ %38, %36 ]
  %42 = phi double [ %32, %22 ], [ %32, %34 ], [ %39, %36 ]
  %43 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fadd double %41, %44
  %48 = fadd double %42, %46
  %49 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %50 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  store double %47, double* %49, align 8
  store double %48, double* %50, align 8
  br label %9, !llvm.loop !5

51:                                               ; preds = %20
  ret i32 %.1
}

declare dso_local { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ -39, %0 ], [ %23, %22 ]
  %2 = icmp slt i32 %.0, 39
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %19, %3
  %.01 = phi i32 [ -39, %3 ], [ %20, %19 ]
  %5 = icmp slt i32 %.01, 39
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = sitofp i32 %.0 to double
  %8 = fdiv double %7, 4.000000e+01
  %9 = fadd double %8, -5.000000e-01
  %10 = sitofp i32 %.01 to double
  %11 = fdiv double %10, 4.000000e+01
  %12 = fmul double %11, 0.000000e+00
  %13 = fadd double %9, %12
  %14 = call i32 @loop(double noundef %13, double noundef %11)
  %15 = load i32, i32* @max_i, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %17) #4
  br label %19

19:                                               ; preds = %6
  %20 = add nsw i32 %.01, 1
  br label %4, !llvm.loop !7

21:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !8

24:                                               ; preds = %1
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
