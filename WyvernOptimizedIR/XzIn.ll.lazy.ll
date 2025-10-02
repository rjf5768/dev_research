; ModuleID = './XzIn.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.CXzs = type { i64, i64, %struct.CXzStream* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

@XZ_SIG = external dso_local global [6 x i8], align 1
@XZ_FOOTER_SIG = external dso_local global [2 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_ReadHeader(i16* noundef %0, %struct.ISeqInStream* noundef %1) #0 {
  %3 = alloca [12 x i8], align 1
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %5 = call i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %1, i8* noundef nonnull %4, i64 noundef 12, i32 noundef 17) #7
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %8, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i64 0, i64 0), i64 6)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %12 = call i32 @Xz_ParseHeader(i16* noundef %0, i8* noundef nonnull %11) #7
  br label %13

13:                                               ; preds = %10, %9, %6
  %.0 = phi i32 [ %5, %6 ], [ 17, %9 ], [ %12, %10 ]
  ret i32 %.0
}

declare dso_local i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @Xz_ParseHeader(i16* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzBlock_ReadHeader(%struct.CXzBlock* noundef %0, %struct.ISeqInStream* noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %7 = call i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef %1, i8* noundef nonnull %6) #7
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %11 = load i8, i8* %10, align 16
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 2
  br i1 false, label %14, label %15

14:                                               ; preds = %9
  br label %25

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %13, 4
  store i32 0, i32* %2, align 4
  store i32 %16, i32* %3, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1
  %18 = or i32 %13, 3
  %19 = zext i32 %18 to i64
  %20 = call i32 @SeqInStream_Read(%struct.ISeqInStream* noundef %1, i8* noundef nonnull %17, i64 noundef %19) #7
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %15
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %24 = call i32 @XzBlock_Parse(%struct.CXzBlock* noundef %0, i8* noundef nonnull %23) #7
  br label %25

25:                                               ; preds = %22, %21, %14, %8
  %.0 = phi i32 [ %7, %8 ], [ 0, %14 ], [ %20, %21 ], [ %24, %22 ]
  ret i32 %.0
}

declare dso_local i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef, i8* noundef) #1

