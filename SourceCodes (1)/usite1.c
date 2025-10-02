; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite1.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cellbox*, align 8
  %9 = alloca %struct.tilebox*, align 8
  %10 = alloca %struct.termbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %17, i64 %19
  %21 = load %struct.cellbox*, %struct.cellbox** %20, align 8
  store %struct.cellbox* %21, %struct.cellbox** %8, align 8
  %22 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 21
  %30 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %29, i64 0, i64 %33
  %35 = load %struct.tilebox*, %struct.tilebox** %34, align 8
  store %struct.tilebox* %35, %struct.tilebox** %9, align 8
  %36 = load %struct.tilebox*, %struct.tilebox** %9, align 8
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 17
  %38 = load %struct.termbox*, %struct.termbox** %37, align 8
  store %struct.termbox* %38, %struct.termbox** %10, align 8
  %39 = load i32, i32* @penalty, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32 (...)*, i32 (...)** @overlap, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i32 (...)* %40 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %48 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %47(i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %46, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32***, i32**** @blockarray, align 8
  %52 = load i32, i32* @binX, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32**, i32*** %51, i64 %53
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* @binY, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** @occa1ptr, align 8
  %60 = load i32 (...)*, i32 (...)** @overlap, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = bitcast i32 (...)* %60 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %68 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %67(i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %66, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32***, i32**** @blockarray, align 8
  %72 = load i32, i32* @binX, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32**, i32*** %71, i64 %73
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* @binY, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** @occa2ptr, align 8
  %80 = load %struct.termbox*, %struct.termbox** %10, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  call void @ufixpin(%struct.termbox* noundef %80, i32 noundef 0, i32 noundef %81, i32 noundef %82)
  %83 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  call void @usoftpin(%struct.cellbox* noundef %83, i32 noundef 0, i32 noundef %84, i32 noundef %85, i32 noundef %88)
  %89 = load i32, i32* @funccost, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.termbox*, %struct.termbox** %10, align 8
  %91 = call i32 @ufixnet(%struct.termbox* noundef %90)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %95 = call i32 @usoftnet(%struct.cellbox* noundef %94)
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @finalShot, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %3
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @deltaBB(i32 noundef %101, i32 noundef %102, i32 noundef %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %100, %3
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* @funccost, align 4
  %113 = load i32, i32* @penalty, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp sle i32 %111, %114
  br i1 %115, label %135, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @funccost, align 4
  %118 = load i32, i32* @penalty, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sitofp i32 %123 to double
  %125 = load double, double* @T, align 8
  %126 = fdiv double %124, %125
  %127 = call double @exp(double noundef %126) #3
  %128 = load i32, i32* @randVar, align 4
  %129 = mul nsw i32 %128, 1103515245
  %130 = add nsw i32 %129, 12345
  store i32 %130, i32* @randVar, align 4
  %131 = and i32 %130, 2147483647
  %132 = sitofp i32 %131 to double
  %133 = fdiv double %132, 0x41DFFFFFFFC00000
  %134 = fcmp ogt double %127, %133
  br i1 %134, label %135, label %195

135:                                              ; preds = %116, %108
  %136 = load %struct.termbox*, %struct.termbox** %10, align 8
  call void @ufixpin(%struct.termbox* noundef %136, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %137 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  call void @usoftpin(%struct.cellbox* noundef %137, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %138 = load i32*, i32** @occa1ptr, align 8
  %139 = load i32*, i32** @occa2ptr, align 8
  %140 = icmp ne i32* %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %135
  store i32 1, i32* %13, align 4
  br label %142

142:                                              ; preds = %151, %141
  %143 = load i32*, i32** @occa1ptr, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %142, !llvm.loop !4

154:                                              ; preds = %142
  %155 = load i32*, i32** @occa1ptr, align 8
  %156 = load i32*, i32** @occa1ptr, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @occa1ptr, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32*, i32** @occa2ptr, align 8
  %169 = load i32*, i32** @occa2ptr, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %168, i64 %173
  store i32 %167, i32* %174, align 4
  br label %175

175:                                              ; preds = %154, %135
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %181 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* @funccost, align 4
  %183 = load i32, i32* @finalShot, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %175
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* @bbbl, align 4
  store i32 %189, i32* @bbleft, align 4
  %190 = load i32, i32* @bbbr, align 4
  store i32 %190, i32* @bbright, align 4
  %191 = load i32, i32* @bbbb, align 4
  store i32 %191, i32* @bbbottom, align 4
  %192 = load i32, i32* @bbbt, align 4
  store i32 %192, i32* @bbtop, align 4
  br label %193

193:                                              ; preds = %185, %175
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* @penalty, align 4
  store i32 1, i32* %4, align 4
  br label %196

195:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %195, %193
  %197 = load i32, i32* %4, align 4
  ret i32 %197
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
