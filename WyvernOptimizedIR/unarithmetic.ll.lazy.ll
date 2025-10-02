; ModuleID = './unarithmetic.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/unarithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@in_size = dso_local global i32 0, align 4
@in_pos = dso_local global i32 0, align 4
@deari_pos = dso_local global i32 0, align 4
@cum_freq = dso_local global [258 x i32] zeroinitializer, align 16
@index_to_char = dso_local global [258 x i8] zeroinitializer, align 16
@deari = external dso_local global i8*, align 8
@char_to_index = dso_local global [256 x i32] zeroinitializer, align 16
@freq = dso_local global [258 x i32] zeroinitializer, align 16
@buffer = dso_local global i32 0, align 4
@bits_to_go = dso_local global i32 0, align 4
@garbage_bits = dso_local global i32 0, align 4
@value = internal global i64 0, align 8
@low = internal global i64 0, align 8
@high = internal global i64 0, align 8
@in = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_deari(i32 noundef %0) #0 {
  store i32 %0, i32* @in_size, align 4
  store i32 0, i32* @in_pos, align 4
  store i32 0, i32* @deari_pos, align 4
  call void @start_model()
  call void @start_inputing_bits()
  call void @start_decoding()
  br label %2

2:                                                ; preds = %6, %1
  %3 = call i32 @decode_symbol(i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  %4 = icmp eq i32 %3, 257
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %15

6:                                                ; preds = %2
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** @deari, align 8
  %11 = load i32, i32* @deari_pos, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* @deari_pos, align 4
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 %9, i8* %14, align 1
  call void @update_model(i32 noundef %3)
  br label %2

15:                                               ; preds = %5
  %16 = load i32, i32* @deari_pos, align 4
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
define internal void @start_inputing_bits() #2 {
  store i32 0, i32* @bits_to_go, align 4
  store i32 0, i32* @garbage_bits, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_decoding() #0 {
  store i64 0, i64* @value, align 8
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 1, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 17
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load i64, i64* @value, align 8
  %5 = shl nsw i64 %4, 1
  %6 = call i32 @input_bit()
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  store i64 %8, i64* @value, align 8
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

11:                                               ; preds = %1
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_symbol(i32* nocapture noundef readonly %0) #0 {
  %2 = load i64, i64* @high, align 8
  %3 = load i64, i64* @low, align 8
  %4 = sub nsw i64 %2, %3
  %5 = add nsw i64 %4, 1
  %6 = load i64, i64* @value, align 8
  %7 = sub nsw i64 %6, %3
  %8 = add nsw i64 %7, 1
  %9 = load i32, i32* %0, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %8, %10
  %12 = add nsw i64 %11, -1
  %13 = sdiv i64 %12, %5
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %21, %1
  %.0 = phi i32 [ 1, %1 ], [ %22, %21 ]
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, %14
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !8

23:                                               ; preds = %15
  %24 = load i64, i64* @low, align 8
  %25 = add nsw i32 %.0, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %5, %29
  %31 = load i32, i32* %0, align 4
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %30, %32
  %34 = add nsw i64 %24, %33
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* @high, align 8
  %36 = load i64, i64* @low, align 8
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %5, %40
  %42 = load i32, i32* %0, align 4
  %43 = sext i32 %42 to i64
  %44 = sdiv i64 %41, %43
  %45 = add nsw i64 %36, %44
  store i64 %45, i64* @low, align 8
  br label %46

46:                                               ; preds = %76, %23
  %47 = load i64, i64* @high, align 8
  %48 = icmp slt i64 %47, 32768
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %76

50:                                               ; preds = %46
  %51 = load i64, i64* @low, align 8
  %52 = icmp sgt i64 %51, 32767
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* @value, align 8
  %55 = add nsw i64 %54, -32768
  store i64 %55, i64* @value, align 8
  %56 = load i64, i64* @low, align 8
  %57 = add nsw i64 %56, -32768
  store i64 %57, i64* @low, align 8
  %58 = load i64, i64* @high, align 8
  %59 = add nsw i64 %58, -32768
  store i64 %59, i64* @high, align 8
  br label %75

60:                                               ; preds = %50
  %61 = load i64, i64* @low, align 8
  %62 = icmp sgt i64 %61, 16383
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i64, i64* @high, align 8
  %65 = icmp slt i64 %64, 49152
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i64, i64* @value, align 8
  %68 = add nsw i64 %67, -16384
  store i64 %68, i64* @value, align 8
  %69 = load i64, i64* @low, align 8
  %70 = add nsw i64 %69, -16384
  store i64 %70, i64* @low, align 8
  %71 = load i64, i64* @high, align 8
  %72 = add nsw i64 %71, -16384
  store i64 %72, i64* @high, align 8
  br label %74

73:                                               ; preds = %63, %60
  br label %87

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i64, i64* @low, align 8
  %78 = shl nsw i64 %77, 1
  store i64 %78, i64* @low, align 8
  %79 = load i64, i64* @high, align 8
  %80 = shl nsw i64 %79, 1
  %81 = or i64 %80, 1
  store i64 %81, i64* @high, align 8
  %82 = load i64, i64* @value, align 8
  %83 = shl nsw i64 %82, 1
  %84 = call i32 @input_bit()
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  store i64 %86, i64* @value, align 8
  br label %46

87:                                               ; preds = %73
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @update_model(i32 noundef %0) #3 {
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
  br label %5, !llvm.loop !9

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
  br label %25, !llvm.loop !10

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
  br label %59, !llvm.loop !11

67:                                               ; preds = %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @input_bit() #0 {
  %1 = load i32, i32* @bits_to_go, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load i32, i32* @in_pos, align 4
  %5 = load i32, i32* @in_size, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = load i8*, i8** @in, align 8
  %9 = load i32, i32* @in_pos, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* @in_pos, align 4
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* @buffer, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load i32, i32* @garbage_bits, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @garbage_bits, align 4
  %18 = icmp sgt i32 %16, 13
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %20) #7
  call void @exit(i32 noundef -1) #8
  unreachable

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %7
  store i32 8, i32* @bits_to_go, align 4
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i32, i32* @buffer, align 4
  %26 = and i32 %25, 1
  %27 = ashr i32 %25, 1
  store i32 %27, i32* @buffer, align 4
  %28 = load i32, i32* @bits_to_go, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @bits_to_go, align 4
  ret i32 %26
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

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
!11 = distinct !{!11, !5}
