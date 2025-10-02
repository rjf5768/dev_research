; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray-dbl.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray-dbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <8 x double>] }
%union.D8V = type { <8 x double> }

@TheArray = dso_local global %union.Array zeroinitializer, align 64
@.str = private unnamed_addr constant [25 x i8] c"%g %g %g %g %g %g %g %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca <8 x double>, align 64
  %4 = alloca %union.D8V, align 64
  store i32 0, i32* %1, align 4
  store <8 x double> zeroinitializer, <8 x double>* %3, align 64
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 800
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sitofp i32 %9 to double
  %11 = fmul double %10, 1.234500e+01
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [800 x double], [800 x double]* bitcast (%union.Array* @TheArray to [800 x double]*), i64 0, i64 %13
  store double %11, double* %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x <8 x double>], [100 x <8 x double>]* getelementptr inbounds (%union.Array, %union.Array* @TheArray, i32 0, i32 0), i64 0, i64 %24
  %26 = load <8 x double>, <8 x double>* %25, align 64
  %27 = load <8 x double>, <8 x double>* %3, align 64
  %28 = fadd <8 x double> %27, %26
  store <8 x double> %28, <8 x double>* %3, align 64
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %19, !llvm.loop !6

32:                                               ; preds = %19
  %33 = load <8 x double>, <8 x double>* %3, align 64
  %34 = bitcast %union.D8V* %4 to <8 x double>*
  store <8 x double> %33, <8 x double>* %34, align 64
  call void @printD8V(%union.D8V* noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printD8V(%union.D8V* noundef %0) #0 {
  %2 = alloca %union.D8V*, align 8
  store %union.D8V* %0, %union.D8V** %2, align 8
  %3 = load %union.D8V*, %union.D8V** %2, align 8
  %4 = bitcast %union.D8V* %3 to [8 x double]*
  %5 = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0, i64 0
  %6 = load double, double* %5, align 64
  %7 = load %union.D8V*, %union.D8V** %2, align 8
  %8 = bitcast %union.D8V* %7 to [8 x double]*
  %9 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 0, i64 1
  %10 = load double, double* %9, align 8
  %11 = load %union.D8V*, %union.D8V** %2, align 8
  %12 = bitcast %union.D8V* %11 to [8 x double]*
  %13 = getelementptr inbounds [8 x double], [8 x double]* %12, i64 0, i64 2
  %14 = load double, double* %13, align 16
  %15 = load %union.D8V*, %union.D8V** %2, align 8
  %16 = bitcast %union.D8V* %15 to [8 x double]*
  %17 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3
  %18 = load double, double* %17, align 8
  %19 = load %union.D8V*, %union.D8V** %2, align 8
  %20 = bitcast %union.D8V* %19 to [8 x double]*
  %21 = getelementptr inbounds [8 x double], [8 x double]* %20, i64 0, i64 4
  %22 = load double, double* %21, align 32
  %23 = load %union.D8V*, %union.D8V** %2, align 8
  %24 = bitcast %union.D8V* %23 to [8 x double]*
  %25 = getelementptr inbounds [8 x double], [8 x double]* %24, i64 0, i64 5
  %26 = load double, double* %25, align 8
  %27 = load %union.D8V*, %union.D8V** %2, align 8
  %28 = bitcast %union.D8V* %27 to [8 x double]*
  %29 = getelementptr inbounds [8 x double], [8 x double]* %28, i64 0, i64 6
  %30 = load double, double* %29, align 16
  %31 = load %union.D8V*, %union.D8V** %2, align 8
  %32 = bitcast %union.D8V* %31 to [8 x double]*
  %33 = getelementptr inbounds [8 x double], [8 x double]* %32, i64 0, i64 7
  %34 = load double, double* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), double noundef %6, double noundef %10, double noundef %14, double noundef %18, double noundef %22, double noundef %26, double noundef %30, double noundef %34)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
