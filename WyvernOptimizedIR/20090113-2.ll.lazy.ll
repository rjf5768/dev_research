; ModuleID = './20090113-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type {}
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@bitmap_zero_bits = dso_local global %struct.bitmap_element_def zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.bitmap_element_def, align 8
  %2 = alloca %struct.bitmap_head_def, align 8
  %3 = bitcast %struct.bitmap_element_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 3, i64 0
  store i64 1, i64* %4, align 8
  %5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 3, i64 1
  store i64 1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 0
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %6, align 8
  %7 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 1
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %7, align 8
  %8 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 3
  store %struct.bitmap_obstack* null, %struct.bitmap_obstack** %9, align 8
  call void @foobar(%struct.bitmap_head_def* noundef nonnull %2)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @foobar(%struct.bitmap_head_def* nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @bmp_iter_set_init(%struct.bitmap_iterator* noundef nonnull %2, %struct.bitmap_head_def* noundef %0, i32 noundef 0, i32* noundef nonnull %3)
  br label %4

4:                                                ; preds = %8, %1
  %5 = call zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* noundef nonnull %2, i32* noundef nonnull %3)
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* %3, align 4
  call void @catchme(i32 noundef %7)
  br label %8

8:                                                ; preds = %6
  call void @bmp_iter_next(%struct.bitmap_iterator* noundef nonnull %2, i32* noundef nonnull %3)
  br label %4, !llvm.loop !4

9:                                                ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @bmp_iter_set_init(%struct.bitmap_iterator* nocapture noundef %0, %struct.bitmap_head_def* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i64 0, i32 0
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %5, align 8
  %7 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %7, align 8
  %8 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %8, align 8
  br label %9

9:                                                ; preds = %21, %4
  %10 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %10, align 8
  %.not = icmp eq %struct.bitmap_element_def* %11, null
  br i1 %.not, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %13, align 8
  br label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %15, align 8
  %17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = lshr i32 %2, 7
  %.not3 = icmp ult i32 %18, %19
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %14
  br label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %22, align 8
  %24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %23, i64 0, i32 0
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %24, align 8
  %26 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %25, %struct.bitmap_element_def** %26, align 8
  br label %9

27:                                               ; preds = %20, %12
  %28 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %28, align 8
  %30 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i64 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = lshr i32 %2, 7
  %.not1 = icmp eq i32 %31, %32
  br i1 %.not1, label %39, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %34, align 8
  %36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %35, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 7
  br label %39

39:                                               ; preds = %33, %27
  %.0 = phi i32 [ %38, %33 ], [ %2, %27 ]
  %40 = lshr i32 %.0, 6
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %43, align 8
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %44, i64 0, i32 3, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = and i32 %.0, 63
  %49 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %50 = zext i32 %48 to i64
  %51 = lshr i64 %47, %50
  store i64 %51, i64* %49, align 8
  %.not2 = icmp eq i64 %51, 0
  %52 = zext i1 %.not2 to i32
  %53 = add i32 %.0, %52
  store i32 %53, i32* %3, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nocapture noundef %0, i32* nocapture noundef %1) #2 {
  %3 = load i32, i32* %1, align 4
  %4 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %5 = load i64, i64* %4, align 8
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %13, label %6

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %9, %6
  %.03 = phi i32 [ %3, %6 ], [ %11, %9 ]
  %.02 = phi i64 [ %5, %6 ], [ %10, %9 ]
  %8 = and i64 %.02, 1
  %.not8 = icmp eq i64 %8, 0
  br i1 %.not8, label %9, label %12

9:                                                ; preds = %7
  %10 = lshr i64 %.02, 1
  %11 = add i32 %.03, 1
  br label %7, !llvm.loop !6

12:                                               ; preds = %7
  store i32 %.03, i32* %1, align 4
  br label %51

13:                                               ; preds = %2
  %14 = add i32 %3, 63
  %15 = and i32 %14, -64
  store i32 %15, i32* %1, align 4
  %16 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %19, align 8
  br label %21

21:                                               ; preds = %46, %13
  %.01 = phi %struct.bitmap_element_def* [ %20, %13 ], [ %43, %46 ]
  br label %22

22:                                               ; preds = %35, %21
  %23 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %.not5 = icmp eq i32 %24, 2
  br i1 %.not5, label %41, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.01, i64 0, i32 3, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  store i64 %30, i64* %31, align 8
  %.not7 = icmp eq i64 %30, 0
  br i1 %.not7, label %35, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %.01, %struct.bitmap_element_def** %33, align 8
  %34 = call zeroext i8 @bmp_iter_set_tail(%struct.bitmap_iterator* noundef %0, i32* noundef nonnull %1)
  br label %51

35:                                               ; preds = %25
  %36 = load i32, i32* %1, align 4
  %37 = add i32 %36, 64
  store i32 %37, i32* %1, align 4
  %38 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %22, !llvm.loop !7

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.01, i64 0, i32 0
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %42, align 8
  %.not6 = icmp eq %struct.bitmap_element_def* %43, null
  br i1 %.not6, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %43, %struct.bitmap_element_def** %45, align 8
  br label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i64 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 7
  store i32 %49, i32* %1, align 4
  %50 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  store i32 0, i32* %50, align 8
  br label %21

51:                                               ; preds = %44, %32, %12
  %.0 = phi i8 [ 1, %12 ], [ %34, %32 ], [ 0, %44 ]
  ret i8 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @catchme(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %.not1 = icmp eq i32 %0, 64
  br i1 %.not1, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #5
  unreachable

4:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @bmp_iter_next(%struct.bitmap_iterator* nocapture noundef %0, i32* nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %4 = load i64, i64* %3, align 8
  %5 = lshr i64 %4, 1
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* %1, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* %1, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i8 @bmp_iter_set_tail(%struct.bitmap_iterator* nocapture noundef %0, i32* nocapture noundef %1) #2 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 1
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = lshr i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %1, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %3, !llvm.loop !8

13:                                               ; preds = %3
  ret i8 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
