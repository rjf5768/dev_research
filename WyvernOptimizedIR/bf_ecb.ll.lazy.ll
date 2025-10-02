; ModuleID = './bf_ecb.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = dso_local global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @BF_options() #0 {
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_ecb_encrypt(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, %struct.bf_key_st* noundef %2, i32 noundef %3) #1 {
  %5 = alloca [2 x i64], align 16
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %0, align 1
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 24
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or i64 %9, %13
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %10, align 1
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 8
  %19 = or i64 %14, %18
  %20 = getelementptr inbounds i8, i8* %0, i64 4
  %21 = load i8, i8* %15, align 1
  %22 = zext i8 %21 to i64
  %23 = or i64 %19, %22
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = getelementptr inbounds i8, i8* %0, i64 5
  %26 = load i8, i8* %20, align 1
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 24
  %29 = getelementptr inbounds i8, i8* %0, i64 6
  %30 = load i8, i8* %25, align 1
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 16
  %33 = or i64 %28, %32
  %34 = getelementptr inbounds i8, i8* %0, i64 7
  %35 = load i8, i8* %29, align 1
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or i64 %33, %37
  %39 = load i8, i8* %34, align 1
  %40 = zext i8 %39 to i64
  %41 = or i64 %38, %40
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %43, %struct.bf_key_st* noundef %2, i32 noundef %3) #3
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %45 = load i64, i64* %44, align 16
  %46 = lshr i64 %45, 24
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %47, i8* %1, align 1
  %49 = lshr i64 %45, 16
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %50, i8* %48, align 1
  %52 = lshr i64 %45, 8
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %53, i8* %51, align 1
  %55 = trunc i64 %45 to i8
  %56 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %55, i8* %54, align 1
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = lshr i64 %58, 24
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %60, i8* %56, align 1
  %62 = lshr i64 %58, 16
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %63, i8* %61, align 1
  %65 = lshr i64 %58, 8
  %66 = trunc i64 %65 to i8
  %67 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %66, i8* %64, align 1
  %68 = trunc i64 %58 to i8
  store i8 %68, i8* %67, align 1
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 0, i64* %70, align 16
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
