; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/arithmetic.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_ari(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @rle_pos, align 4
  store i32 0, i32* @ari_pos, align 4
  call void @start_model()
  call void @start_outputing_bits()
  call void @start_encoding()
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8*, i8** @rle, align 8
  %7 = load i32, i32* @rle_pos, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* @rle_pos, align 4
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @rle_pos, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %24

17:                                               ; preds = %5
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  call void @encode_symbol(i32 noundef %22, i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  call void @update_model(i32 noundef %23)
  br label %5

24:                                               ; preds = %16
  call void @encode_symbol(i32 noundef 257, i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  call void @done_encoding()
  call void @done_outputing_bits()
  %25 = load i32, i32* @ari_pos, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_model() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %15
  store i8 %12, i8* %16, align 1
  br label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2, !llvm.loop !4

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 257
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %1, align 4
  %29 = sub nsw i32 257, %28
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %21, !llvm.loop !6

36:                                               ; preds = %21
  store i32 0, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @freq, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_outputing_bits() #0 {
  store i32 0, i32* @buffer, align 4
  store i32 8, i32* @bits_to_go, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_encoding() #0 {
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  store i64 0, i64* @bits_to_follow, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_symbol(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @high, align 8
  %7 = load i64, i64* @low, align 8
  %8 = sub nsw i64 %6, %7
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @low, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %11, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sdiv i64 %19, %23
  %25 = add nsw i64 %10, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* @high, align 8
  %27 = load i64, i64* @low, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %28, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sdiv i64 %35, %39
  %41 = add nsw i64 %27, %40
  store i64 %41, i64* @low, align 8
  br label %42

42:                                               ; preds = %70, %2
  %43 = load i64, i64* @high, align 8
  %44 = icmp slt i64 %43, 32768
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @bit_plus_follow(i32 noundef 0)
  br label %70

46:                                               ; preds = %42
  %47 = load i64, i64* @low, align 8
  %48 = icmp sge i64 %47, 32768
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  call void @bit_plus_follow(i32 noundef 1)
  %50 = load i64, i64* @low, align 8
  %51 = sub nsw i64 %50, 32768
  store i64 %51, i64* @low, align 8
  %52 = load i64, i64* @high, align 8
  %53 = sub nsw i64 %52, 32768
  store i64 %53, i64* @high, align 8
  br label %69

54:                                               ; preds = %46
  %55 = load i64, i64* @low, align 8
  %56 = icmp sge i64 %55, 16384
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i64, i64* @high, align 8
  %59 = icmp slt i64 %58, 49152
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* @bits_to_follow, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @bits_to_follow, align 8
  %63 = load i64, i64* @low, align 8
  %64 = sub nsw i64 %63, 16384
  store i64 %64, i64* @low, align 8
  %65 = load i64, i64* @high, align 8
  %66 = sub nsw i64 %65, 16384
  store i64 %66, i64* @high, align 8
  br label %68

67:                                               ; preds = %57, %54
  br label %76

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i64, i64* @low, align 8
  %72 = mul nsw i64 2, %71
  store i64 %72, i64* @low, align 8
  %73 = load i64, i64* @high, align 8
  %74 = mul nsw i64 2, %73
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @high, align 8
  br label %42

76:                                               ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_model(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0), align 16
  %8 = icmp eq i32 %7, 16383
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 257, i32* %3, align 4
  br label %10

10:                                               ; preds = %33, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %10, !llvm.loop !7

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %39, !llvm.loop !8

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %58, %54
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %96, %87
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %93, !llvm.loop !9

104:                                              ; preds = %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal void @done_outputing_bits() #0 {
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

; Function Attrs: noinline nounwind uwtable
define internal void @bit_plus_follow(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @output_bit(i32 noundef %3)
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i64, i64* @bits_to_follow, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  call void @output_bit(i32 noundef %11)
  %12 = load i64, i64* @bits_to_follow, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* @bits_to_follow, align 8
  br label %4, !llvm.loop !10

14:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_bit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @buffer, align 4
  %4 = ashr i32 %3, 1
  store i32 %4, i32* @buffer, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @buffer, align 4
  %9 = or i32 %8, 128
  store i32 %9, i32* @buffer, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @bits_to_go, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* @bits_to_go, align 4
  %13 = load i32, i32* @bits_to_go, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* @buffer, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** @ari, align 8
  %19 = load i32, i32* @ari_pos, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* @ari_pos, align 4
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 %17, i8* %22, align 1
  store i32 8, i32* @bits_to_go, align 4
  br label %23

23:                                               ; preds = %15, %10
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
