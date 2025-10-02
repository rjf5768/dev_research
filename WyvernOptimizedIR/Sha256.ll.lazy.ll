; ModuleID = './Sha256.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }
%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1, %struct.CSha256* }

@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Sha256_Init(%struct.CSha256* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 0
  store i32 1779033703, i32* %2, align 8
  %3 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 1
  store i32 -1150833019, i32* %3, align 4
  %4 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 2
  store i32 1013904242, i32* %4, align 8
  %5 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 3
  store i32 -1521486534, i32* %5, align 4
  %6 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 4
  store i32 1359893119, i32* %6, align 8
  %7 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 5
  store i32 -1694144372, i32* %7, align 4
  %8 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 6
  store i32 528734635, i32* %8, align 8
  %9 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 7
  store i32 1541459225, i32* %9, align 4
  %10 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 1
  store i64 0, i64* %10, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Sha256_Update(%struct.CSha256* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 63
  br label %8

8:                                                ; preds = %21, %3
  %.02 = phi i64 [ %2, %3 ], [ %18, %21 ]
  %.01 = phi i8* [ %1, %3 ], [ %10, %21 ]
  %.0 = phi i32 [ %7, %3 ], [ %.1, %21 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %22, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  %11 = load i8, i8* %.01, align 1
  %12 = add i32 %.0, 1
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %13
  store i8 %11, i8* %14, align 1
  %15 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = add i64 %.02, -1
  %19 = icmp eq i32 %12, 64
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %0)
  br label %21

21:                                               ; preds = %20, %9
  %.1 = phi i32 [ 0, %20 ], [ %12, %9 ]
  br label %8, !llvm.loop !4

22:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Sha256_WriteByteBlock(%struct.CSha256* nocapture noundef %0) #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = alloca [16 x i32], align 16
  br label %3

3:                                                ; preds = %37, %1
  %.0 = phi i32 [ 0, %1 ], [ %38, %37 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = shl i32 %.0, 2
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = shl i32 %.0, 2
  %13 = or i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %11, %18
  %20 = shl i32 %.0, 2
  %21 = or i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or i32 %19, %26
  %28 = shl i32 %.0, 2
  %29 = or i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %27, %33
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %35
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %5
  %38 = add i32 %.0, 1
  br label %3, !llvm.loop !6

39:                                               ; preds = %3
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_Sha256_WriteByteBlock_286694939, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.CSha256* %0, %struct.CSha256** %_wyvern_thunk_arg_gep_, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  call void @_wyvern_calleeclone_Sha256_Transform_0256402239(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32* noundef nonnull %40)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Sha256_Final(%struct.CSha256* nocapture noundef %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = shl i64 %4, 3
  %6 = trunc i64 %4 to i32
  %7 = and i32 %6, 63
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %8
  store i8 -128, i8* %9, align 1
  br label %10

10:                                               ; preds = %15, %2
  %.03.in = phi i32 [ %7, %2 ], [ %12, %15 ]
  %.03 = add nuw nsw i32 %.03.in, 1
  %.not = icmp eq i32 %.03, 56
  br i1 %.not, label %18, label %11

11:                                               ; preds = %10
  %12 = and i32 %.03, 63
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %0)
  br label %15

15:                                               ; preds = %14, %11
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %16
  store i8 0, i8* %17, align 1
  br label %10, !llvm.loop !7

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %26, %18
  %.14 = phi i32 [ %.03, %18 ], [ %28, %26 ]
  %.02 = phi i64 [ %5, %18 ], [ %27, %26 ]
  %.0 = phi i32 [ 0, %18 ], [ %29, %26 ]
  %20 = icmp ult i32 %.0, 8
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = lshr i64 %.02, 56
  %23 = trunc i64 %22 to i8
  %24 = zext i32 %.14 to i64
  %25 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 2, i64 %24
  store i8 %23, i8* %25, align 1
  br label %26

26:                                               ; preds = %21
  %27 = shl i64 %.02, 8
  %28 = add i32 %.14, 1
  %29 = add i32 %.0, 1
  br label %19, !llvm.loop !8

30:                                               ; preds = %19
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %0)
  br label %31

31:                                               ; preds = %56, %30
  %.01 = phi i8* [ %1, %30 ], [ %57, %56 ]
  %.1 = phi i32 [ 0, %30 ], [ %58, %56 ]
  %32 = icmp ult i32 %.1, 8
  br i1 %32, label %33, label %59

33:                                               ; preds = %31
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = lshr i32 %36, 24
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %38, i8* %.01, align 1
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = lshr i32 %42, 16
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %44, i8* %39, align 1
  %46 = zext i32 %.1 to i64
  %47 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = lshr i32 %48, 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, i8* %.01, i64 3
  store i8 %50, i8* %45, align 1
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i64 0, i32 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  br label %56

56:                                               ; preds = %33
  %57 = getelementptr inbounds i8, i8* %.01, i64 4
  %58 = add i32 %.1, 1
  br label %31, !llvm.loop !9

59:                                               ; preds = %31
  call void @Sha256_Init(%struct.CSha256* noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Sha256_Transform(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) #1 {
  %3 = alloca [16 x i32], align 16
  %4 = alloca [8 x i32], align 16
  br label %5

5:                                                ; preds = %13, %2
  %.01 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %6 = icmp ult i32 %.01, 8
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %11
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %7
  %14 = add i32 %.01, 1
  br label %5, !llvm.loop !10

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %259, %15
  %.1 = phi i32 [ 0, %15 ], [ %260, %259 ]
  %17 = icmp ult i32 %.1, 64
  br i1 %17, label %18, label %261

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %256, %18
  %.0 = phi i32 [ 0, %18 ], [ %257, %256 ]
  %20 = icmp ult i32 %.0, 16
  br i1 %20, label %21, label %258

21:                                               ; preds = %19
  %22 = sub i32 4, %.0
  %23 = and i32 %22, 7
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 4, %.0
  %28 = and i32 %27, 7
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @llvm.fshl.i32(i32 %31, i32 %26, i32 26)
  %33 = sub i32 4, %.0
  %34 = and i32 %33, 7
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 4, %.0
  %39 = and i32 %38, 7
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @llvm.fshl.i32(i32 %42, i32 %37, i32 21)
  %44 = xor i32 %32, %43
  %45 = sub i32 4, %.0
  %46 = and i32 %45, 7
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 4, %.0
  %51 = and i32 %50, 7
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @llvm.fshl.i32(i32 %54, i32 %49, i32 7)
  %56 = xor i32 %44, %55
  %57 = sub i32 6, %.0
  %58 = and i32 %57, 7
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 4, %.0
  %63 = and i32 %62, 7
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 5, %.0
  %68 = and i32 %67, 7
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 6, %.0
  %73 = and i32 %72, 7
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %71, %76
  %78 = and i32 %66, %77
  %79 = xor i32 %61, %78
  %80 = add i32 %56, %79
  %81 = add i32 %.0, %.1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %80, %84
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %159, label %86

86:                                               ; preds = %21
  %87 = add i32 %.0, 14
  %88 = and i32 %87, 15
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %.0, 14
  %93 = and i32 %92, 15
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @llvm.fshl.i32(i32 %96, i32 %91, i32 15)
  %98 = add i32 %.0, 14
  %99 = and i32 %98, 15
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %.0, 14
  %104 = and i32 %103, 15
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @llvm.fshl.i32(i32 %107, i32 %102, i32 13)
  %109 = xor i32 %97, %108
  %110 = add i32 %.0, 14
  %111 = and i32 %110, 15
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = lshr i32 %114, 10
  %116 = xor i32 %109, %115
  %117 = add i32 %.0, 9
  %118 = and i32 %117, 15
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %116, %121
  %123 = add i32 %.0, 1
  %124 = and i32 %123, 15
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %.0, 1
  %129 = and i32 %128, 15
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @llvm.fshl.i32(i32 %132, i32 %127, i32 25)
  %134 = add i32 %.0, 1
  %135 = and i32 %134, 15
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %.0, 1
  %140 = and i32 %139, 15
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @llvm.fshl.i32(i32 %143, i32 %138, i32 14)
  %145 = xor i32 %133, %144
  %146 = add i32 %.0, 1
  %147 = and i32 %146, 15
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = lshr i32 %150, 3
  %152 = xor i32 %145, %151
  %153 = add i32 %122, %152
  %154 = and i32 %.0, 15
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %165

159:                                              ; preds = %21
  %160 = zext i32 %.0 to i64
  %161 = getelementptr inbounds i32, i32* %1, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %.0 to i64
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %163
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %86
  %166 = phi i32 [ %158, %86 ], [ %162, %159 ]
  %167 = add i32 %85, %166
  %168 = sub i32 7, %.0
  %169 = and i32 %168, 7
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, %167
  store i32 %173, i32* %171, align 4
  %174 = sub i32 7, %.0
  %175 = and i32 %174, 7
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 3, %.0
  %180 = and i32 %179, 7
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = sub i32 0, %.0
  %186 = and i32 %185, 7
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sub i32 0, %.0
  %191 = and i32 %190, 7
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @llvm.fshl.i32(i32 %194, i32 %189, i32 30)
  %196 = sub i32 0, %.0
  %197 = and i32 %196, 7
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sub i32 0, %.0
  %202 = and i32 %201, 7
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @llvm.fshl.i32(i32 %205, i32 %200, i32 19)
  %207 = xor i32 %195, %206
  %208 = sub i32 0, %.0
  %209 = and i32 %208, 7
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sub i32 0, %.0
  %214 = and i32 %213, 7
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @llvm.fshl.i32(i32 %217, i32 %212, i32 10)
  %219 = xor i32 %207, %218
  %220 = sub i32 0, %.0
  %221 = and i32 %220, 7
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sub i32 1, %.0
  %226 = and i32 %225, 7
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %224, %229
  %231 = sub i32 2, %.0
  %232 = and i32 %231, 7
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sub i32 0, %.0
  %237 = and i32 %236, 7
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sub i32 1, %.0
  %242 = and i32 %241, 7
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %240, %245
  %247 = and i32 %235, %246
  %248 = or i32 %230, %247
  %249 = add i32 %219, %248
  %250 = sub i32 7, %.0
  %251 = and i32 %250, 7
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, %249
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %165
  %257 = add i32 %.0, 1
  br label %19, !llvm.loop !11

258:                                              ; preds = %19
  br label %259

259:                                              ; preds = %258
  %260 = add i32 %.1, 16
  br label %16, !llvm.loop !12

261:                                              ; preds = %16
  br label %262

262:                                              ; preds = %272, %261
  %.2 = phi i32 [ 0, %261 ], [ %273, %272 ]
  %263 = icmp ult i32 %.2, 8
  br i1 %263, label %264, label %274

264:                                              ; preds = %262
  %265 = zext i32 %.2 to i64
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = zext i32 %.2 to i64
  %269 = getelementptr inbounds i32, i32* %0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, %267
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264
  %273 = add i32 %.2, 1
  br label %262, !llvm.loop !13

274:                                              ; preds = %262
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_Sha256_WriteByteBlock_286694939(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.CSha256*, %struct.CSha256** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %_wyvern_arg_, i64 0, i32 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %0, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Sha256_Transform_0256402239(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32* nocapture noundef readonly %0) #1 {
  %2 = alloca [16 x i32], align 16
  %3 = alloca [8 x i32], align 16
  br label %4

4:                                                ; preds = %12, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %5 = icmp ult i32 %.01, 8
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %8 = getelementptr inbounds i32, i32* %_wyvern_thunkcall3, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add i32 %.01, 1
  br label %4, !llvm.loop !10

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %258, %14
  %.1 = phi i32 [ 0, %14 ], [ %259, %258 ]
  %16 = icmp ult i32 %.1, 64
  br i1 %16, label %17, label %260

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %255, %17
  %.0 = phi i32 [ 0, %17 ], [ %256, %255 ]
  %19 = icmp ult i32 %.0, 16
  br i1 %19, label %20, label %257

20:                                               ; preds = %18
  %21 = sub i32 4, %.0
  %22 = and i32 %21, 7
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 4, %.0
  %27 = and i32 %26, 7
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @llvm.fshl.i32(i32 %30, i32 %25, i32 26)
  %32 = sub i32 4, %.0
  %33 = and i32 %32, 7
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 4, %.0
  %38 = and i32 %37, 7
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @llvm.fshl.i32(i32 %41, i32 %36, i32 21)
  %43 = xor i32 %31, %42
  %44 = sub i32 4, %.0
  %45 = and i32 %44, 7
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 4, %.0
  %50 = and i32 %49, 7
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @llvm.fshl.i32(i32 %53, i32 %48, i32 7)
  %55 = xor i32 %43, %54
  %56 = sub i32 6, %.0
  %57 = and i32 %56, 7
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 4, %.0
  %62 = and i32 %61, 7
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 5, %.0
  %67 = and i32 %66, 7
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 6, %.0
  %72 = and i32 %71, 7
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %70, %75
  %77 = and i32 %65, %76
  %78 = xor i32 %60, %77
  %79 = add i32 %55, %78
  %80 = add i32 %.0, %.1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %79, %83
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %158, label %85

85:                                               ; preds = %20
  %86 = add i32 %.0, 14
  %87 = and i32 %86, 15
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %.0, 14
  %92 = and i32 %91, 15
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @llvm.fshl.i32(i32 %95, i32 %90, i32 15)
  %97 = add i32 %.0, 14
  %98 = and i32 %97, 15
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %.0, 14
  %103 = and i32 %102, 15
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @llvm.fshl.i32(i32 %106, i32 %101, i32 13)
  %108 = xor i32 %96, %107
  %109 = add i32 %.0, 14
  %110 = and i32 %109, 15
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = lshr i32 %113, 10
  %115 = xor i32 %108, %114
  %116 = add i32 %.0, 9
  %117 = and i32 %116, 15
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %115, %120
  %122 = add i32 %.0, 1
  %123 = and i32 %122, 15
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %.0, 1
  %128 = and i32 %127, 15
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @llvm.fshl.i32(i32 %131, i32 %126, i32 25)
  %133 = add i32 %.0, 1
  %134 = and i32 %133, 15
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %.0, 1
  %139 = and i32 %138, 15
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @llvm.fshl.i32(i32 %142, i32 %137, i32 14)
  %144 = xor i32 %132, %143
  %145 = add i32 %.0, 1
  %146 = and i32 %145, 15
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 3
  %151 = xor i32 %144, %150
  %152 = add i32 %121, %151
  %153 = and i32 %.0, 15
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, %152
  store i32 %157, i32* %155, align 4
  br label %164

158:                                              ; preds = %20
  %159 = zext i32 %.0 to i64
  %160 = getelementptr inbounds i32, i32* %0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %.0 to i64
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %162
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %85
  %165 = phi i32 [ %157, %85 ], [ %161, %158 ]
  %166 = add i32 %84, %165
  %167 = sub i32 7, %.0
  %168 = and i32 %167, 7
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, %166
  store i32 %172, i32* %170, align 4
  %173 = sub i32 7, %.0
  %174 = and i32 %173, 7
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sub i32 3, %.0
  %179 = and i32 %178, 7
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, %177
  store i32 %183, i32* %181, align 4
  %184 = sub i32 0, %.0
  %185 = and i32 %184, 7
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sub i32 0, %.0
  %190 = and i32 %189, 7
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @llvm.fshl.i32(i32 %193, i32 %188, i32 30)
  %195 = sub i32 0, %.0
  %196 = and i32 %195, 7
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 0, %.0
  %201 = and i32 %200, 7
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @llvm.fshl.i32(i32 %204, i32 %199, i32 19)
  %206 = xor i32 %194, %205
  %207 = sub i32 0, %.0
  %208 = and i32 %207, 7
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sub i32 0, %.0
  %213 = and i32 %212, 7
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @llvm.fshl.i32(i32 %216, i32 %211, i32 10)
  %218 = xor i32 %206, %217
  %219 = sub i32 0, %.0
  %220 = and i32 %219, 7
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sub i32 1, %.0
  %225 = and i32 %224, 7
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %223, %228
  %230 = sub i32 2, %.0
  %231 = and i32 %230, 7
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 0, %.0
  %236 = and i32 %235, 7
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sub i32 1, %.0
  %241 = and i32 %240, 7
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %239, %244
  %246 = and i32 %234, %245
  %247 = or i32 %229, %246
  %248 = add i32 %218, %247
  %249 = sub i32 7, %.0
  %250 = and i32 %249, 7
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, %248
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %164
  %256 = add i32 %.0, 1
  br label %18, !llvm.loop !11

257:                                              ; preds = %18
  br label %258

258:                                              ; preds = %257
  %259 = add i32 %.1, 16
  br label %15, !llvm.loop !12

260:                                              ; preds = %15
  br label %261

261:                                              ; preds = %271, %260
  %.2 = phi i32 [ 0, %260 ], [ %272, %271 ]
  %262 = icmp ult i32 %.2, 8
  br i1 %262, label %263, label %273

263:                                              ; preds = %261
  %264 = zext i32 %.2 to i64
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %.2 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %268 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, %266
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %263
  %272 = add i32 %.2, 1
  br label %261, !llvm.loop !13

273:                                              ; preds = %261
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
