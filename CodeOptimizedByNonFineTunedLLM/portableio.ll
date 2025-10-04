; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/portableio.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/portableio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReadByte(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  %6 = and i32 %5, 255
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 256
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @getc(%struct._IO_FILE* noundef %6)
  %8 = and i32 255, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9)
  %11 = and i32 255, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 65536
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @getc(%struct._IO_FILE* noundef %6)
  %8 = and i32 255, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9)
  %11 = and i32 255, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 65536
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write8Bits(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %7)
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %7)
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @putc(i32 noundef %11, %struct._IO_FILE* noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write16BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 8
  %7 = and i32 %6, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = call i32 @putc(i32 noundef %7, %struct._IO_FILE* noundef %8)
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @putc(i32 noundef %11, %struct._IO_FILE* noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read24BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %8 = call i32 @getc(%struct._IO_FILE* noundef %7)
  %9 = and i32 255, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  %12 = and i32 255, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %14 = call i32 @getc(%struct._IO_FILE* noundef %13)
  %15 = and i32 255, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 8
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 8388608
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 16777216
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read32Bits(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %6)
  %8 = and i32 65535, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %9)
  %11 = and i32 65535, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read32BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %6)
  %8 = and i32 65535, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %9)
  %11 = and i32 65535, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32Bits(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %7, 65535
  %9 = trunc i64 %8 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %5, i32 noundef %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 16
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 65535
  %15 = trunc i64 %14 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %10, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %7, 65535
  %9 = trunc i64 %8 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %5, i32 noundef %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 16
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 65535
  %15 = trunc i64 %14 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %10, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 16
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 65535
  %10 = trunc i64 %9 to i32
  call void @Write16BitsHighLow(%struct._IO_FILE* noundef %5, i32 noundef %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 65535
  %15 = trunc i64 %14 to i32
  call void @Write16BitsHighLow(%struct._IO_FILE* noundef %11, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadBytes(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i32 @feof(%struct._IO_FILE* noundef %8) #3
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %13, 0
  %16 = zext i1 %15 to i32
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = call i32 @getc(%struct._IO_FILE* noundef %20)
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i8 %22, i8* %23, align 1
  br label %7, !llvm.loop !4

25:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %11 = call i32 @feof(%struct._IO_FILE* noundef %10) #3
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %15, 0
  %18 = zext i1 %17 to i32
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %23 = call i32 @getc(%struct._IO_FILE* noundef %22)
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  br label %9, !llvm.loop !6

27:                                               ; preds = %9
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %44, %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %7, align 8
  br label %30, !llvm.loop !7

49:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteBytes(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = call i32 @putc(i32 noundef %15, %struct._IO_FILE* noundef %16)
  br label %7, !llvm.loop !8

18:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i8*, i8** %5, align 8
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = call i32 @putc(i32 noundef %20, %struct._IO_FILE* noundef %21)
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 4)
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeSingle(i8* noundef %6)
  ret double %7
}

declare dso_local double @ConvertFromIeeeSingle(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 4)
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeSingle(i8* noundef %6)
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeDouble(i8* noundef %6)
  ret double %7
}

declare dso_local double @ConvertFromIeeeDouble(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeDouble(i8* noundef %6)
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 10)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeExtended(i8* noundef %6)
  ret double %7
}

declare dso_local double @ConvertFromIeeeExtended(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %4, i8* noundef %5, i32 noundef 10)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %7 = call double @ConvertFromIeeeExtended(i8* noundef %6)
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 4)
  ret void
}

declare dso_local void @ConvertToIeeeSingle(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 8)
  ret void
}

declare dso_local void @ConvertToIeeeDouble(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 10)
  ret void
}

declare dso_local void @ConvertToIeeeExtended(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca double, align 8
  %5 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %6, i8* noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %8, i8* noundef %9, i32 noundef 10)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
