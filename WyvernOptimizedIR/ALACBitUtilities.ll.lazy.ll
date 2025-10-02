; ModuleID = './ALACBitUtilities.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACBitUtilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @BitBufferInit(%struct.BitBuffer* nocapture noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  store i8* %1, i8** %4, align 8
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 1
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 3
  store i32 %2, i32* %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @BitBufferRead(%struct.BitBuffer* nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr inbounds i8, i8* %4, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or i32 %7, %11
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %12, %17
  %19 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %18, %20
  %22 = and i32 %21, 16777215
  %23 = zext i8 %1 to i32
  %24 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %25 = add i32 %20, %23
  store i32 %25, i32* %24, align 8
  %26 = zext i8 %1 to i32
  %27 = sub nsw i32 24, %26
  %28 = lshr i32 %22, %27
  %29 = lshr i32 %25, 3
  %30 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 7
  store i32 %36, i32* %34, align 8
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr inbounds i8, i8* %4, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %7, %10
  %12 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %11, %13
  %15 = zext i8 %1 to i32
  %16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %17 = add i32 %13, %15
  store i32 %17, i32* %16, align 8
  %18 = and i32 %14, 65535
  %19 = zext i8 %1 to i32
  %20 = sub nsw i32 16, %19
  %21 = lshr i32 %18, %20
  %22 = lshr i32 %17, 3
  %23 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %23, align 8
  %27 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 7
  store i32 %29, i32* %27, align 8
  %30 = trunc i32 %21 to i8
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i8 @BitBufferReadOne(%struct.BitBuffer* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = sub i32 7, %7
  %9 = lshr i32 %5, %8
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %13 = add i32 %7, 1
  store i32 %13, i32* %12, align 8
  %14 = lshr i32 %13, 3
  %15 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %15, align 8
  %19 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 7
  store i32 %21, i32* %19, align 8
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @BitBufferPeek(%struct.BitBuffer* nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr inbounds i8, i8* %4, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or i32 %7, %11
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %12, %17
  %19 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %18, %20
  %22 = and i32 %21, 16777215
  %23 = zext i8 %1 to i32
  %24 = sub nsw i32 24, %23
  %25 = lshr i32 %22, %24
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @BitBufferPeekOne(%struct.BitBuffer* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = sub i32 7, %7
  %9 = lshr i32 %5, %8
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @BitBufferUnpackBERSize(%struct.BitBuffer* nocapture noundef %0) #2 {
  br label %2

2:                                                ; preds = %5, %1
  %.01 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %.0 = phi i8 [ -128, %1 ], [ %4, %5 ]
  %.not = icmp sgt i8 %.0, -1
  br i1 %.not, label %10, label %3

3:                                                ; preds = %2
  %4 = call zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* noundef %0, i8 noundef zeroext 8)
  br label %5

5:                                                ; preds = %3
  %6 = shl i32 %.01, 7
  %7 = and i8 %4, 127
  %8 = zext i8 %7 to i32
  %9 = or i32 %6, %8
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret i32 %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @BitBufferGetPosition(%struct.BitBuffer* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, i8* %3, i64 %7
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %8 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 3
  %16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %15, %17
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @BitBufferByteAlign(%struct.BitBuffer* noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %16

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %12, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = sub i32 8, %10
  call void @BitBufferWrite(%struct.BitBuffer* noundef %0, i32 noundef 0, i32 noundef %11)
  br label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 8, %14
  call void @BitBufferAdvance(%struct.BitBuffer* noundef %0, i32 noundef %15)
  br label %16

16:                                               ; preds = %12, %8, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @BitBufferWrite(%struct.BitBuffer* noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %.not = icmp eq %struct.BitBuffer* %0, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %49

5:                                                ; preds = %3
  %.not2 = icmp eq i32 %2, 0
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5
  br label %49

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = sub i32 8, %9
  br label %11

11:                                               ; preds = %45, %7
  %.01 = phi i32 [ %2, %7 ], [ %38, %45 ]
  %.0 = phi i32 [ %10, %7 ], [ %.1, %45 ]
  %.not3 = icmp eq i32 %.01, 0
  br i1 %.not3, label %46, label %12

12:                                               ; preds = %11
  %13 = icmp ult i32 %.0, %.01
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi i32 [ %.0, %14 ], [ %.01, %15 ]
  %18 = sub i32 %.01, %17
  %19 = lshr i32 %1, %18
  %20 = sub i32 %.0, %17
  %21 = sub i32 8, %17
  %22 = lshr i32 255, %21
  %23 = and i32 %20, 255
  %24 = shl i32 %22, %23
  %25 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %24, -1
  %30 = and i32 %28, %29
  %31 = and i32 %20, 255
  %32 = shl i32 %19, %31
  %33 = and i32 %32, %24
  %34 = or i32 %30, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8 %35, i8* %37, align 1
  %38 = sub i32 %.01, %17
  %39 = sub i32 %.0, %17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %41, %16
  %.1 = phi i32 [ 8, %41 ], [ %39, %16 ]
  br label %11, !llvm.loop !6

46:                                               ; preds = %11
  %47 = sub i32 8, %.0
  %48 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 %47, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @BitBufferAdvance(%struct.BitBuffer* nocapture noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %15, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = add i32 %5, %1
  store i32 %6, i32* %4, align 8
  %7 = lshr i32 %6, 3
  %8 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %8, align 8
  %12 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 7
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @BitBufferRewind(%struct.BitBuffer* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %51

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8
  %.not = icmp ult i32 %7, %1
  br i1 %.not, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = sub i32 %10, %1
  store i32 %11, i32* %9, align 8
  br label %51

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %1, %14
  %16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = lshr i32 %15, 3
  %18 = and i32 %15, 7
  %19 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %17 to i64
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %19, align 8
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %30, label %24

24:                                               ; preds = %12
  %25 = sub nuw nsw i32 8, %18
  %26 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %24, %12
  %31 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = icmp ult i8* %32, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %41, %30, %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @BitBufferReset(%struct.BitBuffer* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, i8* %3, i64 %7
  %9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i64 0, i32 2
  store i32 0, i32* %10, align 8
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
