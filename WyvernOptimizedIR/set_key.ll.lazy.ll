; ModuleID = './set_key.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/ecbdes/set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@des_check_key = dso_local global i32 0, align 4
@odd_parity = internal constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal global [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\1F\1F\1F\1F", [8 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@des_set_key.shifts2 = internal global [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@des_skb = internal constant [8 x [64 x i64]] [[64 x i64] [i64 0, i64 16, i64 536870912, i64 536870928, i64 65536, i64 65552, i64 536936448, i64 536936464, i64 2048, i64 2064, i64 536872960, i64 536872976, i64 67584, i64 67600, i64 536938496, i64 536938512, i64 32, i64 48, i64 536870944, i64 536870960, i64 65568, i64 65584, i64 536936480, i64 536936496, i64 2080, i64 2096, i64 536872992, i64 536873008, i64 67616, i64 67632, i64 536938528, i64 536938544, i64 524288, i64 524304, i64 537395200, i64 537395216, i64 589824, i64 589840, i64 537460736, i64 537460752, i64 526336, i64 526352, i64 537397248, i64 537397264, i64 591872, i64 591888, i64 537462784, i64 537462800, i64 524320, i64 524336, i64 537395232, i64 537395248, i64 589856, i64 589872, i64 537460768, i64 537460784, i64 526368, i64 526384, i64 537397280, i64 537397296, i64 591904, i64 591920, i64 537462816, i64 537462832], [64 x i64] [i64 0, i64 33554432, i64 8192, i64 33562624, i64 2097152, i64 35651584, i64 2105344, i64 35659776, i64 4, i64 33554436, i64 8196, i64 33562628, i64 2097156, i64 35651588, i64 2105348, i64 35659780, i64 1024, i64 33555456, i64 9216, i64 33563648, i64 2098176, i64 35652608, i64 2106368, i64 35660800, i64 1028, i64 33555460, i64 9220, i64 33563652, i64 2098180, i64 35652612, i64 2106372, i64 35660804, i64 268435456, i64 301989888, i64 268443648, i64 301998080, i64 270532608, i64 304087040, i64 270540800, i64 304095232, i64 268435460, i64 301989892, i64 268443652, i64 301998084, i64 270532612, i64 304087044, i64 270540804, i64 304095236, i64 268436480, i64 301990912, i64 268444672, i64 301999104, i64 270533632, i64 304088064, i64 270541824, i64 304096256, i64 268436484, i64 301990916, i64 268444676, i64 301999108, i64 270533636, i64 304088068, i64 270541828, i64 304096260], [64 x i64] [i64 0, i64 1, i64 262144, i64 262145, i64 16777216, i64 16777217, i64 17039360, i64 17039361, i64 2, i64 3, i64 262146, i64 262147, i64 16777218, i64 16777219, i64 17039362, i64 17039363, i64 512, i64 513, i64 262656, i64 262657, i64 16777728, i64 16777729, i64 17039872, i64 17039873, i64 514, i64 515, i64 262658, i64 262659, i64 16777730, i64 16777731, i64 17039874, i64 17039875, i64 134217728, i64 134217729, i64 134479872, i64 134479873, i64 150994944, i64 150994945, i64 151257088, i64 151257089, i64 134217730, i64 134217731, i64 134479874, i64 134479875, i64 150994946, i64 150994947, i64 151257090, i64 151257091, i64 134218240, i64 134218241, i64 134480384, i64 134480385, i64 150995456, i64 150995457, i64 151257600, i64 151257601, i64 134218242, i64 134218243, i64 134480386, i64 134480387, i64 150995458, i64 150995459, i64 151257602, i64 151257603], [64 x i64] [i64 0, i64 1048576, i64 256, i64 1048832, i64 8, i64 1048584, i64 264, i64 1048840, i64 4096, i64 1052672, i64 4352, i64 1052928, i64 4104, i64 1052680, i64 4360, i64 1052936, i64 67108864, i64 68157440, i64 67109120, i64 68157696, i64 67108872, i64 68157448, i64 67109128, i64 68157704, i64 67112960, i64 68161536, i64 67113216, i64 68161792, i64 67112968, i64 68161544, i64 67113224, i64 68161800, i64 131072, i64 1179648, i64 131328, i64 1179904, i64 131080, i64 1179656, i64 131336, i64 1179912, i64 135168, i64 1183744, i64 135424, i64 1184000, i64 135176, i64 1183752, i64 135432, i64 1184008, i64 67239936, i64 68288512, i64 67240192, i64 68288768, i64 67239944, i64 68288520, i64 67240200, i64 68288776, i64 67244032, i64 68292608, i64 67244288, i64 68292864, i64 67244040, i64 68292616, i64 67244296, i64 68292872], [64 x i64] [i64 0, i64 268435456, i64 65536, i64 268500992, i64 4, i64 268435460, i64 65540, i64 268500996, i64 536870912, i64 805306368, i64 536936448, i64 805371904, i64 536870916, i64 805306372, i64 536936452, i64 805371908, i64 1048576, i64 269484032, i64 1114112, i64 269549568, i64 1048580, i64 269484036, i64 1114116, i64 269549572, i64 537919488, i64 806354944, i64 537985024, i64 806420480, i64 537919492, i64 806354948, i64 537985028, i64 806420484, i64 4096, i64 268439552, i64 69632, i64 268505088, i64 4100, i64 268439556, i64 69636, i64 268505092, i64 536875008, i64 805310464, i64 536940544, i64 805376000, i64 536875012, i64 805310468, i64 536940548, i64 805376004, i64 1052672, i64 269488128, i64 1118208, i64 269553664, i64 1052676, i64 269488132, i64 1118212, i64 269553668, i64 537923584, i64 806359040, i64 537989120, i64 806424576, i64 537923588, i64 806359044, i64 537989124, i64 806424580], [64 x i64] [i64 0, i64 134217728, i64 8, i64 134217736, i64 1024, i64 134218752, i64 1032, i64 134218760, i64 131072, i64 134348800, i64 131080, i64 134348808, i64 132096, i64 134349824, i64 132104, i64 134349832, i64 1, i64 134217729, i64 9, i64 134217737, i64 1025, i64 134218753, i64 1033, i64 134218761, i64 131073, i64 134348801, i64 131081, i64 134348809, i64 132097, i64 134349825, i64 132105, i64 134349833, i64 33554432, i64 167772160, i64 33554440, i64 167772168, i64 33555456, i64 167773184, i64 33555464, i64 167773192, i64 33685504, i64 167903232, i64 33685512, i64 167903240, i64 33686528, i64 167904256, i64 33686536, i64 167904264, i64 33554433, i64 167772161, i64 33554441, i64 167772169, i64 33555457, i64 167773185, i64 33555465, i64 167773193, i64 33685505, i64 167903233, i64 33685513, i64 167903241, i64 33686529, i64 167904257, i64 33686537, i64 167904265], [64 x i64] [i64 0, i64 256, i64 524288, i64 524544, i64 16777216, i64 16777472, i64 17301504, i64 17301760, i64 16, i64 272, i64 524304, i64 524560, i64 16777232, i64 16777488, i64 17301520, i64 17301776, i64 2097152, i64 2097408, i64 2621440, i64 2621696, i64 18874368, i64 18874624, i64 19398656, i64 19398912, i64 2097168, i64 2097424, i64 2621456, i64 2621712, i64 18874384, i64 18874640, i64 19398672, i64 19398928, i64 512, i64 768, i64 524800, i64 525056, i64 16777728, i64 16777984, i64 17302016, i64 17302272, i64 528, i64 784, i64 524816, i64 525072, i64 16777744, i64 16778000, i64 17302032, i64 17302288, i64 2097664, i64 2097920, i64 2621952, i64 2622208, i64 18874880, i64 18875136, i64 19399168, i64 19399424, i64 2097680, i64 2097936, i64 2621968, i64 2622224, i64 18874896, i64 18875152, i64 19399184, i64 19399440], [64 x i64] [i64 0, i64 67108864, i64 262144, i64 67371008, i64 2, i64 67108866, i64 262146, i64 67371010, i64 8192, i64 67117056, i64 270336, i64 67379200, i64 8194, i64 67117058, i64 270338, i64 67379202, i64 32, i64 67108896, i64 262176, i64 67371040, i64 34, i64 67108898, i64 262178, i64 67371042, i64 8224, i64 67117088, i64 270368, i64 67379232, i64 8226, i64 67117090, i64 270370, i64 67379234, i64 2048, i64 67110912, i64 264192, i64 67373056, i64 2050, i64 67110914, i64 264194, i64 67373058, i64 10240, i64 67119104, i64 272384, i64 67381248, i64 10242, i64 67119106, i64 272386, i64 67381250, i64 2080, i64 67110944, i64 264224, i64 67373088, i64 2082, i64 67110946, i64 264226, i64 67373090, i64 10272, i64 67119136, i64 272416, i64 67381280, i64 10274, i64 67119138, i64 272418, i64 67381282]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @des_set_odd_parity([8 x i8]* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %3 = icmp ult i32 %.0, 8
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 %11
  store i8 %10, i8* %12, align 1
  br label %13

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

15:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @des_is_weak_key([8 x i8]* noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.01, 16
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 %5, i64 0
  %7 = getelementptr [8 x i8], [8 x i8]* %0, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %6, i8* noundef nonnull dereferenceable(8) %7, i64 8)
  %8 = icmp eq i32 %bcmp, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @des_set_key([8 x i8]* noundef readonly %0, %struct.des_ks_struct* nocapture noundef writeonly %1) #3 {
  %3 = load i32, i32* @des_check_key, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %11, label %4

4:                                                ; preds = %2
  %5 = call i32 @check_parity([8 x i8]* noundef %0)
  %.not9 = icmp eq i32 %5, 0
  br i1 %.not9, label %6, label %7

6:                                                ; preds = %4
  br label %188

7:                                                ; preds = %4
  %8 = call i32 @des_is_weak_key([8 x i8]* noundef %0)
  %.not10 = icmp eq i32 %8, 0
  br i1 %.not10, label %10, label %9

9:                                                ; preds = %7
  br label %188

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr %struct.des_ks_struct, %struct.des_ks_struct* %1, i64 0, i32 0, i32 0, i64 0
  %13 = getelementptr [8 x i8], [8 x i8]* %0, i64 0, i64 0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 1
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 2
  %18 = load i8, i8* %14, align 1
  %19 = zext i8 %18 to i64
  %20 = shl nuw nsw i64 %19, 8
  %21 = or i64 %20, %16
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 3
  %23 = load i8, i8* %17, align 1
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or i64 %21, %25
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 4
  %28 = load i8, i8* %22, align 1
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = or i64 %26, %30
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 5
  %33 = load i8, i8* %27, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 6
  %36 = load i8, i8* %32, align 1
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 8
  %39 = or i64 %38, %34
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 7
  %41 = load i8, i8* %35, align 1
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 16
  %44 = or i64 %39, %43
  %45 = load i8, i8* %40, align 1
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 24
  %48 = or i64 %44, %47
  %49 = lshr i64 %48, 4
  %50 = xor i64 %49, %31
  %51 = and i64 %50, 252645135
  %52 = xor i64 %31, %51
  %53 = shl nuw nsw i64 %51, 4
  %54 = xor i64 %48, %53
  %55 = shl nuw nsw i64 %52, 18
  %56 = xor i64 %55, %52
  %57 = and i64 %56, 3435921408
  %58 = xor i64 %52, %57
  %59 = lshr exact i64 %57, 18
  %60 = xor i64 %58, %59
  %61 = shl nuw nsw i64 %54, 18
  %62 = xor i64 %61, %54
  %63 = and i64 %62, 3435921408
  %64 = xor i64 %54, %63
  %65 = lshr exact i64 %63, 18
  %66 = xor i64 %64, %65
  %67 = lshr i64 %66, 1
  %68 = xor i64 %67, %60
  %69 = and i64 %68, 1431655765
  %70 = xor i64 %60, %69
  %71 = shl nuw nsw i64 %69, 1
  %72 = xor i64 %66, %71
  %73 = lshr i64 %70, 8
  %74 = xor i64 %73, %72
  %75 = and i64 %74, 16711935
  %76 = xor i64 %72, %75
  %77 = shl nuw nsw i64 %75, 8
  %78 = xor i64 %70, %77
  %79 = lshr i64 %76, 1
  %80 = xor i64 %79, %78
  %81 = and i64 %80, 1431655765
  %82 = xor i64 %78, %81
  %83 = shl nuw nsw i64 %81, 1
  %84 = xor i64 %76, %83
  %85 = shl i64 %84, 16
  %86 = and i64 %85, 16711680
  %87 = and i64 %84, 65280
  %88 = or i64 %86, %87
  %89 = lshr i64 %84, 16
  %90 = and i64 %89, 255
  %91 = or i64 %88, %90
  %92 = lshr i64 %82, 4
  %93 = and i64 %92, 251658240
  %94 = or i64 %91, %93
  br label %95

95:                                               ; preds = %183, %11
  %.04 = phi i64 [ %94, %11 ], [ %185, %183 ]
  %.03.in = phi i64 [ %82, %11 ], [ %.1, %183 ]
  %.02 = phi i64* [ %12, %11 ], [ %184, %183 ]
  %.01 = phi i32 [ 0, %11 ], [ %186, %183 ]
  %.03 = and i64 %.03.in, 268435455
  %96 = icmp ult i32 %.01, 16
  br i1 %96, label %97, label %187

97:                                               ; preds = %95
  %98 = zext i32 %.01 to i64
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* @des_set_key.shifts2, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %.not6 = icmp eq i32 %100, 0
  br i1 %.not6, label %108, label %101

101:                                              ; preds = %97
  %102 = lshr i64 %.03, 2
  %103 = shl nuw nsw i64 %.03, 26
  %104 = or i64 %102, %103
  %105 = lshr i64 %.04, 2
  %106 = shl nsw i64 %.04, 26
  %107 = or i64 %105, %106
  br label %115

108:                                              ; preds = %97
  %109 = lshr i64 %.03, 1
  %110 = shl nuw nsw i64 %.03, 27
  %111 = or i64 %109, %110
  %112 = lshr i64 %.04, 1
  %113 = shl nsw i64 %.04, 27
  %114 = or i64 %112, %113
  br label %115

115:                                              ; preds = %108, %101
  %.15 = phi i64 [ %107, %101 ], [ %114, %108 ]
  %.1 = phi i64 [ %104, %101 ], [ %111, %108 ]
  %116 = and i64 %.1, 63
  %117 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = lshr i64 %.1, 6
  %120 = and i64 %119, 3
  %121 = lshr i64 %.1, 7
  %122 = and i64 %121, 60
  %123 = or i64 %120, %122
  %124 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 1, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = or i64 %118, %125
  %127 = lshr i64 %.1, 13
  %128 = and i64 %127, 15
  %129 = lshr i64 %.1, 14
  %130 = and i64 %129, 48
  %131 = or i64 %128, %130
  %132 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 2, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = or i64 %126, %133
  %135 = lshr i64 %.1, 20
  %136 = and i64 %135, 1
  %137 = lshr i64 %.1, 21
  %138 = and i64 %137, 6
  %139 = or i64 %136, %138
  %140 = lshr i64 %.1, 22
  %141 = and i64 %140, 56
  %142 = or i64 %139, %141
  %143 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 3, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %134, %144
  %146 = and i64 %.15, 63
  %147 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 4, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = lshr i64 %.15, 7
  %150 = and i64 %149, 3
  %151 = lshr i64 %.15, 8
  %152 = and i64 %151, 60
  %153 = or i64 %150, %152
  %154 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 5, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %148, %155
  %157 = lshr i64 %.15, 15
  %158 = and i64 %157, 63
  %159 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 6, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = or i64 %156, %160
  %162 = lshr i64 %.15, 21
  %163 = and i64 %162, 15
  %164 = lshr i64 %.15, 22
  %165 = and i64 %164, 48
  %166 = or i64 %163, %165
  %167 = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 7, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = or i64 %161, %168
  %170 = shl i64 %169, 16
  %171 = and i64 %145, 65535
  %.masked = and i64 %170, 4294901760
  %172 = or i64 %.masked, %171
  %173 = shl nuw nsw i64 %172, 2
  %174 = lshr i64 %.masked, 30
  %.masked7 = and i64 %173, 4294967292
  %175 = or i64 %.masked7, %174
  %176 = getelementptr inbounds i64, i64* %.02, i64 1
  store i64 %175, i64* %.02, align 8
  %177 = lshr i64 %145, 16
  %178 = and i64 %169, 4294901760
  %179 = or i64 %177, %178
  %180 = shl nuw nsw i64 %179, 6
  %181 = lshr i64 %179, 26
  %.masked8 = and i64 %180, 4294967232
  %182 = or i64 %.masked8, %181
  store i64 %182, i64* %176, align 8
  br label %183

183:                                              ; preds = %115
  %184 = getelementptr inbounds i64, i64* %.02, i64 2
  %185 = and i64 %.15, 268435455
  %186 = add nuw nsw i32 %.01, 1
  br label %95, !llvm.loop !7

187:                                              ; preds = %95
  br label %188

188:                                              ; preds = %187, %9, %6
  %.0 = phi i32 [ -2, %9 ], [ 0, %187 ], [ -1, %6 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @check_parity([8 x i8]* nocapture noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %16, %1
  %.01 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %3 = icmp ult i32 %.01, 8
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %.not = icmp eq i8 %7, %13
  br i1 %.not, label %15, label %14

14:                                               ; preds = %4
  br label %19

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !8

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %.0 = phi i32 [ 0, %14 ], [ 1, %18 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @des_key_sched([8 x i8]* noundef %0, %struct.des_ks_struct* nocapture noundef writeonly %1) #3 {
  %3 = call i32 @des_set_key([8 x i8]* noundef %0, %struct.des_ks_struct* noundef %1)
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }

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
