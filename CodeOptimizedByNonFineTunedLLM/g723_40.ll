; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g723_40.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g723_40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@qtab_723_40 = internal global [15 x i16] [i16 -122, i16 -16, i16 68, i16 139, i16 198, i16 250, i16 298, i16 339, i16 378, i16 413, i16 445, i16 475, i16 502, i16 528, i16 553], align 16
@_dqlntab = internal global [32 x i16] [i16 -2048, i16 -66, i16 28, i16 104, i16 169, i16 224, i16 274, i16 318, i16 358, i16 395, i16 429, i16 459, i16 488, i16 514, i16 539, i16 566, i16 566, i16 539, i16 514, i16 488, i16 459, i16 429, i16 395, i16 358, i16 318, i16 274, i16 224, i16 169, i16 104, i16 28, i16 -66, i16 -2048], align 16
@_witab = internal global [32 x i16] [i16 448, i16 448, i16 768, i16 1248, i16 1280, i16 1312, i16 1856, i16 3200, i16 4512, i16 5728, i16 7008, i16 8960, i16 11456, i16 14080, i16 16928, i16 22272, i16 22272, i16 16928, i16 14080, i16 11456, i16 8960, i16 7008, i16 5728, i16 4512, i16 3200, i16 1856, i16 1312, i16 1280, i16 1248, i16 768, i16 448, i16 448], align 16
@_fitab = internal global [32 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1024, i16 1536, i16 2048, i16 2560, i16 3072, i16 3072, i16 3072, i16 3072, i16 2560, i16 2048, i16 1536, i16 1024, i16 512, i16 512, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0, i16 0, i16 0], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g723_40_encoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
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
  %61 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 noundef %58, i32 noundef %60, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0), i32 noundef 15)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %17, align 2
  %63 = load i16, i16* %17, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, 16
  %66 = load i16, i16* %17, align 2
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds [32 x i16], [32 x i16]* @_dqlntab, i64 0, i64 %67
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
  %83 = and i32 %82, 32767
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
  %107 = getelementptr inbounds [32 x i16], [32 x i16]* @_witab, i64 0, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = load i16, i16* %17, align 2
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds [32 x i16], [32 x i16]* @_fitab, i64 0, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* %16, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16, i16* %14, align 2
  %118 = sext i16 %117 to i32
  %119 = load i16, i16* %15, align 2
  %120 = sext i16 %119 to i32
  %121 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 5, i32 noundef %104, i32 noundef %109, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %120, %struct.g72x_state* noundef %121)
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
define dso_local i32 @g723_40_decoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.g72x_state* %2, %struct.g72x_state** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 31
  store i32 %18, i32* %5, align 4
  %19 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %20 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %19)
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %8, align 2
  %22 = load i16, i16* %8, align 2
  %23 = sext i16 %22 to i32
  %24 = ashr i32 %23, 1
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %10, align 2
  %26 = load i16, i16* %8, align 2
  %27 = sext i16 %26 to i32
  %28 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %29 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %28)
  %30 = add nsw i32 %27, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %9, align 2
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = ashr i32 %33, 1
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %11, align 2
  %36 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %37 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %36)
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %12, align 2
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 16
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32 x i16], [32 x i16]* @_dqlntab, i64 0, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* %12, align 2
  %47 = sext i16 %46 to i32
  %48 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %40, i32 noundef %45, i32 noundef %47)
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %15, align 2
  %50 = load i16, i16* %15, align 2
  %51 = sext i16 %50 to i32
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %3
  %54 = load i16, i16* %11, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %15, align 2
  %57 = sext i16 %56 to i32
  %58 = and i32 %57, 32767
  %59 = sub nsw i32 %55, %58
  br label %66

60:                                               ; preds = %3
  %61 = load i16, i16* %11, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16, i16* %15, align 2
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %62, %64
  br label %66

66:                                               ; preds = %60, %53
  %67 = phi i32 [ %59, %53 ], [ %65, %60 ]
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %14, align 2
  %69 = load i16, i16* %14, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* %11, align 2
  %72 = sext i16 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = load i16, i16* %10, align 2
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %16, align 2
  %78 = load i16, i16* %12, align 2
  %79 = sext i16 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i16], [32 x i16]* @_witab, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [32 x i16], [32 x i16]* @_fitab, i64 0, i64 %86
  %88 = load i16, i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* %15, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* %14, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* %16, align 2
  %95 = sext i16 %94 to i32
  %96 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 5, i32 noundef %79, i32 noundef %84, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, %struct.g72x_state* noundef %96)
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %120 [
    i32 2, label %98
    i32 1, label %107
    i32 3, label %116
  ]

98:                                               ; preds = %66
  %99 = load i16, i16* %14, align 2
  %100 = sext i16 %99 to i32
  %101 = load i16, i16* %11, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* %12, align 2
  %104 = sext i16 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %105, i32 noundef 16, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0))
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %66
  %108 = load i16, i16* %14, align 2
  %109 = sext i16 %108 to i32
  %110 = load i16, i16* %11, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %12, align 2
  %113 = sext i16 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %114, i32 noundef 16, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0))
  store i32 %115, i32* %4, align 4
  br label %121

116:                                              ; preds = %66
  %117 = load i16, i16* %14, align 2
  %118 = sext i16 %117 to i32
  %119 = shl i32 %118, 2
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %116, %107, %98
  %122 = load i32, i32* %4, align 4
  ret i32 %122
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
