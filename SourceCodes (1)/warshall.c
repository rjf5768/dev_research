; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/warshall.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/warshall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @TC(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 31
  %16 = sdiv i32 %15, 32
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %3, align 8
  store i32* %28, i32** %12, align 8
  store i32 1, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  store i32* %29, i32** %13, align 8
  br label %30

30:                                               ; preds = %90, %2
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %3, align 8
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %75, %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %59, %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %60, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %63, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %63, align 4
  br label %55, !llvm.loop !4

67:                                               ; preds = %55
  br label %75

68:                                               ; preds = %41
  %69 = load i32*, i32** %7, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %7, align 8
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32*, i32** %10, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %10, align 8
  br label %37, !llvm.loop !6

82:                                               ; preds = %37
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %12, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** %13, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %13, align 8
  br label %30, !llvm.loop !7

97:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RTC(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  call void @TC(i32* noundef %9, i32 noundef %10)
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 31
  %13 = sdiv i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  store i32 1, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32*, i32** %7, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %7, align 8
  br label %26, !llvm.loop !8

49:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
