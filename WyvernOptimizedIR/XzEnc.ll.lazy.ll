; ModuleID = './XzEnc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.ISeqOutStream = type { i64 (i8*, i8*, i64)* }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.CSeqCheckInStream = type { %struct.ISeqInStream, %struct.ISeqInStream*, i64, %struct.CXzCheck }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.CXzCheck = type { i32, i32, i64, %struct.CSha256 }
%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }
%struct.CLzma2EncProps = type { %struct._CLzmaEncProps, i64, i32, i32 }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CLzma2WithFilters = type { i8*, %struct.ISzAlloc*, %struct.ISzAlloc* }
%struct.CSeqSizeOutStream = type { %struct.ISeqOutStream, %struct.ISeqOutStream*, i64 }

@XZ_SIG = external dso_local global [6 x i8], align 1
@XZ_FOOTER_SIG = external dso_local global [2 x i8], align 1
@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8
@g_BigAlloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzBigAlloc, void (i8*, i8*)* @SzBigFree }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_WriteHeader(i16 noundef zeroext %0, %struct.ISeqOutStream* noundef %1) #0 {
  %3 = alloca [12 x i8], align 1
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %4, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i64 0, i64 0), i64 6, i1 false)
  %5 = lshr i16 %0, 8
  %6 = trunc i16 %5 to i8
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 6
  store i8 %6, i8* %7, align 1
  %8 = trunc i16 %0 to i8
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 7
  store i8 %8, i8* %9, align 1
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 6
  %11 = call i32 @CrcCalc(i8* noundef nonnull %10, i64 noundef 2) #4
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 8
  %13 = bitcast i8* %12 to i32*
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %15 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %14, i32 noundef 12)
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CrcCalc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @WriteBytes(%struct.ISeqOutStream* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %0, i64 0, i32 0
  %5 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %4, align 8
  %6 = bitcast %struct.ISeqOutStream* %0 to i8*
  %7 = zext i32 %2 to i64
  %8 = call i64 %5(i8* noundef %6, i8* noundef %1, i64 noundef %7) #4
  %9 = zext i32 %2 to i64
  %10 = icmp eq i64 %8, %9
  %11 = select i1 %10, i32 0, i32 9
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzBlock_WriteHeader(%struct.CXzBlock* nocapture noundef readonly %0, %struct.ISeqOutStream* noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 2
  %5 = load i8, i8* %4, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  store i8 %5, i8* %6, align 1
  %7 = and i8 %5, 64
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 2
  %10 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %9, i64 noundef %11) #4
  %13 = add i32 %12, 2
  br label %14

14:                                               ; preds = %8, %2
  %.01 = phi i32 [ %13, %8 ], [ 2, %2 ]
  %15 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 2
  %16 = load i8, i8* %15, align 8
  %.not2 = icmp sgt i8 %16, -1
  br i1 %.not2, label %24, label %17

17:                                               ; preds = %14
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %19, i64 noundef %21) #4
  %23 = add i32 %.01, %22
  br label %24

24:                                               ; preds = %17, %14
  %.1 = phi i32 [ %23, %17 ], [ %.01, %14 ]
  %25 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 2
  %26 = load i8, i8* %25, align 8
  %27 = and i8 %26, 3
  %narrow = add nuw nsw i8 %27, 1
  %28 = zext i8 %narrow to i32
  br label %29

29:                                               ; preds = %52, %24
  %.2 = phi i32 [ %.1, %24 ], [ %53, %52 ]
  %.0 = phi i32 [ 0, %24 ], [ %54, %52 ]
  %30 = icmp ult i32 %.0, %28
  br i1 %30, label %31, label %55

31:                                               ; preds = %29
  %32 = zext i32 %.0 to i64
  %33 = zext i32 %.2 to i64
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 3, i64 %32, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %34, i64 noundef %36) #4
  %38 = add i32 %.2, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 3, i64 %32, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %40, i64 noundef %43) #4
  %45 = add i32 %38, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 3, i64 %32, i32 2, i64 0
  %49 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i64 0, i32 3, i64 %32, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = zext i32 %50 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %47, i8* nonnull align 4 %48, i64 %51, i1 false)
  br label %52

52:                                               ; preds = %31
  %53 = add i32 %45, %50
  %54 = add nuw nsw i32 %.0, 1
  br label %29, !llvm.loop !4

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %58, %55
  %.3 = phi i32 [ %.2, %55 ], [ %59, %58 ]
  %57 = and i32 %.3, 3
  %.not3 = icmp eq i32 %57, 0
  br i1 %.not3, label %62, label %58

