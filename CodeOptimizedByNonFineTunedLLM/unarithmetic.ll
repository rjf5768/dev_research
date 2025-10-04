; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/unarithmetic.c'
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @in_size, align 4
  store i32 0, i32* @in_pos, align 4
  store i32 0, i32* @deari_pos, align 4
  call void @start_model()
  call void @start_inputing_bits()
  call void @start_decoding()
  br label %6

6:                                                ; preds = %11, %1
  %7 = call i32 @decode_symbol(i32* noundef getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 257
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %25

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** @deari, align 8
  %20 = load i32, i32* @deari_pos, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* @deari_pos, align 4
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %18, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  call void @update_model(i32 noundef %24)
  br label %6

25:                                               ; preds = %10
  %26 = load i32, i32* @deari_pos, align 4
  ret i32 %26
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
define internal void @start_inputing_bits() #0 {
  store i32 0, i32* @bits_to_go, align 4
  store i32 0, i32* @garbage_bits, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_decoding() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @value, align 8
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 16
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i64, i64* @value, align 8
  %7 = mul nsw i64 2, %6
  %8 = call i32 @input_bit()
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  store i64 %10, i64* @value, align 8
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !7

14:                                               ; preds = %2
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_symbol(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* @high, align 8
  %7 = load i64, i64* @low, align 8
  %8 = sub nsw i64 %6, %7
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @value, align 8
  %11 = load i64, i64* @low, align 8
  %12 = sub nsw i64 %10, %11
  %13 = add nsw i64 %12, 1
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %13, %17
  %19 = sub nsw i64 %18, 1
  %20 = load i64, i64* %3, align 8
  %21 = sdiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %23, !llvm.loop !8

35:                                               ; preds = %23
  %36 = load i64, i64* @low, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %37, %44
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sdiv i64 %45, %49
  %51 = add nsw i64 %36, %50
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* @high, align 8
  %53 = load i64, i64* @low, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %54, %60
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %61, %65
  %67 = add nsw i64 %53, %66
  store i64 %67, i64* @low, align 8
  br label %68

68:                                               ; preds = %98, %35
  %69 = load i64, i64* @high, align 8
  %70 = icmp slt i64 %69, 32768
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %98

72:                                               ; preds = %68
  %73 = load i64, i64* @low, align 8
  %74 = icmp sge i64 %73, 32768
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* @value, align 8
  %77 = sub nsw i64 %76, 32768
  store i64 %77, i64* @value, align 8
  %78 = load i64, i64* @low, align 8
  %79 = sub nsw i64 %78, 32768
  store i64 %79, i64* @low, align 8
  %80 = load i64, i64* @high, align 8
  %81 = sub nsw i64 %80, 32768
  store i64 %81, i64* @high, align 8
  br label %97

82:                                               ; preds = %72
  %83 = load i64, i64* @low, align 8
  %84 = icmp sge i64 %83, 16384
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i64, i64* @high, align 8
  %87 = icmp slt i64 %86, 49152
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i64, i64* @value, align 8
  %90 = sub nsw i64 %89, 16384
  store i64 %90, i64* @value, align 8
  %91 = load i64, i64* @low, align 8
  %92 = sub nsw i64 %91, 16384
  store i64 %92, i64* @low, align 8
  %93 = load i64, i64* @high, align 8
  %94 = sub nsw i64 %93, 16384
  store i64 %94, i64* @high, align 8
  br label %96

95:                                               ; preds = %85, %82
  br label %109

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i64, i64* @low, align 8
  %100 = mul nsw i64 2, %99
  store i64 %100, i64* @low, align 8
  %101 = load i64, i64* @high, align 8
  %102 = mul nsw i64 2, %101
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @high, align 8
  %104 = load i64, i64* @value, align 8
  %105 = mul nsw i64 2, %104
  %106 = call i32 @input_bit()
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  store i64 %108, i64* @value, align 8
  br label %68

109:                                              ; preds = %95
  %110 = load i32, i32* %5, align 4
  ret i32 %110
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
  br label %10, !llvm.loop !9

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
  br label %39, !llvm.loop !10

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
  br label %93, !llvm.loop !11

104:                                              ; preds = %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @input_bit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @bits_to_go, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %0
  %5 = load i32, i32* @in_pos, align 4
  %6 = load i32, i32* @in_size, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i8*, i8** @in, align 8
  %10 = load i32, i32* @in_pos, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @in_pos, align 4
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* @buffer, align 4
  br label %25

16:                                               ; preds = %4
  %17 = load i32, i32* @garbage_bits, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @garbage_bits, align 4
  %19 = load i32, i32* @garbage_bits, align 4
  %20 = icmp sgt i32 %19, 14
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #3
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %8
  store i32 8, i32* @bits_to_go, align 4
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* @buffer, align 4
  %28 = and i32 %27, 1
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @buffer, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* @buffer, align 4
  %31 = load i32, i32* @bits_to_go, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* @bits_to_go, align 4
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
