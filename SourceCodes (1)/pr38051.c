; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38051.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@buf = dso_local global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [16 x i8] c"\017\82\A7UI\9D\BF\F8D\B6U\17\8E\F9\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\017\82\A7UI\D0\F3\B7*m#qIj\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mymemcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = urem i64 %16, 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = udiv i64 %22, 8
  %24 = call i32 @mymemcmp2(i64 noundef %20, i64 noundef %21, i64 noundef %23) #3
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = udiv i64 %28, 8
  %30 = call i32 @mymemcmp3(i64 noundef %26, i64 noundef %27, i64 noundef %29) #3
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mymemcmp2(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = urem i64 %12, 4
  switch i64 %13, label %14 [
    i64 2, label %15
    i64 3, label %30
    i64 0, label %45
    i64 1, label %58
  ]

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %14
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i64*
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %24, 16
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 16
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 2
  store i64 %29, i64* %7, align 8
  br label %129

30:                                               ; preds = %3
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 8
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %112

45:                                               ; preds = %3
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %165

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = inttoptr i64 %54 to i64*
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %95

58:                                               ; preds = %3
  %59 = load i64, i64* %5, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = inttoptr i64 %63 to i64*
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 8
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 8
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, 1
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %156

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %152, %77
  %79 = load i64, i64* %5, align 8
  %80 = inttoptr i64 %79 to i64*
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %6, align 8
  %84 = inttoptr i64 %83 to i64*
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @mymemcmp1(i64 noundef %91, i64 noundef %92) #3
  store i32 %93, i32* %4, align 4
  br label %165

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %49
  %96 = load i64, i64* %5, align 8
  %97 = inttoptr i64 %96 to i64*
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %6, align 8
  %101 = inttoptr i64 %100 to i64*
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @mymemcmp1(i64 noundef %108, i64 noundef %109) #3
  store i32 %110, i32* %4, align 4
  br label %165

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %30
  %113 = load i64, i64* %5, align 8
  %114 = inttoptr i64 %113 to i64*
  %115 = getelementptr inbounds i64, i64* %114, i64 2
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %6, align 8
  %118 = inttoptr i64 %117 to i64*
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @mymemcmp1(i64 noundef %125, i64 noundef %126) #3
  store i32 %127, i32* %4, align 4
  br label %165

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %15
  %130 = load i64, i64* %5, align 8
  %131 = inttoptr i64 %130 to i64*
  %132 = getelementptr inbounds i64, i64* %131, i64 3
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %6, align 8
  %135 = inttoptr i64 %134 to i64*
  %136 = getelementptr inbounds i64, i64* %135, i64 3
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %10, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %129
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @mymemcmp1(i64 noundef %142, i64 noundef %143) #3
  store i32 %144, i32* %4, align 4
  br label %165

145:                                              ; preds = %129
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %146, 32
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, 32
  store i64 %149, i64* %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = sub i64 %150, 4
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %145
  %153 = load i64, i64* %7, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %78, label %155, !llvm.loop !4

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %75
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @mymemcmp1(i64 noundef %161, i64 noundef %162) #3
  store i32 %163, i32* %4, align 4
  br label %165

164:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %160, %141, %124, %107, %90, %48
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mymemcmp3(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = urem i64 %19, 8
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 64, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = urem i64 %29, 4
  switch i64 %30, label %31 [
    i64 2, label %32
    i64 3, label %51
    i64 0, label %68
    i64 1, label %87
  ]

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = inttoptr i64 %41 to i64*
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %45, 8
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 16
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 2
  store i64 %50, i64* %7, align 8
  br label %189

51:                                               ; preds = %3
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to i64*
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = inttoptr i64 %56 to i64*
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %6, align 8
  %61 = inttoptr i64 %60 to i64*
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %64, 8
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %163

68:                                               ; preds = %3
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %243

72:                                               ; preds = %68
  %73 = load i64, i64* %5, align 8
  %74 = inttoptr i64 %73 to i64*
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %5, align 8
  %78 = inttoptr i64 %77 to i64*
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = inttoptr i64 %81 to i64*
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 8
  store i64 %86, i64* %5, align 8
  br label %137

87:                                               ; preds = %3
  %88 = load i64, i64* %5, align 8
  %89 = inttoptr i64 %88 to i64*
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %5, align 8
  %93 = inttoptr i64 %92 to i64*
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %6, align 8
  %97 = inttoptr i64 %96 to i64*
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 16
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 8
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 %104, 1
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %87
  br label %225

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %221, %110
  %112 = load i64, i64* %5, align 8
  %113 = inttoptr i64 %112 to i64*
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = inttoptr i64 %116 to i64*
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = zext i32 %121 to i64
  %123 = lshr i64 %120, %122
  %124 = load i64, i64* %11, align 8
  %125 = load i32, i32* %18, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 %124, %126
  %128 = or i64 %123, %127
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %15, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %111
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @mymemcmp1(i64 noundef %133, i64 noundef %134) #3
  store i32 %135, i32* %4, align 4
  br label %243

136:                                              ; preds = %111
  br label %137

137:                                              ; preds = %136, %72
  %138 = load i64, i64* %5, align 8
  %139 = inttoptr i64 %138 to i64*
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %6, align 8
  %143 = inttoptr i64 %142 to i64*
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i32, i32* %17, align 4
  %148 = zext i32 %147 to i64
  %149 = lshr i64 %146, %148
  %150 = load i64, i64* %8, align 8
  %151 = load i32, i32* %18, align 4
  %152 = zext i32 %151 to i64
  %153 = shl i64 %150, %152
  %154 = or i64 %149, %153
  store i64 %154, i64* %16, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %137
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @mymemcmp1(i64 noundef %159, i64 noundef %160) #3
  store i32 %161, i32* %4, align 4
  br label %243

162:                                              ; preds = %137
  br label %163

163:                                              ; preds = %162, %51
  %164 = load i64, i64* %5, align 8
  %165 = inttoptr i64 %164 to i64*
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %10, align 8
  %168 = load i64, i64* %6, align 8
  %169 = inttoptr i64 %168 to i64*
  %170 = getelementptr inbounds i64, i64* %169, i64 2
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i32, i32* %17, align 4
  %174 = zext i32 %173 to i64
  %175 = lshr i64 %172, %174
  %176 = load i64, i64* %9, align 8
  %177 = load i32, i32* %18, align 4
  %178 = zext i32 %177 to i64
  %179 = shl i64 %176, %178
  %180 = or i64 %175, %179
  store i64 %180, i64* %16, align 8
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %163
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* %13, align 8
  %187 = call i32 @mymemcmp1(i64 noundef %185, i64 noundef %186) #3
  store i32 %187, i32* %4, align 4
  br label %243

188:                                              ; preds = %163
  br label %189

189:                                              ; preds = %188, %32
  %190 = load i64, i64* %5, align 8
  %191 = inttoptr i64 %190 to i64*
  %192 = getelementptr inbounds i64, i64* %191, i64 3
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %11, align 8
  %194 = load i64, i64* %6, align 8
  %195 = inttoptr i64 %194 to i64*
  %196 = getelementptr inbounds i64, i64* %195, i64 3
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %15, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i32, i32* %17, align 4
  %200 = zext i32 %199 to i64
  %201 = lshr i64 %198, %200
  %202 = load i64, i64* %10, align 8
  %203 = load i32, i32* %18, align 4
  %204 = zext i32 %203 to i64
  %205 = shl i64 %202, %204
  %206 = or i64 %201, %205
  store i64 %206, i64* %16, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %14, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %189
  %211 = load i64, i64* %16, align 8
  %212 = load i64, i64* %14, align 8
  %213 = call i32 @mymemcmp1(i64 noundef %211, i64 noundef %212) #3
  store i32 %213, i32* %4, align 4
  br label %243

214:                                              ; preds = %189
  %215 = load i64, i64* %5, align 8
  %216 = add i64 %215, 32
  store i64 %216, i64* %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, 32
  store i64 %218, i64* %6, align 8
  %219 = load i64, i64* %7, align 8
  %220 = sub i64 %219, 4
  store i64 %220, i64* %7, align 8
  br label %221

221:                                              ; preds = %214
  %222 = load i64, i64* %7, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %111, label %224, !llvm.loop !6

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %224, %108
  %226 = load i64, i64* %10, align 8
  %227 = load i32, i32* %17, align 4
  %228 = zext i32 %227 to i64
  %229 = lshr i64 %226, %228
  %230 = load i64, i64* %11, align 8
  %231 = load i32, i32* %18, align 4
  %232 = zext i32 %231 to i64
  %233 = shl i64 %230, %232
  %234 = or i64 %229, %233
  store i64 %234, i64* %16, align 8
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* %15, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %225
  %239 = load i64, i64* %16, align 8
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @mymemcmp1(i64 noundef %239, i64 noundef %240) #3
  store i32 %241, i32* %4, align 4
  br label %243

242:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %238, %210, %184, %158, %132, %71
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %union.anon, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %union.anon* %3 to i64*
  store i64 305419896, i64* %4, align 8
  %5 = bitcast %union.anon* %3 to [8 x i8]*
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %7 = load i8, i8* %6, align 8
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 120
  br i1 %9, label %28, label %10

10:                                               ; preds = %0
  %11 = bitcast %union.anon* %3 to [8 x i8]*
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 86
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = bitcast %union.anon* %3 to [8 x i8]*
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 2
  %19 = load i8, i8* %18, align 2
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 52
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = bitcast %union.anon* %3 to [8 x i8]*
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 18
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10, %0
  store i32 0, i32* %1, align 4
  br label %44

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i64 0, i64 16), i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 15, i1 false)
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 128
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i1 false)
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 9
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 128
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = call i32 @mymemcmp(i8* noundef %36, i8* noundef %39, i64 noundef 33)
  %41 = icmp ne i32 %40, -51
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  call void @abort() #4
  unreachable

43:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mymemcmp1(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = ptrtoint i64* %3 to i64
  store i64 %9, i64* %5, align 8
  %10 = ptrtoint i64* %4 to i64
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %11, label %30, !llvm.loop !7

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