58:                                               ; preds = %56
  %59 = add i32 %.3, 1
  %60 = zext i32 %.3 to i64
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  br label %56, !llvm.loop !6

62:                                               ; preds = %56
  %63 = lshr i32 %.3, 2
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8 %64, i8* %65, align 16
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %67 = zext i32 %.3 to i64
  %68 = call i32 @CrcCalc(i8* noundef nonnull %66, i64 noundef %67) #4
  %69 = zext i32 %.3 to i64
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %69
  %71 = bitcast i8* %70 to i32*
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %73 = add i32 %.3, 4
  %74 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %72, i32 noundef %73)
  ret i32 %74
}

declare dso_local i32 @Xz_WriteVarInt(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_WriteFooter(%struct.CXzStream* nocapture noundef readonly %0, %struct.ISeqOutStream* noundef %1) #0 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 1
  %6 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %5, i64 noundef %7) #4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %12 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %11, i32 noundef %9, i32* noundef nonnull %4)
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %2
  br label %85

14:                                               ; preds = %2
  %15 = zext i32 %9 to i64
  br label %16

16:                                               ; preds = %39, %14
  %.02 = phi i64 [ %15, %14 ], [ %34, %39 ]
  %.01 = phi i64 [ 0, %14 ], [ %40, %39 ]
  %17 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %.01, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %22 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %21, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %24 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %22, i64 %.01, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %23, i64 noundef %25) #4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %22, i64 %.01, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @Xz_WriteVarInt(i8* noundef nonnull %28, i64 noundef %30) #4
  %32 = add i32 %26, %31
  %33 = zext i32 %32 to i64
  %34 = add i64 %.02, %33
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %36 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %35, i32 noundef %32, i32* noundef nonnull %4)
  %.not7 = icmp eq i32 %36, 0
  br i1 %.not7, label %38, label %37

37:                                               ; preds = %20
  br label %85

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = add i64 %.01, 1
  br label %16, !llvm.loop !7

41:                                               ; preds = %16
  %42 = trunc i64 %.02 to i32
  %43 = and i32 %42, 3
  %.not4 = icmp eq i32 %43, 0
  br i1 %.not4, label %56, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %45, align 2
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %49 = sub nuw nsw i32 4, %43
  %50 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %48, i32 noundef %49, i32* noundef nonnull %4)
  %.not6 = icmp eq i32 %50, 0
  br i1 %.not6, label %52, label %51

51:                                               ; preds = %44
  br label %85

52:                                               ; preds = %44
  %53 = sub nuw nsw i32 4, %43
  %54 = zext i32 %53 to i64
  %55 = add i64 %.02, %54
  br label %56

56:                                               ; preds = %52, %41
  %.1 = phi i64 [ %55, %52 ], [ %.02, %41 ]
  %57 = load i32, i32* %4, align 4
  %58 = xor i32 %57, -1
  %59 = bitcast [32 x i8]* %3 to i32*
  store i32 %58, i32* %59, align 16
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %61 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %60, i32 noundef 4)
  %.not5 = icmp eq i32 %61, 0
  br i1 %.not5, label %63, label %62

62:                                               ; preds = %56
  br label %85

63:                                               ; preds = %56
  %64 = add i64 %.1, 4
  %65 = lshr i64 %64, 2
  %66 = trunc i64 %65 to i32
  %67 = add i32 %66, -1
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 4
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  %71 = load i16, i16* %70, align 8
  %72 = lshr i16 %71, 8
  %73 = trunc i16 %72 to i8
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 8
  store i8 %73, i8* %74, align 8
  %75 = trunc i16 %71 to i8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 9
  store i8 %75, i8* %76, align 1
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 4
  %78 = call i32 @CrcCalc(i8* noundef nonnull %77, i64 noundef 6) #4
  %79 = bitcast [32 x i8]* %3 to i32*
  store i32 %78, i32* %79, align 16
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 10
  %81 = bitcast i8* %80 to i16*
  %82 = load i16, i16* bitcast ([2 x i8]* @XZ_FOOTER_SIG to i16*), align 1
  store i16 %82, i16* %81, align 2
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %84 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %1, i8* noundef nonnull %83, i32 noundef 12)
  br label %85

85:                                               ; preds = %63, %62, %51, %37, %13
  %.0 = phi i32 [ %12, %13 ], [ %36, %37 ], [ %50, %51 ], [ %61, %62 ], [ %84, %63 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %0, i8* noundef %1, i32 noundef %2, i32* nocapture noundef %3) #0 {
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %2 to i64
  %7 = call i32 @CrcUpdate(i32 noundef %5, i8* noundef %1, i64 noundef %6) #4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %0, i8* noundef %1, i32 noundef %2)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_AddIndexRecord(%struct.CXzStream* noundef %0, i64 noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %6 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %5, align 8
  %7 = icmp eq %struct.CXzBlockSizes* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = shl i64 %16, 1
  %18 = add i64 %17, 2
  %19 = and i64 %18, 1152921504606846974
  %.not = icmp eq i64 %19, %18
  br i1 %.not, label %21, label %20

