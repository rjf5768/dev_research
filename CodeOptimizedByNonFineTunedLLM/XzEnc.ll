; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzEnc.c'
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
  %3 = alloca i16, align 2
  %4 = alloca %struct.ISeqOutStream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  store i16 %0, i16* %3, align 2
  store %struct.ISeqOutStream* %1, %struct.ISeqOutStream** %4, align 8
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i64 0, i64 0), i64 6, i1 false)
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 6
  store i8 %11, i8* %12, align 1
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  %20 = call i32 @CrcCalc(i8* noundef %19, i64 noundef 2)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 6
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = bitcast i8* %24 to i32*
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %4, align 8
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %28 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %26, i8* noundef %27, i32 noundef 12)
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CrcCalc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @WriteBytes(%struct.ISeqOutStream* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ISeqOutStream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ISeqOutStream* %0, %struct.ISeqOutStream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %4, align 8
  %8 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %7, i32 0, i32 0
  %9 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %8, align 8
  %10 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %4, align 8
  %11 = bitcast %struct.ISeqOutStream* %10 to i8*
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 %9(i8* noundef %11, i8* noundef %12, i64 noundef %14)
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 9
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzBlock_WriteHeader(%struct.CXzBlock* noundef %0, %struct.ISeqOutStream* noundef %1) #0 {
  %3 = alloca %struct.CXzBlock*, align 8
  %4 = alloca %struct.ISeqOutStream*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.CXzFilter*, align 8
  store %struct.CXzBlock* %0, %struct.CXzBlock** %3, align 8
  store %struct.ISeqOutStream* %1, %struct.ISeqOutStream** %4, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %11 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %10, i32 0, i32 2
  %12 = load i8, i8* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %15
  store i8 %12, i8* %16, align 1
  %17 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %18 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %17, i32 0, i32 2
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %29 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @Xz_WriteVarInt(i8* noundef %27, i64 noundef %30)
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %36 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %47 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @Xz_WriteVarInt(i8* noundef %45, i64 noundef %48)
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %41, %34
  %53 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %54 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 8
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %106, %52
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %59
  %64 = load %struct.CXzBlock*, %struct.CXzBlock** %3, align 8
  %65 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %64, i32 0, i32 3
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %65, i64 0, i64 %67
  store %struct.CXzFilter* %68, %struct.CXzFilter** %9, align 8
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load %struct.CXzFilter*, %struct.CXzFilter** %9, align 8
  %74 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @Xz_WriteVarInt(i8* noundef %72, i64 noundef %75)
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.CXzFilter*, %struct.CXzFilter** %9, align 8
  %84 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = call i32 @Xz_WriteVarInt(i8* noundef %82, i64 noundef %86)
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load %struct.CXzFilter*, %struct.CXzFilter** %9, align 8
  %95 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %94, i32 0, i32 2
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %95, i64 0, i64 0
  %97 = load %struct.CXzFilter*, %struct.CXzFilter** %9, align 8
  %98 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = zext i32 %99 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 4 %96, i64 %100, i1 false)
  %101 = load %struct.CXzFilter*, %struct.CXzFilter** %9, align 8
  %102 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %63
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %59, !llvm.loop !4

109:                                              ; preds = %59
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %117
  store i8 0, i8* %118, align 1
  br label %110, !llvm.loop !6

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = lshr i32 %120, 2
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 %122, i8* %123, align 16
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = call i32 @CrcCalc(i8* noundef %124, i64 noundef %126)
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i32*
  store i32 %127, i32* %132, align 4
  %133 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %4, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %135 = load i32, i32* %6, align 4
  %136 = add i32 %135, 4
  %137 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %133, i8* noundef %134, i32 noundef %136)
  ret i32 %137
}

