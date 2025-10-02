; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @unmix16(i32* noundef %0, i32* noundef %1, i16* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i16* %2, i16** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i16*, i16** %10, align 8
  store i16* %19, i16** %15, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %68, %22
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = load i32, i32* %13, align 4
  %47 = ashr i32 %45, %46
  %48 = sub nsw i32 %38, %47
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %49, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = trunc i32 %56 to i16
  %58 = load i16*, i16** %15, align 8
  %59 = getelementptr inbounds i16, i16* %58, i64 0
  store i16 %57, i16* %59, align 2
  %60 = load i32, i32* %18, align 4
  %61 = trunc i32 %60 to i16
  %62 = load i16*, i16** %15, align 8
  %63 = getelementptr inbounds i16, i16* %62, i64 1
  store i16 %61, i16* %63, align 2
  %64 = load i32, i32* %11, align 4
  %65 = load i16*, i16** %15, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i16, i16* %65, i64 %66
  store i16* %67, i16** %15, align 8
  br label %68

68:                                               ; preds = %27
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %23, !llvm.loop !4

71:                                               ; preds = %23
  br label %102

72:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i16
  %84 = load i16*, i16** %15, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 0
  store i16 %83, i16* %85, align 2
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %15, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 1
  store i16 %91, i16* %93, align 2
  %94 = load i32, i32* %11, align 4
  %95 = load i16*, i16** %15, align 8
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i16, i16* %95, i64 %96
  store i16* %97, i16** %15, align 8
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %73, !llvm.loop !6

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %71
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unmix20(i32* noundef %0, i32* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %15, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %109

23:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %105, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %33, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %40, %45
  %47 = load i32, i32* %13, align 4
  %48 = ashr i32 %46, %47
  %49 = sub nsw i32 %39, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %50, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %17, align 4
  %58 = shl i32 %57, 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = shl i32 %59, 4
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* %17, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %17, align 4
  %74 = ashr i32 %73, 0
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8* %80, i8** %15, align 8
  %81 = load i32, i32* %18, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %15, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8 %84, i8* %86, align 1
  %87 = load i32, i32* %18, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %18, align 4
  %94 = ashr i32 %93, 0
  %95 = and i32 %94, 255
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %96, i8* %98, align 1
  %99 = load i32, i32* %11, align 4
  %100 = sub i32 %99, 1
  %101 = mul i32 %100, 3
  %102 = load i8*, i8** %15, align 8
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %15, align 8
  br label %105

105:                                              ; preds = %28
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %24, !llvm.loop !7

108:                                              ; preds = %24
  br label %175

109:                                              ; preds = %7
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %171, %109
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %174

114:                                              ; preds = %110
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 4
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = ashr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8 %124, i8* %126, align 1
  %127 = load i32, i32* %19, align 4
  %128 = ashr i32 %127, 8
  %129 = and i32 %128, 255
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 %130, i8* %132, align 1
  %133 = load i32, i32* %19, align 4
  %134 = ashr i32 %133, 0
  %135 = and i32 %134, 255
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %15, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  store i8* %140, i8** %15, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 4
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %19, align 4
  %148 = ashr i32 %147, 16
  %149 = and i32 %148, 255
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %15, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8 %150, i8* %152, align 1
  %153 = load i32, i32* %19, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %19, align 4
  %160 = ashr i32 %159, 0
  %161 = and i32 %160, 255
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %15, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 %162, i8* %164, align 1
  %165 = load i32, i32* %11, align 4
  %166 = sub i32 %165, 1
  %167 = mul i32 %166, 3
  %168 = load i8*, i8** %15, align 8
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %15, align 8
  br label %171

171:                                              ; preds = %114
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %110, !llvm.loop !8

174:                                              ; preds = %110
  br label %175

175:                                              ; preds = %174, %108
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unmix24(i32* noundef %0, i32* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i16* %7, i16** %17, align 8
  store i32 %8, i32* %18, align 4
  %26 = load i8*, i8** %12, align 8
  store i8* %26, i8** %19, align 8
  %27 = load i32, i32* %18, align 4
  %28 = mul nsw i32 %27, 8
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %223

31:                                               ; preds = %9
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %140

34:                                               ; preds = %31
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %35

35:                                               ; preds = %134, %34
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %23, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %23, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %23, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %51, %56
  %58 = load i32, i32* %15, align 4
  %59 = ashr i32 %57, %58
  %60 = sub nsw i32 %50, %59
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %20, align 4
  %70 = shl i32 %68, %69
  %71 = load i16*, i16** %17, align 8
  %72 = load i32, i32* %24, align 4
  %73 = add nsw i32 %72, 0
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %70, %77
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %20, align 4
  %81 = shl i32 %79, %80
  %82 = load i16*, i16** %17, align 8
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %82, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %81, %88
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %21, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %19, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8 %93, i8* %95, align 1
  %96 = load i32, i32* %21, align 4
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %19, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8 %99, i8* %101, align 1
  %102 = load i32, i32* %21, align 4
  %103 = ashr i32 %102, 0
  %104 = and i32 %103, 255
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %19, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i8*, i8** %19, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8* %109, i8** %19, align 8
  %110 = load i32, i32* %22, align 4
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %19, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8 %113, i8* %115, align 1
  %116 = load i32, i32* %22, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 %119, i8* %121, align 1
  %122 = load i32, i32* %22, align 4
  %123 = ashr i32 %122, 0
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %13, align 4
  %129 = sub i32 %128, 1
  %130 = mul i32 %129, 3
  %131 = load i8*, i8** %19, align 8
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %19, align 8
  br label %134

134:                                              ; preds = %39
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %24, align 4
  br label %35, !llvm.loop !9

139:                                              ; preds = %35
  br label %222

140:                                              ; preds = %31
  store i32 0, i32* %23, align 4
  br label %141

141:                                              ; preds = %218, %140
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %221

145:                                              ; preds = %141
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %150, %155
  %157 = load i32, i32* %16, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %23, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %157, %162
  %164 = load i32, i32* %15, align 4
  %165 = ashr i32 %163, %164
  %166 = sub nsw i32 %156, %165
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %23, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %167, %172
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %21, align 4
  %175 = ashr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %19, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  store i8 %177, i8* %179, align 1
  %180 = load i32, i32* %21, align 4
  %181 = ashr i32 %180, 8
  %182 = and i32 %181, 255
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %19, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8 %183, i8* %185, align 1
  %186 = load i32, i32* %21, align 4
  %187 = ashr i32 %186, 0
  %188 = and i32 %187, 255
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %19, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  store i8 %189, i8* %191, align 1
  %192 = load i8*, i8** %19, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  store i8* %193, i8** %19, align 8
  %194 = load i32, i32* %22, align 4
  %195 = ashr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %19, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 2
  store i8 %197, i8* %199, align 1
  %200 = load i32, i32* %22, align 4
  %201 = ashr i32 %200, 8
  %202 = and i32 %201, 255
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %19, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %205, align 1
  %206 = load i32, i32* %22, align 4
  %207 = ashr i32 %206, 0
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %19, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 %209, i8* %211, align 1
  %212 = load i32, i32* %13, align 4
  %213 = sub i32 %212, 1
  %214 = mul i32 %213, 3
  %215 = load i8*, i8** %19, align 8
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %19, align 8
  br label %218

218:                                              ; preds = %145
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %23, align 4
  br label %141, !llvm.loop !10

221:                                              ; preds = %141
  br label %222

222:                                              ; preds = %221, %139
  br label %379

223:                                              ; preds = %9
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %314

226:                                              ; preds = %223
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %227

227:                                              ; preds = %308, %226
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %313

231:                                              ; preds = %227
  %232 = load i32*, i32** %10, align 8
  %233 = load i32, i32* %23, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %21, align 4
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %23, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %22, align 4
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %20, align 4
  %244 = shl i32 %242, %243
  %245 = load i16*, i16** %17, align 8
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i16, i16* %245, i64 %248
  %250 = load i16, i16* %249, align 2
  %251 = zext i16 %250 to i32
  %252 = or i32 %244, %251
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %20, align 4
  %255 = shl i32 %253, %254
  %256 = load i16*, i16** %17, align 8
  %257 = load i32, i32* %24, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i16, i16* %256, i64 %259
  %261 = load i16, i16* %260, align 2
  %262 = zext i16 %261 to i32
  %263 = or i32 %255, %262
  store i32 %263, i32* %22, align 4
  %264 = load i32, i32* %21, align 4
  %265 = ashr i32 %264, 16
  %266 = and i32 %265, 255
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** %19, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  store i8 %267, i8* %269, align 1
  %270 = load i32, i32* %21, align 4
  %271 = ashr i32 %270, 8
  %272 = and i32 %271, 255
  %273 = trunc i32 %272 to i8
  %274 = load i8*, i8** %19, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  store i8 %273, i8* %275, align 1
  %276 = load i32, i32* %21, align 4
  %277 = ashr i32 %276, 0
  %278 = and i32 %277, 255
  %279 = trunc i32 %278 to i8
  %280 = load i8*, i8** %19, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 0
  store i8 %279, i8* %281, align 1
  %282 = load i8*, i8** %19, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  store i8* %283, i8** %19, align 8
  %284 = load i32, i32* %22, align 4
  %285 = ashr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %19, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 2
  store i8 %287, i8* %289, align 1
  %290 = load i32, i32* %22, align 4
  %291 = ashr i32 %290, 8
  %292 = and i32 %291, 255
  %293 = trunc i32 %292 to i8
  %294 = load i8*, i8** %19, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  store i8 %293, i8* %295, align 1
  %296 = load i32, i32* %22, align 4
  %297 = ashr i32 %296, 0
  %298 = and i32 %297, 255
  %299 = trunc i32 %298 to i8
  %300 = load i8*, i8** %19, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 0
  store i8 %299, i8* %301, align 1
  %302 = load i32, i32* %13, align 4
  %303 = sub i32 %302, 1
  %304 = mul i32 %303, 3
  %305 = load i8*, i8** %19, align 8
  %306 = zext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8* %307, i8** %19, align 8
  br label %308

308:                                              ; preds = %231
  %309 = load i32, i32* %23, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %23, align 4
  %311 = load i32, i32* %24, align 4
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %24, align 4
  br label %227, !llvm.loop !11

313:                                              ; preds = %227
  br label %378

314:                                              ; preds = %223
  store i32 0, i32* %23, align 4
  br label %315

315:                                              ; preds = %374, %314
  %316 = load i32, i32* %23, align 4
  %317 = load i32, i32* %14, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %377

319:                                              ; preds = %315
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* %23, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %25, align 4
  %325 = load i32, i32* %25, align 4
  %326 = ashr i32 %325, 16
  %327 = and i32 %326, 255
  %328 = trunc i32 %327 to i8
  %329 = load i8*, i8** %19, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 2
  store i8 %328, i8* %330, align 1
  %331 = load i32, i32* %25, align 4
  %332 = ashr i32 %331, 8
  %333 = and i32 %332, 255
  %334 = trunc i32 %333 to i8
  %335 = load i8*, i8** %19, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  store i8 %334, i8* %336, align 1
  %337 = load i32, i32* %25, align 4
  %338 = ashr i32 %337, 0
  %339 = and i32 %338, 255
  %340 = trunc i32 %339 to i8
  %341 = load i8*, i8** %19, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 0
  store i8 %340, i8* %342, align 1
  %343 = load i8*, i8** %19, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 3
  store i8* %344, i8** %19, align 8
  %345 = load i32*, i32** %11, align 8
  %346 = load i32, i32* %23, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %25, align 4
  %350 = load i32, i32* %25, align 4
  %351 = ashr i32 %350, 16
  %352 = and i32 %351, 255
  %353 = trunc i32 %352 to i8
  %354 = load i8*, i8** %19, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 2
  store i8 %353, i8* %355, align 1
  %356 = load i32, i32* %25, align 4
  %357 = ashr i32 %356, 8
  %358 = and i32 %357, 255
  %359 = trunc i32 %358 to i8
  %360 = load i8*, i8** %19, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 1
  store i8 %359, i8* %361, align 1
  %362 = load i32, i32* %25, align 4
  %363 = ashr i32 %362, 0
  %364 = and i32 %363, 255
  %365 = trunc i32 %364 to i8
  %366 = load i8*, i8** %19, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  store i8 %365, i8* %367, align 1
  %368 = load i32, i32* %13, align 4
  %369 = sub i32 %368, 1
  %370 = mul i32 %369, 3
  %371 = load i8*, i8** %19, align 8
  %372 = zext i32 %370 to i64
  %373 = getelementptr inbounds i8, i8* %371, i64 %372
  store i8* %373, i8** %19, align 8
  br label %374

374:                                              ; preds = %319
  %375 = load i32, i32* %23, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %23, align 4
  br label %315, !llvm.loop !12

377:                                              ; preds = %315
  br label %378

378:                                              ; preds = %377, %313
  br label %379

379:                                              ; preds = %378, %222
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unmix32(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i16* %7, i16** %17, align 8
  store i32 %8, i32* %18, align 4
  %27 = load i32*, i32** %12, align 8
  store i32* %27, i32** %19, align 8
  %28 = load i32, i32* %18, align 4
  %29 = mul nsw i32 %28, 8
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %9
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %33

33:                                               ; preds = %90, %32
  %34 = load i32, i32* %23, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %23, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %25, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %23, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %25, align 4
  %49 = load i32, i32* %26, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %26, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %53, %54
  %56 = sub nsw i32 %50, %55
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %26, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %20, align 4
  %62 = shl i32 %60, %61
  %63 = load i16*, i16** %17, align 8
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %62, %69
  %71 = load i32*, i32** %19, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %20, align 4
  %75 = shl i32 %73, %74
  %76 = load i16*, i16** %17, align 8
  %77 = load i32, i32* %24, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %76, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %75, %82
  %84 = load i32*, i32** %19, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %19, align 8
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %19, align 8
  br label %90

90:                                               ; preds = %37
  %91 = load i32, i32* %23, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %24, align 4
  br label %33, !llvm.loop !13

95:                                               ; preds = %33
  br label %178

96:                                               ; preds = %9
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  store i32 0, i32* %23, align 4
  br label %100

100:                                              ; preds = %123, %99
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %100
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %23, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32*, i32** %19, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %19, align 8
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %23, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %23, align 4
  br label %100, !llvm.loop !14

126:                                              ; preds = %100
  br label %177

127:                                              ; preds = %96
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %128

128:                                              ; preds = %171, %127
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %176

132:                                              ; preds = %128
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %23, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %20, align 4
  %139 = shl i32 %137, %138
  %140 = load i16*, i16** %17, align 8
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %141, 0
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %140, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = or i32 %139, %146
  %148 = load i32*, i32** %19, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %20, align 4
  %156 = shl i32 %154, %155
  %157 = load i16*, i16** %17, align 8
  %158 = load i32, i32* %24, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i16, i16* %157, i64 %160
  %162 = load i16, i16* %161, align 2
  %163 = zext i16 %162 to i32
  %164 = or i32 %156, %163
  %165 = load i32*, i32** %19, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32*, i32** %19, align 8
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %19, align 8
  br label %171

171:                                              ; preds = %132
  %172 = load i32, i32* %23, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* %24, align 4
  br label %128, !llvm.loop !15

176:                                              ; preds = %128
  br label %177

177:                                              ; preds = %176, %126
  br label %178

178:                                              ; preds = %177, %95
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copyPredictorTo24(i32* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %11, align 4
  %36 = ashr i32 %35, 0
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
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
define dso_local void @copyPredictorTo24Shift(i32* noundef %0, i16* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i16* %1, i16** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = mul nsw i32 %18, 8
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %63, %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %14, align 4
  %32 = shl i32 %30, %31
  %33 = load i16*, i16** %8, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %32, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %16, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %49, i8* %51, align 1
  %52 = load i32, i32* %16, align 4
  %53 = ashr i32 %52, 0
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 %55, i8* %57, align 1
  %58 = load i32, i32* %10, align 4
  %59 = mul i32 %58, 3
  %60 = load i8*, i8** %13, align 8
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %24
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %20, !llvm.loop !17

66:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copyPredictorTo20(i32* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = ashr i32 %23, 12
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
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
  br label %13, !llvm.loop !18

49:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copyPredictorTo32(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %25, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %11, !llvm.loop !19

31:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copyPredictorTo32Shift(i32* noundef %0, i16* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i16* %1, i16** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %9, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = mul nsw i32 %17, 8
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %44, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 %28, %29
  %31 = load i16*, i16** %8, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %30, %36
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %13, align 8
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %19, !llvm.loop !20

47:                                               ; preds = %19
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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