declare dso_local i32 @SeqInStream_Read(%struct.ISeqInStream* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @XzBlock_Parse(%struct.CXzBlock* noundef, i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Xz_GetUnpackSize(%struct.CXzStream* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %15, %1
  %.02 = phi i64 [ 0, %1 ], [ %11, %15 ]
  %.01 = phi i64 [ 0, %1 ], [ %16, %15 ]
  %3 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %.01, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %8 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %7, align 8
  %9 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %8, i64 %.01, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %.02, %10
  %12 = icmp ult i64 %11, %.02
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %18

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = add i64 %.01, 1
  br label %2, !llvm.loop !4

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %.0 = phi i64 [ -1, %13 ], [ %.02, %17 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Xz_GetPackSize(%struct.CXzStream* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %17, %1
  %.02 = phi i64 [ 0, %1 ], [ %13, %17 ]
  %.01 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %3 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %.01, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %8 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %7, align 8
  %9 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %8, i64 %.01, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, 3
  %12 = and i64 %11, -4
  %13 = add i64 %.02, %12
  %14 = icmp ult i64 %13, %.02
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %20

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = add i64 %.01, 1
  br label %2, !llvm.loop !6

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %.0 = phi i64 [ -1, %15 ], [ %.02, %19 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Xzs_Construct(%struct.CXzs* nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xzs_Free(%struct.CXzs* nocapture noundef %0, %struct.ISzAlloc* noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.0 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %4 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %.0, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %9 = load %struct.CXzStream*, %struct.CXzStream** %8, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i64 %.0
  call void @Xz_Free(%struct.CXzStream* noundef %10, %struct.ISzAlloc* noundef %1) #7
  br label %11

11:                                               ; preds = %7
  %12 = add i64 %.0, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %1, i64 0, i32 1
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %14, align 8
  %16 = bitcast %struct.ISzAlloc* %1 to i8*
  %17 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %18 = bitcast %struct.CXzStream** %17 to i8**
  %19 = load i8*, i8** %18, align 8
  call void %15(i8* noundef %16, i8* noundef %19) #7
  %20 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %22, align 8
  ret void
}

declare dso_local void @Xz_Free(%struct.CXzStream* noundef, %struct.ISzAlloc* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Xzs_GetNumBlocks(%struct.CXzs* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %7, %1
  %.01 = phi i64 [ 0, %1 ], [ %12, %7 ]
  %.0 = phi i64 [ 0, %1 ], [ %13, %7 ]
  %3 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %.0, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %9 = load %struct.CXzStream*, %struct.CXzStream** %8, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i64 %.0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %.01, %11
  %13 = add i64 %.0, 1
  br label %2, !llvm.loop !8

14:                                               ; preds = %2
  ret i64 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Xzs_GetUnpackSize(%struct.CXzs* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %15, %1
  %.02 = phi i64 [ 0, %1 ], [ %11, %15 ]
  %.01 = phi i64 [ 0, %1 ], [ %16, %15 ]
  %3 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %.01, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %8 = load %struct.CXzStream*, %struct.CXzStream** %7, align 8
  %9 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %8, i64 %.01
  %10 = call i64 @Xz_GetUnpackSize(%struct.CXzStream* noundef %9)
  %11 = add i64 %.02, %10
  %12 = icmp ult i64 %11, %.02
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %18

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = add i64 %.01, 1
  br label %2, !llvm.loop !9

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %.0 = phi i64 [ -1, %13 ], [ %.02, %17 ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xzs_ReadBackward(%struct.CXzs* nocapture noundef %0, %struct.ILookInStream* noundef %1, i64* noundef %2, %struct.ICompressProgress* noundef %3, %struct.ISzAlloc* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.CXzStream, align 8
  store i64 0, i64* %6, align 8
  %8 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %1, i64 0, i32 3
  %9 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %8, align 8
  %10 = bitcast %struct.ILookInStream* %1 to i8*
  %11 = call i32 %9(i8* noundef %10, i64* noundef nonnull %6, i32 noundef 2) #7
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %5
  br label %85

13:                                               ; preds = %5
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %83, %13
  call void @Xz_Construct(%struct.CXzStream* noundef nonnull %7) #7
  %16 = call i32 @Xz_ReadBackward(%struct.CXzStream* noundef nonnull %7, %struct.ILookInStream* noundef %1, i64* noundef nonnull %2, %struct.ISzAlloc* noundef %4)
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %7, i64 0, i32 4
  store i64 %17, i64* %18, align 8
  %.not7 = icmp eq i32 %16, 0
  br i1 %.not7, label %20, label %19

19:                                               ; preds = %15
  br label %85

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = lshr i64 %28, 2
  %30 = add i64 %28, %29
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %4, i64 0, i32 0
  %33 = load i8* (i8*, i64)*, i8* (i8*, i64)** %32, align 8
  %34 = bitcast %struct.ISzAlloc* %4 to i8*
  %35 = mul i64 %31, 40
  %36 = call i8* %33(i8* noundef %34, i64 noundef %35) #7
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %85

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 1
  store i64 %31, i64* %40, align 8
  %41 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %42 = bitcast %struct.CXzStream** %41 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %36, i8* align 8 %43, i64 %46, i1 false)
  %47 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %4, i64 0, i32 1
  %48 = load void (i8*, i8*)*, void (i8*, i8*)** %47, align 8
  %49 = bitcast %struct.ISzAlloc* %4 to i8*
  %50 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %51 = bitcast %struct.CXzStream** %50 to i8**
  %52 = load i8*, i8** %51, align 8
  call void %48(i8* noundef %49, i8* noundef %52) #7
  %53 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %54 = bitcast %struct.CXzStream** %53 to i8**
  store i8* %36, i8** %54, align 8
  br label %55

55:                                               ; preds = %39, %20
  %56 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 2
  %57 = load %struct.CXzStream*, %struct.CXzStream** %56, align 8
  %58 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i64 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %57, i64 %59
  %62 = bitcast %struct.CXzStream* %61 to i8*
  %63 = bitcast %struct.CXzStream* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %62, i8* noundef nonnull align 8 dereferenceable(40) %63, i64 40, i1 false)
  %64 = load i64, i64* %2, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %84

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %1, i64 0, i32 3
  %69 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %68, align 8
  %70 = bitcast %struct.ILookInStream* %1 to i8*
  %71 = call i32 %69(i8* noundef %70, i64* noundef nonnull %2, i32 noundef 0) #7
  %.not8 = icmp eq i32 %71, 0
  br i1 %.not8, label %73, label %72

72:                                               ; preds = %67
  br label %85

73:                                               ; preds = %67
  %.not9 = icmp eq %struct.ICompressProgress* %3, null
  br i1 %.not9, label %83, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %3, i64 0, i32 0
  %76 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %75, align 8
  %77 = bitcast %struct.ICompressProgress* %3 to i8*
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %2, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i32 %76(i8* noundef nonnull %77, i64 noundef %80, i64 noundef -1) #7
  %.not10 = icmp eq i32 %81, 0
  br i1 %.not10, label %83, label %82

82:                                               ; preds = %74
  br label %85

83:                                               ; preds = %74, %73
  br label %15

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %82, %72, %38, %19, %12
  %.0 = phi i32 [ %11, %12 ], [ %16, %19 ], [ 2, %38 ], [ 0, %84 ], [ %71, %72 ], [ 10, %82 ]
  ret i32 %.0
}

declare dso_local void @Xz_Construct(%struct.CXzStream* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadBackward(%struct.CXzStream* noundef %0, %struct.ILookInStream* noundef %1, i64* noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca [12 x i8], align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i16, align 2
  %8 = alloca %struct.CSecToRead, align 8
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, 3
  %.not = icmp eq i64 %10, 0
  br i1 %.not, label %11, label %14

11:                                               ; preds = %4
  %12 = load i64, i64* %2, align 8
  %13 = icmp slt i64 %12, 12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %4
  br label %146

15:                                               ; preds = %11
  store i64 -12, i64* %2, align 8
  %16 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %1, i64* noundef nonnull %2)
  %.not9 = icmp eq i32 %16, 0
  br i1 %.not9, label %18, label %17

17:                                               ; preds = %15
  br label %146

18:                                               ; preds = %15
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %20 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %1, i8* noundef nonnull %19, i64 noundef 12, i32 noundef 17) #7
  %.not10 = icmp eq i32 %20, 0
  br i1 %.not10, label %22, label %21

21:                                               ; preds = %18
  br label %146

22:                                               ; preds = %18
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 10
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %23, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i64 0, i64 0), i64 2)
  %.not11 = icmp eq i32 %bcmp, 0
  br i1 %.not11, label %90, label %24

24:                                               ; preds = %22
  %25 = load i64, i64* %2, align 8
  %26 = add nsw i64 %25, 12
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %88, %24
  %.02 = phi i64 [ 0, %24 ], [ %41, %88 ]
  %28 = load i64, i64* %2, align 8
  %29 = icmp slt i64 %28, 12
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = icmp sgt i64 %.02, 65536
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %27
  br label %146

33:                                               ; preds = %30
  %34 = load i64, i64* %2, align 8
  %35 = icmp sgt i64 %34, 1024
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %2, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 1024, %36 ], [ %38, %37 ]
  %41 = add i64 %.02, %40
  %42 = sub nsw i64 0, %40
  store i64 %42, i64* %2, align 8
  %43 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %1, i64* noundef nonnull %2)
  %.not17 = icmp eq i32 %43, 0
  br i1 %.not17, label %45, label %44

44:                                               ; preds = %39
  br label %146

45:                                               ; preds = %39
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %47 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %1, i8* noundef nonnull %46, i64 noundef %40, i32 noundef 17) #7
  %.not18 = icmp eq i32 %47, 0
  br i1 %.not18, label %49, label %48

48:                                               ; preds = %45
  br label %146

49:                                               ; preds = %45
  %50 = trunc i64 %40 to i32
  br label %51

51:                                               ; preds = %60, %49
  %.01 = phi i32 [ %50, %49 ], [ %61, %60 ]
  %52 = icmp sgt i32 %.01, 0
  br i1 %52, label %53, label %.loopexit

53:                                               ; preds = %51
  %54 = add nsw i32 %.01, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %.not25 = icmp eq i8 %57, 0
  br i1 %.not25, label %59, label %58

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.01, -1
  br label %51, !llvm.loop !10

.loopexit:                                        ; preds = %51
  br label %62

62:                                               ; preds = %.loopexit, %58
  %.not19 = icmp eq i32 %.01, 0
  br i1 %.not19, label %88, label %63

63:                                               ; preds = %62
  %64 = and i32 %.01, 3
  %.not20 = icmp eq i32 %64, 0
  br i1 %.not20, label %66, label %65

65:                                               ; preds = %63
  br label %146

66:                                               ; preds = %63
  %67 = sext i32 %.01 to i64
  %68 = load i64, i64* %2, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %2, align 8
  %70 = icmp slt i64 %69, 12
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %146

72:                                               ; preds = %66
  %73 = load i64, i64* %2, align 8
  %74 = add nsw i64 %73, -12
  store i64 %74, i64* %2, align 8
  %75 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %1, i64 0, i32 3
  %76 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %75, align 8
  %77 = bitcast %struct.ILookInStream* %1 to i8*
  %78 = call i32 %76(i8* noundef %77, i64* noundef nonnull %2, i32 noundef 0) #7
  %.not21 = icmp eq i32 %78, 0
  br i1 %.not21, label %80, label %79

79:                                               ; preds = %72
  br label %146

80:                                               ; preds = %72
  %81 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %82 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %1, i8* noundef nonnull %81, i64 noundef 12, i32 noundef 17) #7
  %.not22 = icmp eq i32 %82, 0
  br i1 %.not22, label %84, label %83

83:                                               ; preds = %80
  br label %146

84:                                               ; preds = %80
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 10
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %85, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i64 0, i64 0), i64 2)
  %.not24 = icmp eq i32 %bcmp23, 0
  br i1 %.not24, label %87, label %86

86:                                               ; preds = %84
  br label %146

87:                                               ; preds = %84
  br label %89

88:                                               ; preds = %62
  br label %27

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %22
  %91 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 8
  %92 = load i8, i8* %91, align 4
  %93 = zext i8 %92 to i16
  %94 = shl nuw i16 %93, 8
  %95 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 9
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i16
  %98 = or i16 %94, %97
  %99 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  store i16 %98, i16* %99, align 8
  %100 = icmp ult i16 %98, 16
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %146

102:                                              ; preds = %90
  %103 = bitcast [12 x i8]* %5 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 4
  %106 = call i32 @CrcCalc(i8* noundef nonnull %105, i64 noundef 6) #7
  %.not12 = icmp eq i32 %104, %106
  br i1 %.not12, label %108, label %107

107:                                              ; preds = %102
  br label %146

108:                                              ; preds = %102
  %109 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 4
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = shl nuw nsw i64 %112, 2
  %114 = add nuw nsw i64 %113, 4
  %115 = sub nuw nsw i64 -16, %113
  store i64 %115, i64* %2, align 8
  %116 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %1, i64* noundef nonnull %2)
  %.not13 = icmp eq i32 %116, 0
  br i1 %.not13, label %118, label %117

