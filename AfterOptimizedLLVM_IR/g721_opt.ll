; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g721.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g721.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@qtab_721 = internal global [7 x i16] [i16 -124, i16 80, i16 178, i16 246, i16 300, i16 349, i16 400], align 2
@_dqlntab = internal global [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 16
@_witab = internal global [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 16
@_fitab = internal global [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g721_encoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
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
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %29 [
    i32 2, label %18
    i32 1, label %22
    i32 3, label %26
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 noundef %19)
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 noundef %23)
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %121

30:                                               ; preds = %26, %22, %18
  %31 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %32 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %31)
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %8, align 2
  %34 = load i16, i16* %8, align 2
  %35 = sext i16 %34 to i32
  %36 = ashr i32 %35, 1
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %10, align 2
  %38 = load i16, i16* %8, align 2
  %39 = sext i16 %38 to i32
  %40 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %41 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %40)
  %42 = add nsw i32 %39, %41
  %43 = ashr i32 %42, 1
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %9, align 2
  %45 = load i32, i32* %5, align 4
  %46 = load i16, i16* %9, align 2
  %47 = sext i16 %46 to i32
  %48 = sub nsw i32 %45, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %11, align 2
  %50 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  %51 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %50)
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %13, align 2
  %53 = load i16, i16* %11, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %13, align 2
  %56 = sext i16 %55 to i32
  %57 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 noundef %54, i32 noundef %56, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0), i32 noundef 7)
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %16, align 2
  %59 = load i16, i16* %16, align 2
  %60 = sext i16 %59 to i32
  %61 = and i32 %60, 8
  %62 = load i16, i16* %16, align 2
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i64 0, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %13, align 2
  %68 = sext i16 %67 to i32
  %69 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %61, i32 noundef %66, i32 noundef %68)
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %15, align 2
  %71 = load i16, i16* %15, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %30
  %75 = load i16, i16* %9, align 2
  %76 = sext i16 %75 to i32
  %77 = load i16, i16* %15, align 2
  %78 = sext i16 %77 to i32
  %79 = and i32 %78, 16383
  %80 = sub nsw i32 %76, %79
  br label %87

81:                                               ; preds = %30
  %82 = load i16, i16* %9, align 2
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* %15, align 2
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %83, %85
  br label %87

87:                                               ; preds = %81, %74
  %88 = phi i32 [ %80, %74 ], [ %86, %81 ]
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %12, align 2
  %90 = load i16, i16* %12, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* %10, align 2
  %93 = sext i16 %92 to i32
  %94 = add nsw i32 %91, %93
  %95 = load i16, i16* %9, align 2
  %96 = sext i16 %95 to i32
  %97 = sub nsw i32 %94, %96
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %14, align 2
  %99 = load i16, i16* %13, align 2
  %100 = sext i16 %99 to i32
  %101 = load i16, i16* %16, align 2
  %102 = sext i16 %101 to i64
  %103 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i64 0, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = sext i16 %104 to i32
  %106 = shl i32 %105, 5
  %107 = load i16, i16* %16, align 2
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i64 0, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %15, align 2
  %113 = sext i16 %112 to i32
  %114 = load i16, i16* %12, align 2
  %115 = sext i16 %114 to i32
  %116 = load i16, i16* %14, align 2
  %117 = sext i16 %116 to i32
  %118 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 4, i32 noundef %100, i32 noundef %106, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, %struct.g72x_state* noundef %118)
  %119 = load i16, i16* %16, align 2
  %120 = sext i16 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %87, %29
  %122 = load i32, i32* %4, align 4
  ret i32 %122
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
define dso_local i32 @g721_decoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
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
  %17 = and i32 %16, 15
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
  %39 = and i32 %38, 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i64 0, i64 %41
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
  %81 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = shl i32 %83, 5
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i64 0, i64 %86
  %88 = load i16, i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* %14, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* %13, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* %15, align 2
  %95 = sext i16 %94 to i32
  %96 = load %struct.g72x_state*, %struct.g72x_state** %7, align 8
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 4, i32 noundef %78, i32 noundef %84, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, %struct.g72x_state* noundef %96)
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %120 [
    i32 2, label %98
    i32 1, label %107
    i32 3, label %116
  ]

98:                                               ; preds = %65
  %99 = load i16, i16* %13, align 2
  %100 = sext i16 %99 to i32
  %101 = load i16, i16* %11, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* %12, align 2
  %104 = sext i16 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %105, i32 noundef 8, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0))
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %65
  %108 = load i16, i16* %13, align 2
  %109 = sext i16 %108 to i32
  %110 = load i16, i16* %11, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %12, align 2
  %113 = sext i16 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %114, i32 noundef 8, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0))
  store i32 %115, i32* %4, align 4
  br label %121

116:                                              ; preds = %65
  %117 = load i16, i16* %13, align 2
  %118 = sext i16 %117 to i32
  %119 = shl i32 %118, 2
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %65
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
