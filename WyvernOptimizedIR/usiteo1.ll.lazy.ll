; ModuleID = './usiteo1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usiteo1.c"
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
define dso_local i32 @usiteo1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %5, i64 %6
  %8 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 21, i64 %13
  %15 = load %struct.tilebox*, %struct.tilebox** %14, align 8
  %16 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 17
  %17 = load %struct.termbox*, %struct.termbox** %16, align 8
  %18 = load i32, i32* @penalty, align 4
  %19 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %19(i32 noundef %0, i32 noundef %10, i32 noundef %12, i32 noundef %21, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %23 = sub nsw i32 %18, %22
  %24 = load i32***, i32**** @blockarray, align 8
  %25 = load i32, i32* @binX, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32**, i32*** %24, i64 %26
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* @binY, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** @occa1ptr, align 8
  %33 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %34 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %33(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %35 = add nsw i32 %23, %34
  %36 = load i32***, i32**** @blockarray, align 8
  %37 = load i32, i32* @binX, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32**, i32*** %36, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* @binY, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** @occa2ptr, align 8
  call void @ufixpin(%struct.termbox* noundef %17, i32 noundef 0, i32 noundef %1, i32 noundef %2) #3
  call void @usoftpin(%struct.cellbox* noundef %8, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3
  %45 = load i32, i32* @funccost, align 4
  %46 = call i32 @ufixnet(%struct.termbox* noundef %17) #3
  %47 = add nsw i32 %45, %46
  %48 = call i32 @usoftnet(%struct.cellbox* noundef %8) #3
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, %35
  %51 = load i32, i32* @funccost, align 4
  %52 = load i32, i32* @penalty, align 4
  %53 = add nsw i32 %51, %52
  %.not = icmp sgt i32 %50, %53
  br i1 %.not, label %54, label %71

54:                                               ; preds = %4
  %55 = load i32, i32* @funccost, align 4
  %56 = load i32, i32* @penalty, align 4
  %57 = add nsw i32 %55, %56
  %58 = add i32 %49, %35
  %59 = sub i32 %57, %58
  %60 = sitofp i32 %59 to double
  %61 = load double, double* @T, align 8
  %62 = fdiv double %60, %61
  %63 = call double @exp(double noundef %62) #3
  %64 = load i32, i32* @randVar, align 4
  %65 = mul nsw i32 %64, 1103515245
  %66 = add nsw i32 %65, 12345
  store i32 %66, i32* @randVar, align 4
  %67 = and i32 %66, 2147483647
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 0x41DFFFFFFFC00000
  %70 = fcmp ogt double %63, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %54, %4
  call void @ufixpin(%struct.termbox* noundef %17, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %72 = load i32*, i32** @occa1ptr, align 8
  %73 = load i32*, i32** @occa2ptr, align 8
  %.not2 = icmp eq i32* %72, %73
  br i1 %.not2, label %98, label %74

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %81, %74
  %.01 = phi i32 [ 1, %74 ], [ %82, %81 ]
  %76 = load i32*, i32** @occa1ptr, align 8
  %77 = zext i32 %.01 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %.not3 = icmp eq i32 %79, %0
  br i1 %.not3, label %83, label %80

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = add nuw nsw i32 %.01, 1
  br label %75, !llvm.loop !4

83:                                               ; preds = %75
  %84 = load i32*, i32** @occa1ptr, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @occa1ptr, align 8
  %91 = zext i32 %.01 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = load i32*, i32** @occa2ptr, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %0, i32* %97, align 4
  br label %98

98:                                               ; preds = %83, %71
  %99 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 2
  store i32 %1, i32* %99, align 4
  %100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 3
  store i32 %2, i32* %100, align 8
  %101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i64 0, i32 5
  store i32 %3, i32* %101, align 8
  store i32 %49, i32* @funccost, align 4
  store i32 %35, i32* @penalty, align 4
  br label %103

102:                                              ; preds = %54
  br label %103

103:                                              ; preds = %102, %98
  %.0 = phi i32 [ 1, %98 ], [ 0, %102 ]
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
