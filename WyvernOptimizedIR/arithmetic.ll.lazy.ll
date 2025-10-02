; ModuleID = './arithmetic.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rle_pos = dso_local global i32 0, align 4
@ari_pos = dso_local global i32 0, align 4
@rle = external dso_local global i8*, align 8
@char_to_index = internal global [256 x i32] zeroinitializer, align 16
@cum_freq = internal global [258 x i32] zeroinitializer, align 16
@low = dso_local global i64 0, align 8
@high = dso_local global i64 0, align 8
@bits_to_follow = dso_local global i64 0, align 8
@buffer = internal global i32 0, align 4
@bits_to_go = internal global i32 0, align 4
@ari = external dso_local global i8*, align 8
@index_to_char = internal global [258 x i8] zeroinitializer, align 16
@freq = internal global [258 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @do_ari(i32 noundef %0) #0 {
  store i32 0, i32* @rle_pos, align 4
  store i32 0, i32* @ari_pos, align 4
  call void @start_model()
  call void @start_outputing_bits()
  call void @start_encoding()
  br label %2

2:                                                ; preds = %8, %1
  %3 = load i8*, i8** @rle, align 8
  %4 = load i32, i32* @rle_pos, align 4
  %5 = add i32 %4, 1
  store i32 %5, i32* @rle_pos, align 4
  %6 = icmp ugt i32 %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %15

8:                                                ; preds = %2
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds i8, i8* %3, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  call void @encode_symbol(i32 noundef %14, i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  call void @update_model(i32 noundef %14)
  br label %2

15:                                               ; preds = %7
  call void @encode_symbol(i32 noundef 257, i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  call void @done_encoding()
  call void @done_outputing_bits()
  %16 = load i32, i32* @ari_pos, align 4
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @start_model() #1 {
  br label %1

1:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %.0, 1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %5
  store i32 %4, i32* %6, align 4
  %7 = trunc i32 %.0 to i8
  %8 = add nuw nsw i32 %.0, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %9
  store i8 %7, i8* %10, align 1
  br label %11

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %22, %13
  %.1 = phi i32 [ 0, %13 ], [ %23, %22 ]
  %15 = icmp ult i32 %.1, 258
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %17
  store i32 1, i32* %18, align 4
  %19 = sub nsw i32 257, %.1
  %20 = zext i32 %.1 to i64
  %21 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %20
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = add nuw nsw i32 %.1, 1
  br label %14, !llvm.loop !6

24:                                               ; preds = %14
  store i32 0, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @freq, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @start_outputing_bits() #2 {
  store i32 0, i32* @buffer, align 4
  store i32 8, i32* @bits_to_go, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @start_encoding() #2 {
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  store i64 0, i64* @bits_to_follow, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @encode_symbol(i32 noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i64, i64* @high, align 8
  %4 = load i64, i64* @low, align 8
  %5 = sub nsw i64 %3, %4
  %6 = add nsw i64 %5, 1
  %7 = add nsw i32 %0, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %1, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %6, %11
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %12, %14
  %16 = add nsw i64 %4, %15
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @high, align 8
  %18 = load i64, i64* @low, align 8
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %6, %22
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = sdiv i64 %23, %25
  %27 = add nsw i64 %18, %26
  store i64 %27, i64* @low, align 8
  br label %28

28:                                               ; preds = %56, %2
  %29 = load i64, i64* @high, align 8
  %30 = icmp slt i64 %29, 32768
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @bit_plus_follow(i32 noundef 0)
  br label %56

32:                                               ; preds = %28
  %33 = load i64, i64* @low, align 8
  %34 = icmp sgt i64 %33, 32767
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  call void @bit_plus_follow(i32 noundef 1)
  %36 = load i64, i64* @low, align 8
  %37 = add nsw i64 %36, -32768
  store i64 %37, i64* @low, align 8
  %38 = load i64, i64* @high, align 8
  %39 = add nsw i64 %38, -32768
  store i64 %39, i64* @high, align 8
  br label %55

40:                                               ; preds = %32
  %41 = load i64, i64* @low, align 8
  %42 = icmp sgt i64 %41, 16383
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64, i64* @high, align 8
  %45 = icmp slt i64 %44, 49152
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* @bits_to_follow, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* @bits_to_follow, align 8
  %49 = load i64, i64* @low, align 8
  %50 = add nsw i64 %49, -16384
  store i64 %50, i64* @low, align 8
  %51 = load i64, i64* @high, align 8
  %52 = add nsw i64 %51, -16384
  store i64 %52, i64* @high, align 8
  br label %54

53:                                               ; preds = %43, %40
  br label %62

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i64, i64* @low, align 8
  %58 = shl nsw i64 %57, 1
  store i64 %58, i64* @low, align 8
  %59 = load i64, i64* @high, align 8
  %60 = shl nsw i64 %59, 1
  %61 = or i64 %60, 1
  store i64 %61, i64* @high, align 8
  br label %28

62:                                               ; preds = %53
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @update_model(i32 noundef %0) #0 {
  %2 = load i32, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0), align 16
  %3 = icmp eq i32 %2, 16383
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %17, %4
  %.01 = phi i32 [ 257, %4 ], [ %22, %17 ]
  %.0 = phi i32 [ 0, %4 ], [ %21, %17 ]
  %6 = icmp sgt i32 %.01, -1
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %13
  store i32 %12, i32* %14, align 4
  %15 = sext i32 %.01 to i64
  %16 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %15
  store i32 %.0, i32* %16, align 4
  br label %17

17:                                               ; preds = %7
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %.0, %20
  %22 = add nsw i32 %.01, -1
  br label %5, !llvm.loop !7

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %1
  br label %25

25:                                               ; preds = %35, %24
  %.1 = phi i32 [ %0, %24 ], [ %36, %35 ]
  %26 = sext i32 %.1 to i64
  %27 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %.1, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, -1
  br label %25, !llvm.loop !8

37:                                               ; preds = %25
  %38 = icmp slt i32 %.1, %0
  br i1 %38, label %39, label %54

39:                                               ; preds = %37
  %40 = sext i32 %.1 to i64
  %41 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i32 %0 to i64
  %44 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i32 %.1 to i64
  %47 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %46
  store i8 %45, i8* %47, align 1
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %48
  store i8 %42, i8* %49, align 1
  %50 = zext i8 %42 to i64
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %50
  store i32 %0, i32* %51, align 4
  %52 = zext i8 %45 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %52
  store i32 %.1, i32* %53, align 4
  br label %54

54:                                               ; preds = %39, %37
  %55 = sext i32 %.1 to i64
  %56 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %61, %54
  %.2 = phi i32 [ %.1, %54 ], [ %62, %61 ]
  %60 = icmp sgt i32 %.2, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %59
  %62 = add nsw i32 %.2, -1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %59, !llvm.loop !9

67:                                               ; preds = %59
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @done_encoding() #0 {
  %1 = load i64, i64* @bits_to_follow, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @bits_to_follow, align 8
  %3 = load i64, i64* @low, align 8
  %4 = icmp slt i64 %3, 16384
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @bit_plus_follow(i32 noundef 0)
  br label %7

6:                                                ; preds = %0
  call void @bit_plus_follow(i32 noundef 1)
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @done_outputing_bits() #3 {
  %1 = load i32, i32* @buffer, align 4
  %2 = load i32, i32* @bits_to_go, align 4
  %3 = ashr i32 %1, %2
  %4 = trunc i32 %3 to i8
  %5 = load i8*, i8** @ari, align 8
  %6 = load i32, i32* @ari_pos, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* @ari_pos, align 4
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8 %4, i8* %9, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @bit_plus_follow(i32 noundef %0) #0 {
  call void @output_bit(i32 noundef %0)
  br label %2

2:                                                ; preds = %5, %1
  %3 = load i64, i64* @bits_to_follow, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %.not = icmp eq i32 %0, 0
  %6 = zext i1 %.not to i32
  call void @output_bit(i32 noundef %6)
  %7 = load i64, i64* @bits_to_follow, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @bits_to_follow, align 8
  br label %2, !llvm.loop !10

9:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @output_bit(i32 noundef %0) #3 {
  %2 = load i32, i32* @buffer, align 4
  %3 = ashr i32 %2, 1
  store i32 %3, i32* @buffer, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, i32* @buffer, align 4
  %6 = or i32 %5, 128
  store i32 %6, i32* @buffer, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = load i32, i32* @bits_to_go, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @bits_to_go, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* @buffer, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** @ari, align 8
  %15 = load i32, i32* @ari_pos, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* @ari_pos, align 4
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 %13, i8* %18, align 1
  store i32 8, i32* @bits_to_go, align 4
  br label %19

19:                                               ; preds = %11, %7
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
