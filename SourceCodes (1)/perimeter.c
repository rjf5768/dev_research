; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/perimeter.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/perimeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external dso_local global %struct.bustbox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @perimeter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %200, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 0
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %4, %8
  br i1 %9, label %10, label %203

10:                                               ; preds = %3
  %11 = load i32, i32* %1, align 4
  %12 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 0
  %14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %99

17:                                               ; preds = %10
  %18 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 1
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %24
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %21, %27
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %31, i64 1
  %33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %37
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %34, %40
  br label %55

42:                                               ; preds = %17
  %43 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %44 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 1
  %45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %47, i64 %49
  %51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %46, %52
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %42, %30
  %56 = phi i32 [ %41, %30 ], [ %54, %42 ]
  %57 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %58 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %57, i64 1
  %59 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %61, i64 %63
  %65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %60, %66
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %55
  %70 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %70, i64 1
  %72 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i64 %76
  %78 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %73, %79
  br label %94

81:                                               ; preds = %55
  %82 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %82, i64 1
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %86, i64 %88
  %90 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %85, %91
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %81, %69
  %95 = phi i32 [ %80, %69 ], [ %93, %81 ]
  %96 = add nsw i32 %56, %95
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %2, align 4
  br label %199

99:                                               ; preds = %10
  %100 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %100, i64 %103
  %105 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %107, i64 %109
  %111 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %106, %112
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %99
  %116 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %116, i64 %119
  %121 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %123, i64 %125
  %127 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %122, %128
  br label %146

130:                                              ; preds = %99
  %131 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %132 = load i32, i32* %1, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %131, i64 %134
  %136 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 %140
  %142 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %137, %143
  %145 = sub nsw i32 0, %144
  br label %146

146:                                              ; preds = %130, %115
  %147 = phi i32 [ %129, %115 ], [ %145, %130 ]
  %148 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %149 = load i32, i32* %1, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %148, i64 %151
  %153 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %155, i64 %157
  %159 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %154, %160
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %146
  %164 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %164, i64 %167
  %169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %171, i64 %173
  %175 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %170, %176
  br label %194

178:                                              ; preds = %146
  %179 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %179, i64 %182
  %184 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %186, i64 %188
  %190 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %185, %191
  %193 = sub nsw i32 0, %192
  br label %194

194:                                              ; preds = %178, %163
  %195 = phi i32 [ %177, %163 ], [ %193, %178 ]
  %196 = add nsw i32 %147, %195
  %197 = load i32, i32* %2, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %194, %94
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %1, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %1, align 4
  br label %3, !llvm.loop !4

203:                                              ; preds = %3
  %204 = load i32, i32* %2, align 4
  ret i32 %204
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
