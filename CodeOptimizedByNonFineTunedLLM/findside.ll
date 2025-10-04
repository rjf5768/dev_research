; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findside.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psidebox = type { i32, double, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@pSideArray = external dso_local global %struct.psidebox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findside(%struct.cellbox* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cellbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 10000000, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %157, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %160

16:                                               ; preds = %10
  %17 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %17, i64 %19
  %21 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %90

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %26, i64 %28
  %30 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %25, %31
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %36, i64 %38
  %40 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %35, %41
  br label %53

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %45, i64 %47
  %49 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %44, %50
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %43, %34
  %54 = phi i32 [ %42, %34 ], [ %52, %43 ]
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %59, i64 %61
  %63 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %58, %64
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %69, i64 %71
  %73 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %68, %74
  br label %86

76:                                               ; preds = %57
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %78, i64 %80
  %82 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %77, %83
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %76, %67
  %87 = phi i32 [ %75, %67 ], [ %85, %76 ]
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %53
  br label %156

90:                                               ; preds = %16
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %92, i64 %94
  %96 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %91, %97
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %102, i64 %104
  %106 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %101, %107
  br label %119

109:                                              ; preds = %90
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %111, i64 %113
  %115 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %110, %116
  %118 = sub nsw i32 0, %117
  br label %119

119:                                              ; preds = %109, %100
  %120 = phi i32 [ %108, %100 ], [ %118, %109 ]
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %125, i64 %127
  %129 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %124, %130
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %135, i64 %137
  %139 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %134, %140
  br label %152

142:                                              ; preds = %123
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %144, i64 %146
  %148 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %143, %149
  %151 = sub nsw i32 0, %150
  br label %152

152:                                              ; preds = %142, %133
  %153 = phi i32 [ %141, %133 ], [ %151, %142 ]
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %152, %119
  br label %156

156:                                              ; preds = %155, %89
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %10, !llvm.loop !4

160:                                              ; preds = %10
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @loadside(i32 noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %6, i64 %8
  %10 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %9, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fadd double %11, %5
  store double %12, double* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