117:                                              ; preds = %108
  br label %146

118:                                              ; preds = %108
  %119 = call i32 @Xz_ReadIndex(%struct.CXzStream* noundef %0, %struct.ILookInStream* noundef %1, i64 noundef %114, %struct.ISzAlloc* noundef %3)
  %.not14 = icmp eq i32 %119, 0
  br i1 %.not14, label %121, label %120

120:                                              ; preds = %118
  br label %146

121:                                              ; preds = %118
  %122 = call i64 @Xz_GetPackSize(%struct.CXzStream* noundef %0)
  %123 = add i64 %122, 12
  %124 = add i64 %123, %114
  %125 = icmp eq i64 %122, -1
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = icmp slt i64 %124, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = icmp slt i64 %122, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %128, %126, %121
  br label %146

131:                                              ; preds = %128
  %132 = sub nsw i64 0, %124
  store i64 %132, i64* %2, align 8
  %133 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %1, i64* noundef nonnull %2)
  %.not15 = icmp eq i32 %133, 0
  br i1 %.not15, label %135, label %134

134:                                              ; preds = %131
  br label %146

135:                                              ; preds = %131
  call void @SecToRead_CreateVTable(%struct.CSecToRead* noundef nonnull %8) #7
  %136 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %8, i64 0, i32 1
  store %struct.ILookInStream* %1, %struct.ILookInStream** %136, align 8
  %137 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %8, i64 0, i32 0
  %138 = call i32 @Xz_ReadHeader(i16* noundef nonnull %7, %struct.ISeqInStream* noundef nonnull %137)
  %.not16 = icmp eq i32 %138, 0
  br i1 %.not16, label %140, label %139

