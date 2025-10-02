; ModuleID = './921013-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921013-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [4 x float] [float 5.000000e+00, float 1.000000e+00, float 3.000000e+00, float 5.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [4 x float] [float 2.000000e+00, float 4.000000e+00, float 3.000000e+00, float 0.000000e+00], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @f(i32* nocapture noundef writeonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %6, %4
  %.03 = phi float* [ %2, %4 ], [ %10, %6 ]
  %.02 = phi float* [ %1, %4 ], [ %8, %6 ]
  %.01 = phi i32* [ %0, %4 ], [ %14, %6 ]
  %.0 = phi i32 [ %3, %4 ], [ %7, %6 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %15, label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %.0, -1
  %8 = getelementptr inbounds float, float* %.02, i64 1
  %9 = load float, float* %.02, align 4
  %10 = getelementptr inbounds float, float* %.03, i64 1
  %11 = load float, float* %.03, align 4
  %12 = fcmp oeq float %9, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds i32, i32* %.01, i64 1
  store i32 %13, i32* %.01, align 4
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x float], align 16
  %4 = bitcast [4 x float]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x float]* @__const.main.a to i8*), i64 16, i1 false)
  %5 = bitcast [4 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %5, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x float]* @__const.main.b to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %7 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 0
  %9 = call i32 @f(i32* noundef nonnull %6, float* noundef nonnull %7, float* noundef nonnull %8, i32 noundef 4)
  br label %10

10:                                               ; preds = %26, %0
  %.0 = phi i32 [ 0, %0 ], [ %27, %26 ]
  %11 = icmp ult i32 %.0, 4
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 %13
  %15 = load float, float* %14, align 4
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fcmp oeq float %15, %18
  %20 = zext i1 %19 to i32
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %.not = icmp eq i32 %23, %20
  br i1 %.not, label %25, label %24

24:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !6

28:                                               ; preds = %10
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %28, %24
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
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
!6 = distinct !{!6, !5}
