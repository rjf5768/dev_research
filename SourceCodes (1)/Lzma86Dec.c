; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma86_GetUnpackSize(i8* noundef %0, i64 noundef %1, i64* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 14
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 6, i32* %4, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load i64*, i64** %7, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %33, %12
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add i32 6, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 8, %26
  %28 = zext i32 %27 to i64
  %29 = shl i64 %25, %28
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %29
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %14, !llvm.loop !4

36:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma86_Decode(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 14
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 6, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  store i32 4, i32* %5, align 4
  br label %55

28:                                               ; preds = %19
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 14
  store i64 %31, i64* %12, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 14
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @LzmaDecode(i8* noundef %32, i64* noundef %33, i8* noundef %35, i64* noundef %12, i8* noundef %37, i32 noundef 5, i32 noundef 0, i32* noundef %13, %struct.ISzAlloc* noundef @g_Alloc)
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 14
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %55

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @x86_Convert(i8* noundef %50, i64 noundef %52, i32 noundef 0, i32* noundef %14, i32 noundef 0)
  br label %54

54:                                               ; preds = %49, %46
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %44, %26, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @LzmaDecode(i8* noundef, i64* noundef, i8* noundef, i64* noundef, i8* noundef, i32 noundef, i32 noundef, i32* noundef, %struct.ISzAlloc* noundef) #1

declare dso_local i64 @x86_Convert(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @MyAlloc(i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @MyFree(i8* noundef %6)
  ret void
}

declare dso_local i8* @MyAlloc(i64 noundef) #1

declare dso_local void @MyFree(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
