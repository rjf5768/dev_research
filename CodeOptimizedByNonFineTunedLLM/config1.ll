; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config1.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@coreGiven = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@perim = external dso_local global i32, align 4
@totChanLen = dso_local global i32 0, align 4
@aveChanWid = external dso_local global i32, align 4
@maxWeight = external dso_local global i32, align 4
@baseWeight = external dso_local global i32, align 4
@slopeX = external dso_local global double, align 8
@slopeY = external dso_local global double, align 8
@basefactor = external dso_local global double, align 8
@blockl = external dso_local global i32, align 4
@blockmx = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockmy = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@totNetLen = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @config1() #0 {
  %1 = alloca %struct.cellbox*, align 8
  %2 = alloca %struct.tilebox*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %95, %0
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @numcells, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %16
  %18 = load %struct.cellbox*, %struct.cellbox** %17, align 8
  store %struct.cellbox* %18, %struct.cellbox** %1, align 8
  %19 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %53

23:                                               ; preds = %13
  %24 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 21
  %26 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %25, i64 0, i64 %29
  %31 = load %struct.tilebox*, %struct.tilebox** %30, align 8
  store %struct.tilebox* %31, %struct.tilebox** %2, align 8
  %32 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  %35 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %42 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %47, %48
  %50 = mul nsw i32 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %94

53:                                               ; preds = %13
  %54 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 21
  %56 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %55, i64 0, i64 %59
  %61 = load %struct.tilebox*, %struct.tilebox** %60, align 8
  %62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i32 0, i32 0
  %63 = load %struct.tilebox*, %struct.tilebox** %62, align 8
  store %struct.tilebox* %63, %struct.tilebox** %2, align 8
  br label %64

64:                                               ; preds = %89, %53
  %65 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %66 = icmp ne %struct.tilebox* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  %74 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %5, align 4
  %77 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %83, %84
  %86 = mul nsw i32 %82, %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %67
  %90 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %90, i32 0, i32 0
  %92 = load %struct.tilebox*, %struct.tilebox** %91, align 8
  store %struct.tilebox* %92, %struct.tilebox** %2, align 8
  br label %64, !llvm.loop !4

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %93, %23
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %9, !llvm.loop !6

98:                                               ; preds = %9
  %99 = load i32, i32* @coreGiven, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = sitofp i32 %102 to double
  %104 = call double @sqrt(double noundef %103) #3
  %105 = fptosi double %104 to i32
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @blockt, align 4
  store i32 %106, i32* @blockr, align 4
  %107 = load i32, i32* @perim, align 4
  %108 = sdiv i32 %107, 2
  %109 = load i32, i32* @blockr, align 4
  %110 = load i32, i32* @blockt, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* @totChanLen, align 4
  store i32 0, i32* @aveChanWid, align 4
  br label %125

113:                                              ; preds = %98
  %114 = load i32, i32* %7, align 4
  %115 = sitofp i32 %114 to double
  %116 = call double @sqrt(double noundef %115) #3
  %117 = fptosi double %116 to i32
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* @perim, align 4
  %120 = sdiv i32 %119, 2
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  %124 = sub nsw i32 %120, %123
  store i32 %124, i32* @totChanLen, align 4
  store i32 0, i32* @aveChanWid, align 4
  br label %125

125:                                              ; preds = %113, %101
  %126 = load i32, i32* @maxWeight, align 4
  %127 = load i32, i32* @baseWeight, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sitofp i32 %128 to double
  %130 = load i32, i32* @blockr, align 4
  %131 = sitofp i32 %130 to double
  %132 = fmul double %131, 5.000000e-01
  %133 = fdiv double %129, %132
  store double %133, double* @slopeX, align 8
  %134 = load i32, i32* @maxWeight, align 4
  %135 = load i32, i32* @baseWeight, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sitofp i32 %136 to double
  %138 = load i32, i32* @blockt, align 4
  %139 = sitofp i32 %138 to double
  %140 = fmul double %139, 5.000000e-01
  %141 = fdiv double %137, %140
  store double %141, double* @slopeY, align 8
  %142 = load i32, i32* @baseWeight, align 4
  %143 = sitofp i32 %142 to double
  store double %143, double* @basefactor, align 8
  call void @placepads()
  %144 = load i32, i32* @blockr, align 4
  %145 = load i32, i32* @blockl, align 4
  %146 = add nsw i32 %144, %145
  %147 = sdiv i32 %146, 2
  store i32 %147, i32* @blockmx, align 4
  %148 = load i32, i32* @blockt, align 4
  %149 = load i32, i32* @blockb, align 4
  %150 = add nsw i32 %148, %149
  %151 = sdiv i32 %150, 2
  store i32 %151, i32* @blockmy, align 4
  %152 = load i32, i32* @blockr, align 4
  %153 = load i32, i32* @blockl, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* @numBinsX, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* @binWidthX, align 4
  %157 = load i32, i32* @blockr, align 4
  %158 = load i32, i32* @blockl, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* @binWidthX, align 4
  %161 = load i32, i32* @numBinsX, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sub nsw i32 %159, %162
  %164 = load i32, i32* @numBinsX, align 4
  %165 = sdiv i32 %164, 2
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %125
  %168 = load i32, i32* @binWidthX, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @binWidthX, align 4
  br label %170

170:                                              ; preds = %167, %125
  %171 = load i32, i32* @blockl, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* @binWidthX, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* @binOffsetX, align 4
  %175 = load i32, i32* @blockt, align 4
  %176 = load i32, i32* @blockb, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* @numBinsY, align 4
  %179 = sdiv i32 %177, %178
  store i32 %179, i32* @binWidthY, align 4
  %180 = load i32, i32* @blockt, align 4
  %181 = load i32, i32* @blockb, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* @binWidthY, align 4
  %184 = load i32, i32* @numBinsY, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sub nsw i32 %182, %185
  %187 = load i32, i32* @numBinsY, align 4
  %188 = sdiv i32 %187, 2
  %189 = icmp sge i32 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %170
  %191 = load i32, i32* @binWidthY, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @binWidthY, align 4
  br label %193

193:                                              ; preds = %190, %170
  %194 = load i32, i32* @blockb, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* @binWidthY, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* @binOffsetY, align 4
  call void @loadbins(i32 noundef 1)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local void @placepads() #2

declare dso_local void @loadbins(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
