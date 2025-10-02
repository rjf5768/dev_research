; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_enc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @mix16(i16* noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i16* %0, i16** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i16*, i16** %8, align 8
  store i16* %21, i16** %15, align 8
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %7
  %25 = load i32, i32* %13, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %67, %24
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i16*, i16** %15, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 0
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i16*, i16** %15, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 1
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i16*, i16** %15, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i16, i16* %44, i64 %45
  store i16* %46, i16** %15, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %19, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %20, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %20, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %34
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %30, !llvm.loop !4

70:                                               ; preds = %30
  br label %101

71:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %97, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i16*, i16** %15, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 0
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i16*, i16** %15, align 8
  %86 = getelementptr inbounds i16, i16* %85, i64 1
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i16*, i16** %15, align 8
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i16, i16* %94, i64 %95
  store i16* %96, i16** %15, align 8
  br label %97

97:                                               ; preds = %76
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %72, !llvm.loop !6

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %70
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mix20(i8* noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %17, align 8
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %7
  %25 = load i32, i32* %13, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %101, %24
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = load i8*, i8** %17, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 16
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = or i32 %39, %44
  %46 = load i8*, i8** %17, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = shl i32 %51, 8
  %53 = ashr i32 %52, 12
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 16
  %61 = load i8*, i8** %17, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = or i32 %60, %65
  %67 = load i8*, i8** %17, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %66, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = shl i32 %72, 8
  %74 = ashr i32 %73, 12
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub i32 %75, 1
  %77 = mul i32 %76, 3
  %78 = load i8*, i8** %17, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %17, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %16, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* %13, align 4
  %89 = ashr i32 %87, %88
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %34
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %30, !llvm.loop !7

104:                                              ; preds = %30
  br label %169

105:                                              ; preds = %7
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %165, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %168

110:                                              ; preds = %106
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 16
  %116 = load i8*, i8** %17, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = or i32 %115, %120
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %121, %125
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = shl i32 %127, 8
  %129 = ashr i32 %128, 12
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  %134 = load i8*, i8** %17, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8* %135, i8** %17, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, 16
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %144, 8
  %146 = or i32 %140, %145
  %147 = load i8*, i8** %17, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %146, %150
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = shl i32 %152, 8
  %154 = ashr i32 %153, 12
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %9, align 4
  %160 = sub i32 %159, 1
  %161 = mul i32 %160, 3
  %162 = load i8*, i8** %17, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %17, align 8
  br label %165

165:                                              ; preds = %110
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %106, !llvm.loop !8

168:                                              ; preds = %106
  br label %169

169:                                              ; preds = %168, %104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mix24(i8* noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* noundef %7, i32 noundef %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i16* %7, i16** %17, align 8
  store i32 %8, i32* %18, align 4
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %21, align 8
  %29 = load i32, i32* %18, align 4
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %225

38:                                               ; preds = %9
  %39 = load i32, i32* %15, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %26, align 4
  %41 = load i32, i32* %26, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %27, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %148

46:                                               ; preds = %38
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %47

47:                                               ; preds = %142, %46
  %48 = load i32, i32* %24, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %147

51:                                               ; preds = %47
  %52 = load i8*, i8** %21, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 16
  %57 = load i8*, i8** %21, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = or i32 %56, %61
  %63 = load i8*, i8** %21, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %62, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = shl i32 %68, 8
  %70 = ashr i32 %69, 8
  store i32 %70, i32* %19, align 4
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8* %72, i8** %21, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 16
  %78 = load i8*, i8** %21, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = or i32 %77, %82
  %84 = load i8*, i8** %21, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %83, %87
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = shl i32 %89, 8
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub i32 %92, 1
  %94 = mul i32 %93, 3
  %95 = load i8*, i8** %21, align 8
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %21, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %23, align 4
  %100 = and i32 %98, %99
  %101 = trunc i32 %100 to i16
  %102 = load i16*, i16** %17, align 8
  %103 = load i32, i32* %25, align 4
  %104 = add nsw i32 %103, 0
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %102, i64 %105
  store i16 %101, i16* %106, align 2
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %23, align 4
  %109 = and i32 %107, %108
  %110 = trunc i32 %109 to i16
  %111 = load i16*, i16** %17, align 8
  %112 = load i32, i32* %25, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %111, i64 %114
  store i16 %110, i16* %115, align 2
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %19, align 4
  %118 = ashr i32 %117, %116
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %20, align 4
  %121 = ashr i32 %120, %119
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %19, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %20, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = load i32, i32* %15, align 4
  %130 = ashr i32 %128, %129
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %24, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %51
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %25, align 4
  br label %47, !llvm.loop !9

147:                                              ; preds = %47
  br label %224

148:                                              ; preds = %38
  store i32 0, i32* %24, align 4
  br label %149

149:                                              ; preds = %220, %148
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %223

153:                                              ; preds = %149
  %154 = load i8*, i8** %21, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 16
  %159 = load i8*, i8** %21, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 %162, 8
  %164 = or i32 %158, %163
  %165 = load i8*, i8** %21, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %164, %168
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %19, align 4
  %171 = shl i32 %170, 8
  %172 = ashr i32 %171, 8
  store i32 %172, i32* %19, align 4
  %173 = load i8*, i8** %21, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  store i8* %174, i8** %21, align 8
  %175 = load i8*, i8** %21, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 16
  %180 = load i8*, i8** %21, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 8
  %185 = or i32 %179, %184
  %186 = load i8*, i8** %21, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %185, %189
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = shl i32 %191, 8
  %193 = ashr i32 %192, 8
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %11, align 4
  %195 = sub i32 %194, 1
  %196 = mul i32 %195, 3
  %197 = load i8*, i8** %21, align 8
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %21, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %19, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %27, align 4
  %204 = load i32, i32* %20, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %202, %205
  %207 = load i32, i32* %15, align 4
  %208 = ashr i32 %206, %207
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %24, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %24, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %153
  %221 = load i32, i32* %24, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %24, align 4
  br label %149, !llvm.loop !10

223:                                              ; preds = %149
  br label %224

224:                                              ; preds = %223, %147
  br label %385

225:                                              ; preds = %9
  %226 = load i32, i32* %18, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %320

228:                                              ; preds = %225
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %229

229:                                              ; preds = %314, %228
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %319

233:                                              ; preds = %229
  %234 = load i8*, i8** %21, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl i32 %237, 16
  %239 = load i8*, i8** %21, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl i32 %242, 8
  %244 = or i32 %238, %243
  %245 = load i8*, i8** %21, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = or i32 %244, %248
  store i32 %249, i32* %19, align 4
  %250 = load i32, i32* %19, align 4
  %251 = shl i32 %250, 8
  %252 = ashr i32 %251, 8
  store i32 %252, i32* %19, align 4
  %253 = load i8*, i8** %21, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  store i8* %254, i8** %21, align 8
  %255 = load i8*, i8** %21, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 2
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = shl i32 %258, 16
  %260 = load i8*, i8** %21, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = shl i32 %263, 8
  %265 = or i32 %259, %264
  %266 = load i8*, i8** %21, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %265, %269
  store i32 %270, i32* %20, align 4
  %271 = load i32, i32* %20, align 4
  %272 = shl i32 %271, 8
  %273 = ashr i32 %272, 8
  store i32 %273, i32* %20, align 4
  %274 = load i32, i32* %11, align 4
  %275 = sub i32 %274, 1
  %276 = mul i32 %275, 3
  %277 = load i8*, i8** %21, align 8
  %278 = zext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %21, align 8
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %23, align 4
  %282 = and i32 %280, %281
  %283 = trunc i32 %282 to i16
  %284 = load i16*, i16** %17, align 8
  %285 = load i32, i32* %25, align 4
  %286 = add nsw i32 %285, 0
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i16, i16* %284, i64 %287
  store i16 %283, i16* %288, align 2
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %23, align 4
  %291 = and i32 %289, %290
  %292 = trunc i32 %291 to i16
  %293 = load i16*, i16** %17, align 8
  %294 = load i32, i32* %25, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %293, i64 %296
  store i16 %292, i16* %297, align 2
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %19, align 4
  %300 = ashr i32 %299, %298
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %22, align 4
  %302 = load i32, i32* %20, align 4
  %303 = ashr i32 %302, %301
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %19, align 4
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* %24, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  %309 = load i32, i32* %20, align 4
  %310 = load i32*, i32** %13, align 8
  %311 = load i32, i32* %24, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %309, i32* %313, align 4
  br label %314

314:                                              ; preds = %233
  %315 = load i32, i32* %24, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %24, align 4
  %317 = load i32, i32* %25, align 4
  %318 = add nsw i32 %317, 2
  store i32 %318, i32* %25, align 4
  br label %229, !llvm.loop !11

319:                                              ; preds = %229
  br label %384

320:                                              ; preds = %225
  store i32 0, i32* %24, align 4
  br label %321

321:                                              ; preds = %380, %320
  %322 = load i32, i32* %24, align 4
  %323 = load i32, i32* %14, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %383

325:                                              ; preds = %321
  %326 = load i8*, i8** %21, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = shl i32 %329, 16
  %331 = load i8*, i8** %21, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 1
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = shl i32 %334, 8
  %336 = or i32 %330, %335
  %337 = load i8*, i8** %21, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 0
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = or i32 %336, %340
  store i32 %341, i32* %19, align 4
  %342 = load i32, i32* %19, align 4
  %343 = shl i32 %342, 8
  %344 = ashr i32 %343, 8
  %345 = load i32*, i32** %12, align 8
  %346 = load i32, i32* %24, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 %344, i32* %348, align 4
  %349 = load i8*, i8** %21, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 3
  store i8* %350, i8** %21, align 8
  %351 = load i8*, i8** %21, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 2
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = shl i32 %354, 16
  %356 = load i8*, i8** %21, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = shl i32 %359, 8
  %361 = or i32 %355, %360
  %362 = load i8*, i8** %21, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 0
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = or i32 %361, %365
  store i32 %366, i32* %20, align 4
  %367 = load i32, i32* %20, align 4
  %368 = shl i32 %367, 8
  %369 = ashr i32 %368, 8
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %24, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 %369, i32* %373, align 4
  %374 = load i32, i32* %11, align 4
  %375 = sub i32 %374, 1
  %376 = mul i32 %375, 3
  %377 = load i8*, i8** %21, align 8
  %378 = zext i32 %376 to i64
  %379 = getelementptr inbounds i8, i8* %377, i64 %378
  store i8* %379, i8** %21, align 8
  br label %380

380:                                              ; preds = %325
  %381 = load i32, i32* %24, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %24, align 4
  br label %321, !llvm.loop !12

383:                                              ; preds = %321
  br label %384

384:                                              ; preds = %383, %319
  br label %385

385:                                              ; preds = %384, %224
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mix32(i32* noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i16* %7, i16** %17, align 8
  store i32 %8, i32* %18, align 4
  %28 = load i32*, i32** %10, align 8
  store i32* %28, i32** %19, align 8
  %29 = load i32, i32* %18, align 4
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %9
  %39 = load i32, i32* %15, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %26, align 4
  %41 = load i32, i32* %26, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %27, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %44

44:                                               ; preds = %103, %38
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load i32*, i32** %19, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load i32*, i32** %19, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %19, align 8
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %21, align 4
  %61 = and i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = load i16*, i16** %17, align 8
  %64 = load i32, i32* %25, align 4
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  store i16 %62, i16* %67, align 2
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %21, align 4
  %70 = and i32 %68, %69
  %71 = trunc i32 %70 to i16
  %72 = load i16*, i16** %17, align 8
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %72, i64 %75
  store i16 %71, i16* %76, align 2
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %22, align 4
  %79 = ashr i32 %78, %77
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %23, align 4
  %82 = ashr i32 %81, %80
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %22, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %23, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %24, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %48
  %104 = load i32, i32* %24, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %25, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %25, align 4
  br label %44, !llvm.loop !13

108:                                              ; preds = %44
  br label %197

109:                                              ; preds = %9
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  store i32 0, i32* %24, align 4
  br label %113

113:                                              ; preds = %136, %112
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load i32*, i32** %19, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %19, align 8
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %19, align 8
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %24, align 4
  br label %113, !llvm.loop !14

139:                                              ; preds = %113
  br label %196

140:                                              ; preds = %109
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %141

141:                                              ; preds = %190, %140
  %142 = load i32, i32* %24, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %195

145:                                              ; preds = %141
  %146 = load i32*, i32** %19, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %22, align 4
  %149 = load i32*, i32** %19, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %19, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %19, align 8
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %21, align 4
  %158 = and i32 %156, %157
  %159 = trunc i32 %158 to i16
  %160 = load i16*, i16** %17, align 8
  %161 = load i32, i32* %25, align 4
  %162 = add nsw i32 %161, 0
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %160, i64 %163
  store i16 %159, i16* %164, align 2
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %21, align 4
  %167 = and i32 %165, %166
  %168 = trunc i32 %167 to i16
  %169 = load i16*, i16** %17, align 8
  %170 = load i32, i32* %25, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i16, i16* %169, i64 %172
  store i16 %168, i16* %173, align 2
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %22, align 4
  %176 = ashr i32 %175, %174
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %23, align 4
  %179 = ashr i32 %178, %177
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %145
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %24, align 4
  %193 = load i32, i32* %25, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %25, align 4
  br label %141, !llvm.loop !15

195:                                              ; preds = %141
  br label %196

196:                                              ; preds = %195, %139
  br label %197

197:                                              ; preds = %196, %108
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy20ToPredictor(i8* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 16
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = or i32 %22, %27
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %28, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 8
  %36 = ashr i32 %35, 12
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul i32 %41, 3
  %43 = load i8*, i8** %9, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %13, !llvm.loop !16

49:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy24ToPredictor(i8* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 16
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = or i32 %22, %27
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %28, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 8
  %36 = ashr i32 %35, 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul i32 %41, 3
  %43 = load i8*, i8** %9, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %13, !llvm.loop !17

49:                                               ; preds = %13
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
