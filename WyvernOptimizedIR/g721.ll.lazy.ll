; ModuleID = './g721.ll'
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
  switch i32 %1, label %9 [
    i32 2, label %4
    i32 1, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 noundef %0) #2
  br label %10

6:                                                ; preds = %3
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 noundef %0) #2
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %57

10:                                               ; preds = %8, %6, %4
  %.01.in = phi i32 [ %0, %8 ], [ %7, %6 ], [ %5, %4 ]
  %11 = lshr i32 %.01.in, 2
  %12 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext = shl i32 %12, 16
  %13 = ashr i32 %sext, 17
  %sext2 = shl i32 %12, 16
  %14 = ashr exact i32 %sext2, 16
  %15 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %16 = add nsw i32 %14, %15
  %17 = lshr i32 %16, 1
  %18 = sub nsw i32 %11, %17
  %19 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext4 = shl i32 %18, 16
  %20 = ashr exact i32 %sext4, 16
  %sext5 = shl i32 %19, 16
  %21 = ashr exact i32 %sext5, 16
  %22 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 noundef %20, i32 noundef %21, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0), i32 noundef 7) #2
  %23 = trunc i32 %22 to i16
  %24 = and i32 %22, 8
  %25 = sext i16 %23 to i64
  %26 = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %sext7 = shl i32 %19, 16
  %29 = ashr exact i32 %sext7, 16
  %30 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %24, i32 noundef %28, i32 noundef %29) #2
  %sext8.mask = and i32 %30, 32768
  %.not = icmp eq i32 %sext8.mask, 0
  br i1 %.not, label %35, label %31

31:                                               ; preds = %10
  %sext18 = shl i32 %17, 16
  %32 = ashr exact i32 %sext18, 16
  %33 = and i32 %30, 16383
  %34 = sub nsw i32 %32, %33
  br label %39

35:                                               ; preds = %10
  %sext9 = shl i32 %17, 16
  %36 = ashr exact i32 %sext9, 16
  %sext10 = shl i32 %30, 16
  %37 = ashr exact i32 %sext10, 16
  %38 = add nsw i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %41 = add nsw i32 %40, %13
  %42 = sub i32 %41, %17
  %sext13 = shl i32 %19, 16
  %43 = ashr exact i32 %sext13, 16
  %44 = sext i16 %23 to i64
  %45 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %47, 5
  %49 = sext i16 %23 to i64
  %50 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %sext14 = shl i32 %30, 16
  %53 = ashr exact i32 %sext14, 16
  %sext15 = shl i32 %40, 16
  %54 = ashr exact i32 %sext15, 16
  %sext16 = shl i32 %42, 16
  %55 = ashr exact i32 %sext16, 16
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 4, i32 noundef %43, i32 noundef %48, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, %struct.g72x_state* noundef %2) #2
  %sext17 = shl i32 %22, 16
  %56 = ashr exact i32 %sext17, 16
  br label %57

57:                                               ; preds = %39, %9
  %.0 = phi i32 [ -1, %9 ], [ %56, %39 ]
  ret i32 %.0
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
  %4 = and i32 %0, 15
  %5 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext = shl i32 %5, 16
  %6 = ashr i32 %sext, 17
  %7 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %8 = add i32 %5, %7
  %sext2 = shl i32 %8, 16
  %9 = ashr i32 %sext2, 17
  %10 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %11 = and i32 %0, 8
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i64 0, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %sext3 = shl i32 %10, 16
  %16 = ashr exact i32 %sext3, 16
  %17 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %11, i32 noundef %15, i32 noundef %16) #2
  %sext4.mask = and i32 %17, 32768
  %.not = icmp eq i32 %sext4.mask, 0
  br i1 %.not, label %21, label %18

18:                                               ; preds = %3
  %19 = and i32 %17, 16383
  %20 = sub nsw i32 %9, %19
  br label %24

21:                                               ; preds = %3
  %sext5 = shl i32 %17, 16
  %22 = ashr exact i32 %sext5, 16
  %23 = add nsw i32 %9, %22
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = sub nsw i32 %25, %9
  %27 = add nsw i32 %26, %6
  %sext7 = shl i32 %10, 16
  %28 = ashr exact i32 %sext7, 16
  %29 = zext i32 %4 to i64
  %30 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i64 0, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = shl nsw i32 %32, 5
  %34 = zext i32 %4 to i64
  %35 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i64 0, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %sext8 = shl i32 %17, 16
  %38 = ashr exact i32 %sext8, 16
  %sext9 = shl i32 %25, 16
  %39 = ashr exact i32 %sext9, 16
  %sext10 = shl i32 %27, 16
  %40 = ashr exact i32 %sext10, 16
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 4, i32 noundef %28, i32 noundef %33, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, %struct.g72x_state* noundef %2) #2
  switch i32 %1, label %51 [
    i32 2, label %41
    i32 1, label %45
    i32 3, label %49
  ]

41:                                               ; preds = %24
  %sext14 = shl i32 %25, 16
  %42 = ashr exact i32 %sext14, 16
  %sext15 = shl i32 %10, 16
  %43 = ashr exact i32 %sext15, 16
  %44 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %42, i32 noundef %9, i32 noundef %43, i32 noundef %4, i32 noundef 8, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0)) #2
  br label %52

45:                                               ; preds = %24
  %sext12 = shl i32 %25, 16
  %46 = ashr exact i32 %sext12, 16
  %sext13 = shl i32 %10, 16
  %47 = ashr exact i32 %sext13, 16
  %48 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %46, i32 noundef %9, i32 noundef %47, i32 noundef %4, i32 noundef 8, i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i64 0, i64 0)) #2
  br label %52

49:                                               ; preds = %24
  %sext11 = shl i32 %25, 16
  %50 = ashr exact i32 %sext11, 14
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %49, %45, %41
  %.0 = phi i32 [ -1, %51 ], [ %50, %49 ], [ %48, %45 ], [ %44, %41 ]
  ret i32 %.0
}

declare dso_local i32 @tandem_adjust_alaw(...) #1

declare dso_local i32 @tandem_adjust_ulaw(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
