; ModuleID = './usite1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite1.c"
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
@finalShot = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4
@bbbl = external dso_local global i32, align 4
@bbleft = external dso_local global i32, align 4
@bbbr = external dso_local global i32, align 4
@bbright = external dso_local global i32, align 4
@bbbb = external dso_local global i32, align 4
@bbbottom = external dso_local global i32, align 4
@bbbt = external dso_local global i32, align 4
@bbtop = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @usite1(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 17
  %18 = load %struct.termbox*, %struct.termbox** %17, align 8
  %19 = load i32, i32* @penalty, align 4
  %20 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %20(i32 noundef %0, i32 noundef %9, i32 noundef %11, i32 noundef %22, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %24 = sub nsw i32 %19, %23
  %25 = load i32***, i32**** @blockarray, align 8
  %26 = load i32, i32* @binX, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %25, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* @binY, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** @occa1ptr, align 8
  %34 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %35 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %34(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %38 = add nsw i32 %24, %37
  %39 = load i32***, i32**** @blockarray, align 8
  %40 = load i32, i32* @binX, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32**, i32*** %39, i64 %41
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* @binY, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** @occa2ptr, align 8
  call void @ufixpin(%struct.termbox* noundef %18, i32 noundef 0, i32 noundef %1, i32 noundef %2) #3
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %49 = load i32, i32* %48, align 8
  call void @usoftpin(%struct.cellbox* noundef %7, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %49) #3
  %50 = load i32, i32* @funccost, align 4
  %51 = call i32 @ufixnet(%struct.termbox* noundef %18) #3
  %52 = add nsw i32 %50, %51
  %53 = call i32 @usoftnet(%struct.cellbox* noundef %7) #3
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @finalShot, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = call i32 @deltaBB(i32 noundef %0, i32 noundef %1, i32 noundef %2) #3
  %59 = add nsw i32 %38, %58
  br label %60

60:                                               ; preds = %57, %3
  %.03 = phi i32 [ %59, %57 ], [ %38, %3 ]
  %.01 = phi i32 [ %58, %57 ], [ undef, %3 ]
  %61 = add nsw i32 %54, %.03
  %62 = load i32, i32* @funccost, align 4
  %63 = load i32, i32* @penalty, align 4
  %64 = add nsw i32 %62, %63
  %.not = icmp sgt i32 %61, %64
  br i1 %.not, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* @funccost, align 4
  %67 = load i32, i32* @penalty, align 4
  %68 = add nsw i32 %66, %67
  %69 = add i32 %54, %.03
  %70 = sub i32 %68, %69
  %71 = sitofp i32 %70 to double
  %72 = load double, double* @T, align 8
  %73 = fdiv double %71, %72
  %74 = call double @exp(double noundef %73) #3
  %75 = load i32, i32* @randVar, align 4
  %76 = mul nsw i32 %75, 1103515245
  %77 = add nsw i32 %76, 12345
  store i32 %77, i32* @randVar, align 4
  %78 = and i32 %77, 2147483647
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %79, 0x41DFFFFFFFC00000
  %81 = fcmp ogt double %74, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %65, %60
  call void @ufixpin(%struct.termbox* noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %83 = load i32*, i32** @occa1ptr, align 8
  %84 = load i32*, i32** @occa2ptr, align 8
  %.not4 = icmp eq i32* %83, %84
  br i1 %.not4, label %109, label %85

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %92, %85
  %.02 = phi i32 [ 1, %85 ], [ %93, %92 ]
  %87 = load i32*, i32** @occa1ptr, align 8
  %88 = zext i32 %.02 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %.not5 = icmp eq i32 %90, %0
  br i1 %.not5, label %94, label %91

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  %93 = add nuw nsw i32 %.02, 1
  br label %86, !llvm.loop !4

94:                                               ; preds = %86
  %95 = load i32*, i32** @occa1ptr, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** @occa1ptr, align 8
  %102 = zext i32 %.02 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32*, i32** @occa2ptr, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %0, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %82
  %110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  store i32 %1, i32* %110, align 4
  %111 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  store i32 %2, i32* %111, align 8
  store i32 %54, i32* @funccost, align 4
  %112 = load i32, i32* @finalShot, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = sub nsw i32 %.03, %.01
  %116 = load i32, i32* @bbbl, align 4
  store i32 %116, i32* @bbleft, align 4
  %117 = load i32, i32* @bbbr, align 4
  store i32 %117, i32* @bbright, align 4
  %118 = load i32, i32* @bbbb, align 4
  store i32 %118, i32* @bbbottom, align 4
  %119 = load i32, i32* @bbbt, align 4
  store i32 %119, i32* @bbtop, align 4
  br label %120

120:                                              ; preds = %114, %109
  %.1 = phi i32 [ %115, %114 ], [ %.03, %109 ]
  store i32 %.1, i32* @penalty, align 4
  br label %122

121:                                              ; preds = %65
  br label %122

122:                                              ; preds = %121, %120
  %.0 = phi i32 [ 1, %120 ], [ 0, %121 ]
  ret i32 %.0
}

declare dso_local void @ufixpin(%struct.termbox* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @usoftpin(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @ufixnet(%struct.termbox* noundef) #1

declare dso_local i32 @usoftnet(%struct.cellbox* noundef) #1

declare dso_local i32 @deltaBB(i32 noundef, i32 noundef, i32 noundef) #1

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
