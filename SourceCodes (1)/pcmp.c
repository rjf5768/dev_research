; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pcmp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pcmpz(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %6 = icmp ne %struct.precisionType* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %9 = bitcast %struct.precisionType* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  store i32 0, i32* %4, align 4
  %18 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 4
  %20 = getelementptr inbounds [1 x i16], [1 x i16]* %19, i64 0, i64 0
  store i16* %20, i16** %3, align 8
  br label %21

21:                                               ; preds = %36, %14
  %22 = load i16*, i16** %3, align 8
  %23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %23, i16** %3, align 8
  %24 = load i16, i16* %22, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 2
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %48

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i16*, i16** %3, align 8
  %38 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 4
  %40 = getelementptr inbounds [1 x i16], [1 x i16]* %39, i64 0, i64 0
  %41 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %42 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %40, i64 %45
  %47 = icmp ult i16* %37, %46
  br i1 %47, label %21, label %48, !llvm.loop !4

48:                                               ; preds = %36, %34
  %49 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %50 = icmp ne %struct.precisionType* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %53 = bitcast %struct.precisionType* %52 to i16*
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, -1
  store i16 %55, i16* %53, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %60 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %58, %51, %48
  %63 = phi i1 [ false, %51 ], [ false, %48 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pcmp(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  store %struct.precisionType* %1, %struct.precisionType** %4, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %9 = icmp ne %struct.precisionType* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %12 = bitcast %struct.precisionType* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = add i16 %13, 1
  store i16 %14, i16* %12, align 2
  %15 = zext i16 %13 to i32
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %21 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %22 = icmp ne %struct.precisionType* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %25 = bitcast %struct.precisionType* %24 to i16*
  %26 = load i16, i16* %25, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %25, align 2
  %28 = zext i16 %26 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi i1 [ false, %17 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %34 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %35 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 2
  %37 = zext i8 %36 to i32
  %38 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 2
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %45 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 3
  %46 = load i8, i8* %45, align 2
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %7, align 4
  br label %50

49:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %129

51:                                               ; preds = %30
  %52 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %53 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %56, i32 0, i32 2
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %55, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %120

63:                                               ; preds = %51
  %64 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %64, i32 0, i32 4
  %66 = getelementptr inbounds [1 x i16], [1 x i16]* %65, i64 0, i64 0
  %67 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %68 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %67, i32 0, i32 2
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %66, i64 %71
  store i16* %72, i16** %5, align 8
  %73 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %74 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %73, i32 0, i32 4
  %75 = getelementptr inbounds [1 x i16], [1 x i16]* %74, i64 0, i64 0
  %76 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %77 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %76, i32 0, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %75, i64 %80
  store i16* %81, i16** %6, align 8
  br label %82

82:                                               ; preds = %94, %63
  %83 = load i16*, i16** %5, align 8
  %84 = getelementptr inbounds i16, i16* %83, i32 -1
  store i16* %84, i16** %5, align 8
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16*, i16** %6, align 8
  %88 = getelementptr inbounds i16, i16* %87, i32 -1
  store i16* %88, i16** %6, align 8
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %100

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i16*, i16** %6, align 8
  %96 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %97 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %96, i32 0, i32 4
  %98 = getelementptr inbounds [1 x i16], [1 x i16]* %97, i64 0, i64 0
  %99 = icmp ugt i16* %95, %98
  br i1 %99, label %82, label %100, !llvm.loop !6

100:                                              ; preds = %94, %92
  %101 = load i16*, i16** %5, align 8
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16*, i16** %6, align 8
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %119

109:                                              ; preds = %100
  %110 = load i16*, i16** %5, align 8
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16*, i16** %6, align 8
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 -1, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %109
  br label %119

119:                                              ; preds = %118, %108
  br label %120

120:                                              ; preds = %119, %51
  %121 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %122 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %121, i32 0, i32 3
  %123 = load i8, i8* %122, align 2
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %50
  %130 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %131 = icmp ne %struct.precisionType* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %134 = bitcast %struct.precisionType* %133 to i16*
  %135 = load i16, i16* %134, align 2
  %136 = add i16 %135, -1
  store i16 %136, i16* %134, align 2
  %137 = zext i16 %136 to i32
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %141 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %140)
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %139, %132, %129
  %144 = phi i1 [ false, %132 ], [ false, %129 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %147 = icmp ne %struct.precisionType* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %150 = bitcast %struct.precisionType* %149 to i16*
  %151 = load i16, i16* %150, align 2
  %152 = add i16 %151, -1
  store i16 %152, i16* %150, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %157 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %156)
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %155, %148, %143
  %160 = phi i1 [ false, %148 ], [ false, %143 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