declare dso_local i32 @Xz_WriteVarInt(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_WriteFooter(%struct.CXzStream* noundef %0, %struct.ISeqOutStream* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CXzStream*, align 8
  %5 = alloca %struct.ISeqOutStream*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.CXzBlockSizes*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.CXzStream* %0, %struct.CXzStream** %4, align 8
  store %struct.ISeqOutStream* %1, %struct.ISeqOutStream** %5, align 8
  store i32 -1, i32* %8, align 4
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load %struct.CXzStream*, %struct.CXzStream** %4, align 8
  %20 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @Xz_WriteVarInt(i8* noundef %18, i64 noundef %21)
  %23 = add i32 1, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %27, i8* noundef %28, i32 noundef %29, i32* noundef %8)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %151

35:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %76, %35
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.CXzStream*, %struct.CXzStream** %4, align 8
  %39 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %36
  %43 = load %struct.CXzStream*, %struct.CXzStream** %4, align 8
  %44 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %43, i32 0, i32 3
  %45 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %45, i64 %46
  store %struct.CXzBlockSizes* %47, %struct.CXzBlockSizes** %12, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %49 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %12, align 8
  %50 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @Xz_WriteVarInt(i8* noundef %48, i64 noundef %51)
  store i32 %52, i32* %9, align 4
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %12, align 8
  %58 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @Xz_WriteVarInt(i8* noundef %56, i64 noundef %59)
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %67, i8* noundef %68, i32 noundef %69, i32* noundef %8)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %42
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %3, align 4
  br label %151

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %36, !llvm.loop !7

79:                                               ; preds = %36
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = and i32 %81, 3
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %86, align 2
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %88, align 16
  %89 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %91 = load i32, i32* %9, align 4
  %92 = sub i32 4, %91
  %93 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %89, i8* noundef %90, i32 noundef %92, i32* noundef %8)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %3, align 4
  br label %151

98:                                               ; preds = %85
  %99 = load i32, i32* %9, align 4
  %100 = sub i32 4, %99
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %98, %79
  %105 = load i32, i32* %8, align 4
  %106 = xor i32 %105, -1
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 16
  %109 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %111 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %109, i8* noundef %110, i32 noundef 4)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %3, align 4
  br label %151

