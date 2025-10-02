; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrcOpt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrcOpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcUpdateT4(i32 noundef %0, i8* noundef %1, i64 noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %36, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %24, %27
  %29 = and i32 %28, 255
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %23, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 8
  %35 = xor i32 %32, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  br label %11, !llvm.loop !4

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %84, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp uge i64 %43, 4
  br i1 %44, label %45, label %89

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 255
  %54 = add i32 768, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = lshr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = add i32 512, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %57, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = add i32 256, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %66, %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = lshr i32 %77, 24
  %79 = add i32 0, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %75, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %45
  %85 = load i64, i64* %7, align 8
  %86 = sub i64 %85, 4
  store i64 %86, i64* %7, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %9, align 8
  br label %42, !llvm.loop !6

89:                                               ; preds = %42
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i64, i64* %7, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %95, %98
  %100 = and i32 %99, 255
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %94, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = lshr i32 %104, 8
  %106 = xor i32 %103, %105
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %93
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %7, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  br label %90, !llvm.loop !7

112:                                              ; preds = %90
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcUpdateT8(i32 noundef %0, i8* noundef %1, i64 noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @CrcUpdateT4(i32 noundef %9, i8* noundef %10, i64 noundef %11, i32* noundef %12)
  ret i32 %13
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
