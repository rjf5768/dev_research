; ModuleID = './g723_40.ll'
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
  br label %53

10:                                               ; preds = %8, %6, %4
  %.01.in = phi i32 [ %0, %8 ], [ %7, %6 ], [ %5, %4 ]
  %11 = lshr i32 %.01.in, 2
  %12 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext = shl i32 %12, 16
  %13 = ashr i32 %sext, 17
  %14 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %15 = add i32 %12, %14
  %sext3 = shl i32 %15, 16
  %16 = ashr i32 %sext3, 17
  %17 = sub nsw i32 %11, %16
  %18 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext4 = shl i32 %17, 16
  %19 = ashr exact i32 %sext4, 16
  %sext5 = shl i32 %18, 16
  %20 = ashr exact i32 %sext5, 16
  %21 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 noundef %19, i32 noundef %20, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0), i32 noundef 15) #2
  %22 = trunc i32 %21 to i16
  %23 = and i32 %21, 16
  %24 = sext i16 %22 to i64
  %25 = getelementptr inbounds [32 x i16], [32 x i16]* @_dqlntab, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %sext7 = shl i32 %18, 16
  %28 = ashr exact i32 %sext7, 16
  %29 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %23, i32 noundef %27, i32 noundef %28) #2
  %sext8.mask = and i32 %29, 32768
  %.not = icmp eq i32 %sext8.mask, 0
  br i1 %.not, label %33, label %30

30:                                               ; preds = %10
  %31 = and i32 %29, 32767
  %32 = sub nsw i32 %16, %31
  br label %36

33:                                               ; preds = %10
  %sext9 = shl i32 %29, 16
  %34 = ashr exact i32 %sext9, 16
  %35 = add nsw i32 %16, %34
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %38 = add nsw i32 %37, %13
  %39 = sub nsw i32 %38, %16
  %sext11 = shl i32 %18, 16
  %40 = ashr exact i32 %sext11, 16
  %41 = sext i16 %22 to i64
  %42 = getelementptr inbounds [32 x i16], [32 x i16]* @_witab, i64 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = sext i16 %22 to i64
  %46 = getelementptr inbounds [32 x i16], [32 x i16]* @_fitab, i64 0, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %sext12 = shl i32 %29, 16
  %49 = ashr exact i32 %sext12, 16
  %sext13 = shl i32 %37, 16
  %50 = ashr exact i32 %sext13, 16
  %sext14 = shl i32 %39, 16
  %51 = ashr exact i32 %sext14, 16
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 5, i32 noundef %40, i32 noundef %44, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, %struct.g72x_state* noundef %2) #2
  %sext15 = shl i32 %21, 16
  %52 = ashr exact i32 %sext15, 16
  br label %53

53:                                               ; preds = %36, %9
  %.0 = phi i32 [ -1, %9 ], [ %52, %36 ]
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
define dso_local i32 @g723_40_decoder(i32 noundef %0, i32 noundef %1, %struct.g72x_state* noundef %2) #0 {
  %4 = and i32 %0, 31
  %5 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %sext = shl i32 %5, 16
  %6 = ashr i32 %sext, 17
  %7 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %8 = add i32 %5, %7
  %sext2 = shl i32 %8, 16
  %9 = ashr i32 %sext2, 17
  %10 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* noundef %2) #2
  %11 = and i32 %0, 16
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds [32 x i16], [32 x i16]* @_dqlntab, i64 0, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %sext3 = shl i32 %10, 16
  %16 = ashr exact i32 %sext3, 16
  %17 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 noundef %11, i32 noundef %15, i32 noundef %16) #2
  %sext4.mask = and i32 %17, 32768
  %.not = icmp eq i32 %sext4.mask, 0
  br i1 %.not, label %21, label %18

18:                                               ; preds = %3
  %19 = and i32 %17, 32767
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
  %30 = getelementptr inbounds [32 x i16], [32 x i16]* @_witab, i64 0, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = zext i32 %4 to i64
  %34 = getelementptr inbounds [32 x i16], [32 x i16]* @_fitab, i64 0, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %sext8 = shl i32 %17, 16
  %37 = ashr exact i32 %sext8, 16
  %sext9 = shl i32 %25, 16
  %38 = ashr exact i32 %sext9, 16
  %sext10 = shl i32 %27, 16
  %39 = ashr exact i32 %sext10, 16
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 noundef 5, i32 noundef %28, i32 noundef %32, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, %struct.g72x_state* noundef %2) #2
  switch i32 %1, label %50 [
    i32 2, label %40
    i32 1, label %44
    i32 3, label %48
  ]

40:                                               ; preds = %24
  %sext14 = shl i32 %25, 16
  %41 = ashr exact i32 %sext14, 16
  %sext15 = shl i32 %10, 16
  %42 = ashr exact i32 %sext15, 16
  %43 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %41, i32 noundef %9, i32 noundef %42, i32 noundef %4, i32 noundef 16, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0)) #2
  br label %51

44:                                               ; preds = %24
  %sext12 = shl i32 %25, 16
  %45 = ashr exact i32 %sext12, 16
  %sext13 = shl i32 %10, 16
  %46 = ashr exact i32 %sext13, 16
  %47 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 noundef %45, i32 noundef %9, i32 noundef %46, i32 noundef %4, i32 noundef 16, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @qtab_723_40, i64 0, i64 0)) #2
  br label %51

48:                                               ; preds = %24
  %sext11 = shl i32 %25, 16
  %49 = ashr exact i32 %sext11, 14
  br label %51

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %48, %44, %40
  %.0 = phi i32 [ -1, %50 ], [ %49, %48 ], [ %47, %44 ], [ %43, %40 ]
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
