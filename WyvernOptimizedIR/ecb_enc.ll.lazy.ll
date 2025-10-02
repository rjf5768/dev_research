; ModuleID = './ecb_enc.ll'
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
  %1 = load i32, i32* @des_options.init, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  store i32 0, i32* @des_options.init, align 4
  %3 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #3
  br label %4

4:                                                ; preds = %2, %0
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_ecb_encrypt([8 x i8]* nocapture noundef readonly %0, [8 x i8]* nocapture noundef writeonly %1, %struct.des_ks_struct* noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i64], align 16
  %6 = getelementptr [8 x i8], [8 x i8]* %0, i64 0, i64 0
  %7 = getelementptr [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 2
  %12 = load i8, i8* %8, align 1
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 8
  %15 = or i64 %14, %10
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 3
  %17 = load i8, i8* %11, align 1
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 16
  %20 = or i64 %15, %19
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 4
  %22 = load i8, i8* %16, align 1
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 24
  %25 = or i64 %20, %24
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %25, i64* %26, align 16
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 5
  %28 = load i8, i8* %21, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 6
  %31 = load i8, i8* %27, align 1
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8
  %34 = or i64 %33, %29
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %0, i64 0, i64 7
  %36 = load i8, i8* %30, align 1
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or i64 %34, %38
  %40 = load i8, i8* %35, align 1
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = or i64 %39, %42
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  call void @des_encrypt(i64* noundef nonnull %45, %struct.des_ks_struct* noundef %2, i32 noundef %3) #3
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 %48, i8* %7, align 1
  %50 = lshr i64 %47, 8
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 %51, i8* %49, align 1
  %53 = lshr i64 %47, 16
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 %54, i8* %52, align 1
  %56 = lshr i64 %47, 24
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  store i8 %57, i8* %55, align 1
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  store i8 %61, i8* %58, align 1
  %63 = lshr i64 %60, 8
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  store i8 %64, i8* %62, align 1
  %66 = lshr i64 %60, 16
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  store i8 %67, i8* %65, align 1
  %69 = lshr i64 %60, 24
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %68, align 1
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 0, i64* %72, align 16
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
