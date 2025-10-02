; ModuleID = './usiteo2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usiteo2.c"
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
define dso_local i32 @usiteo2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %9, i64 %10
  %12 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 21, i64 %17
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
  %30 = sext i32 %7 to i64
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 21, i64 %30
  %32 = load %struct.tilebox*, %struct.tilebox** %31, align 8
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i64 0, i32 17
  %34 = load %struct.termbox*, %struct.termbox** %33, align 8
  %35 = load i32, i32* @penalty, align 4
  %36 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %36(i32 noundef %0, i32 noundef %14, i32 noundef %16, i32 noundef %38, i32 noundef 0, i32 noundef 1, i32 noundef 0) #3
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
  %50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %49(i32 noundef %1, i32 noundef %27, i32 noundef %29, i32 noundef %51, i32 noundef %0, i32 noundef 1, i32 noundef 0) #3
  %53 = add i32 %39, %52
  %54 = sub i32 %35, %53
  %55 = load i32***, i32**** @blockarray, align 8
  %56 = load i32, i32* @binX, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32**, i32*** %55, i64 %57
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* @binY, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** @occb1ptr, align 8
  %64 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %65 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %64(i32 noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %6, i32 noundef %1, i32 noundef 0, i32 noundef %7) #3
  %66 = add nsw i32 %54, %65
  %67 = load i32***, i32**** @blockarray, align 8
  %68 = load i32, i32* @binX, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* @binY, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** @occa2ptr, align 8
  %76 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %77 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %76(i32 noundef %1, i32 noundef %4, i32 noundef %5, i32 noundef %7, i32 noundef %0, i32 noundef 1, i32 noundef 0) #3
  %78 = add nsw i32 %66, %77
  %79 = load i32***, i32**** @blockarray, align 8
  %80 = load i32, i32* @binX, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32**, i32*** %79, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* @binY, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** @occb2ptr, align 8
  call void @ufixpin(%struct.termbox* noundef %21, i32 noundef 0, i32 noundef %2, i32 noundef %3) #3
  call void @usoftpin(%struct.cellbox* noundef %12, i32 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %6) #3
  call void @ufixpin(%struct.termbox* noundef %34, i32 noundef 0, i32 noundef %4, i32 noundef %5) #3
  call void @usoftpin(%struct.cellbox* noundef %25, i32 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef %7) #3
  %88 = load i32, i32* @funccost, align 4
  %89 = call i32 @ufixnet(%struct.termbox* noundef %21) #3
  %90 = add nsw i32 %88, %89
  %91 = call i32 @usoftnet(%struct.cellbox* noundef %12) #3
  %92 = add nsw i32 %90, %91
  %93 = call i32 @ufixnet(%struct.termbox* noundef %34) #3
  %94 = add nsw i32 %92, %93
  %95 = call i32 @usoftnet(%struct.cellbox* noundef %25) #3
  %96 = add nsw i32 %94, %95
  %97 = add nsw i32 %96, %78
  %98 = load i32, i32* @funccost, align 4
  %99 = load i32, i32* @penalty, align 4
  %100 = add nsw i32 %98, %99
  %.not = icmp sgt i32 %97, %100
  br i1 %.not, label %101, label %118

101:                                              ; preds = %8
  %102 = load i32, i32* @funccost, align 4
  %103 = load i32, i32* @penalty, align 4
  %104 = add nsw i32 %102, %103
  %105 = add i32 %96, %78
  %106 = sub i32 %104, %105
  %107 = sitofp i32 %106 to double
  %108 = load double, double* @T, align 8
  %109 = fdiv double %107, %108
  %110 = call double @exp(double noundef %109) #3
  %111 = load i32, i32* @randVar, align 4
  %112 = mul nsw i32 %111, 1103515245
  %113 = add nsw i32 %112, 12345
  store i32 %113, i32* @randVar, align 4
  %114 = and i32 %113, 2147483647
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %115, 0x41DFFFFFFFC00000
  %117 = fcmp ogt double %110, %116
  br i1 %117, label %118, label %179

118:                                              ; preds = %101, %8
  call void @ufixpin(%struct.termbox* noundef %21, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %12, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  call void @ufixpin(%struct.termbox* noundef %34, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  call void @usoftpin(%struct.cellbox* noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %119 = load i32*, i32** @occa1ptr, align 8
  %120 = load i32*, i32** @occa2ptr, align 8
  %.not2 = icmp eq i32* %119, %120
  br i1 %.not2, label %145, label %121

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %128, %121
  %.01 = phi i32 [ 1, %121 ], [ %129, %128 ]
  %123 = load i32*, i32** @occa1ptr, align 8
  %124 = zext i32 %.01 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %.not5 = icmp eq i32 %126, %0
  br i1 %.not5, label %130, label %127

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = add nuw nsw i32 %.01, 1
  br label %122, !llvm.loop !4

130:                                              ; preds = %122
  %131 = load i32*, i32** @occa1ptr, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** @occa1ptr, align 8
  %138 = zext i32 %.01 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load i32*, i32** @occa2ptr, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %0, i32* %144, align 4
  br label %145

145:                                              ; preds = %130, %118
  %146 = load i32*, i32** @occb1ptr, align 8
  %147 = load i32*, i32** @occb2ptr, align 8
  %.not3 = icmp eq i32* %146, %147
  br i1 %.not3, label %172, label %148

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %155, %148
  %.1 = phi i32 [ 1, %148 ], [ %156, %155 ]
  %150 = load i32*, i32** @occb1ptr, align 8
  %151 = zext i32 %.1 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %.not4 = icmp eq i32 %153, %1
  br i1 %.not4, label %157, label %154

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = add nuw nsw i32 %.1, 1
  br label %149, !llvm.loop !6

157:                                              ; preds = %149
  %158 = load i32*, i32** @occb1ptr, align 8
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @occb1ptr, align 8
  %165 = zext i32 %.1 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %163, i32* %166, align 4
  %167 = load i32*, i32** @occb2ptr, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %1, i32* %171, align 4
  br label %172

172:                                              ; preds = %157, %145
  %173 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 2
  store i32 %2, i32* %173, align 4
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 3
  store i32 %3, i32* %174, align 8
  %175 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 2
  store i32 %4, i32* %175, align 4
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 3
  store i32 %5, i32* %176, align 8
  %177 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 5
  store i32 %6, i32* %177, align 8
  %178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i64 0, i32 5
  store i32 %7, i32* %178, align 8
  store i32 %96, i32* @funccost, align 4
  store i32 %78, i32* @penalty, align 4
  br label %180

179:                                              ; preds = %101
  br label %180

180:                                              ; preds = %179, %172
  %.0 = phi i32 [ 1, %172 ], [ 0, %179 ]
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
