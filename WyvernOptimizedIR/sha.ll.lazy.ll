; ModuleID = './sha.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-sha/sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [26 x i8] c"%08x %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @sha_init(%struct.SHA_INFO* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  store i32 1732584193, i32* %2, align 4
  %3 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  store i32 -271733879, i32* %3, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  store i32 -1732584194, i32* %4, align 4
  %5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  store i32 271733878, i32* %5, align 4
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  store i32 -1009589776, i32* %6, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  store i32 0, i32* %8, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @sha_update(%struct.SHA_INFO* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %2, 3
  %7 = xor i32 %5, -1
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = shl i32 %2, 3
  %15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = lshr i32 %2, 29
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %24, %13
  %.01 = phi i8* [ %1, %13 ], [ %28, %24 ]
  %.0 = phi i32 [ %2, %13 ], [ %29, %24 ]
  %23 = icmp sgt i32 %.0, 63
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %26, i8* noundef nonnull align 1 dereferenceable(64) %.01, i64 64, i1 false)
  %27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  call void @byte_reverse(i32* noundef nonnull %27, i32 noundef 64)
  call void @sha_transform(%struct.SHA_INFO* noundef %0)
  %28 = getelementptr inbounds i8, i8* %.01, i64 64
  %29 = add nsw i32 %.0, -64
  br label %22, !llvm.loop !4

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %32 = bitcast i32* %31 to i8*
  %33 = sext i32 %.0 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %32, i8* align 1 %.01, i64 %33, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @byte_reverse(i32* nocapture noundef %0, i32 noundef %1) #3 {
  %3 = alloca [4 x i8], align 1
  %4 = ashr i32 %1, 2
  %5 = bitcast i32* %0 to i8*
  br label %6

6:                                                ; preds = %29, %2
  %.01 = phi i32 [ 0, %2 ], [ %31, %29 ]
  %.0 = phi i8* [ %5, %2 ], [ %30, %29 ]
  %7 = icmp slt i32 %.01, %4
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = load i8, i8* %.0, align 1
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds i8, i8* %.0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %.0, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %.0, i64 3
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 3
  store i8 %18, i8* %19, align 1
  store i8 %18, i8* %.0, align 1
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds i8, i8* %.0, i64 2
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %.0, i64 3
  store i8 %27, i8* %28, align 1
  br label %29

29:                                               ; preds = %8
  %30 = getelementptr inbounds i8, i8* %.0, i64 4
  %31 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !6

32:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @sha_transform(%struct.SHA_INFO* nocapture noundef %0) #3 {
  %2 = alloca [80 x i32], align 16
  br label %3

3:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = icmp ult i32 %.01, 16
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %9
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %38, %13
  %.12 = phi i32 [ 16, %13 ], [ %39, %38 ]
  %15 = icmp ult i32 %.12, 80
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  %17 = add nsw i32 %.12, -3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %.12, -8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %20, %24
  %26 = add nsw i32 %.12, -14
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %25, %29
  %31 = add nsw i32 %.12, -16
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %30, %34
  %36 = zext i32 %.12 to i64
  %37 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %36
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %16
  %39 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !8

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %54, %40
  %.017 = phi i32 [ %48, %40 ], [ %.013, %54 ]
  %.013 = phi i32 [ %46, %40 ], [ %55, %54 ]
  %.09 = phi i32 [ %44, %40 ], [ %.05, %54 ]
  %.05 = phi i32 [ %42, %40 ], [ %67, %54 ]
  %.23 = phi i32 [ 0, %40 ], [ %68, %54 ]
  %.0 = phi i32 [ %50, %40 ], [ %.017, %54 ]
  %52 = icmp ult i32 %.23, 20
  br i1 %52, label %53, label %69

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = call i32 @llvm.fshl.i32(i32 %.09, i32 %.09, i32 30)
  %56 = call i32 @llvm.fshl.i32(i32 %.05, i32 %.05, i32 5)
  %57 = and i32 %.09, %.013
  %58 = xor i32 %.09, -1
  %59 = and i32 %.017, %58
  %60 = or i32 %57, %59
  %61 = add i32 %56, %60
  %62 = add i32 %61, %.0
  %63 = zext i32 %.23 to i64
  %64 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %62, %65
  %67 = add i32 %66, 1518500249
  %68 = add nuw nsw i32 %.23, 1
  br label %51, !llvm.loop !9

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %73, %69
  %.118 = phi i32 [ %.017, %69 ], [ %.114, %73 ]
  %.114 = phi i32 [ %.013, %69 ], [ %74, %73 ]
  %.110 = phi i32 [ %.09, %69 ], [ %.16, %73 ]
  %.16 = phi i32 [ %.05, %69 ], [ %84, %73 ]
  %.34 = phi i32 [ 20, %69 ], [ %85, %73 ]
  %.1 = phi i32 [ %.0, %69 ], [ %.118, %73 ]
  %71 = icmp ult i32 %.34, 40
  br i1 %71, label %72, label %86

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = call i32 @llvm.fshl.i32(i32 %.110, i32 %.110, i32 30)
  %75 = call i32 @llvm.fshl.i32(i32 %.16, i32 %.16, i32 5)
  %76 = xor i32 %.110, %.114
  %77 = xor i32 %76, %.118
  %78 = add i32 %75, %77
  %79 = add i32 %78, %.1
  %80 = zext i32 %.34 to i64
  %81 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %79, %82
  %84 = add i32 %83, 1859775393
  %85 = add nuw nsw i32 %.34, 1
  br label %70, !llvm.loop !10

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %90, %86
  %.219 = phi i32 [ %.118, %86 ], [ %.215, %90 ]
  %.215 = phi i32 [ %.114, %86 ], [ %91, %90 ]
  %.211 = phi i32 [ %.110, %86 ], [ %.27, %90 ]
  %.27 = phi i32 [ %.16, %86 ], [ %103, %90 ]
  %.4 = phi i32 [ 40, %86 ], [ %104, %90 ]
  %.2 = phi i32 [ %.1, %86 ], [ %.219, %90 ]
  %88 = icmp ult i32 %.4, 60
  br i1 %88, label %89, label %105

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = call i32 @llvm.fshl.i32(i32 %.211, i32 %.211, i32 30)
  %92 = call i32 @llvm.fshl.i32(i32 %.27, i32 %.27, i32 5)
  %93 = or i32 %.215, %.219
  %94 = and i32 %.211, %93
  %95 = and i32 %.215, %.219
  %96 = or i32 %94, %95
  %97 = add i32 %92, %96
  %98 = add i32 %97, %.2
  %99 = zext i32 %.4 to i64
  %100 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %98, %101
  %103 = add i32 %102, -1894007588
  %104 = add nuw nsw i32 %.4, 1
  br label %87, !llvm.loop !11

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %109, %105
  %.320 = phi i32 [ %.219, %105 ], [ %.316, %109 ]
  %.316 = phi i32 [ %.215, %105 ], [ %110, %109 ]
  %.312 = phi i32 [ %.211, %105 ], [ %.38, %109 ]
  %.38 = phi i32 [ %.27, %105 ], [ %120, %109 ]
  %.5 = phi i32 [ 60, %105 ], [ %121, %109 ]
  %.3 = phi i32 [ %.2, %105 ], [ %.320, %109 ]
  %107 = icmp ult i32 %.5, 80
  br i1 %107, label %108, label %122

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = call i32 @llvm.fshl.i32(i32 %.312, i32 %.312, i32 30)
  %111 = call i32 @llvm.fshl.i32(i32 %.38, i32 %.38, i32 5)
  %112 = xor i32 %.312, %.316
  %113 = xor i32 %112, %.320
  %114 = add i32 %111, %113
  %115 = add i32 %114, %.3
  %116 = zext i32 %.5 to i64
  %117 = getelementptr inbounds [80 x i32], [80 x i32]* %2, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %115, %118
  %120 = add i32 %119, -899497514
  %121 = add nuw nsw i32 %.5, 1
  br label %106, !llvm.loop !12

122:                                              ; preds = %106
  %123 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, %.38
  store i32 %125, i32* %123, align 4
  %126 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %.312
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, %.316
  store i32 %131, i32* %129, align 4
  %132 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %133, %.320
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, %.3
  store i32 %137, i32* %135, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @sha_final(%struct.SHA_INFO* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %3, 3
  %7 = and i32 %6, 63
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %9 = bitcast i32* %8 to i8*
  %10 = add nuw nsw i32 %7, 1
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8 -128, i8* %12, align 1
  %13 = icmp ugt i32 %7, 55
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %16 = bitcast [16 x i32]* %15 to i8*
  %17 = zext i32 %10 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = xor i32 %7, 63
  %20 = zext i32 %19 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %18, i8 0, i64 %20, i1 false)
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  call void @byte_reverse(i32* noundef nonnull %21, i32 noundef 64)
  call void @sha_transform(%struct.SHA_INFO* noundef %0)
  %22 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %23 = bitcast [16 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(56) %23, i8 0, i64 56, i1 false)
  br label %31

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %26 = bitcast [16 x i32]* %25 to i8*
  %27 = zext i32 %10 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = sub nsw i32 55, %7
  %30 = sext i32 %29 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %28, i8 0, i64 %30, i1 false)
  br label %31

31:                                               ; preds = %24, %14
  %32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  call void @byte_reverse(i32* noundef nonnull %32, i32 noundef 64)
  %33 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 14
  store i32 %5, i32* %33, align 4
  %34 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 15
  store i32 %3, i32* %34, align 4
  call void @sha_transform(%struct.SHA_INFO* noundef %0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_stream(%struct.SHA_INFO* nocapture noundef %0, %struct._IO_FILE* noundef %1) #5 {
  %3 = alloca [8192 x i8], align 16
  call void @sha_init(%struct.SHA_INFO* noundef %0)
  br label %4

4:                                                ; preds = %9, %2
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %6 = call i64 @fread(i8* noundef nonnull %5, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %1) #8
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  call void @sha_update(%struct.SHA_INFO* noundef %0, i8* noundef nonnull %10, i32 noundef %7)
  br label %4, !llvm.loop !13

11:                                               ; preds = %4
  call void @sha_final(%struct.SHA_INFO* noundef %0)
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_print(%struct.SHA_INFO* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!13 = distinct !{!13, !5}
