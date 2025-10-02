; ModuleID = './Perm.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" Error in Perm.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@tree = dso_local global %struct.node* null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [16 x i8] c" Error in Perm.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Rand() #1 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Swap(i32* nocapture noundef %0, i32* nocapture noundef %1) #1 {
  %3 = load i32, i32* %0, align 4
  %4 = load i32, i32* %1, align 4
  store i32 %4, i32* %0, align 4
  store i32 %3, i32* %1, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @Initialize() #2 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 1, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = add nsw i32 %.0, -1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* @permarray, i64 0, i64 %5
  store i32 %4, i32* %6, align 4
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Permute(i32 noundef %0) #3 {
  %2 = load i32, i32* @pctr, align 4
  %3 = add i32 %2, 1
  store i32 %3, i32* @pctr, align 4
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %20, label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %0, -1
  call void @Permute(i32 noundef %5)
  br label %6

6:                                                ; preds = %18, %4
  %.0.in = phi i32 [ %0, %4 ], [ %.0, %18 ]
  %.0 = add nsw i32 %.0.in, -1
  %7 = icmp sgt i32 %.0.in, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @permarray, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* @permarray, i64 0, i64 %11
  call void @Swap(i32* noundef nonnull %10, i32* noundef nonnull %12)
  %13 = add nsw i32 %0, -1
  call void @Permute(i32 noundef %13)
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* @permarray, i64 0, i64 %14
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* @permarray, i64 0, i64 %16
  call void @Swap(i32* noundef nonnull %15, i32* noundef nonnull %17)
  br label %18

18:                                               ; preds = %8
  br label %6, !llvm.loop !6

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Perm() #4 {
  store i32 0, i32* @pctr, align 4
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 1, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 6
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

6:                                                ; preds = %1
  %7 = load i32, i32* @pctr, align 4
  %.not = icmp eq i32 %7, 43300
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, i32* @pctr, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10) #7
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Perm()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, !5}
