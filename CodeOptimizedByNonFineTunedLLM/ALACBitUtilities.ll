; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACBitUtilities.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACBitUtilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferInit(%struct.BitBuffer* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.BitBuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %11 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %17 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %19 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %22 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BitBufferRead(%struct.BitBuffer* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %7 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 16
  %13 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %14 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %12, %19
  %21 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %22 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %20, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %30 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 16777215
  store i32 %34, i32* %5, align 4
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %38 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 24, %43
  %45 = lshr i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %47 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = lshr i32 %48, 3
  %50 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %51 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = zext i32 %49 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %51, align 8
  %55 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %56 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 7
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %7 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %14 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %12, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %24 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %22, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %5, align 2
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %31 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 16, %37
  %39 = ashr i32 %35, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %5, align 2
  %41 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %42 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = lshr i32 %43, 3
  %45 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %46 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = zext i32 %44 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %46, align 8
  %50 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %51 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 7
  store i32 %53, i32* %51, align 8
  %54 = load i16, i16* %5, align 2
  %55 = trunc i16 %54 to i8
  ret i8 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @BitBufferReadOne(%struct.BitBuffer* noundef %0) #0 {
  %2 = alloca %struct.BitBuffer*, align 8
  %3 = alloca i8, align 1
  store %struct.BitBuffer* %0, %struct.BitBuffer** %2, align 8
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %11 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 7, %12
  %14 = ashr i32 %9, %13
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  %17 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %18 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %22 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = lshr i32 %23, 3
  %25 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %26 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %26, align 8
  %30 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %31 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 7
  store i32 %33, i32* %31, align 8
  %34 = load i8, i8* %3, align 1
  ret i8 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BitBufferPeek(%struct.BitBuffer* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i8, align 1
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 16
  %12 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %11, %18
  %20 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %21 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %19, %25
  %27 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %28 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %26, %29
  %31 = and i32 %30, 16777215
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 24, %33
  %35 = lshr i32 %31, %34
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BitBufferPeekOne(%struct.BitBuffer* noundef %0) #0 {
  %2 = alloca %struct.BitBuffer*, align 8
  store %struct.BitBuffer* %0, %struct.BitBuffer** %2, align 8
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %10 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = sub i32 7, %11
  %13 = ashr i32 %8, %12
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BitBufferUnpackBERSize(%struct.BitBuffer* noundef %0) #0 {
  %2 = alloca %struct.BitBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.BitBuffer* %0, %struct.BitBuffer** %2, align 8
  store i32 0, i32* %3, align 4
  store i8 -128, i8* %4, align 1
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 128
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %13 = call zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* noundef %12, i8 noundef zeroext 8)
  store i8 %13, i8* %4, align 1
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 7
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 127
  %20 = or i32 %16, %19
  store i32 %20, i32* %3, align 4
  br label %5, !llvm.loop !4

21:                                               ; preds = %5
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BitBufferGetPosition(%struct.BitBuffer* noundef %0) #0 {
  %2 = alloca %struct.BitBuffer*, align 8
  %3 = alloca i8*, align 8
  store %struct.BitBuffer* %0, %struct.BitBuffer** %2, align 8
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %8 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  store i8* %12, i8** %3, align 8
  %13 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %14 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = mul i32 %20, 8
  %22 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %23 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %21, %24
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferByteAlign(%struct.BitBuffer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %15 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = sub i32 8, %17
  call void @BitBufferWrite(%struct.BitBuffer* noundef %14, i32 noundef 0, i32 noundef %18)
  br label %25

19:                                               ; preds = %10
  %20 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %21 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %22 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 8, %23
  call void @BitBufferAdvance(%struct.BitBuffer* noundef %20, i32 noundef %24)
  br label %25

25:                                               ; preds = %9, %19, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferWrite(%struct.BitBuffer* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.BitBuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %13 = icmp ne %struct.BitBuffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %100

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %100

19:                                               ; preds = %15
  %20 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %21 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sub i32 8, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %94, %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub i32 %38, %39
  %41 = lshr i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub i32 %42, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %9, align 1
  %46 = load i32, i32* %11, align 4
  %47 = sub i32 8, %46
  %48 = lshr i32 255, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %10, align 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %10, align 1
  %56 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %57 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %68, %70
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = or i32 %65, %74
  %76 = trunc i32 %75 to i8
  %77 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %78 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %76, i8* %80, align 1
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %35
  store i32 8, i32* %7, align 4
  %90 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %91 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %89, %35
  br label %24, !llvm.loop !6

95:                                               ; preds = %24
  %96 = load i32, i32* %7, align 4
  %97 = sub i32 8, %96
  %98 = load %struct.BitBuffer*, %struct.BitBuffer** %4, align 8
  %99 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %18, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferAdvance(%struct.BitBuffer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %10 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %14 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = lshr i32 %15, 3
  %17 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %18 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %18, align 8
  %22 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %23 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 7
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferRewind(%struct.BitBuffer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.BitBuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BitBuffer* %0, %struct.BitBuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %79

9:                                                ; preds = %2
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %11 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %18 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %79

21:                                               ; preds = %9
  %22 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %23 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %28 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = udiv i32 %29, 8
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = urem i32 %31, 8
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %35 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = zext i32 %33 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %35, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  %44 = sub i32 8, %43
  %45 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %46 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %48 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %48, align 8
  br label %51

51:                                               ; preds = %42, %21
  %52 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %53 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %56 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %59 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = icmp ult i8* %54, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %51
  %66 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %67 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %70 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %76 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.BitBuffer*, %struct.BitBuffer** %3, align 8
  %78 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %8, %15, %65, %51
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BitBufferReset(%struct.BitBuffer* noundef %0) #0 {
  %2 = alloca %struct.BitBuffer*, align 8
  store %struct.BitBuffer* %0, %struct.BitBuffer** %2, align 8
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %7 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.BitBuffer*, %struct.BitBuffer** %2, align 8
  %15 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %14, i32 0, i32 2
  store i32 0, i32* %15, align 8
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
