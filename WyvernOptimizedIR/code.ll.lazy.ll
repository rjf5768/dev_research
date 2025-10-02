; ModuleID = './code.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Coder(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4, i16* noundef %5, i16* noundef %6, i16* noundef %7) #0 {
  %9 = alloca [160 x i16], align 16
  %10 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 0, i64 120
  %11 = getelementptr inbounds [160 x i16], [160 x i16]* %9, i64 0, i64 0
  call void @Gsm_Preprocess(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef nonnull %11) #3
  %12 = getelementptr inbounds [160 x i16], [160 x i16]* %9, i64 0, i64 0
  call void @Gsm_LPC_Analysis(%struct.gsm_state* noundef %0, i16* noundef nonnull %12, i16* noundef %2) #3
  %13 = getelementptr inbounds [160 x i16], [160 x i16]* %9, i64 0, i64 0
  call void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* noundef %0, i16* noundef %2, i16* noundef nonnull %13) #3
  br label %14

14:                                               ; preds = %51, %8
  %.08 = phi i32 [ 0, %8 ], [ %54, %51 ]
  %.07 = phi i16* [ %7, %8 ], [ %55, %51 ]
  %.06 = phi i16* [ %6, %8 ], [ %22, %51 ]
  %.05 = phi i16* [ %5, %8 ], [ %23, %51 ]
  %.04 = phi i16* [ %4, %8 ], [ %21, %51 ]
  %.03 = phi i16* [ %3, %8 ], [ %20, %51 ]
  %.02 = phi i16* [ %10, %8 ], [ %53, %51 ]
  %.01 = phi i16* [ %10, %8 ], [ %52, %51 ]
  %15 = icmp ult i32 %.08, 4
  br i1 %15, label %16, label %56

16:                                               ; preds = %14
  %17 = mul nsw i32 %.08, 40
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [160 x i16], [160 x i16]* %9, i64 0, i64 %18
  %20 = getelementptr inbounds i16, i16* %.03, i64 1
  %21 = getelementptr inbounds i16, i16* %.04, i64 1
  call void @Gsm_Long_Term_Predictor(%struct.gsm_state* noundef %0, i16* noundef nonnull %19, i16* noundef nonnull %.02, i16* noundef getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 5), i16* noundef nonnull %.01, i16* noundef %.03, i16* noundef %.04) #3
  %22 = getelementptr inbounds i16, i16* %.06, i64 1
  %23 = getelementptr inbounds i16, i16* %.05, i64 1
  call void @Gsm_RPE_Encoding(%struct.gsm_state* noundef %0, i16* noundef getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 5), i16* noundef %.06, i16* noundef %.05, i16* noundef %.07) #3
  br label %24

24:                                               ; preds = %48, %16
  %.0 = phi i32 [ 0, %16 ], [ %49, %48 ]
  %25 = icmp ult i32 %.0, 40
  br i1 %25, label %26, label %50

26:                                               ; preds = %24
  %27 = add nuw nsw i32 %.0, 5
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i64
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds i16, i16* %.01, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = add nsw i64 %36, -32768
  %38 = icmp ult i64 %37, -65536
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = icmp sgt i64 %36, 0
  %41 = select i1 %40, i64 32767, i64 -32768
  br label %43

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i64 [ %41, %39 ], [ %36, %42 ]
  %45 = trunc i64 %44 to i16
  %46 = zext i32 %.0 to i64
  %47 = getelementptr inbounds i16, i16* %.02, i64 %46
  store i16 %45, i16* %47, align 2
  br label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %.0, 1
  br label %24, !llvm.loop !4

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds i16, i16* %.01, i64 40
  %53 = getelementptr inbounds i16, i16* %.02, i64 40
  %54 = add nuw nsw i32 %.08, 1
  %55 = getelementptr inbounds i16, i16* %.07, i64 13
  br label %14, !llvm.loop !6

56:                                               ; preds = %14
  %57 = bitcast %struct.gsm_state* %0 to i8*
  %58 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 0, i64 160
  %59 = bitcast i16* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(240) %57, i8* noundef nonnull align 1 dereferenceable(240) %59, i64 240, i1 false)
  ret void
}

declare dso_local void @Gsm_Preprocess(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_LPC_Analysis(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Long_Term_Predictor(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_RPE_Encoding(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
