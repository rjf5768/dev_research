; ModuleID = './Materials.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/Materials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@__const.load_mats.mats0_Lrg = private unnamed_addr constant <{ [34 x i32], [287 x i32] }> <{ [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], [287 x i32] zeroinitializer }>, align 16
@__const.load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.load_mats.mats2 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@__const.load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@__const.load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@__const.load_mats.mats5 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats6 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats7 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats8 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats10 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @load_num_nucs(i64 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #4
  %3 = bitcast i8* %2 to i32*
  %4 = icmp eq i64 %0, 68
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5
  %storemerge = phi i32 [ 34, %5 ], [ 321, %6 ]
  store i32 %storemerge, i32* %3, align 4
  %8 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 5, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %3, i64 2
  store i32 4, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %3, i64 3
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %3, i64 4
  store i32 27, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %3, i64 5
  store i32 21, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %3, i64 6
  store i32 21, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %3, i64 7
  store i32 21, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %3, i64 8
  store i32 21, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %3, i64 9
  store i32 21, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %3, i64 10
  store i32 9, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %3, i64 11
  store i32 9, i32* %18, align 4
  ret i32* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32** @load_mats(i32* nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = alloca [321 x i32], align 16
  %4 = call noalias dereferenceable_or_null(96) i8* @malloc(i64 noundef 96) #4
  %5 = bitcast i8* %4 to i32**
  br label %6

6:                                                ; preds = %18, %2
  %.01 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %7 = icmp ult i32 %.01, 12
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = call noalias i8* @malloc(i64 noundef %13) #4
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds i32*, i32** %5, i64 %15
  %17 = bitcast i32** %16 to i8**
  store i8* %14, i8** %17, align 8
  br label %18

18:                                               ; preds = %8
  %19 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

20:                                               ; preds = %6
  %21 = bitcast [321 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1284) %21, i8* noundef nonnull align 16 dereferenceable(1284) bitcast (<{ [34 x i32], [287 x i32] }>* @__const.load_mats.mats0_Lrg to i8*), i64 1284, i1 false)
  br label %22

22:                                               ; preds = %29, %20
  %.0 = phi i32 [ 0, %20 ], [ %30, %29 ]
  %23 = icmp ult i32 %.0, 287
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %.0, 68
  %26 = add nuw nsw i32 %.0, 34
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [321 x i32], [321 x i32]* %3, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !6

31:                                               ; preds = %22
  %32 = icmp eq i64 %1, 68
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = bitcast i8* %4 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %0, align 4
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 16 bitcast ([34 x i32]* @__const.load_mats.mats0_Sml to i8*), i64 %38, i1 false)
  br label %46

39:                                               ; preds = %31
  %40 = bitcast i8* %4 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast [321 x i32]* %3 to i8*
  %43 = load i32, i32* %0, align 4
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* nonnull align 16 %42, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %39, %33
  %47 = getelementptr inbounds i32*, i32** %5, i64 1
  %48 = bitcast i32** %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i32, i32* %0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 16 bitcast ([5 x i32]* @__const.load_mats.mats1 to i8*), i64 %53, i1 false)
  %54 = getelementptr inbounds i32*, i32** %5, i64 2
  %55 = bitcast i32** %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i32, i32* %0, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats2 to i8*), i64 %60, i1 false)
  %61 = getelementptr inbounds i32*, i32** %5, i64 3
  %62 = bitcast i32** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i32, i32* %0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = shl nsw i64 %66, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats3 to i8*), i64 %67, i1 false)
  %68 = getelementptr inbounds i32*, i32** %5, i64 4
  %69 = bitcast i32** %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i32, i32* %0, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = shl nsw i64 %73, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 16 bitcast ([27 x i32]* @__const.load_mats.mats4 to i8*), i64 %74, i1 false)
  %75 = getelementptr inbounds i32*, i32** %5, i64 5
  %76 = bitcast i32** %75 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i32, i32* %0, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats5 to i8*), i64 %81, i1 false)
  %82 = getelementptr inbounds i32*, i32** %5, i64 6
  %83 = bitcast i32** %82 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i32, i32* %0, i64 6
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats6 to i8*), i64 %88, i1 false)
  %89 = getelementptr inbounds i32*, i32** %5, i64 7
  %90 = bitcast i32** %89 to i8**
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i32, i32* %0, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats7 to i8*), i64 %95, i1 false)
  %96 = getelementptr inbounds i32*, i32** %5, i64 8
  %97 = bitcast i32** %96 to i8**
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i32, i32* %0, i64 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats8 to i8*), i64 %102, i1 false)
  %103 = getelementptr inbounds i32*, i32** %5, i64 9
  %104 = bitcast i32** %103 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i32, i32* %0, i64 9
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = shl nsw i64 %108, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats9 to i8*), i64 %109, i1 false)
  %110 = getelementptr inbounds i32*, i32** %5, i64 10
  %111 = bitcast i32** %110 to i8**
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i32, i32* %0, i64 10
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats10 to i8*), i64 %116, i1 false)
  %117 = getelementptr inbounds i32*, i32** %5, i64 11
  %118 = bitcast i32** %117 to i8**
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i32, i32* %0, i64 11
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats11 to i8*), i64 %123, i1 false)
  ret i32** %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @load_concs(i32* nocapture noundef readonly %0) #0 {
  %2 = call noalias dereferenceable_or_null(96) i8* @malloc(i64 noundef 96) #4
  %3 = bitcast i8* %2 to double**
  br label %4

