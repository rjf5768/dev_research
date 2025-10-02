; ModuleID = './bitcnt_3.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitcnt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @ntbl_bitcount(i64 noundef %0) #0 {
  %2 = and i64 %0, 15
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = lshr i64 %0, 4
  %7 = and i64 %6, 15
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %5, %10
  %12 = lshr i64 %0, 8
  %13 = and i64 %12, 15
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = lshr i64 %0, 12
  %19 = and i64 %18, 15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = lshr i64 %0, 16
  %25 = and i64 %24, 15
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = lshr i64 %0, 20
  %31 = and i64 %30, 15
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %29, %34
  %36 = lshr i64 %0, 24
  %37 = and i64 %36, 15
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %35, %40
  %42 = lshr i64 %0, 28
  %43 = and i64 %42, 15
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %41, %46
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @BW_btbl_bitcount(i64 noundef %0) #0 {
  %2 = alloca %union.anon, align 4
  %3 = trunc i64 %0 to i32
  %4 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = bitcast %union.anon* %2 to i8*
  %6 = load i8, i8* %5, align 4
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = bitcast %union.anon* %2 to [4 x i8]*
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %10, %17
  %19 = bitcast %union.anon* %2 to [4 x i8]*
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = add nsw i32 %18, %25
  %27 = bitcast %union.anon* %2 to [4 x i8]*
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 2
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %26, %33
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @AR_btbl_bitcount(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = trunc i64 %0 to i32
  store i32 %3, i32* %2, align 4
  %4 = bitcast i32* %2 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %4, align 4
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = getelementptr inbounds i8, i8* %4, i64 2
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %10, %16
  %18 = getelementptr inbounds i8, i8* %4, i64 3
  %19 = load i8, i8* %11, align 2
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %17, %23
  %25 = load i8, i8* %18, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %24, %29
  ret i32 %30
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
