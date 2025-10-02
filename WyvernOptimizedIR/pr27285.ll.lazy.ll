; ModuleID = './pr27285.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27285.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8, i8, [16 x i8] }

@__const.main.x = private unnamed_addr constant { i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> } { i8 0, i8 25, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -86, i8 -69, i8 -52, i8 -35, [12 x i8] zeroinitializer }> }, align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(%struct.S* nocapture noundef readonly %0, %struct.S* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %14, %2
  %.02 = phi i32 [ 0, %2 ], [ %22, %14 ]
  %.01 = phi i32 [ %5, %2 ], [ %.1, %14 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %23, label %7

7:                                                ; preds = %6
  %8 = icmp sgt i32 %.01, 7
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = add nsw i32 %.01, -8
  br label %14

11:                                               ; preds = %7
  %12 = sub nsw i32 8, %.01
  %13 = shl i32 255, %12
  br label %14

14:                                               ; preds = %11, %9
  %.1 = phi i32 [ %10, %9 ], [ 0, %11 ]
  %.0 = phi i32 [ 255, %9 ], [ %13, %11 ]
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = trunc i32 %.0 to i8
  %19 = and i8 %17, %18
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 %20
  store i8 %19, i8* %21, align 1
  %22 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(19) %3, i8* noundef nonnull align 1 dereferenceable(19) getelementptr inbounds ({ i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> }, { i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> }* @__const.main.x, i64 0, i32 0), i64 19, i1 false)
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(19) %4, i8 0, i64 19, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 0
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %6, %8
  br i1 %.not, label %9, label %25

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 1
  %13 = load i8, i8* %12, align 1
  %.not1 = icmp eq i8 %11, %13
  br i1 %.not1, label %14, label %25

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 2
  %18 = load i8, i8* %17, align 1
  %.not2 = icmp eq i8 %16, %18
  br i1 %.not2, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = and i8 %21, -128
  %23 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 3
  %24 = load i8, i8* %23, align 1
  %.not3 = icmp eq i8 %22, %24
  br i1 %.not3, label %26, label %25

25:                                               ; preds = %19, %14, %9, %0
  call void @abort() #5
  unreachable

26:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
