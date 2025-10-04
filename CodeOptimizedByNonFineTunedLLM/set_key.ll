; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/ecbdes/set_key.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_set_odd_parity([8 x i8]* noundef %0) #0 {
  %2 = alloca [8 x i8]*, align 8
  %3 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load [8 x i8]*, [8 x i8]** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = load [8 x i8]*, [8 x i8]** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4, !llvm.loop !4

24:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_is_weak_key([8 x i8]* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 %10
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %13 = load [8 x i8]*, [8 x i8]** %3, align 8
  %14 = bitcast [8 x i8]* %13 to i8*
  %15 = call i32 @memcmp(i8* noundef %12, i8* noundef %14, i64 noundef 8) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %23

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5, !llvm.loop !6

22:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_set_key([8 x i8]* noundef %0, %struct.des_ks_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8]*, align 8
  %5 = alloca %struct.des_ks_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %4, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %5, align 8
  %14 = load i32, i32* @des_check_key, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load [8 x i8]*, [8 x i8]** %4, align 8
  %18 = call i32 @check_parity([8 x i8]* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %303

21:                                               ; preds = %16
  %22 = load [8 x i8]*, [8 x i8]** %4, align 8
  %23 = call i32 @des_is_weak_key([8 x i8]* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -2, i32* %3, align 4
  br label %303

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.des_ks_struct*, %struct.des_ks_struct** %5, align 8
  %29 = bitcast %struct.des_ks_struct* %28 to i64*
  store i64* %29, i64** %12, align 8
  %30 = load [8 x i8]*, [8 x i8]** %4, align 8
  %31 = bitcast [8 x i8]* %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i64
  store i64 %35, i64* %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i64
  %40 = shl i64 %39, 8
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 16
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 24
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i64
  %65 = shl i64 %64, 8
  %66 = load i64, i64* %7, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i64
  %72 = shl i64 %71, 16
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  %77 = load i8, i8* %75, align 1
  %78 = zext i8 %77 to i64
  %79 = shl i64 %78, 24
  %80 = load i64, i64* %7, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = lshr i64 %82, 4
  %84 = load i64, i64* %6, align 8
  %85 = xor i64 %83, %84
  %86 = and i64 %85, 252645135
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = xor i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = shl i64 %90, 4
  %92 = load i64, i64* %7, align 8
  %93 = xor i64 %92, %91
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = shl i64 %94, 18
  %96 = load i64, i64* %6, align 8
  %97 = xor i64 %95, %96
  %98 = and i64 %97, 3435921408
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = xor i64 %99, %100
  %102 = load i64, i64* %8, align 8
  %103 = lshr i64 %102, 18
  %104 = xor i64 %101, %103
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = shl i64 %105, 18
  %107 = load i64, i64* %7, align 8
  %108 = xor i64 %106, %107
  %109 = and i64 %108, 3435921408
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = xor i64 %110, %111
  %113 = load i64, i64* %8, align 8
  %114 = lshr i64 %113, 18
  %115 = xor i64 %112, %114
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = lshr i64 %116, 1
  %118 = load i64, i64* %6, align 8
  %119 = xor i64 %117, %118
  %120 = and i64 %119, 1431655765
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %6, align 8
  %123 = xor i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = shl i64 %124, 1
  %126 = load i64, i64* %7, align 8
  %127 = xor i64 %126, %125
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %6, align 8
  %129 = lshr i64 %128, 8
  %130 = load i64, i64* %7, align 8
  %131 = xor i64 %129, %130
  %132 = and i64 %131, 16711935
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %7, align 8
  %135 = xor i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = shl i64 %136, 8
  %138 = load i64, i64* %6, align 8
  %139 = xor i64 %138, %137
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %7, align 8
  %141 = lshr i64 %140, 1
  %142 = load i64, i64* %6, align 8
  %143 = xor i64 %141, %142
  %144 = and i64 %143, 1431655765
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = xor i64 %146, %145
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = shl i64 %148, 1
  %150 = load i64, i64* %7, align 8
  %151 = xor i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = and i64 %152, 255
  %154 = shl i64 %153, 16
  %155 = load i64, i64* %7, align 8
  %156 = and i64 %155, 65280
  %157 = or i64 %154, %156
  %158 = load i64, i64* %7, align 8
  %159 = and i64 %158, 16711680
  %160 = lshr i64 %159, 16
  %161 = or i64 %157, %160
  %162 = load i64, i64* %6, align 8
  %163 = and i64 %162, 4026531840
  %164 = lshr i64 %163, 4
  %165 = or i64 %161, %164
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %6, align 8
  %167 = and i64 %166, 268435455
  store i64 %167, i64* %6, align 8
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %299, %27
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %169, 16
  br i1 %170, label %171, label %302

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* @des_set_key.shifts2, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = load i64, i64* %6, align 8
  %179 = lshr i64 %178, 2
  %180 = load i64, i64* %6, align 8
  %181 = shl i64 %180, 26
  %182 = or i64 %179, %181
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = lshr i64 %183, 2
  %185 = load i64, i64* %7, align 8
  %186 = shl i64 %185, 26
  %187 = or i64 %184, %186
  store i64 %187, i64* %7, align 8
  br label %199

188:                                              ; preds = %171
  %189 = load i64, i64* %6, align 8
  %190 = lshr i64 %189, 1
  %191 = load i64, i64* %6, align 8
  %192 = shl i64 %191, 27
  %193 = or i64 %190, %192
  store i64 %193, i64* %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = lshr i64 %194, 1
  %196 = load i64, i64* %7, align 8
  %197 = shl i64 %196, 27
  %198 = or i64 %195, %197
  store i64 %198, i64* %7, align 8
  br label %199

199:                                              ; preds = %188, %177
  %200 = load i64, i64* %6, align 8
  %201 = and i64 %200, 268435455
  store i64 %201, i64* %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = and i64 %202, 268435455
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %6, align 8
  %205 = and i64 %204, 63
  %206 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 0), i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = lshr i64 %208, 6
  %210 = and i64 %209, 3
  %211 = load i64, i64* %6, align 8
  %212 = lshr i64 %211, 7
  %213 = and i64 %212, 60
  %214 = or i64 %210, %213
  %215 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 1), i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = or i64 %207, %216
  %218 = load i64, i64* %6, align 8
  %219 = lshr i64 %218, 13
  %220 = and i64 %219, 15
  %221 = load i64, i64* %6, align 8
  %222 = lshr i64 %221, 14
  %223 = and i64 %222, 48
  %224 = or i64 %220, %223
  %225 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 2), i64 0, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = or i64 %217, %226
  %228 = load i64, i64* %6, align 8
  %229 = lshr i64 %228, 20
  %230 = and i64 %229, 1
  %231 = load i64, i64* %6, align 8
  %232 = lshr i64 %231, 21
  %233 = and i64 %232, 6
  %234 = or i64 %230, %233
  %235 = load i64, i64* %6, align 8
  %236 = lshr i64 %235, 22
  %237 = and i64 %236, 56
  %238 = or i64 %234, %237
  %239 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 3), i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = or i64 %227, %240
  store i64 %241, i64* %9, align 8
  %242 = load i64, i64* %7, align 8
  %243 = and i64 %242, 63
  %244 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 4), i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %7, align 8
  %247 = lshr i64 %246, 7
  %248 = and i64 %247, 3
  %249 = load i64, i64* %7, align 8
  %250 = lshr i64 %249, 8
  %251 = and i64 %250, 60
  %252 = or i64 %248, %251
  %253 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 5), i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = or i64 %245, %254
  %256 = load i64, i64* %7, align 8
  %257 = lshr i64 %256, 15
  %258 = and i64 %257, 63
  %259 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 6), i64 0, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = or i64 %255, %260
  %262 = load i64, i64* %7, align 8
  %263 = lshr i64 %262, 21
  %264 = and i64 %263, 15
  %265 = load i64, i64* %7, align 8
  %266 = lshr i64 %265, 22
  %267 = and i64 %266, 48
  %268 = or i64 %264, %267
  %269 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 7), i64 0, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = or i64 %261, %270
  store i64 %271, i64* %8, align 8
  %272 = load i64, i64* %8, align 8
  %273 = shl i64 %272, 16
  %274 = load i64, i64* %9, align 8
  %275 = and i64 %274, 65535
  %276 = or i64 %273, %275
  %277 = and i64 %276, 4294967295
  store i64 %277, i64* %10, align 8
  %278 = load i64, i64* %10, align 8
  %279 = shl i64 %278, 2
  %280 = load i64, i64* %10, align 8
  %281 = lshr i64 %280, 30
  %282 = or i64 %279, %281
  %283 = and i64 %282, 4294967295
  %284 = load i64*, i64** %12, align 8
  %285 = getelementptr inbounds i64, i64* %284, i32 1
  store i64* %285, i64** %12, align 8
  store i64 %283, i64* %284, align 8
  %286 = load i64, i64* %9, align 8
  %287 = lshr i64 %286, 16
  %288 = load i64, i64* %8, align 8
  %289 = and i64 %288, 4294901760
  %290 = or i64 %287, %289
  store i64 %290, i64* %10, align 8
  %291 = load i64, i64* %10, align 8
  %292 = shl i64 %291, 6
  %293 = load i64, i64* %10, align 8
  %294 = lshr i64 %293, 26
  %295 = or i64 %292, %294
  %296 = and i64 %295, 4294967295
  %297 = load i64*, i64** %12, align 8
  %298 = getelementptr inbounds i64, i64* %297, i32 1
  store i64* %298, i64** %12, align 8
  store i64 %296, i64* %297, align 8
  br label %299

299:                                              ; preds = %199
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  br label %168, !llvm.loop !7

302:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %302, %25, %20
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_parity([8 x i8]* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load [8 x i8]*, [8 x i8]** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load [8 x i8]*, [8 x i8]** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %15, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5, !llvm.loop !8

31:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_key_sched([8 x i8]* noundef %0, %struct.des_ks_struct* noundef %1) #0 {
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca %struct.des_ks_struct*, align 8
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %4, align 8
  %5 = load [8 x i8]*, [8 x i8]** %3, align 8
  %6 = load %struct.des_ks_struct*, %struct.des_ks_struct** %4, align 8
  %7 = call i32 @des_set_key([8 x i8]* noundef %5, %struct.des_ks_struct* noundef %6)
  ret i32 %7
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

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