20:                                               ; preds = %14
  br label %51

21:                                               ; preds = %14
  %22 = shl i64 %18, 4
  %23 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 0
  %24 = load i8* (i8*, i64)*, i8* (i8*, i64)** %23, align 8
  %25 = bitcast %struct.ISzAlloc* %3 to i8*
  %26 = call i8* %24(i8* noundef %25, i64 noundef %22) #4
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %51

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %.not1 = icmp eq i64 %31, 0
  br i1 %.not1, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %34 = bitcast %struct.CXzBlockSizes** %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 %37, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %26, i8* align 8 %35, i64 %38, i1 false)
  call void @Xz_Free(%struct.CXzStream* noundef %0, %struct.ISzAlloc* noundef %3) #4
  br label %39

39:                                               ; preds = %32, %29
  %40 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %41 = bitcast %struct.CXzBlockSizes** %40 to i8**
  store i8* %26, i8** %41, align 8
  %42 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 2
  store i64 %18, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %8
  %44 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %45 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %44, align 8
  %46 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %45, i64 %47, i32 1
  store i64 %2, i64* %49, align 8
  %50 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %45, i64 %47, i32 0
  store i64 %1, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %28, %20
  %.0 = phi i32 [ 2, %20 ], [ 2, %28 ], [ 0, %43 ]
  ret i32 %.0
}

declare dso_local void @Xz_Free(%struct.CXzStream* noundef, %struct.ISzAlloc* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %0, i64 0, i32 2
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %0, i64 0, i32 3
  call void @XzCheck_Init(%struct.CXzCheck* noundef nonnull %4, i32 noundef %1) #4
  ret void
}

declare dso_local void @XzCheck_Init(%struct.CXzCheck* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* noundef %0, i8* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %0, i64 0, i32 3
  %4 = call i32 @XzCheck_Final(%struct.CXzCheck* noundef nonnull %3, i8* noundef %1) #4
  ret void
}

declare dso_local i32 @XzCheck_Final(%struct.CXzCheck* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_Encode(%struct.ISeqOutStream* noundef %0, %struct.ISeqInStream* noundef %1, %struct.CLzma2EncProps* noundef %2, i32 noundef %3, %struct.ICompressProgress* noundef %4) #0 {
  %6 = alloca %struct.CXzStream, align 8
  %7 = alloca %struct.CLzma2WithFilters, align 8
  call void @Xz_Construct(%struct.CXzStream* noundef nonnull %6) #4
  call void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* noundef nonnull %7, %struct.ISzAlloc* noundef nonnull @g_Alloc, %struct.ISzAlloc* noundef nonnull @g_BigAlloc)
  %8 = call i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* noundef nonnull %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @Xz_Compress(%struct.CXzStream* noundef nonnull %6, %struct.CLzma2WithFilters* noundef nonnull %7, %struct.ISeqOutStream* noundef %0, %struct.ISeqInStream* noundef %1, %struct.CLzma2EncProps* noundef %2, i32 noundef %3, %struct.ICompressProgress* noundef %4)
  br label %12

12:                                               ; preds = %10, %5
  %.0 = phi i32 [ %11, %10 ], [ %8, %5 ]
  call void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* noundef nonnull %7)
  call void @Xz_Free(%struct.CXzStream* noundef nonnull %6, %struct.ISzAlloc* noundef nonnull @g_Alloc) #4
  ret i32 %.0
}

