; ModuleID = './20090113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor_dimension = type { i32, i32, i32 }
%struct.gfc_array_i4 = type { i32*, i32, [7 x %struct.descriptor_dimension] }

@constinit = private global [7 x %struct.descriptor_dimension] [%struct.descriptor_dimension { i32 1, i32 1, i32 3 }, %struct.descriptor_dimension { i32 3, i32 1, i32 3 }, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @msum_i4(%struct.gfc_array_i4* nocapture noundef readonly %0, %struct.gfc_array_i4* nocapture noundef readonly %1, i32* nocapture noundef readonly %2) #0 {
  %4 = alloca [7 x i32], align 16
  %5 = alloca [7 x i32], align 16
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %1, i64 0, i32 2, i64 %8, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %1, i64 0, i32 2, i64 %12, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  br label %16

16:                                               ; preds = %31, %3
  %.01 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %17 = icmp slt i32 %.01, %7
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %1, i64 0, i32 2, i64 %19, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %1, i64 0, i32 2, i64 %23, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 %29
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %18
  %32 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !4

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %0, i64 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %1, i64 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  br label %39

39:                                               ; preds = %52, %33
  %.04 = phi i32* [ %35, %33 ], [ %53, %52 ]
  %.02 = phi i32* [ %37, %33 ], [ %.13, %52 ]
  br label %40

40:                                               ; preds = %43, %39
  %.13 = phi i32* [ %.02, %39 ], [ %47, %43 ]
  %.1 = phi i32 [ 0, %39 ], [ %46, %43 ]
  %.0 = phi i32 [ 0, %39 ], [ %45, %43 ]
  %41 = icmp slt i32 %.1, %15
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %.13, align 4
  %45 = add nsw i32 %.0, %44
  %46 = add nuw nsw i32 %.1, 1
  %47 = getelementptr inbounds i32, i32* %.13, i64 1
  br label %40, !llvm.loop !6

48:                                               ; preds = %40
  store i32 %.0, i32* %.04, align 4
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 16
  br label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i32, i32* %.04, i64 1
  %54 = load i32, i32* %38, align 16
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %.not = icmp eq i32 %54, %56
  br i1 %.not, label %57, label %39, !llvm.loop !7

57:                                               ; preds = %52
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca %struct.gfc_array_i4, align 8
  %4 = alloca %struct.gfc_array_i4, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.gfc_array_i4* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  %7 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %3, i64 0, i32 0
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %3, i64 0, i32 1
  store i32 265, i32* %9, align 8
  %10 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %3, i64 0, i32 2, i64 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %3, i64 0, i32 2, i64 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %3, i64 0, i32 2, i64 0, i32 2
  store i32 3, i32* %12, align 4
  %13 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i64 0, i32 0
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i64 0, i32 1
  store i32 266, i32* %15, align 8
  %16 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i64 0, i32 2
  %17 = bitcast [7 x %struct.descriptor_dimension]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(84) %17, i8* noundef nonnull align 4 dereferenceable(84) bitcast ([7 x %struct.descriptor_dimension]* @constinit to i8*), i64 84, i1 false)
  store i32 2, i32* %5, align 4
  call void @msum_i4(%struct.gfc_array_i4* noundef nonnull %3, %struct.gfc_array_i4* noundef nonnull %4, i32* noundef nonnull %5)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }

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
