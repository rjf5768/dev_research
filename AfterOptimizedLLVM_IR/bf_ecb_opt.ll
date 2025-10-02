; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ecb.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = dso_local global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @BF_options() #0 {
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_ecb_encrypt(i8* noundef %0, i8* noundef %1, %struct.bf_key_st* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bf_key_st*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bf_key_st* %2, %struct.bf_key_st** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  %13 = load i8, i8* %11, align 1
  %14 = zext i8 %13 to i64
  %15 = shl i64 %14, 24
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i64
  %20 = shl i64 %19, 16
  %21 = load i64, i64* %9, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i64
  %27 = shl i64 %26, 8
  %28 = load i64, i64* %9, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i64
  %34 = load i64, i64* %9, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %36, i64* %37, align 16
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i64
  %42 = shl i64 %41, 24
  store i64 %42, i64* %9, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 16
  %48 = load i64, i64* %9, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 8
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %66 = load %struct.bf_key_st*, %struct.bf_key_st** %7, align 8
  %67 = load i32, i32* %8, align 4
  call void @BF_encrypt(i64* noundef %65, %struct.bf_key_st* noundef %66, i32 noundef %67)
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = lshr i64 %70, 24
  %72 = and i64 %71, 255
  %73 = trunc i64 %72 to i8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i64, i64* %9, align 8
  %77 = lshr i64 %76, 16
  %78 = and i64 %77, 255
  %79 = trunc i64 %78 to i8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i64, i64* %9, align 8
  %83 = lshr i64 %82, 8
  %84 = and i64 %83, 255
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i64, i64* %9, align 8
  %89 = and i64 %88, 255
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i8 %90, i8* %91, align 1
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = lshr i64 %95, 24
  %97 = and i64 %96, 255
  %98 = trunc i64 %97 to i8
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 %98, i8* %99, align 1
  %101 = load i64, i64* %9, align 8
  %102 = lshr i64 %101, 16
  %103 = and i64 %102, 255
  %104 = trunc i64 %103 to i8
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i64, i64* %9, align 8
  %108 = lshr i64 %107, 8
  %109 = and i64 %108, 255
  %110 = trunc i64 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i64, i64* %9, align 8
  %114 = and i64 %113, 255
  %115 = trunc i64 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  store i8 %115, i8* %116, align 1
  %118 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %119, align 16
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