declare dso_local void @Xz_Construct(%struct.CXzStream* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* nocapture noundef writeonly %0, %struct.ISzAlloc* noundef %1, %struct.ISzAlloc* noundef %2) #3 {
  %4 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 1
  store %struct.ISzAlloc* %1, %struct.ISzAlloc** %4, align 8
  %5 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 2
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %5, align 8
  %6 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 0
  store i8* null, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 1
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %2, align 8
  %4 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 2
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %6 = call i8* @Lzma2Enc_Create(%struct.ISzAlloc* noundef %3, %struct.ISzAlloc* noundef %5) #4
  %7 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = icmp eq i8* %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32 [ 2, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_Compress(%struct.CXzStream* noundef %0, %struct.CLzma2WithFilters* nocapture noundef readonly %1, %struct.ISeqOutStream* noundef %2, %struct.ISeqInStream* noundef %3, %struct.CLzma2EncProps* noundef %4, i32 noundef %5, %struct.ICompressProgress* noundef %6) #0 {
  %8 = alloca %struct.CSeqCheckInStream, align 8
  %9 = alloca %struct.CSeqSizeOutStream, align 8
  %10 = alloca %struct.CXzBlock, align 8
  %11 = alloca [128 x i8], align 16
  %12 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  store i16 1, i16* %12, align 8
  %13 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %1, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @Lzma2Enc_SetProps(i8* noundef %14, %struct.CLzma2EncProps* noundef %4) #4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %17, label %16

16:                                               ; preds = %7
  br label %96

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  %19 = load i16, i16* %18, align 8
  %20 = call i32 @Xz_WriteHeader(i16 noundef zeroext %19, %struct.ISeqOutStream* noundef %2)
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %22, label %21

21:                                               ; preds = %17
  br label %96

22:                                               ; preds = %17
  %.not4.not = icmp ne i32 %5, 0
  %23 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 2
  %24 = zext i1 %.not4.not to i8
  store i8 %24, i8* %23, align 8
  %.not5 = icmp eq i32 %5, 0
  br i1 %.not5, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 3, i64 0, i32 0
  store i64 1, i64* %26, align 8
  %27 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 3, i64 0, i32 1
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %.02 = phi i64 [ 1, %25 ], [ 0, %22 ]
  %29 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 3, i64 %.02, i32 0
  store i64 33, i64* %29, align 8
  %30 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 3, i64 %.02, i32 1
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %1, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call zeroext i8 @Lzma2Enc_WriteProperties(i8* noundef %32) #4
  %34 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 3, i64 %.02, i32 2, i64 0
  store i8 %33, i8* %34, align 4
  %35 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 0, i32 0
  store i64 (i8*, i8*, i64)* @MyWrite, i64 (i8*, i8*, i64)** %35, align 8
  %36 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 1
  store %struct.ISeqOutStream* %2, %struct.ISeqOutStream** %36, align 8
  %37 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 0
  %39 = call i32 @XzBlock_WriteHeader(%struct.CXzBlock* noundef nonnull %10, %struct.ISeqOutStream* noundef nonnull %38)
  %.not6 = icmp eq i32 %39, 0
  br i1 %.not6, label %41, label %40

40:                                               ; preds = %28
  br label %96

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %8, i64 0, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SeqCheckInStream_Read, i32 (i8*, i8*, i64*)** %42, align 8
  %43 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %8, i64 0, i32 1
  store %struct.ISeqInStream* %3, %struct.ISeqInStream** %43, align 8
  %44 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  %45 = load i16, i16* %44, align 8
  %46 = and i16 %45, 15
  %47 = zext i16 %46 to i32
  call void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* noundef nonnull %8, i32 noundef %47)
  %48 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %1, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 0
  %53 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %8, i64 0, i32 0
  %54 = call i32 @Lzma2Enc_Encode(i8* noundef %51, %struct.ISeqOutStream* noundef nonnull %52, %struct.ISeqInStream* noundef nonnull %53, %struct.ICompressProgress* noundef %6) #4
  %.not7 = icmp eq i32 %54, 0
  br i1 %.not7, label %56, label %55

55:                                               ; preds = %41
  br label %96

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %8, i64 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, %49
  %63 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 0
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %70, %56
  %.01 = phi i32 [ 0, %56 ], [ %71, %70 ]
  %65 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = add i32 %.01, %67
  %69 = and i32 %68, 3
  %.not8 = icmp eq i32 %69, 0
  br i1 %.not8, label %74, label %70

70:                                               ; preds = %64
  %71 = add i32 %.01, 1
  %72 = zext i32 %.01 to i64
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  br label %64, !llvm.loop !8

74:                                               ; preds = %64
  %75 = zext i32 %.01 to i64
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %75
  call void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* noundef nonnull %8, i8* noundef nonnull %76)
  %77 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 0
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %79 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  %80 = load i16, i16* %79, align 8
  %81 = call i32 @XzFlags_GetCheckSize(i16 noundef zeroext %80) #4
  %82 = add i32 %.01, %81
  %83 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef nonnull %77, i8* noundef nonnull %78, i32 noundef %82)
  %.not9 = icmp eq i32 %83, 0
  br i1 %.not9, label %85, label %84

