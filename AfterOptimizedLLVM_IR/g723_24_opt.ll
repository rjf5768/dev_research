; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g723_24.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g723_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@qtab_723_24 = internal global [3 x i16] [i16 8, i16 218, i16 331], align 2
@_dqlntab = internal global [8 x i16] [i16 -2048, i16 135, i16 273, i16 373, i16 373, i16 273, i16 135, i16 -2048], align 16
@_witab = internal global [8 x i16] [i16 -128, i16 960, i16 4384, i16 18624, i16 18624, i16 4384, i16 960, i16 -128], align 16
@_fitab = internal global [8 x i16] [i16 0, i16 512, i16 1024, i16 3584, i16 3584, i16 1024, i16 512, i16 0], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g723_24_encoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.g72x_state*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.g72x_state* %2, %struct.g72x_state** %7, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %30 [
    i32 2, label %19
    i32 1, label %23
    i32 3, label %27
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 noundef %20)
  %22 = ashr i32 %21, 2
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 noundef %24)
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %124

31:                                               ; preds = %27, %23, %19
  %32 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %33 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %32)
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %9, align 2
  %35 = load i16, i16* %9, align 2
  %36 = sext i16 %35 to i32
  %37 = ashr i32 %36, 1
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %11, align 2
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %42 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %41)
  %43 = add nsw i32 %40, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %8, align 2
  %45 = load i16, i16* %8, align 2
  %46 = sext i16 %45 to i32
  %47 = ashr i32 %46, 1
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %10, align 2
  %49 = load i32, i32* %5, align 4
  %50 = load i16, i16* %10, align 2
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %49, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %12, align 2
  %54 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %55 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %54)
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %13, align 2
  %57 = load i16, i16* %12, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* %13, align 2
  %60 = sext i16 %59 to i32
  %61 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 noundef %58, i32 noundef %60, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @qtab_723_24, i64 0, i64 0), i32 noundef 3)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %17, align 2
  %63 = load i16, i16* %17, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, 4
  %66 = load i16, i16* %17, align 2
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds [8 x i16], [8 x i16]* @_dqlntab, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* %13, align 2
  %72 = sext i16 %71 to i32
  %73 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %65, i32 noundef %70, i32 noundef %72)
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %16, align 2
  %75 = load i16, i16* %16, align 2
  %76 = sext i16 %75 to i32
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %31
  %79 = load i16, i16* %10, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* %16, align 2
  %82 = sext i16 %81 to i32
  %83 = and i32 %82, 16383
  %84 = sub nsw i32 %80, %83
  br label %91

85:                                               ; preds = %31
  %86 = load i16, i16* %10, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* %16, align 2
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %87, %89
  br label %91

91:                                               ; preds = %85, %78
  %92 = phi i32 [ %84, %78 ], [ %90, %85 ]
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %14, align 2
  %94 = load i16, i16* %14, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* %11, align 2
  %97 = sext i16 %96 to i32
  %98 = add nsw i32 %95, %97
  %99 = load i16, i16* %10, align 2
  %100 = sext i16 %99 to i32
  %101 = sub nsw i32 %98, %100
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %15, align 2
  %103 = load i16, i16* %13, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16, i16* %17, align 2
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [8 x i16], [8 x i16]* @_witab, i64 0, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = load i16, i16* %17, align 2
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds [8 x i16], [8 x i16]* @_fitab, i64 0, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* %16, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16, i16* %14, align 2
  %118 = sext i16 %117 to i32
  %119 = load i16, i16* %15, align 2
  %120 = sext i16 %119 to i32
  %121 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 3, i32 noundef %104, i32 noundef %109, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %120, %struct.g72x_state* noundef %121)
  %122 = load i16, i16* %17, align 2
  %123 = sext i16 %122 to i32
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %91, %30
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @alaw2linear(...) #1

declare dso_local i32 @ulaw2linear(...) #1

