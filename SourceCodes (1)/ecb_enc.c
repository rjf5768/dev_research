; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/ecbdes/ecb_enc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/ecbdes/ecb_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@des_SPtrans = dso_local constant [8 x [64 x i64]] [[64 x i64] [i64 34080768, i64 524288, i64 33554434, i64 34080770, i64 33554432, i64 526338, i64 524290, i64 33554434, i64 526338, i64 34080768, i64 34078720, i64 2050, i64 33556482, i64 33554432, i64 0, i64 524290, i64 524288, i64 2, i64 33556480, i64 526336, i64 34080770, i64 34078720, i64 2050, i64 33556480, i64 2, i64 2048, i64 526336, i64 34078722, i64 2048, i64 33556482, i64 34078722, i64 0, i64 0, i64 34080770, i64 33556480, i64 524290, i64 34080768, i64 524288, i64 2050, i64 33556480, i64 34078722, i64 2048, i64 526336, i64 33554434, i64 526338, i64 2, i64 33554434, i64 34078720, i64 34080770, i64 526336, i64 34078720, i64 33556482, i64 33554432, i64 2050, i64 524290, i64 0, i64 524288, i64 33554432, i64 33556482, i64 34080768, i64 2, i64 34078722, i64 2048, i64 526338], [64 x i64] [i64 1074823184, i64 0, i64 1081344, i64 1074790400, i64 1073741840, i64 32784, i64 1073774592, i64 1081344, i64 32768, i64 1074790416, i64 16, i64 1073774592, i64 1048592, i64 1074823168, i64 1074790400, i64 16, i64 1048576, i64 1073774608, i64 1074790416, i64 32768, i64 1081360, i64 1073741824, i64 0, i64 1048592, i64 1073774608, i64 1081360, i64 1074823168, i64 1073741840, i64 1073741824, i64 1048576, i64 32784, i64 1074823184, i64 1048592, i64 1074823168, i64 1073774592, i64 1081360, i64 1074823184, i64 1048592, i64 1073741840, i64 0, i64 1073741824, i64 32784, i64 1048576, i64 1074790416, i64 32768, i64 1073741824, i64 1081360, i64 1073774608, i64 1074823168, i64 32768, i64 0, i64 1073741840, i64 16, i64 1074823184, i64 1081344, i64 1074790400, i64 1074790416, i64 1048576, i64 32784, i64 1073774592, i64 1073774608, i64 16, i64 1074790400, i64 1081344], [64 x i64] [i64 67108865, i64 67371264, i64 256, i64 67109121, i64 262145, i64 67108864, i64 67109121, i64 262400, i64 67109120, i64 262144, i64 67371008, i64 1, i64 67371265, i64 257, i64 1, i64 67371009, i64 0, i64 262145, i64 67371264, i64 256, i64 257, i64 67371265, i64 262144, i64 67108865, i64 67371009, i64 67109120, i64 262401, i64 67371008, i64 262400, i64 0, i64 67108864, i64 262401, i64 67371264, i64 256, i64 1, i64 262144, i64 257, i64 262145, i64 67371008, i64 67109121, i64 0, i64 67371264, i64 262400, i64 67371009, i64 262145, i64 67108864, i64 67371265, i64 1, i64 262401, i64 67108865, i64 67108864, i64 67371265, i64 262144, i64 67109120, i64 67109121, i64 262400, i64 67109120, i64 0, i64 67371009, i64 257, i64 67108865, i64 262401, i64 256, i64 67371008], [64 x i64] [i64 4198408, i64 268439552, i64 8, i64 272633864, i64 0, i64 272629760, i64 268439560, i64 4194312, i64 272633856, i64 268435464, i64 268435456, i64 4104, i64 268435464, i64 4198408, i64 4194304, i64 268435456, i64 272629768, i64 4198400, i64 4096, i64 8, i64 4198400, i64 268439560, i64 272629760, i64 4096, i64 4104, i64 0, i64 4194312, i64 272633856, i64 268439552, i64 272629768, i64 272633864, i64 4194304, i64 272629768, i64 4104, i64 4194304, i64 268435464, i64 4198400, i64 268439552, i64 8, i64 272629760, i64 268439560, i64 0, i64 4096, i64 4194312, i64 0, i64 272629768, i64 272633856, i64 4096, i64 268435456, i64 272633864, i64 4198408, i64 4194304, i64 272633864, i64 8, i64 268439552, i64 4198408, i64 4194312, i64 4198400, i64 272629760, i64 268439560, i64 4104, i64 268435456, i64 268435464, i64 272633856], [64 x i64] [i64 134217728, i64 65536, i64 1024, i64 134284320, i64 134283296, i64 134218752, i64 66592, i64 134283264, i64 65536, i64 32, i64 134217760, i64 66560, i64 134218784, i64 134283296, i64 134284288, i64 0, i64 66560, i64 134217728, i64 65568, i64 1056, i64 134218752, i64 66592, i64 0, i64 134217760, i64 32, i64 134218784, i64 134284320, i64 65568, i64 134283264, i64 1024, i64 1056, i64 134284288, i64 134284288, i64 134218784, i64 65568, i64 134283264, i64 65536, i64 32, i64 134217760, i64 134218752, i64 134217728, i64 66560, i64 134284320, i64 0, i64 66592, i64 134217728, i64 1024, i64 65568, i64 134218784, i64 1024, i64 0, i64 134284320, i64 134283296, i64 134284288, i64 1056, i64 65536, i64 66560, i64 134283296, i64 134218752, i64 1056, i64 32, i64 66592, i64 134283264, i64 134217760], [64 x i64] [i64 2147483712, i64 2097216, i64 0, i64 2149588992, i64 2097216, i64 8192, i64 2147491904, i64 2097152, i64 8256, i64 2149589056, i64 2105344, i64 2147483648, i64 2147491840, i64 2147483712, i64 2149580800, i64 2105408, i64 2097152, i64 2147491904, i64 2149580864, i64 0, i64 8192, i64 64, i64 2149588992, i64 2149580864, i64 2149589056, i64 2149580800, i64 2147483648, i64 8256, i64 64, i64 2105344, i64 2105408, i64 2147491840, i64 8256, i64 2147483648, i64 2147491840, i64 2105408, i64 2149588992, i64 2097216, i64 0, i64 2147491840, i64 2147483648, i64 8192, i64 2149580864, i64 2097152, i64 2097216, i64 2149589056, i64 2105344, i64 64, i64 2149589056, i64 2105344, i64 2097152, i64 2147491904, i64 2147483712, i64 2149580800, i64 2105408, i64 0, i64 8192, i64 2147483712, i64 2147491904, i64 2149588992, i64 2149580800, i64 8256, i64 64, i64 2149580864], [64 x i64] [i64 16384, i64 512, i64 16777728, i64 16777220, i64 16794116, i64 16388, i64 16896, i64 0, i64 16777216, i64 16777732, i64 516, i64 16793600, i64 4, i64 16794112, i64 16793600, i64 516, i64 16777732, i64 16384, i64 16388, i64 16794116, i64 0, i64 16777728, i64 16777220, i64 16896, i64 16793604, i64 16900, i64 16794112, i64 4, i64 16900, i64 16793604, i64 512, i64 16777216, i64 16900, i64 16793600, i64 16793604, i64 516, i64 16384, i64 512, i64 16777216, i64 16793604, i64 16777732, i64 16900, i64 16896, i64 0, i64 512, i64 16777220, i64 4, i64 16777728, i64 0, i64 16777732, i64 16777728, i64 16896, i64 516, i64 16384, i64 16794116, i64 16777216, i64 16794112, i64 4, i64 16388, i64 16794116, i64 16777220, i64 16794112, i64 16793600, i64 16388], [64 x i64] [i64 545259648, i64 545390592, i64 131200, i64 0, i64 537001984, i64 8388736, i64 545259520, i64 545390720, i64 128, i64 536870912, i64 8519680, i64 131200, i64 8519808, i64 537002112, i64 536871040, i64 545259520, i64 131072, i64 8519808, i64 8388736, i64 537001984, i64 545390720, i64 536871040, i64 0, i64 8519680, i64 536870912, i64 8388608, i64 537002112, i64 545259648, i64 8388608, i64 131072, i64 545390592, i64 128, i64 8388608, i64 131072, i64 536871040, i64 545390720, i64 131200, i64 536870912, i64 0, i64 8519680, i64 545259648, i64 537002112, i64 537001984, i64 8388736, i64 545390592, i64 128, i64 8388736, i64 537001984, i64 545390720, i64 8388608, i64 545259520, i64 536871040, i64 8519680, i64 131200, i64 537002112, i64 545259520, i64 128, i64 545390592, i64 8519808, i64 0, i64 536870912, i64 545259648, i64 131072, i64 8519808]], align 16
@.str = private unnamed_addr constant [34 x i8] c"libdes v 3.24 - 20-Apr-1996 - eay\00", align 1
@libdes_version = dso_local global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"DES part of SSLeay 0.6.6 06-Dec-1996\00", align 1
@DES_version = dso_local global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), align 8
@des_options.init = internal global i32 1, align 4
@des_options.buf = internal global [32 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cisc\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"des(%s,%s,%s,%s)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @des_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @des_options.init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  store i32 0, i32* @des_options.init, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef %8, i8* noundef %9, i8* noundef %10, i8* noundef %11) #3
  br label %13

13:                                               ; preds = %7, %0
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_ecb_encrypt([8 x i8]* noundef %0, [8 x i8]* noundef %1, %struct.des_ks_struct* noundef %2, i32 noundef %3) #0 {
  %5 = alloca [8 x i8]*, align 8
  %6 = alloca [8 x i8]*, align 8
  %7 = alloca %struct.des_ks_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i64], align 16
  store [8 x i8]* %0, [8 x i8]** %5, align 8
  store [8 x i8]* %1, [8 x i8]** %6, align 8
  store %struct.des_ks_struct* %2, %struct.des_ks_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load [8 x i8]*, [8 x i8]** %5, align 8
  %14 = bitcast [8 x i8]* %13 to i8*
  store i8* %14, i8** %10, align 8
  %15 = load [8 x i8]*, [8 x i8]** %6, align 8
  %16 = bitcast [8 x i8]* %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %10, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 8
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i64
  %32 = shl i64 %31, 16
  %33 = load i64, i64* %9, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 24
  %40 = load i64, i64* %9, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i64
  %52 = shl i64 %51, 8
  %53 = load i64, i64* %9, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i64
  %59 = shl i64 %58, 16
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = shl i64 %65, 24
  %67 = load i64, i64* %9, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %72 = load %struct.des_ks_struct*, %struct.des_ks_struct** %7, align 8
  %73 = load i32, i32* %8, align 4
  call void @des_encrypt(i64* noundef %71, %struct.des_ks_struct* noundef %72, i32 noundef %73)
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %75 = load i64, i64* %74, align 16
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = and i64 %76, 255
  %78 = trunc i64 %77 to i8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i64, i64* %9, align 8
  %82 = lshr i64 %81, 8
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i8
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  store i8 %84, i8* %85, align 1
  %87 = load i64, i64* %9, align 8
  %88 = lshr i64 %87, 16
  %89 = and i64 %88, 255
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %11, align 8
  store i8 %90, i8* %91, align 1
  %93 = load i64, i64* %9, align 8
  %94 = lshr i64 %93, 24
  %95 = and i64 %94, 255
  %96 = trunc i64 %95 to i8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %101, 255
  %103 = trunc i64 %102 to i8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i64, i64* %9, align 8
  %107 = lshr i64 %106, 8
  %108 = and i64 %107, 255
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i64, i64* %9, align 8
  %113 = lshr i64 %112, 16
  %114 = and i64 %113, 255
  %115 = trunc i64 %114 to i8
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i64, i64* %9, align 8
  %119 = lshr i64 %118, 24
  %120 = and i64 %119, 255
  %121 = trunc i64 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8 %121, i8* %122, align 1
  %124 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %124, align 8
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 0, i64* %125, align 16
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local void @des_encrypt(i64* noundef, %struct.des_ks_struct* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
