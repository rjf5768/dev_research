; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usiteo1.c'
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
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cellbox*, align 8
  %11 = alloca %struct.tilebox*, align 8
  %12 = alloca %struct.termbox*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %18, i64 %20
  %22 = load %struct.cellbox*, %struct.cellbox** %21, align 8
  store %struct.cellbox* %22, %struct.cellbox** %10, align 8
  %23 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %17, align 4
  %29 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 21
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %30, i64 0, i64 %32
  %34 = load %struct.tilebox*, %struct.tilebox** %33, align 8
  store %struct.tilebox* %34, %struct.tilebox** %11, align 8
  %35 = load %struct.tilebox*, %struct.tilebox** %11, align 8
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 17
  %37 = load %struct.termbox*, %struct.termbox** %36, align 8
  store %struct.termbox* %37, %struct.termbox** %12, align 8
  %38 = load i32, i32* @penalty, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32 (...)*, i32 (...)** @overlap, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = bitcast i32 (...)* %39 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %47 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %46(i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %45, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load i32***, i32**** @blockarray, align 8
  %51 = load i32, i32* @binX, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %50, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* @binY, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** @occa1ptr, align 8
  %59 = load i32 (...)*, i32 (...)** @overlap, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = bitcast i32 (...)* %59 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %65 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %64(i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32***, i32**** @blockarray, align 8
  %69 = load i32, i32* @binX, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32**, i32*** %68, i64 %70
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* @binY, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** @occa2ptr, align 8
  %77 = load %struct.termbox*, %struct.termbox** %12, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  call void @ufixpin(%struct.termbox* noundef %77, i32 noundef 0, i32 noundef %78, i32 noundef %79)
  %80 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  call void @usoftpin(%struct.cellbox* noundef %80, i32 noundef 0, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  %84 = load i32, i32* @funccost, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.termbox*, %struct.termbox** %12, align 8
  %86 = call i32 @ufixnet(%struct.termbox* noundef %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %90 = call i32 @usoftnet(%struct.cellbox* noundef %89)
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @funccost, align 4
  %97 = load i32, i32* @penalty, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp sle i32 %95, %98
  br i1 %99, label %119, label %100

100:                                              ; preds = %4
  %101 = load i32, i32* @funccost, align 4
  %102 = load i32, i32* @penalty, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sitofp i32 %107 to double
  %109 = load double, double* @T, align 8
  %110 = fdiv double %108, %109
  %111 = call double @exp(double noundef %110) #3
  %112 = load i32, i32* @randVar, align 4
  %113 = mul nsw i32 %112, 1103515245
  %114 = add nsw i32 %113, 12345
  store i32 %114, i32* @randVar, align 4
  %115 = and i32 %114, 2147483647
  %116 = sitofp i32 %115 to double
  %117 = fdiv double %116, 0x41DFFFFFFFC00000
  %118 = fcmp ogt double %111, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %100, %4
  %120 = load %struct.termbox*, %struct.termbox** %12, align 8
  call void @ufixpin(%struct.termbox* noundef %120, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %121 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  call void @usoftpin(%struct.cellbox* noundef %121, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %122 = load i32*, i32** @occa1ptr, align 8
  %123 = load i32*, i32** @occa2ptr, align 8
  %124 = icmp ne i32* %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %119
  store i32 1, i32* %15, align 4
  br label %126

126:                                              ; preds = %135, %125
  %127 = load i32*, i32** @occa1ptr, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %126, !llvm.loop !4

138:                                              ; preds = %126
  %139 = load i32*, i32** @occa1ptr, align 8
  %140 = load i32*, i32** @occa1ptr, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** @occa1ptr, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32*, i32** @occa2ptr, align 8
  %153 = load i32*, i32** @occa2ptr, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32 %151, i32* %158, align 4
  br label %159

159:                                              ; preds = %138, %119
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %162 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %165 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %168 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* @funccost, align 4
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* @penalty, align 4
  store i32 1, i32* %5, align 4
  br label %172

171:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i32, i32* %5, align 4
  ret i32 %173
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
