; ModuleID = './decode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Decoder(%struct.gsm_state* noundef %0, i16* noundef %1, i16* nocapture noundef readonly %2, i16* nocapture noundef readonly %3, i16* nocapture noundef readonly %4, i16* nocapture noundef readonly %5, i16* noundef %6, i16* noundef %7) #0 {
  %9 = alloca [40 x i16], align 16
  %10 = alloca [160 x i16], align 16
  %11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 0, i64 120
  br label %12

12:                                               ; preds = %34, %8
  %.06 = phi i16* [ %6, %8 ], [ %40, %34 ]
  %.05 = phi i16* [ %5, %8 ], [ %36, %34 ]
  %.04 = phi i16* [ %4, %8 ], [ %39, %34 ]
  %.03 = phi i16* [ %3, %8 ], [ %37, %34 ]
  %.02 = phi i16* [ %2, %8 ], [ %38, %34 ]
  %.01 = phi i32 [ 0, %8 ], [ %35, %34 ]
  %13 = icmp ult i32 %.01, 4
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  %15 = load i16, i16* %.05, align 2
  %16 = load i16, i16* %.04, align 2
  %17 = getelementptr inbounds [40 x i16], [40 x i16]* %9, i64 0, i64 0
  call void @Gsm_RPE_Decoding(%struct.gsm_state* noundef %0, i16 noundef signext %15, i16 noundef signext %16, i16* noundef %.06, i16* noundef nonnull %17) #2
  %18 = load i16, i16* %.02, align 2
  %19 = load i16, i16* %.03, align 2
  %20 = getelementptr inbounds [40 x i16], [40 x i16]* %9, i64 0, i64 0
  call void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* noundef %0, i16 noundef signext %18, i16 noundef signext %19, i16* noundef nonnull %20, i16* noundef nonnull %11) #2
  br label %21

21:                                               ; preds = %31, %14
  %.0 = phi i32 [ 0, %14 ], [ %32, %31 ]
  %22 = icmp ult i32 %.0, 40
  br i1 %22, label %23, label %33

23:                                               ; preds = %21
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds i16, i16* %11, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = mul nsw i32 %.01, 40
  %28 = add nuw nsw i32 %27, %.0
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [160 x i16], [160 x i16]* %10, i64 0, i64 %29
  store i16 %26, i16* %30, align 2
  br label %31

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !4

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.01, 1
  %36 = getelementptr inbounds i16, i16* %.05, i64 1
  %37 = getelementptr inbounds i16, i16* %.03, i64 1
  %38 = getelementptr inbounds i16, i16* %.02, i64 1
  %39 = getelementptr inbounds i16, i16* %.04, i64 1
  %40 = getelementptr inbounds i16, i16* %.06, i64 13
  br label %12, !llvm.loop !6

41:                                               ; preds = %12
  %42 = getelementptr inbounds [160 x i16], [160 x i16]* %10, i64 0, i64 0
  call void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef nonnull %42, i16* noundef %7) #2
  call void @Postprocessing(%struct.gsm_state* noundef %0, i16* noundef %7)
  ret void
}

declare dso_local void @Gsm_RPE_Decoding(%struct.gsm_state* noundef, i16 noundef signext, i16 noundef signext, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* noundef, i16 noundef signext, i16 noundef signext, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Postprocessing(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 9
  %4 = load i16, i16* %3, align 2
  br label %5

5:                                                ; preds = %39, %2
  %.02 = phi i16 [ %4, %2 ], [ %25, %39 ]
  %.01 = phi i32 [ 160, %2 ], [ %6, %39 ]
  %.0 = phi i16* [ %1, %2 ], [ %40, %39 ]
  %6 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %41, label %7

7:                                                ; preds = %5
  %8 = sext i16 %.02 to i64
  %9 = mul nsw i64 %8, 28180
  %10 = add nsw i64 %9, 16384
  %11 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %10, i32 noundef 15) #2
  %12 = zext i32 %11 to i64
  %13 = load i16, i16* %.0, align 2
  %14 = sext i16 %13 to i64
  %sext = shl i64 %12, 48
  %15 = ashr exact i64 %sext, 48
  %16 = add nsw i64 %15, %14
  %17 = add nsw i64 %16, -32768
  %18 = icmp ult i64 %17, -65536
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = icmp sgt i64 %16, 0
  %21 = select i1 %20, i64 32767, i64 -32768
  br label %23

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ %16, %22 ]
  %25 = trunc i64 %24 to i16
  %sext3 = shl i64 %24, 48
  %26 = ashr exact i64 %sext3, 48
  %sext4 = shl i64 %24, 48
  %27 = ashr exact i64 %sext4, 48
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, -32768
  %30 = icmp ult i64 %29, -65536
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = icmp sgt i64 %28, 0
  %33 = select i1 %32, i64 32767, i64 -32768
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i64 [ %33, %31 ], [ %28, %34 ]
  %37 = trunc i64 %36 to i16
  %38 = and i16 %37, -8
  store i16 %38, i16* %.0, align 2
  br label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i16, i16* %.0, i64 1
  br label %5, !llvm.loop !7

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 9
  store i16 %.02, i16* %42, align 2
  ret void
}

declare dso_local i32 @SASR(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