139:                                              ; preds = %135
  br label %146

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  %142 = load i16, i16* %141, align 8
  %143 = load i16, i16* %7, align 2
  %144 = icmp eq i16 %142, %143
  %145 = select i1 %144, i32 0, i32 16
  br label %146

146:                                              ; preds = %140, %139, %134, %130, %120, %117, %107, %101, %86, %83, %79, %71, %65, %48, %44, %32, %21, %17, %14
  %.0 = phi i32 [ 17, %14 ], [ %16, %17 ], [ %20, %21 ], [ 17, %32 ], [ %43, %44 ], [ %47, %48 ], [ 17, %65 ], [ 17, %71 ], [ %78, %79 ], [ %82, %83 ], [ 17, %86 ], [ 16, %107 ], [ %116, %117 ], [ %119, %120 ], [ 16, %130 ], [ %133, %134 ], [ %138, %139 ], [ %145, %140 ], [ 4, %101 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @SeekFromCur(%struct.ILookInStream* noundef %0, i64* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i64 0, i32 3
  %4 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %3, align 8
  %5 = bitcast %struct.ILookInStream* %0 to i8*
  %6 = call i32 %4(i8* noundef %5, i64* noundef %1, i32 noundef 1) #7
  ret i32 %6
}

declare dso_local i32 @LookInStream_Read2(%struct.ILookInStream* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @CrcCalc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadIndex(%struct.CXzStream* noundef %0, %struct.ILookInStream* noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = icmp ugt i64 %2, 2147483648
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %25

7:                                                ; preds = %4
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %25

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 0
  %11 = load i8* (i8*, i64)*, i8* (i8*, i64)** %10, align 8
  %12 = bitcast %struct.ISzAlloc* %3 to i8*
  %13 = call i8* %11(i8* noundef %12, i64 noundef %2) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %25

16:                                               ; preds = %9
  %17 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %1, i8* noundef nonnull %13, i64 noundef %2, i32 noundef 4) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @Xz_ReadIndex2(%struct.CXzStream* noundef %0, i8* noundef nonnull %13, i64 noundef %2, %struct.ISzAlloc* noundef %3)
  br label %21

21:                                               ; preds = %19, %16
  %.01 = phi i32 [ %20, %19 ], [ %17, %16 ]
  %22 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 1
  %23 = load void (i8*, i8*)*, void (i8*, i8*)** %22, align 8
  %24 = bitcast %struct.ISzAlloc* %3 to i8*
  call void %23(i8* noundef %24, i8* noundef nonnull %13) #7
  br label %25

25:                                               ; preds = %21, %15, %8, %6
  %.0 = phi i32 [ 4, %6 ], [ 4, %8 ], [ 2, %15 ], [ %.01, %21 ]
  ret i32 %.0
}

declare dso_local void @SecToRead_CreateVTable(%struct.CSecToRead* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadIndex2(%struct.CXzStream* noundef %0, i8* noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = icmp ult i64 %2, 5
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %1, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7, %4
  br label %88

10:                                               ; preds = %7
  %11 = add i64 %2, -4
  %12 = call i32 @CrcCalc(i8* noundef nonnull %1, i64 noundef %11) #7
  %13 = getelementptr inbounds i8, i8* %1, i64 %11
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %.not7 = icmp eq i32 %12, %15
  br i1 %.not7, label %17, label %16

16:                                               ; preds = %10
  br label %88

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, i8* %1, i64 1
  %19 = add i64 %2, -5
  %20 = call i32 @Xz_ReadVarInt(i8* noundef nonnull %18, i64 noundef %19, i64* noundef nonnull %5) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %88

23:                                               ; preds = %17
  %24 = zext i32 %20 to i64
  %25 = add nuw nsw i64 %24, 1
  %26 = load i64, i64* %5, align 8
  br i1 false, label %30, label %27

27:                                               ; preds = %23
  %28 = shl i64 %26, 1
  %29 = icmp ugt i64 %28, %11
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %23
  br label %88

31:                                               ; preds = %27
  call void @Xz_Free(%struct.CXzStream* noundef %0, %struct.ISzAlloc* noundef %3) #7
  %.not8 = icmp eq i64 %26, 0
  br i1 %.not8, label %76, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  store i64 %26, i64* %33, align 8
  %34 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 2
  store i64 %26, i64* %34, align 8
  %35 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 0
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8
  %37 = bitcast %struct.ISzAlloc* %3 to i8*
  %38 = shl i64 %26, 4
  %39 = call i8* %36(i8* noundef %37, i64 noundef %38) #7
  %40 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %41 = bitcast %struct.CXzBlockSizes** %40 to i8**
  store i8* %39, i8** %41, align 8
  %42 = icmp eq i8* %39, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %88

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %73, %44
  %.02 = phi i64 [ 0, %44 ], [ %74, %73 ]
  %.01 = phi i64 [ %25, %44 ], [ %67, %73 ]
  %46 = icmp ult i64 %.02, %26
  br i1 %46, label %47, label %75

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %49 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %48, align 8
  %50 = getelementptr inbounds i8, i8* %1, i64 %.01
  %51 = sub i64 %11, %.01
  %52 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %49, i64 %.02, i32 1
  %53 = call i32 @Xz_ReadVarInt(i8* noundef nonnull %50, i64 noundef %51, i64* noundef nonnull %52) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %88

56:                                               ; preds = %47
  %57 = zext i32 %53 to i64
  %58 = add i64 %.01, %57
  %59 = getelementptr inbounds i8, i8* %1, i64 %58
  %60 = sub i64 %11, %58
  %61 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %49, i64 %.02, i32 0
  %62 = call i32 @Xz_ReadVarInt(i8* noundef nonnull %59, i64 noundef %60, i64* noundef %61) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %88

65:                                               ; preds = %56
  %66 = zext i32 %62 to i64
  %67 = add i64 %58, %66
  %68 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %49, i64 %.02, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %88

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = add i64 %.02, 1
  br label %45, !llvm.loop !11

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75, %31
  %.1 = phi i64 [ %.01, %75 ], [ %25, %31 ]
  br label %77

77:                                               ; preds = %83, %76
  %.2 = phi i64 [ %.1, %76 ], [ %84, %83 ]
  %78 = and i64 %.2, 3
  %.not9 = icmp eq i64 %78, 0
  br i1 %.not9, label %85, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, i8* %1, i64 %.2
  %81 = load i8, i8* %80, align 1
  %.not10 = icmp eq i8 %81, 0
  br i1 %.not10, label %83, label %82

82:                                               ; preds = %79
  br label %88

83:                                               ; preds = %79
  %84 = add i64 %.2, 1
  br label %77, !llvm.loop !12

85:                                               ; preds = %77
  %86 = icmp eq i64 %.2, %11
  %87 = select i1 %86, i32 0, i32 16
  br label %88

88:                                               ; preds = %85, %82, %71, %64, %55, %43, %30, %22, %16, %9
  %.0 = phi i32 [ 16, %9 ], [ 16, %16 ], [ 16, %22 ], [ 16, %30 ], [ 2, %43 ], [ 16, %55 ], [ 16, %64 ], [ 16, %71 ], [ 16, %82 ], [ %87, %85 ]
  ret i32 %.0
}

declare dso_local i32 @Xz_ReadVarInt(i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !5}
