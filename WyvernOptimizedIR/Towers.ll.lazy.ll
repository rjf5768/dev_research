; ModuleID = './Towers.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i32 }
%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c" Error in Towers: %s\0A\00", align 1
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"out of space   \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"disc size error\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nothing to pop \00", align 1
@movesdone = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c" Error in Towers.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global %struct.node* null, align 8
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
@str = private unnamed_addr constant [18 x i8] c" Error in Towers.\00", align 1

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

; Function Attrs: noinline nounwind uwtable
define dso_local void @Error(i8* noundef %0) #2 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %2
  store i32 0, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Getelement() #2 {
  %1 = load i32, i32* @freelist, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @freelist, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %5, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @freelist, align 4
  br label %9

8:                                                ; preds = %0
  call void @Error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %3
  %.0 = phi i32 [ %4, %3 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Push(i32 noundef %0, i32 noundef %1) #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %11, i32 0
  %13 = load i32, i32* %12, align 8
  %.not1 = icmp sgt i32 %13, %0
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %7
  call void @Error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %7
  %.0 = phi i32 [ 1, %14 ], [ 0, %7 ]
  br label %16

16:                                               ; preds = %15, %2
  %.1 = phi i32 [ %.0, %15 ], [ 0, %2 ]
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %17, label %28

17:                                               ; preds = %16
  %18 = call i32 @Getelement()
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %22, i32 1
  store i32 %21, i32* %23, align 4
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %26, i32 0
  store i32 %0, i32* %27, align 8
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #2 {
  call void @Makenull(i32 noundef %0)
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %4 = icmp sgt i32 %.0, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  call void @Push(i32 noundef %.0, i32 noundef %0)
  br label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %.0, -1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %10, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %16, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @freelist, align 4
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %23, i32 1
  store i32 %19, i32* %24, align 4
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @freelist, align 4
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* @stack, i64 0, i64 %28
  store i32 %18, i32* %29, align 4
  br label %32

30:                                               ; preds = %1
  call void @Error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %6
  %.0 = phi i32 [ %12, %6 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #2 {
  %3 = call i32 @Pop(i32 noundef %0)
  call void @Push(i32 noundef %3, i32 noundef %1)
  %4 = load i32, i32* @movesdone, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @movesdone, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tower(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @Move(i32 noundef %0, i32 noundef %1)
  br label %11

6:                                                ; preds = %3
  %7 = add i32 %0, %1
  %8 = sub i32 6, %7
  %9 = add nsw i32 %2, -1
  call void @tower(i32 noundef %0, i32 noundef %8, i32 noundef %9)
  call void @Move(i32 noundef %0, i32 noundef %1)
  %10 = add nsw i32 %2, -1
  call void @tower(i32 noundef %8, i32 noundef %1, i32 noundef %10)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #2 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 1, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 19
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = add nsw i32 %.0, -1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [19 x %struct.element], [19 x %struct.element]* @cellspace, i64 0, i64 %5, i32 1
  store i32 %4, i32* %6, align 4
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

9:                                                ; preds = %1
  store i32 18, i32* @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, i32* @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %10 = load i32, i32* @movesdone, align 4
  %.not = icmp eq i32 %10, 16383
  br i1 %.not, label %12, label %11

11:                                               ; preds = %9
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i32, i32* @movesdone, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %13) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Towers()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
