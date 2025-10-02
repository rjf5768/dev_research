; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/Materials.c'
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
define dso_local i32* @load_num_nucs(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef 48) #4
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 68
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 34, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 321, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 5, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 4, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 4, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 27, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 21, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  store i32 21, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  store i32 21, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  store i32 21, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  store i32 21, i32* %32, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  store i32 9, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 11
  store i32 9, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @load_mats(i32* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [34 x i32], align 16
  %8 = alloca [321 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [27 x i32], align 16
  %14 = alloca [21 x i32], align 16
  %15 = alloca [21 x i32], align 16
  %16 = alloca [21 x i32], align 16
  %17 = alloca [21 x i32], align 16
  %18 = alloca [21 x i32], align 16
  %19 = alloca [9 x i32], align 16
  %20 = alloca [9 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %21 = call noalias i8* @malloc(i64 noundef 96) #4
  %22 = bitcast i8* %21 to i32**
  store i32** %22, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call noalias i8* @malloc(i64 noundef %33) #4
  %35 = bitcast i8* %34 to i32*
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %23, !llvm.loop !4

43:                                               ; preds = %23
  %44 = bitcast [34 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([34 x i32]* @__const.load_mats.mats0_Sml to i8*), i64 136, i1 false)
  %45 = bitcast [321 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast (<{ [34 x i32], [287 x i32] }>* @__const.load_mats.mats0_Lrg to i8*), i64 1284, i1 false)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %56, %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 287
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 68, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 34, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [321 x i32], [321 x i32]* %8, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %46, !llvm.loop !6

59:                                               ; preds = %46
  %60 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 16 bitcast ([5 x i32]* @__const.load_mats.mats1 to i8*), i64 20, i1 false)
  %61 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats2 to i8*), i64 16, i1 false)
  %62 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats3 to i8*), i64 16, i1 false)
  %63 = bitcast [27 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 16 bitcast ([27 x i32]* @__const.load_mats.mats4 to i8*), i64 108, i1 false)
  %64 = bitcast [21 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats5 to i8*), i64 84, i1 false)
  %65 = bitcast [21 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats6 to i8*), i64 84, i1 false)
  %66 = bitcast [21 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats7 to i8*), i64 84, i1 false)
  %67 = bitcast [21 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats8 to i8*), i64 84, i1 false)
  %68 = bitcast [21 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats9 to i8*), i64 84, i1 false)
  %69 = bitcast [9 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats10 to i8*), i64 36, i1 false)
  %70 = bitcast [9 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats11 to i8*), i64 36, i1 false)
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 68
  br i1 %72, label %73, label %85

73:                                               ; preds = %59
  %74 = load i32**, i32*** %5, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = getelementptr inbounds [34 x i32], [34 x i32]* %7, i64 0, i64 0
  %79 = bitcast i32* %78 to i8*
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 16 %79, i64 %84, i1 false)
  br label %97

85:                                               ; preds = %59
  %86 = load i32**, i32*** %5, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds [321 x i32], [321 x i32]* %8, i64 0, i64 0
  %91 = bitcast i32* %90 to i8*
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 16 %91, i64 %96, i1 false)
  br label %97