116:                                              ; preds = %104
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = lshr i64 %119, 2
  %121 = sub i64 %120, 1
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  %126 = bitcast i8* %125 to i32*
  store i32 %123, i32* %126, align 4
  %127 = load %struct.CXzStream*, %struct.CXzStream** %4, align 8
  %128 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %127, i32 0, i32 0
  %129 = load i16, i16* %128, align 8
  %130 = zext i16 %129 to i32
  %131 = ashr i32 %130, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 8
  store i8 %132, i8* %133, align 8
  %134 = load %struct.CXzStream*, %struct.CXzStream** %4, align 8
  %135 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %134, i32 0, i32 0
  %136 = load i16, i16* %135, align 8
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 9
  store i8 %139, i8* %140, align 1
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = call i32 @CrcCalc(i8* noundef %142, i64 noundef 6)
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %145 = bitcast i8* %144 to i32*
  store i32 %143, i32* %145, align 16
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %147 = getelementptr inbounds i8, i8* %146, i64 10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %147, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i64 0, i64 0), i64 2, i1 false)
  %148 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %150 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %148, i8* noundef %149, i32 noundef 12)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %116, %114, %96, %73, %33
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @WriteBytesAndCrc(%struct.ISeqOutStream* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca %struct.ISeqOutStream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ISeqOutStream* %0, %struct.ISeqOutStream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = call i32 @CrcUpdate(i32 noundef %10, i8* noundef %11, i64 noundef %13)
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %16, i8* noundef %17, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_AddIndexRecord(%struct.CXzStream* noundef %0, i64 noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CXzStream*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ISzAlloc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.CXzBlockSizes*, align 8
  %13 = alloca %struct.CXzBlockSizes*, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ISzAlloc* %3, %struct.ISzAlloc** %9, align 8
  %14 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %15 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %14, i32 0, i32 3
  %16 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %15, align 8
  %17 = icmp eq %struct.CXzBlockSizes* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %20 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %23 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %18, %4
  %27 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %28 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = mul i64 %30, 2
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = mul i64 16, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = udiv i64 %34, 16
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 2, i32* %5, align 4
  br label %91

39:                                               ; preds = %26
  %40 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %41 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %40, i32 0, i32 0
  %42 = load i8* (i8*, i64)*, i8* (i8*, i64)** %41, align 8
  %43 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %44 = bitcast %struct.ISzAlloc* %43 to i8*
  %45 = load i64, i64* %11, align 8
  %46 = call i8* %42(i8* noundef %44, i64 noundef %45)
  %47 = bitcast i8* %46 to %struct.CXzBlockSizes*
  store %struct.CXzBlockSizes* %47, %struct.CXzBlockSizes** %12, align 8
  %48 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %12, align 8
  %49 = icmp eq %struct.CXzBlockSizes* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 2, i32* %5, align 4
  br label %91

51:                                               ; preds = %39
  %52 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %53 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %12, align 8
  %58 = bitcast %struct.CXzBlockSizes* %57 to i8*
  %59 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %60 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %59, i32 0, i32 3
  %61 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %60, align 8
  %62 = bitcast %struct.CXzBlockSizes* %61 to i8*
  %63 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %64 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = mul i64 %65, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %62, i64 %66, i1 false)
  %67 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %68 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  call void @Xz_Free(%struct.CXzStream* noundef %67, %struct.ISzAlloc* noundef %68)
  br label %69

69:                                               ; preds = %56, %51
  %70 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %12, align 8
  %71 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %72 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %71, i32 0, i32 3
  store %struct.CXzBlockSizes* %70, %struct.CXzBlockSizes** %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %75 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %69, %18
  %77 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %78 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %77, i32 0, i32 3
  %79 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %78, align 8
  %80 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %81 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %79, i64 %82
  store %struct.CXzBlockSizes* %84, %struct.CXzBlockSizes** %13, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %13, align 8
  %87 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %13, align 8
  %90 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %76, %50, %38
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local void @Xz_Free(%struct.CXzStream* noundef, %struct.ISzAlloc* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CSeqCheckInStream*, align 8
  %4 = alloca i32, align 4
  store %struct.CSeqCheckInStream* %0, %struct.CSeqCheckInStream** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %3, align 8
  %6 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %3, align 8
  %8 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %7, i32 0, i32 3
  %9 = load i32, i32* %4, align 4
  call void @XzCheck_Init(%struct.CXzCheck* noundef %8, i32 noundef %9)
  ret void
}

declare dso_local void @XzCheck_Init(%struct.CXzCheck* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.CSeqCheckInStream*, align 8
  %4 = alloca i8*, align 8
  store %struct.CSeqCheckInStream* %0, %struct.CSeqCheckInStream** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %3, align 8
  %6 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %5, i32 0, i32 3
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @XzCheck_Final(%struct.CXzCheck* noundef %6, i8* noundef %7)
  ret void
}

declare dso_local i32 @XzCheck_Final(%struct.CXzCheck* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_Encode(%struct.ISeqOutStream* noundef %0, %struct.ISeqInStream* noundef %1, %struct.CLzma2EncProps* noundef %2, i32 noundef %3, %struct.ICompressProgress* noundef %4) #0 {
  %6 = alloca %struct.ISeqOutStream*, align 8
  %7 = alloca %struct.ISeqInStream*, align 8
  %8 = alloca %struct.CLzma2EncProps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ICompressProgress*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.CXzStream, align 8
  %13 = alloca %struct.CLzma2WithFilters, align 8
  store %struct.ISeqOutStream* %0, %struct.ISeqOutStream** %6, align 8
  store %struct.ISeqInStream* %1, %struct.ISeqInStream** %7, align 8
  store %struct.CLzma2EncProps* %2, %struct.CLzma2EncProps** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ICompressProgress* %4, %struct.ICompressProgress** %10, align 8
  call void @Xz_Construct(%struct.CXzStream* noundef %12)
  call void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* noundef %13, %struct.ISzAlloc* noundef @g_Alloc, %struct.ISzAlloc* noundef @g_BigAlloc)
  %14 = call i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* noundef %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %6, align 8
  %19 = load %struct.ISeqInStream*, %struct.ISeqInStream** %7, align 8
  %20 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ICompressProgress*, %struct.ICompressProgress** %10, align 8
  %23 = call i32 @Xz_Compress(%struct.CXzStream* noundef %12, %struct.CLzma2WithFilters* noundef %13, %struct.ISeqOutStream* noundef %18, %struct.ISeqInStream* noundef %19, %struct.CLzma2EncProps* noundef %20, i32 noundef %21, %struct.ICompressProgress* noundef %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %17, %5
  call void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* noundef %13)
  call void @Xz_Free(%struct.CXzStream* noundef %12, %struct.ISzAlloc* noundef @g_Alloc)
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local void @Xz_Construct(%struct.CXzStream* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* noundef %0, %struct.ISzAlloc* noundef %1, %struct.ISzAlloc* noundef %2) #0 {
  %4 = alloca %struct.CLzma2WithFilters*, align 8
  %5 = alloca %struct.ISzAlloc*, align 8
  %6 = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzma2WithFilters* %0, %struct.CLzma2WithFilters** %4, align 8
  store %struct.ISzAlloc* %1, %struct.ISzAlloc** %5, align 8
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %6, align 8
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %5, align 8
  %8 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %4, align 8
  %9 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %8, i32 0, i32 1
  store %struct.ISzAlloc* %7, %struct.ISzAlloc** %9, align 8
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %6, align 8
  %11 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %4, align 8
  %12 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %11, i32 0, i32 2
  store %struct.ISzAlloc* %10, %struct.ISzAlloc** %12, align 8
  %13 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %4, align 8
  %14 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %13, i32 0, i32 0
  store i8* null, i8** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CLzma2WithFilters*, align 8
  store %struct.CLzma2WithFilters* %0, %struct.CLzma2WithFilters** %3, align 8
  %4 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %3, align 8
  %5 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %4, i32 0, i32 1
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %5, align 8
  %7 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %3, align 8
  %8 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %7, i32 0, i32 2
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %8, align 8
  %10 = call i8* @Lzma2Enc_Create(%struct.ISzAlloc* noundef %6, %struct.ISzAlloc* noundef %9)
  %11 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %3, align 8
  %12 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %3, align 8
  %14 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_Compress(%struct.CXzStream* noundef %0, %struct.CLzma2WithFilters* noundef %1, %struct.ISeqOutStream* noundef %2, %struct.ISeqInStream* noundef %3, %struct.CLzma2EncProps* noundef %4, i32 noundef %5, %struct.ICompressProgress* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.CXzStream*, align 8
  %10 = alloca %struct.CLzma2WithFilters*, align 8
  %11 = alloca %struct.ISeqOutStream*, align 8
  %12 = alloca %struct.ISeqInStream*, align 8
  %13 = alloca %struct.CLzma2EncProps*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ICompressProgress*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.CSeqCheckInStream, align 8
  %19 = alloca %struct.CSeqSizeOutStream, align 8
  %20 = alloca %struct.CXzBlock, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.CXzFilter*, align 8
  %23 = alloca %struct.CXzFilter*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [128 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.CXzStream* %0, %struct.CXzStream** %9, align 8
  store %struct.CLzma2WithFilters* %1, %struct.CLzma2WithFilters** %10, align 8
  store %struct.ISeqOutStream* %2, %struct.ISeqOutStream** %11, align 8
  store %struct.ISeqInStream* %3, %struct.ISeqInStream** %12, align 8
  store %struct.CLzma2EncProps* %4, %struct.CLzma2EncProps** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ICompressProgress* %6, %struct.ICompressProgress** %15, align 8
  %32 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %33 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %32, i32 0, i32 0
  store i16 1, i16* %33, align 8
  %34 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %10, align 8
  %35 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %13, align 8
  %38 = call i32 @Lzma2Enc_SetProps(i8* noundef %36, %struct.CLzma2EncProps* noundef %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %8, align 4
  br label %188

43:                                               ; preds = %7
  %44 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %45 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 8
  %47 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %11, align 8
  %48 = call i32 @Xz_WriteHeader(i16 noundef zeroext %46, %struct.ISeqOutStream* noundef %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %188

53:                                               ; preds = %43
  store i32 0, i32* %21, align 4
  %54 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 2
  store i8 0, i8* %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = add nsw i32 1, %58
  %60 = sub nsw i32 %59, 1
  %61 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 2
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %60
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 8
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 3
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %69, i64 0, i64 %72
  store %struct.CXzFilter* %73, %struct.CXzFilter** %22, align 8
  %74 = load %struct.CXzFilter*, %struct.CXzFilter** %22, align 8
  %75 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %74, i32 0, i32 0
  store i64 1, i64* %75, align 8
  %76 = load %struct.CXzFilter*, %struct.CXzFilter** %22, align 8
  %77 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %53
  %79 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 3
  %80 = load i32, i32* %21, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %21, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %79, i64 0, i64 %82
  store %struct.CXzFilter* %83, %struct.CXzFilter** %23, align 8
  %84 = load %struct.CXzFilter*, %struct.CXzFilter** %23, align 8
  %85 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %84, i32 0, i32 0
  store i64 33, i64* %85, align 8
  %86 = load %struct.CXzFilter*, %struct.CXzFilter** %23, align 8
  %87 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %10, align 8
  %89 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call zeroext i8 @Lzma2Enc_WriteProperties(i8* noundef %90)
  %92 = load %struct.CXzFilter*, %struct.CXzFilter** %23, align 8
  %93 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %92, i32 0, i32 2
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %93, i64 0, i64 0
  store i8 %91, i8* %94, align 4
  %95 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 0
  %96 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %95, i32 0, i32 0
  store i64 (i8*, i8*, i64)* @MyWrite, i64 (i8*, i8*, i64)** %96, align 8
  %97 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %11, align 8
  %98 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 1
  store %struct.ISeqOutStream* %97, %struct.ISeqOutStream** %98, align 8
  %99 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 0
  %101 = call i32 @XzBlock_WriteHeader(%struct.CXzBlock* noundef %20, %struct.ISeqOutStream* noundef %100)
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %78
  %105 = load i32, i32* %24, align 4
  store i32 %105, i32* %8, align 4
  br label %188

106:                                              ; preds = %78
  %107 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %18, i32 0, i32 0
  %108 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %107, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SeqCheckInStream_Read, i32 (i8*, i8*, i64*)** %108, align 8
  %109 = load %struct.ISeqInStream*, %struct.ISeqInStream** %12, align 8
  %110 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %18, i32 0, i32 1
  store %struct.ISeqInStream* %109, %struct.ISeqInStream** %110, align 8
  %111 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %112 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %111, i32 0, i32 0
  %113 = load i16, i16* %112, align 8
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 15
  call void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* noundef %18, i32 noundef %115)
  %116 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %25, align 8
  %118 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %10, align 8
  %119 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 0
  %122 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %18, i32 0, i32 0
  %123 = load %struct.ICompressProgress*, %struct.ICompressProgress** %15, align 8
  %124 = call i32 @Lzma2Enc_Encode(i8* noundef %120, %struct.ISeqOutStream* noundef %121, %struct.ISeqInStream* noundef %122, %struct.ICompressProgress* noundef %123)
  store i32 %124, i32* %26, align 4
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %27, align 4
  %126 = load i32, i32* %27, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %106
  %129 = load i32, i32* %27, align 4
  store i32 %129, i32* %8, align 4
  br label %188

130:                                              ; preds = %106
  %131 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %18, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %25, align 8
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  store i32 0, i32* %28, align 4
  br label %139

139:                                              ; preds = %147, %130
  %140 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %28, align 4
  %144 = add i32 %142, %143
  %145 = and i32 %144, 3
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i32, i32* %28, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %28, align 4
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 %150
  store i8 0, i8* %151, align 1
  br label %139, !llvm.loop !8

152:                                              ; preds = %139
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %154 = load i32, i32* %28, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  call void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* noundef %18, i8* noundef %156)
  %157 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 0
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %159 = load i32, i32* %28, align 4
  %160 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %161 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %160, i32 0, i32 0
  %162 = load i16, i16* %161, align 8
  %163 = call i32 @XzFlags_GetCheckSize(i16 noundef zeroext %162)
  %164 = add i32 %159, %163
  %165 = call i32 @WriteBytes(%struct.ISeqOutStream* noundef %157, i8* noundef %158, i32 noundef %164)
  store i32 %165, i32* %30, align 4
  %166 = load i32, i32* %30, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %152
  %169 = load i32, i32* %30, align 4
  store i32 %169, i32* %8, align 4
  br label %188

170:                                              ; preds = %152
  %171 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %172 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %19, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %28, align 4
  %177 = zext i32 %176 to i64
  %178 = sub i64 %175, %177
  %179 = call i32 @Xz_AddIndexRecord(%struct.CXzStream* noundef %171, i64 noundef %173, i64 noundef %178, %struct.ISzAlloc* noundef @g_Alloc)
  store i32 %179, i32* %31, align 4
  %180 = load i32, i32* %31, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %31, align 4
  store i32 %183, i32* %8, align 4
  br label %188

184:                                              ; preds = %170
  %185 = load %struct.CXzStream*, %struct.CXzStream** %9, align 8
  %186 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %11, align 8
  %187 = call i32 @Xz_WriteFooter(%struct.CXzStream* noundef %185, %struct.ISeqOutStream* noundef %186)
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %184, %182, %168, %128, %104, %51, %41
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind uwtable
define internal void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* noundef %0) #0 {
  %2 = alloca %struct.CLzma2WithFilters*, align 8
  store %struct.CLzma2WithFilters* %0, %struct.CLzma2WithFilters** %2, align 8
  %3 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %2, align 8
  %4 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %2, align 8
  %9 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @Lzma2Enc_Destroy(i8* noundef %10)
  %11 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %2, align 8
  %12 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %11, i32 0, i32 0
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_EncodeEmpty(%struct.ISeqOutStream* noundef %0) #0 {
  %2 = alloca %struct.ISeqOutStream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CXzStream, align 8
  store %struct.ISeqOutStream* %0, %struct.ISeqOutStream** %2, align 8
  call void @Xz_Construct(%struct.CXzStream* noundef %4)
  %5 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 8
  %7 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %2, align 8
  %8 = call i32 @Xz_WriteHeader(i16 noundef zeroext %6, %struct.ISeqOutStream* noundef %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %2, align 8
  %13 = call i32 @Xz_WriteFooter(%struct.CXzStream* noundef %4, %struct.ISeqOutStream* noundef %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  call void @Xz_Free(%struct.CXzStream* noundef %4, %struct.ISzAlloc* noundef @g_Alloc)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @CrcUpdate(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @MyAlloc(i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @MyFree(i8* noundef %6)
  ret void
}

declare dso_local i8* @MyAlloc(i64 noundef) #2

declare dso_local void @MyFree(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzBigAlloc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @BigAlloc(i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzBigFree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @BigFree(i8* noundef %6)
  ret void
}

declare dso_local i8* @BigAlloc(i64 noundef) #2

declare dso_local void @BigFree(i8* noundef) #2

declare dso_local i8* @Lzma2Enc_Create(%struct.ISzAlloc* noundef, %struct.ISzAlloc* noundef) #2

declare dso_local i32 @Lzma2Enc_SetProps(i8* noundef, %struct.CLzma2EncProps* noundef) #2

declare dso_local zeroext i8 @Lzma2Enc_WriteProperties(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @MyWrite(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.CSeqSizeOutStream*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CSeqSizeOutStream*
  store %struct.CSeqSizeOutStream* %9, %struct.CSeqSizeOutStream** %7, align 8
  %10 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %7, align 8
  %11 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %10, i32 0, i32 1
  %12 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %11, align 8
  %13 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %12, i32 0, i32 0
  %14 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %13, align 8
  %15 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %7, align 8
  %16 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %15, i32 0, i32 1
  %17 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %16, align 8
  %18 = bitcast %struct.ISeqOutStream* %17 to i8*
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 %14(i8* noundef %18, i8* noundef %19, i64 noundef %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %7, align 8
  %24 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load i64, i64* %6, align 8
  ret i64 %27
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SeqCheckInStream_Read(i8* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.CSeqCheckInStream*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.CSeqCheckInStream*
  store %struct.CSeqCheckInStream* %10, %struct.CSeqCheckInStream** %7, align 8
  %11 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %7, align 8
  %12 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %11, i32 0, i32 1
  %13 = load %struct.ISeqInStream*, %struct.ISeqInStream** %12, align 8
  %14 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %13, i32 0, i32 0
  %15 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %14, align 8
  %16 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %7, align 8
  %17 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %16, i32 0, i32 1
  %18 = load %struct.ISeqInStream*, %struct.ISeqInStream** %17, align 8
  %19 = bitcast %struct.ISeqInStream* %18 to i8*
  %20 = load i8*, i8** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 %15(i8* noundef %19, i8* noundef %20, i64* noundef %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %7, align 8
  %24 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %23, i32 0, i32 3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  call void @XzCheck_Update(%struct.CXzCheck* noundef %24, i8* noundef %25, i64 noundef %27)
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %7, align 8
  %31 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @Lzma2Enc_Encode(i8* noundef, %struct.ISeqOutStream* noundef, %struct.ISeqInStream* noundef, %struct.ICompressProgress* noundef) #2

declare dso_local i32 @XzFlags_GetCheckSize(i16 noundef zeroext) #2

declare dso_local void @XzCheck_Update(%struct.CXzCheck* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @Lzma2Enc_Destroy(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
