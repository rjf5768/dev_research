; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite0.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cellbox*, align 8
  %7 = alloca %struct.termbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %13, i64 %15
  %17 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  store %struct.cellbox* %17, %struct.cellbox** %6, align 8
  %18 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 21
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %25, i64 0, i64 %27
  %29 = load %struct.tilebox*, %struct.tilebox** %28, align 8
  %30 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %29, i32 0, i32 17
  %31 = load %struct.termbox*, %struct.termbox** %30, align 8
  store %struct.termbox* %31, %struct.termbox** %7, align 8
  %32 = load i32, i32* @penalty, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32 (...)*, i32 (...)** @overlap, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = bitcast i32 (...)* %33 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %41 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %40(i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %39, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32***, i32**** @blockarray, align 8
  %45 = load i32, i32* @binX, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* @binY, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** @occa1ptr, align 8
  %53 = load i32 (...)*, i32 (...)** @overlap, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %5, align 4
  %58 = bitcast i32 (...)* %53 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %59 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %58(i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32***, i32**** @blockarray, align 8
  %63 = load i32, i32* @binX, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32**, i32*** %62, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* @binY, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** @occa2ptr, align 8
  %71 = load %struct.termbox*, %struct.termbox** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  call void @ufixpin(%struct.termbox* noundef %71, i32 noundef 0, i32 noundef %72, i32 noundef %73)
  %74 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %5, align 4
  call void @usoftpin(%struct.cellbox* noundef %74, i32 noundef 0, i32 noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i32, i32* @funccost, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.termbox*, %struct.termbox** %7, align 8
  %80 = call i32 @ufixnet(%struct.termbox* noundef %79)
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %84 = call i32 @usoftnet(%struct.cellbox* noundef %83)
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @funccost, align 4
  %91 = load i32, i32* @penalty, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %113, label %94

94:                                               ; preds = %2
  %95 = load i32, i32* @funccost, align 4
  %96 = load i32, i32* @penalty, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sitofp i32 %101 to double
  %103 = load double, double* @T, align 8
  %104 = fdiv double %102, %103
  %105 = call double @exp(double noundef %104) #3
  %106 = load i32, i32* @randVar, align 4
  %107 = mul nsw i32 %106, 1103515245
  %108 = add nsw i32 %107, 12345
  store i32 %108, i32* @randVar, align 4
  %109 = and i32 %108, 2147483647
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %110, 0x41DFFFFFFFC00000
  %112 = fcmp ogt double %105, %111
  br i1 %112, label %113, label %159

113:                                              ; preds = %94, %2
  %114 = load %struct.termbox*, %struct.termbox** %7, align 8
  call void @ufixpin(%struct.termbox* noundef %114, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %115 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  call void @usoftpin(%struct.cellbox* noundef %115, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %116 = load i32*, i32** @occa1ptr, align 8
  %117 = load i32*, i32** @occa2ptr, align 8
  %118 = icmp ne i32* %116, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %113
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %129, %119
  %121 = load i32*, i32** @occa1ptr, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %120, !llvm.loop !4

132:                                              ; preds = %120
  %133 = load i32*, i32** @occa1ptr, align 8
  %134 = load i32*, i32** @occa1ptr, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** @occa1ptr, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32*, i32** @occa2ptr, align 8
  %147 = load i32*, i32** @occa2ptr, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  store i32 %145, i32* %152, align 4
  br label %153

153:                                              ; preds = %132, %113
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %156 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* @funccost, align 4
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* @penalty, align 4
  store i32 1, i32* %3, align 4
  br label %160

159:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %153
  %161 = load i32, i32* %3, align 4
  ret i32 %161
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