97:                                               ; preds = %85, %73
  %98 = load i32**, i32*** %5, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %103 = bitcast i32* %102 to i8*
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 16 %103, i64 %108, i1 false)
  %109 = load i32**, i32*** %5, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 2
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %114 = bitcast i32* %113 to i8*
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 16 %114, i64 %119, i1 false)
  %120 = load i32**, i32*** %5, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 3
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %125 = bitcast i32* %124 to i8*
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 16 %125, i64 %130, i1 false)
  %131 = load i32**, i32*** %5, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 4
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 0
  %136 = bitcast i32* %135 to i8*
  %137 = load i32*, i32** %3, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 16 %136, i64 %141, i1 false)
  %142 = load i32**, i32*** %5, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 5
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 0
  %147 = bitcast i32* %146 to i8*
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 16 %147, i64 %152, i1 false)
  %153 = load i32**, i32*** %5, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 6
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 0
  %158 = bitcast i32* %157 to i8*
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 16 %158, i64 %163, i1 false)
  %164 = load i32**, i32*** %5, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 7
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = getelementptr inbounds [21 x i32], [21 x i32]* %16, i64 0, i64 0
  %169 = bitcast i32* %168 to i8*
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 16 %169, i64 %174, i1 false)
  %175 = load i32**, i32*** %5, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 8
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = getelementptr inbounds [21 x i32], [21 x i32]* %17, i64 0, i64 0
  %180 = bitcast i32* %179 to i8*
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 16 %180, i64 %185, i1 false)
  %186 = load i32**, i32*** %5, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 9
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = getelementptr inbounds [21 x i32], [21 x i32]* %18, i64 0, i64 0
  %191 = bitcast i32* %190 to i8*
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 9
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 16 %191, i64 %196, i1 false)
  %197 = load i32**, i32*** %5, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 10
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %202 = bitcast i32* %201 to i8*
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 10
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 16 %202, i64 %207, i1 false)
  %208 = load i32**, i32*** %5, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 11
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = getelementptr inbounds [9 x i32], [9 x i32]* %20, i64 0, i64 0
  %213 = bitcast i32* %212 to i8*
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 11
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 16 %213, i64 %218, i1 false)
  %219 = load i32**, i32*** %5, align 8
  ret i32** %219
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double** @load_concs(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call noalias i8* @malloc(i64 noundef 96) #4
  %8 = bitcast i8* %7 to double**
  store double** %8, double*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 noundef %19) #4
  %21 = bitcast i8* %20 to double*
  %22 = load double**, double*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double*, double** %22, i64 %24
  store double* %21, double** %25, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9, !llvm.loop !7

29:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = call i32 @rand() #4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 0x41DFFFFFFFC00000
  %46 = load double**, double*** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double*, double** %46, i64 %48
  %50 = load double*, double** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  store double %45, double* %53, align 8
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %34, !llvm.loop !8

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %30, !llvm.loop !9

61:                                               ; preds = %30
  %62 = load double**, double*** %3, align 8
  ret double** %62
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local double** @load_concs_v(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call noalias i8* @malloc(i64 noundef 96) #4
  %8 = bitcast i8* %7 to double**
  store double** %8, double*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 noundef %19) #4
  %21 = bitcast i8* %20 to double*
  %22 = load double**, double*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double*, double** %22, i64 %24
  store double* %21, double** %25, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9, !llvm.loop !10

29:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = call double @rn_v()
  %44 = load double**, double*** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %43, double* %51, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %34, !llvm.loop !11

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %30, !llvm.loop !12

59:                                               ; preds = %30
  %60 = load double**, double*** %3, align 8
  ret double** %60
}

declare dso_local double @rn_v() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pick_mat(i64* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [12 x double], align 16
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  store double 1.400000e-01, double* %9, align 16
  %10 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 1
  store double 5.200000e-02, double* %10, align 8
  %11 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 2
  store double 2.750000e-01, double* %11, align 16
  %12 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 3
  store double 1.340000e-01, double* %12, align 8
  %13 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 4
  store double 1.540000e-01, double* %13, align 16
  %14 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  store double 6.400000e-02, double* %14, align 8
  %15 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  store double 6.600000e-02, double* %15, align 16
  %16 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 7
  store double 5.500000e-02, double* %16, align 8
  %17 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 8
  store double 8.000000e-03, double* %17, align 16
  %18 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 9
  store double 1.500000e-02, double* %18, align 8
  %19 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 10
  store double 2.500000e-02, double* %19, align 16
  %20 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 11
  store double 1.300000e-02, double* %20, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = call double @rn(i64* noundef %21)
  store double %22, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  store double 0.000000e+00, double* %7, align 8
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %38, %26
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load double, double* %7, align 8
  %37 = fadd double %36, %35
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %28, !llvm.loop !13

41:                                               ; preds = %28
  %42 = load double, double* %5, align 8
  %43 = load double, double* %7, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23, !llvm.loop !14

51:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local double @rn(i64* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
