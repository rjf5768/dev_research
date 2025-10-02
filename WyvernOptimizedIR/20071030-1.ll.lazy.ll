; ModuleID = './20071030-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071030-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_s = type { i32, i32, [64 x %struct.client_frame_t] }
%struct.client_frame_t = type { double, float, %struct.packet_entities_t }
%struct.packet_entities_t = type { i32, %struct.entity_state_t* }
%struct.entity_state_t = type { i8 }

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @CalcPing(%struct.client_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.client_s, %struct.client_s* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.client_s, %struct.client_s* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  br label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.client_s, %struct.client_s* %0, i64 0, i32 2, i64 0
  br label %10

10:                                               ; preds = %22, %8
  %.05 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %.03 = phi i32 [ 0, %8 ], [ %.14, %22 ]
  %.02 = phi float [ 0.000000e+00, %8 ], [ %.1, %22 ]
  %.01 = phi %struct.client_frame_t* [ %9, %8 ], [ %24, %22 ]
  %11 = icmp ult i32 %.05, 64
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %.01, i64 0, i32 1
  %14 = load float, float* %13, align 8
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %.01, i64 0, i32 1
  %18 = load float, float* %17, align 8
  %19 = fadd float %.02, %18
  %20 = add nsw i32 %.03, 1
  br label %21

21:                                               ; preds = %16, %12
  %.14 = phi i32 [ %20, %16 ], [ %.03, %12 ]
  %.1 = phi float [ %19, %16 ], [ %.02, %12 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.05, 1
  %24 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %.01, i64 1
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %26, label %27

26:                                               ; preds = %25
  br label %32

27:                                               ; preds = %25
  %28 = sitofp i32 %.03 to float
  %29 = fdiv float %.02, %28
  %30 = fmul float %29, 1.000000e+03
  %31 = fptosi float %30 to i32
  br label %32

32:                                               ; preds = %27, %26, %5
  %.0 = phi i32 [ %7, %5 ], [ %31, %27 ], [ 9999, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.client_s, align 8
  %2 = bitcast %struct.client_s* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %3 = getelementptr inbounds %struct.client_s, %struct.client_s* %1, i64 0, i32 2, i64 0, i32 1
  store float 1.000000e+00, float* %3, align 8
  %4 = call i32 @CalcPing(%struct.client_s* noundef nonnull %1)
  %.not = icmp eq i32 %4, 1000
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
