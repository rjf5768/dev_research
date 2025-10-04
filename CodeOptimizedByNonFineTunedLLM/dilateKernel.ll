; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dilate/dilateKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dilate/dilateKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @dilateKernel(i32 noundef %0, i32 noundef %1, [1024 x i32]* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i32]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [1024 x i32]* %2, [1024 x i32]** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %97, %5
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  br label %37

37:                                               ; preds = %80, %36
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %40, label %83

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load [1024 x i32]*, [1024 x i32]** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x i32], [1024 x i32]* %52, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %55, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load [1024 x i32]*, [1024 x i32]** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1024 x i32], [1024 x i32]* %65, i64 %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1024 x i32], [1024 x i32]* %68, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  br label %77

75:                                               ; preds = %51
  %76 = load i32, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %64
  %78 = phi i32 [ %74, %64 ], [ %76, %75 ]
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %45, %40
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %37, !llvm.loop !4

83:                                               ; preds = %37
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %26
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %84, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %32, !llvm.loop !6

96:                                               ; preds = %32
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %27, !llvm.loop !7

100:                                              ; preds = %27
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %173, %100
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %176

105:                                              ; preds = %101
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %169, %105
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %172

110:                                              ; preds = %106
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %111

111:                                              ; preds = %156, %110
  %112 = load i32, i32* %18, align 4
  %113 = icmp sle i32 %112, 1
  br i1 %113, label %114, label %159

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %115, %116
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %114
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %119
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %26
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %125
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, %26
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  br label %153

151:                                              ; preds = %125
  %152 = load i32, i32* %17, align 4
  br label %153

153:                                              ; preds = %151, %139
  %154 = phi i32 [ %150, %139 ], [ %152, %151 ]
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %153, %119, %114
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  br label %111, !llvm.loop !8

159:                                              ; preds = %111
  %160 = load i32, i32* %17, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, %22
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %160, i32* %168, align 4
  br label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %106, !llvm.loop !9

172:                                              ; preds = %106
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %101, !llvm.loop !10

176:                                              ; preds = %101
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
