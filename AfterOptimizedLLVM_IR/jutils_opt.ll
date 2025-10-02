; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jutils.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_natural_order = dso_local constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jdiv_round_up(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add nsw i64 %5, %6
  %8 = sub nsw i64 %7, 1
  %9 = load i64, i64* %4, align 8
  %10 = sdiv i64 %8, %9
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jround_up(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = sub nsw i64 %5, 1
  %7 = load i64, i64* %3, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = srem i64 %10, %11
  %13 = sub nsw i64 %9, %12
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jcopy_sample_rows(i8** noundef %0, i32 noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 1
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8** %23, i8*** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i8**, i8*** %9, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8** %27, i8*** %9, align 8
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %42, %6
  %30 = load i32, i32* %16, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  %35 = load i8*, i8** %33, align 8
  store i8* %35, i8** %13, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %9, align 8
  %38 = load i8*, i8** %36, align 8
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i64, i64* %15, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %40, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  br label %29, !llvm.loop !4

45:                                               ; preds = %29
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jcopy_block_row([64 x i16]* noundef %0, [64 x i16]* noundef %1, i32 noundef %2) #0 {
  %4 = alloca [64 x i16]*, align 8
  %5 = alloca [64 x i16]*, align 8
  %6 = alloca i32, align 4
  store [64 x i16]* %0, [64 x i16]** %4, align 8
  store [64 x i16]* %1, [64 x i16]** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load [64 x i16]*, [64 x i16]** %5, align 8
  %8 = bitcast [64 x i16]* %7 to i8*
  %9 = load [64 x i16]*, [64 x i16]** %4, align 8
  %10 = bitcast [64 x i16]* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %10, i64 %13, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jzero_far(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 %6, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
