; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/2003-05-21-UnionBitfields.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/2003-05-21-UnionBitfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @target_isinf(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.anon, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = bitcast %union.anon* %3 to double*
  store double %4, double* %5, align 8
  %6 = bitcast %union.anon* %3 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = lshr i32 %8, 20
  %10 = and i32 %9, 2047
  %11 = icmp eq i32 %10, 2047
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = bitcast %union.anon* %3 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1048575
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = bitcast %union.anon* %3 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %12, %1
  %24 = phi i1 [ false, %12 ], [ false, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @target_isinf(double noundef 1.234420e+03)
  %3 = call i32 @target_isinf(double noundef 0x7FF0000000000000)
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3)
  ret i32 0
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