declare dso_local i32 @predictor_zero(...) #1

declare dso_local i32 @predictor_pole(...) #1

declare dso_local i32 @step_size(...) #1

declare dso_local i32 @quantize(...) #1

declare dso_local i32 @reconstruct(...) #1

declare dso_local void @update(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g723_24_decoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.g72x_state*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.g72x_state* %2, %struct.g72x_state** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %5, align 4
  %18 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %19 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %18)
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %8, align 2
  %21 = load i16, i16* %8, align 2
  %22 = sext i16 %21 to i32
  %23 = ashr i32 %22, 1
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %10, align 2
  %25 = load i16, i16* %8, align 2
  %26 = sext i16 %25 to i32
  %27 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %28 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %27)
  %29 = add nsw i32 %26, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %9, align 2
  %31 = load i16, i16* %9, align 2
  %32 = sext i16 %31 to i32
  %33 = ashr i32 %32, 1
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %11, align 2
  %35 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %36 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %35)
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %12, align 2
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i16], [8 x i16]* @_dqlntab, i64 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* %12, align 2
  %46 = sext i16 %45 to i32
  %47 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %39, i32 noundef %44, i32 noundef %46)
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %14, align 2
  %49 = load i16, i16* %14, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %3
  %53 = load i16, i16* %11, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %14, align 2
  %56 = sext i16 %55 to i32
  %57 = and i32 %56, 16383
  %58 = sub nsw i32 %54, %57
  br label %65

59:                                               ; preds = %3
  %60 = load i16, i16* %11, align 2
  %61 = sext i16 %60 to i32
  %62 = load i16, i16* %14, align 2
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %61, %63
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi i32 [ %58, %52 ], [ %64, %59 ]
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %13, align 2
  %68 = load i16, i16* %13, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %11, align 2
  %71 = sext i16 %70 to i32
  %72 = sub nsw i32 %69, %71
  %73 = load i16, i16* %10, align 2
  %74 = sext i16 %73 to i32
  %75 = add nsw i32 %72, %74
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %15, align 2
  %77 = load i16, i16* %12, align 2
  %78 = sext i16 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i16], [8 x i16]* @_witab, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x i16], [8 x i16]* @_fitab, i64 0, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* %14, align 2
  %90 = sext i16 %89 to i32
  %91 = load i16, i16* %13, align 2
  %92 = sext i16 %91 to i32
  %93 = load i16, i16* %15, align 2
  %94 = sext i16 %93 to i32
  %95 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 3, i32 noundef %78, i32 noundef %83, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, %struct.g72x_state* noundef %95)
  %96 = load i32, i32* %6, align 4
  switch i32 %96, label %119 [
    i32 2, label %97
    i32 1, label %106
    i32 3, label %115
  ]

97:                                               ; preds = %65
  %98 = load i16, i16* %13, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* %11, align 2
  %101 = sext i16 %100 to i32
  %102 = load i16, i16* %12, align 2
  %103 = sext i16 %102 to i32
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %104, i32 noundef 4, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @qtab_723_24, i64 0, i64 0))
  store i32 %105, i32* %4, align 4
  br label %120

106:                                              ; preds = %65
  %107 = load i16, i16* %13, align 2
  %108 = sext i16 %107 to i32
  %109 = load i16, i16* %11, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* %12, align 2
  %112 = sext i16 %111 to i32
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %108, i32 noundef %110, i32 noundef %112, i32 noundef %113, i32 noundef 4, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @qtab_723_24, i64 0, i64 0))
  store i32 %114, i32* %4, align 4
  br label %120

115:                                              ; preds = %65
  %116 = load i16, i16* %13, align 2
  %117 = sext i16 %116 to i32
  %118 = shl i32 %117, 2
  store i32 %118, i32* %4, align 4
  br label %120

119:                                              ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %115, %106, %97
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @tandem_adjust_alaw(...) #1

declare dso_local i32 @tandem_adjust_ulaw(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
