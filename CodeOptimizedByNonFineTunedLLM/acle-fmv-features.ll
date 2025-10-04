; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/AArch64/acle-fmv-features.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/AArch64/acle-fmv-features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@any_fails = internal global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flagm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"flagm2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dotprod\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sha3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rdm\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lse\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sha2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rcpc\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"rcpc2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fcma\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"jscvt\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dpb\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dpb2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"bf16\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"i8mm\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dit\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fp16\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ssbs\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"bti\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"simd\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"sme\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"sme2\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"f32mm\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"f64mm\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"fp16fml\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"frintts\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"rcpc3\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"sve\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"sve2\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"sve2-aes\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"sve2-bitperm\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sve2-sha3\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"sve2-sm4\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"wfxt\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"sm4\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sme-f64f64\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"sme-i16i64\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"mops\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"memtag\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"cssc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @check_flagm()
  call void @check_flagm2()
  call void @check_dotprod()
  call void @check_sha3()
  call void @check_rdm()
  call void @check_lse()
  call void @check_sha2()
  call void @check_aes()
  call void @check_rcpc()
  call void @check_rcpc2()
  call void @check_fcma()
  call void @check_jscvt()
  call void @check_dpb()
  call void @check_dpb2()
  call void @check_bf16()
  call void @check_i8mm()
  call void @check_dit()
  call void @check_fp16()
  call void @check_ssbs()
  call void @check_bti()
  call void @check_simd()
  call void @check_fp()
  call void @check_crc()
  call void @check_sme()
  call void @check_sme2()
  call void @check_f32mm()
  call void @check_f64mm()
  call void @check_fp16fml()
  call void @check_frintts()
  call void @check_rcpc3()
  call void @check_rng()
  call void @check_sve()
  call void @check_sve2()
  call void @check_sve2_aes()
  call void @check_sve2_bitperm()
  call void @check_sve2_sha3()
  call void @check_sve2_sm4()
  call void @check_wfxt()
  call void @check_sb()
  call void @check_sm4()
  call void @check_sme_f64f64()
  call void @check_sme_i16i64()
  call void @check_mops()
  call void @check_memtag()
  call void @check_cssc()
  %6 = load i8, i8* @any_fails, align 1
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 -1, i32 0
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_flagm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_flagm2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_dotprod() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sha3() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_rdm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_lse() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sha2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_aes() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_rcpc() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_rcpc2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_fcma() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_jscvt() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_dpb() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_dpb2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_bf16() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_i8mm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_dit() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_fp16() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_ssbs() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_bti() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_simd() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_fp() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_crc() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sme() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sme2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_f32mm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_f64mm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_fp16fml() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_frintts() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_rcpc3() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_rng() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve2_aes() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve2_bitperm() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve2_sha3() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sve2_sm4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_wfxt() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sb() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sm4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sme_f64f64() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_sme_i16i64() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_mops() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_memtag() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_cssc() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
