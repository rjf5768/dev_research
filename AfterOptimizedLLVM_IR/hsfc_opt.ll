; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hsfc2d.init = internal global i32 0, align 4
@hsfc2d.gray_inv = internal global [4 x i8] zeroinitializer, align 1
@hsfc3d.init = internal global i32 0, align 4
@hsfc3d.gray_inv = internal global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc2d(i32* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 2, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 2, %22 ], [ %24, %23 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 32, %28
  %30 = udiv i64 %29, 2
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @hsfc2d.init, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %87, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %35, align 1
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %66, %34
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, 1
  %50 = sub i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %60
  store i8 %56, i8* %61, align 1
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %14, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %41, !llvm.loop !4

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %36, !llvm.loop !6

69:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %13, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* @hsfc2d.gray_inv, i64 0, i64 %81
  store i8 %76, i8* %82, align 1
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %70, !llvm.loop !7

86:                                               ; preds = %70
  store i32 1, i32* @hsfc2d.init, align 4
  br label %87

87:                                               ; preds = %86, %25
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %97, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %88, !llvm.loop !8

100:                                              ; preds = %88
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 1, i8* %102, align 1
  store i8 0, i8* %11, align 1
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %194, %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ule i32 %104, %105
  br i1 %106, label %107, label %197

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = sub i64 32, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %15, align 4
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %15, align 4
  %118 = lshr i32 %116, %117
  %119 = and i32 %118, 1
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl i32 %119, %122
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = lshr i32 %126, %127
  %129 = and i32 %128, 1
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl i32 %129, %132
  %134 = or i32 %123, %133
  %135 = xor i32 %113, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* @hsfc2d.gray_inv, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %9, align 4
  %141 = mul i32 2, %140
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = zext i32 %142 to i64
  %144 = udiv i64 %143, 32
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = urem i64 %147, 32
  %149 = sub i64 32, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = zext i32 %151 to i64
  %153 = icmp eq i64 %152, 32
  br i1 %153, label %154, label %163

154:                                              ; preds = %107
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sub i32 %157, 1
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %155
  store i32 %162, i32* %160, align 4
  br label %173

163:                                              ; preds = %107
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %19, align 4
  %166 = shl i32 %164, %165
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %18, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %163, %154
  %174 = load i32, i32* %16, align 4
  switch i32 %174, label %193 [
    i32 3, label %175
    i32 0, label %180
  ]

175:                                              ; preds = %173
  %176 = load i8, i8* %11, align 1
  %177 = zext i8 %176 to i32
  %178 = xor i32 %177, 3
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %11, align 1
  br label %180

180:                                              ; preds = %173, %175
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 %182, i8* %183, align 1
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 %185, i8* %186, align 1
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %188 = load i8, i8* %187, align 1
  %189 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %188, i8* %189, align 1
  %190 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %191, i8* %192, align 1
  br label %193

193:                                              ; preds = %173, %180
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %103, !llvm.loop !9

197:                                              ; preds = %103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc3d(i32* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca [8 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 3, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 3, %23 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 32, %29
  %31 = udiv i64 %30, 3
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @hsfc3d.init, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %88, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %36, align 1
  store i32 1, i32* %12, align 4
  br label %37

37:                                               ; preds = %67, %35
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %39, 8
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add i32 %49, 1
  %51 = sub i32 %48, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %47, %55
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %61
  store i8 %57, i8* %62, align 1
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %42, !llvm.loop !10

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %37, !llvm.loop !11

70:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %73, 8
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* @hsfc3d.gray_inv, i64 0, i64 %82
  store i8 %77, i8* %83, align 1
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %71, !llvm.loop !12

87:                                               ; preds = %71
  store i32 1, i32* @hsfc3d.init, align 4
  br label %88

88:                                               ; preds = %87, %26
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %89, !llvm.loop !13

101:                                              ; preds = %89
  %102 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 2, i8* %103, align 1
  %104 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 4, i8* %104, align 1
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %333, %101
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ule i32 %106, %107
  br i1 %108, label %109, label %336

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = sub i64 32, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = lshr i32 %121, %122
  %124 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = xor i32 %123, %126
  %128 = and i32 %127, 1
  %129 = shl i32 %128, 0
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = ashr i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = lshr i32 %137, %138
  %140 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = xor i32 %139, %142
  %144 = and i32 %143, 1
  %145 = shl i32 %144, 1
  %146 = or i32 %129, %145
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %14, align 4
  %156 = lshr i32 %154, %155
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = xor i32 %156, %159
  %161 = and i32 %160, 1
  %162 = shl i32 %161, 2
  %163 = or i32 %146, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i8], [8 x i8]* @hsfc3d.gray_inv, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  store i32 %167, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %168

168:                                              ; preds = %213, %109
  %169 = load i32, i32* %16, align 4
  %170 = icmp ult i32 %169, 3
  br i1 %170, label %171, label %216

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sub i32 2, %173
  %175 = lshr i32 %172, %174
  %176 = and i32 1, %175
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %9, align 4
  %178 = mul i32 3, %177
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %178, %179
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = zext i32 %181 to i64
  %183 = udiv i64 %182, 32
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %18, align 4
  %186 = zext i32 %185 to i64
  %187 = urem i64 %186, 32
  %188 = sub i64 32, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = zext i32 %190 to i64
  %192 = icmp eq i64 32, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %171
  %194 = load i32, i32* %17, align 4
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sub i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %194
  store i32 %201, i32* %199, align 4
  br label %212

202:                                              ; preds = %171
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %20, align 4
  %205 = shl i32 %203, %204
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %19, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %205
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %202, %193
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %16, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %168, !llvm.loop !14

216:                                              ; preds = %168
  %217 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  store i8 %218, i8* %219, align 1
  %220 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  store i8 %221, i8* %222, align 1
  %223 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  %224 = load i8, i8* %223, align 1
  %225 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  store i8 %224, i8* %225, align 1
  %226 = load i32, i32* %15, align 4
  switch i32 %226, label %331 [
    i32 0, label %227
    i32 1, label %237
    i32 2, label %247
    i32 3, label %257
    i32 4, label %273
    i32 5, label %289
    i32 6, label %299
    i32 7, label %315
  ]

227:                                              ; preds = %216
  %228 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %229 = load i8, i8* %228, align 1
  %230 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %229, i8* %230, align 1
  %231 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %232 = load i8, i8* %231, align 1
  %233 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %232, i8* %233, align 1
  %234 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %235 = load i8, i8* %234, align 1
  %236 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %235, i8* %236, align 1
  br label %332

237:                                              ; preds = %216
  %238 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %239 = load i8, i8* %238, align 1
  %240 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %239, i8* %240, align 1
  %241 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %242 = load i8, i8* %241, align 1
  %243 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %242, i8* %243, align 1
  %244 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %245 = load i8, i8* %244, align 1
  %246 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %245, i8* %246, align 1
  br label %332

247:                                              ; preds = %216
  %248 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %249 = load i8, i8* %248, align 1
  %250 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %249, i8* %250, align 1
  %251 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %252 = load i8, i8* %251, align 1
  %253 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %252, i8* %253, align 1
  %254 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %255 = load i8, i8* %254, align 1
  %256 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %255, i8* %256, align 1
  br label %332

257:                                              ; preds = %216
  %258 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = xor i32 %260, 1
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %262, i8* %263, align 1
  %264 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = xor i32 %266, 1
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %268, i8* %269, align 1
  %270 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %271 = load i8, i8* %270, align 1
  %272 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %271, i8* %272, align 1
  br label %332

273:                                              ; preds = %216
  %274 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %275 = load i8, i8* %274, align 1
  %276 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %275, i8* %276, align 1
  %277 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = xor i32 %279, 1
  %281 = trunc i32 %280 to i8
  %282 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %281, i8* %282, align 1
  %283 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = xor i32 %285, 1
  %287 = trunc i32 %286 to i8
  %288 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %287, i8* %288, align 1
  br label %332

289:                                              ; preds = %216
  %290 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %291 = load i8, i8* %290, align 1
  %292 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %291, i8* %292, align 1
  %293 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %294 = load i8, i8* %293, align 1
  %295 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %294, i8* %295, align 1
  %296 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %297 = load i8, i8* %296, align 1
  %298 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %297, i8* %298, align 1
  br label %332

299:                                              ; preds = %216
  %300 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %301 = load i8, i8* %300, align 1
  %302 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %301, i8* %302, align 1
  %303 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = xor i32 %305, 1
  %307 = trunc i32 %306 to i8
  %308 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %307, i8* %308, align 1
  %309 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = xor i32 %311, 1
  %313 = trunc i32 %312 to i8
  %314 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %313, i8* %314, align 1
  br label %332

315:                                              ; preds = %216
  %316 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = xor i32 %318, 1
  %320 = trunc i32 %319 to i8
  %321 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %320, i8* %321, align 1
  %322 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %323 = load i8, i8* %322, align 1
  %324 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %323, i8* %324, align 1
  %325 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = xor i32 %327, 1
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %329, i8* %330, align 1
  br label %332

331:                                              ; preds = %216
  call void @exit(i32 noundef -1) #2
  unreachable

332:                                              ; preds = %315, %299, %289, %273, %257, %247, %237, %227
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %9, align 4
  %335 = add i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %105, !llvm.loop !15

336:                                              ; preds = %105
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fhsfc2d(double* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca [2 x i32], align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store double 0x41EFFFFFFFE00000, double* %7, align 8
  %9 = load double*, double** %4, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %11, 0x41EFFFFFFFE00000
  %13 = fptoui double %12 to i32
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %17, 0x41EFFFFFFFE00000
  %19 = fptoui double %18 to i32
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %6, align 8
  call void @hsfc2d(i32* noundef %21, i32 noundef %22, i32* noundef %23)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fhsfc3d(double* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x i32], align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store double 0x41EFFFFFFFE00000, double* %7, align 8
  %9 = load double*, double** %4, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %11, 0x41EFFFFFFFE00000
  %13 = fptoui double %12 to i32
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %17, 0x41EFFFFFFFE00000
  %19 = fptoui double %18 to i32
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load double*, double** %4, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  %24 = fmul double %23, 0x41EFFFFFFFE00000
  %25 = fptoui double %24 to i32
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %6, align 8
  call void @hsfc3d(i32* noundef %27, i32 noundef %28, i32* noundef %29)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