84:                                               ; preds = %74
  br label %96

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i64 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %9, i64 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = zext i32 %.01 to i64
  %91 = sub i64 %89, %90
  %92 = call i32 @Xz_AddIndexRecord(%struct.CXzStream* noundef %0, i64 noundef %87, i64 noundef %91, %struct.ISzAlloc* noundef nonnull @g_Alloc)
  %.not10 = icmp eq i32 %92, 0
  br i1 %.not10, label %94, label %93

93:                                               ; preds = %85
  br label %96

94:                                               ; preds = %85
  %95 = call i32 @Xz_WriteFooter(%struct.CXzStream* noundef %0, %struct.ISeqOutStream* noundef %2)
  br label %96

96:                                               ; preds = %94, %93, %84, %55, %40, %21, %16
  %.0 = phi i32 [ %15, %16 ], [ %20, %21 ], [ %39, %40 ], [ %54, %55 ], [ %83, %84 ], [ %92, %93 ], [ %95, %94 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  call void @Lzma2Enc_Destroy(i8* noundef %6) #4
  %7 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i64 0, i32 0
  store i8* null, i8** %7, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_EncodeEmpty(%struct.ISeqOutStream* noundef %0) #0 {
  %2 = alloca %struct.CXzStream, align 8
  call void @Xz_Construct(%struct.CXzStream* noundef nonnull %2) #4
  %3 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %2, i64 0, i32 0
  %4 = load i16, i16* %3, align 8
  %5 = call i32 @Xz_WriteHeader(i16 noundef zeroext %4, %struct.ISeqOutStream* noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @Xz_WriteFooter(%struct.CXzStream* noundef nonnull %2, %struct.ISeqOutStream* noundef %0)
  br label %9

9:                                                ; preds = %7, %1
  %.0 = phi i32 [ %8, %7 ], [ %5, %1 ]
  call void @Xz_Free(%struct.CXzStream* noundef nonnull %2, %struct.ISzAlloc* noundef nonnull @g_Alloc) #4
  ret i32 %.0
}

declare dso_local i32 @CrcUpdate(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* nocapture noundef readnone %0, i64 noundef %1) #0 {
  %3 = call i8* @MyAlloc(i64 noundef %1) #4
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* nocapture noundef readnone %0, i8* noundef %1) #0 {
  call void @MyFree(i8* noundef %1) #4
  ret void
}

declare dso_local i8* @MyAlloc(i64 noundef) #2

declare dso_local void @MyFree(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzBigAlloc(i8* nocapture noundef readnone %0, i64 noundef %1) #0 {
  %3 = call i8* @BigAlloc(i64 noundef %1) #4
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzBigFree(i8* nocapture noundef readnone %0, i8* noundef %1) #0 {
  call void @BigFree(i8* noundef %1) #4
  ret void
}

declare dso_local i8* @BigAlloc(i64 noundef) #2

declare dso_local void @BigFree(i8* noundef) #2

declare dso_local i8* @Lzma2Enc_Create(%struct.ISzAlloc* noundef, %struct.ISzAlloc* noundef) #2

declare dso_local i32 @Lzma2Enc_SetProps(i8* noundef, %struct.CLzma2EncProps* noundef) #2

declare dso_local zeroext i8 @Lzma2Enc_WriteProperties(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @MyWrite(i8* nocapture noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.ISeqOutStream**
  %6 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %7 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %6, i64 0, i32 0
  %8 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %7, align 8
  %.cast = bitcast %struct.ISeqOutStream* %6 to i8*
  %9 = call i64 %8(i8* noundef %.cast, i8* noundef %1, i64 noundef %2) #4
  %10 = getelementptr inbounds i8, i8* %0, i64 16
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, %9
  store i64 %13, i64* %11, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SeqCheckInStream_Read(i8* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.ISeqInStream**
  %6 = load %struct.ISeqInStream*, %struct.ISeqInStream** %5, align 8
  %7 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %6, i64 0, i32 0
  %8 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %7, align 8
  %.cast = bitcast %struct.ISeqInStream* %6 to i8*
  %9 = call i32 %8(i8* noundef %.cast, i8* noundef %1, i64* noundef %2) #4
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to %struct.CXzCheck*
  %12 = load i64, i64* %2, align 8
  call void @XzCheck_Update(%struct.CXzCheck* noundef nonnull %11, i8* noundef %1, i64 noundef %12) #4
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  ret i32 %9
}

declare dso_local i32 @Lzma2Enc_Encode(i8* noundef, %struct.ISeqOutStream* noundef, %struct.ISeqInStream* noundef, %struct.ICompressProgress* noundef) #2

declare dso_local i32 @XzFlags_GetCheckSize(i16 noundef zeroext) #2

declare dso_local void @XzCheck_Update(%struct.CXzCheck* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @Lzma2Enc_Destroy(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
