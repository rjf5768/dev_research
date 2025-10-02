; ModuleID = './usite2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite2.c"
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
@occb1ptr = external dso_local global i32*, align 8
@occa2ptr = external dso_local global i32*, align 8
@occb2ptr = external dso_local global i32*, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @usite2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %8
  %10 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 21, i64 %17
  %19 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %19, i64 0, i32 17
  %21 = load %struct.termbox*, %struct.termbox** %20, align 8
  %22 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %22, i64 %23
  %25 = load %struct.cellbox*, %struct.cellbox** %24, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 21, i64 %32
  %34 = load %struct.tilebox*, %struct.tilebox** %33, align 8
  %35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i64 0, i32 17
  %36 = load %struct.termbox*, %struct.termbox** %35, align 8
  %37 = load i32, i32* @penalty, align 4
  %38 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %39 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %38(i32 noundef %0, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
  %40 = load i32***, i32**** @blockarray, align 8
  %41 = load i32, i32* @binX, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32**, i32*** %40, i64 %42
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* @binY, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** @occa1ptr, align 8
  %49 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %50 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %49(i32 noundef %1, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %0, i32 noundef 1, i32 noundef 0) #3
  %51 = add i32 %39, %50
  %52 = sub i32 %37, %51
  %53 = load i32***, i32**** @blockarray, align 8
  %54 = load i32, i32* @binX, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %53, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* @binY, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** @occb1ptr, align 8
  %62 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %63 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %62(i32 noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %16, i32 noundef %1, i32 noundef 0, i32 noundef %31) #3
  %64 = add nsw i32 %52, %63
  %65 = load i32***, i32**** @blockarray, align 8
  %66 = load i32, i32* @binX, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32**, i32*** %65, i64 %67
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* @binY, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** @occa2ptr, align 8
  %74 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %75 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %74(i32 noundef %1, i32 noundef %4, i32 noundef %5, i32 noundef %31, i32 noundef %0, i32 noundef 1, i32 noundef 0) #3
  %76 = add nsw i32 %64, %75
  %77 = load i32***, i32**** @blockarray, align 8
  %78 = load i32, i32* @binX, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32**, i32*** %77, i64 %79
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* @binY, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** @occb2ptr, align 8
  call void @ufixpin(%struct.termbox* noundef %21, i32 noundef 0, i32 noundef %2, i32 noundef %3) #3
  call void @usoftpin(%struct.cellbox* noundef %10, i32 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %16) #3
  call void @ufixpin(%struct.termbox* noundef %36, i32 noundef 0, i32 noundef %4, i32 noundef %5) #3
  call void @usoftpin(%struct.cellbox* noundef %25, i32 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef %31) #3
  %86 = load i32, i32* @funccost, align 4
  %87 = call i32 @ufixnet(%struct.termbox* noundef %21) #3
  %88 = add nsw i32 %86, %87
  %89 = call i32 @usoftnet(%struct.cellbox* noundef %10) #3
  %90 = add nsw i32 %88, %89
  %91 = call i32 @ufixnet(%struct.termbox* noundef %36) #3
  %92 = add nsw i32 %90, %91
  %93 = call i32 @usoftnet(%struct.cellbox* noundef %25) #3
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, %76
  %96 = load i32, i32* @funccost, align 4
  %97 = load i32, i32* @penalty, align 4
  %98 = add nsw i32 %96, %97
  %.not = icmp sgt i32 %95, %98
  br i1 %.not, label %99, label %116

99:                                               ; preds = %6
  %100 = load i32, i32* @funccost, align 4
  %101 = load i32, i32* @penalty, align 4
  %102 = add nsw i32 %100, %101
  %103 = add i32 %94, %76
  %104 = sub i32 %102, %103
  %105 = sitofp i32 %104 to double
  %106 = load double, double* @T, align 8
  %107 = fdiv double %105, %106
  %108 = call double @exp(double noundef %107) #3
  %109 = load i32, i32* @randVar, align 4
  %110 = mul nsw i32 %109, 1103515245
  %111 = add nsw i32 %110, 12345
  store i32 %111, i32* @randVar, align 4
  %112 = and i32 %111, 2147483647
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %113, 0x41DFFFFFFFC00000
  %115 = fcmp ogt double %108, %114
  br i1 %115, label %116, label %175

116:                                              ; preds = %99, %6
  call void @ufixpin(%struct.termbox* noundef %21, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  call void @ufixpin(%struct.termbox* noundef %36, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %117 = load i32*, i32** @occa1ptr, align 8
  %118 = load i32*, i32** @occa2ptr, align 8
  %.not2 = icmp eq i32* %117, %118
  br i1 %.not2, label %143, label %119

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %126, %119
  %.01 = phi i32 [ 1, %119 ], [ %127, %126 ]
  %121 = load i32*, i32** @occa1ptr, align 8
  %122 = zext i32 %.01 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %.not5 = icmp eq i32 %124, %0
  br i1 %.not5, label %128, label %125

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125
  %127 = add nuw nsw i32 %.01, 1
  br label %120, !llvm.loop !4

128:                                              ; preds = %120
  %129 = load i32*, i32** @occa1ptr, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @occa1ptr, align 8
  %136 = zext i32 %.01 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32*, i32** @occa2ptr, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %0, i32* %142, align 4
  br label %143

143:                                              ; preds = %128, %116
  %144 = load i32*, i32** @occb1ptr, align 8
  %145 = load i32*, i32** @occb2ptr, align 8
  %.not3 = icmp eq i32* %144, %145
  br i1 %.not3, label %170, label %146

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %153, %146
  %.1 = phi i32 [ 1, %146 ], [ %154, %153 ]
  %148 = load i32*, i32** @occb1ptr, align 8
  %149 = zext i32 %.1 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %.not4 = icmp eq i32 %151, %1
  br i1 %.not4, label %155, label %152

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152
  %154 = add nuw nsw i32 %.1, 1
  br label %147, !llvm.loop !6

155:                                              ; preds = %147
  %156 = load i32*, i32** @occb1ptr, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** @occb1ptr, align 8
  %163 = zext i32 %.1 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load i32*, i32** @occb2ptr, align 8
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %1, i32* %169, align 4
  br label %170

170:                                              ; preds = %155, %143
  %171 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  store i32 %2, i32* %171, align 4
  %172 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  store i32 %3, i32* %172, align 8
  %173 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 2
  store i32 %4, i32* %173, align 4
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 3
  store i32 %5, i32* %174, align 8
  store i32 %94, i32* @funccost, align 4
  store i32 %76, i32* @penalty, align 4
  br label %176

175:                                              ; preds = %99
  br label %176

176:                                              ; preds = %175, %170
  %.0 = phi i32 [ 1, %170 ], [ 0, %175 ]
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
!6 = distinct !{!6, !5}