4:                                                ; preds = %16, %1
  %.02 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %5 = icmp ult i32 %.02, 12
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext i32 %.02 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = call noalias i8* @malloc(i64 noundef %11) #4
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds double*, double** %3, i64 %13
  %15 = bitcast double** %14 to i8**
  store i8* %12, i8** %15, align 8
  br label %16

16:                                               ; preds = %6
  %17 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !7

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %39, %18
  %.01 = phi i32 [ 0, %18 ], [ %40, %39 ]
  %20 = icmp ult i32 %.01, 12
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %36, %21
  %.0 = phi i32 [ 0, %21 ], [ %37, %36 ]
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %.0, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = call i32 @rand() #4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 0x41DFFFFFFFC00000
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds double*, double** %3, i64 %31
  %33 = load double*, double** %32, align 8
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds double, double* %33, i64 %34
  store double %30, double* %35, align 8
  br label %36

36:                                               ; preds = %27
  %37 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !8

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !9

41:                                               ; preds = %19
  ret double** %3
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @load_concs_v(i32* nocapture noundef readonly %0) #0 {
  %2 = call noalias dereferenceable_or_null(96) i8* @malloc(i64 noundef 96) #4
  %3 = bitcast i8* %2 to double**
  br label %4

4:                                                ; preds = %16, %1
  %.02 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %5 = icmp ult i32 %.02, 12
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext i32 %.02 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = call noalias i8* @malloc(i64 noundef %11) #4
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds double*, double** %3, i64 %13
  %15 = bitcast double** %14 to i8**
  store i8* %12, i8** %15, align 8
  br label %16

16:                                               ; preds = %6
  %17 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %37, %18
  %.01 = phi i32 [ 0, %18 ], [ %38, %37 ]
  %20 = icmp ult i32 %.01, 12
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %34, %21
  %.0 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %.0, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = call double @rn_v() #4
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds double*, double** %3, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds double, double* %31, i64 %32
  store double %28, double* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !11

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !12

39:                                               ; preds = %19
  ret double** %3
}

declare dso_local double @rn_v() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pick_mat(i64* noundef %0) #0 {
  %2 = alloca [12 x double], align 16
  %3 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 0
  store double 1.400000e-01, double* %3, align 16
  %4 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 1
  store double 5.200000e-02, double* %4, align 8
  %5 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 2
  store double 2.750000e-01, double* %5, align 16
  %6 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 3
  store double 1.340000e-01, double* %6, align 8
  %7 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 4
  store double 1.540000e-01, double* %7, align 16
  %8 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 5
  store double 6.400000e-02, double* %8, align 8
  %9 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 6
  store double 6.600000e-02, double* %9, align 16
  %10 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 7
  store double 5.500000e-02, double* %10, align 8
  %11 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 8
  store double 8.000000e-03, double* %11, align 16
  %12 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 9
  store double 1.500000e-02, double* %12, align 8
  %13 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 10
  store double 2.500000e-02, double* %13, align 16
  %14 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 11
  store double 1.300000e-02, double* %14, align 8
  %15 = call double @rn(i64* noundef %0) #4
  br label %16

16:                                               ; preds = %32, %1
  %.03 = phi i32 [ 0, %1 ], [ %33, %32 ]
  %17 = icmp ult i32 %.03, 12
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %22, %18
  %.02 = phi double [ 0.000000e+00, %18 ], [ %26, %22 ]
  %.01 = phi i32 [ %.03, %18 ], [ %27, %22 ]
  %20 = icmp sgt i32 %.01, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = sext i32 %.01 to i64
  %24 = getelementptr inbounds [12 x double], [12 x double]* %2, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fadd double %.02, %25
  %27 = add nsw i32 %.01, -1
  br label %19, !llvm.loop !13

28:                                               ; preds = %19
  %29 = fcmp olt double %15, %.02
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %35

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.03, 1
  br label %16, !llvm.loop !14

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %30
  %.0 = phi i32 [ %.03, %30 ], [ 0, %34 ]
  ret i32 %.0
}

declare dso_local double @rn(i64* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
