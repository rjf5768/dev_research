; ModuleID = './usite0.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@penalty = external dso_local global i32, align 4
@overlap = external dso_local global i32 (...)*, align 8
@blockarray = external dso_local global i32***, align 8
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@occa1ptr = external dso_local global i32*, align 8
@occa2ptr = external dso_local global i32*, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @usite0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %4
  %6 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i64 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i64 0, i32 21, i64 %11
  %13 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %14 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i64 0, i32 17
  %15 = load %struct.termbox*, %struct.termbox** %14, align 8
  %16 = load i32, i32* @penalty, align 4
  %17 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i64 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %17(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %19, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %21 = sub nsw i32 %16, %20
  %22 = load i32***, i32**** @blockarray, align 8
  %23 = load i32, i32* @binX, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32**, i32*** %22, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* @binY, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** @occa1ptr, align 8
  %31 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %32 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %31(i32 noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %33 = add nsw i32 %21, %32
  %34 = load i32***, i32**** @blockarray, align 8
  %35 = load i32, i32* @binX, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32**, i32*** %34, i64 %36
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* @binY, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** @occa2ptr, align 8
  call void @ufixpin(%struct.termbox* noundef %15, i32 noundef 0, i32 noundef %8, i32 noundef %10) #3
  call void @usoftpin(%struct.cellbox* noundef %6, i32 noundef 0, i32 noundef %8, i32 noundef %10, i32 noundef %1) #3
  %43 = load i32, i32* @funccost, align 4
  %44 = call i32 @ufixnet(%struct.termbox* noundef %15) #3
  %45 = add nsw i32 %43, %44
  %46 = call i32 @usoftnet(%struct.cellbox* noundef %6) #3
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, %33
  %49 = load i32, i32* @funccost, align 4
  %50 = load i32, i32* @penalty, align 4
  %51 = add nsw i32 %49, %50
  %.not = icmp sgt i32 %48, %51
  br i1 %.not, label %52, label %69

52:                                               ; preds = %2
  %53 = load i32, i32* @funccost, align 4
  %54 = load i32, i32* @penalty, align 4
  %55 = add nsw i32 %53, %54
  %56 = add i32 %47, %33
  %57 = sub i32 %55, %56
  %58 = sitofp i32 %57 to double
  %59 = load double, double* @T, align 8
  %60 = fdiv double %58, %59
  %61 = call double @exp(double noundef %60) #3
  %62 = load i32, i32* @randVar, align 4
  %63 = mul nsw i32 %62, 1103515245
  %64 = add nsw i32 %63, 12345
  store i32 %64, i32* @randVar, align 4
  %65 = and i32 %64, 2147483647
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %66, 0x41DFFFFFFFC00000
  %68 = fcmp ogt double %61, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %52, %2
  call void @ufixpin(%struct.termbox* noundef %15, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %70 = load i32*, i32** @occa1ptr, align 8
  %71 = load i32*, i32** @occa2ptr, align 8
  %.not2 = icmp eq i32* %70, %71
  br i1 %.not2, label %96, label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %79, %72
  %.01 = phi i32 [ 1, %72 ], [ %80, %79 ]
  %74 = load i32*, i32** @occa1ptr, align 8
  %75 = zext i32 %.01 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %.not3 = icmp eq i32 %77, %0
  br i1 %.not3, label %81, label %78

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.01, 1
  br label %73, !llvm.loop !4

81:                                               ; preds = %73
  %82 = load i32*, i32** @occa1ptr, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @occa1ptr, align 8
  %89 = zext i32 %.01 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32*, i32** @occa2ptr, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %0, i32* %95, align 4
  br label %96

96:                                               ; preds = %81, %69
  %97 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i64 0, i32 5
  store i32 %1, i32* %97, align 8
  store i32 %47, i32* @funccost, align 4
  store i32 %33, i32* @penalty, align 4
  br label %99

98:                                               ; preds = %52
  br label %99

99:                                               ; preds = %98, %96
  %.0 = phi i32 [ 1, %96 ], [ 0, %98 ]
  ret i32 %.0
}

declare dso_local void @ufixpin(%struct.termbox* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @usoftpin(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @ufixnet(%struct.termbox* noundef) #1

declare dso_local i32 @usoftnet(%struct.cellbox* noundef) #1

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
