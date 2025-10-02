; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Lzma2Dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Lzma2Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzma2Dec = type { %struct.CLzmaDec, i32, i32, i32, i8, i32, i32, i32 }
%struct.CLzmaDec = type { %struct._CLzmaProps, i16*, i8*, i8*, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_AllocateProbs(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1, %struct.ISzAlloc* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CLzma2Dec*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ISzAlloc*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %7, align 8
  %10 = load i8, i8* %6, align 1
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %12 = call i32 @Lzma2Dec_GetOldProps(i8 noundef zeroext %10, i8* noundef %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %5, align 8
  %19 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %7, align 8
  %22 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef %19, i8* noundef %20, i32 noundef 5, %struct.ISzAlloc* noundef %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Lzma2Dec_GetOldProps(i8 noundef zeroext %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, 40
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 40
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %26

16:                                               ; preds = %11
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  %20 = or i32 2, %19
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 11
  %25 = shl i32 %20, %24
  br label %26

26:                                               ; preds = %16, %15
  %27 = phi i32 [ -1, %15 ], [ %25, %16 ]
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 4, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = lshr i32 %39, 16
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 24
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8 %46, i8* %48, align 1
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %26, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef, i8* noundef, i32 noundef, %struct.ISzAlloc* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_Allocate(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1, %struct.ISzAlloc* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CLzma2Dec*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ISzAlloc*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %7, align 8
  %10 = load i8, i8* %6, align 1
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %12 = call i32 @Lzma2Dec_GetOldProps(i8 noundef zeroext %10, i8* noundef %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %5, align 8
  %19 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %7, align 8
  %22 = call i32 @LzmaDec_Allocate(%struct.CLzmaDec* noundef %19, i8* noundef %20, i32 noundef 5, %struct.ISzAlloc* noundef %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @LzmaDec_Allocate(%struct.CLzmaDec* noundef, i8* noundef, i32 noundef, %struct.ISzAlloc* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Lzma2Dec_Init(%struct.CLzma2Dec* noundef %0) #0 {
  %2 = alloca %struct.CLzma2Dec*, align 8
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %2, align 8
  %3 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %2, align 8
  %4 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %3, i32 0, i32 3
  store i32 0, i32* %4, align 8
  %5 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %2, align 8
  %6 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %5, i32 0, i32 5
  store i32 1, i32* %6, align 8
  %7 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %2, align 8
  %8 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %7, i32 0, i32 6
  store i32 1, i32* %8, align 4
  %9 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %2, align 8
  %10 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i32 0, i32 7
  store i32 1, i32* %10, align 8
  %11 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %2, align 8
  %12 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %11, i32 0, i32 0
  call void @LzmaDec_Init(%struct.CLzmaDec* noundef %12)
  ret void
}

declare dso_local void @LzmaDec_Init(%struct.CLzmaDec* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef %0, i64 noundef %1, i8* noundef %2, i64* noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.CLzma2Dec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64*, i64** %11, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %13, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %317, %71, %6
  %31 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %32 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %318

35:                                               ; preds = %30
  %36 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %37 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %41 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %320

45:                                               ; preds = %35
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** %13, align 8
  store i32 2, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %320

54:                                               ; preds = %49, %45
  %55 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %56 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 6
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %61 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 7
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32*, i32** %13, align 8
  store i32 3, i32* %70, align 4
  store i32 0, i32* %7, align 4
  br label %320

71:                                               ; preds = %64
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  %78 = load i8, i8* %76, align 1
  %79 = call i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* noundef %75, i8 noundef zeroext %78)
  %80 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %81 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %30, !llvm.loop !4

82:                                               ; preds = %59, %54
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %86, %88
  store i64 %89, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %90 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %91 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %16, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %98 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %16, align 8
  store i32 1, i32* %18, align 4
  br label %101

101:                                              ; preds = %96, %82
  %102 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %103 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %102, i32 0, i32 4
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %183

108:                                              ; preds = %101
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32*, i32** %13, align 8
  store i32 3, i32* %114, align 4
  store i32 0, i32* %7, align 4
  br label %320

115:                                              ; preds = %108
  %116 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %117 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 6
  br i1 %119, label %120, label %147

120:                                              ; preds = %115
  %121 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %122 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %121, i32 0, i32 4
  %123 = load i8, i8* %122, align 4
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %131 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %130, i32 0, i32 6
  store i32 1, i32* %131, align 4
  %132 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %133 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %132, i32 0, i32 7
  store i32 1, i32* %133, align 8
  br label %141

134:                                              ; preds = %120
  %135 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %136 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 1, i32* %7, align 4
  br label %320

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %129
  %142 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %143 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %142, i32 0, i32 5
  store i32 0, i32* %143, align 8
  %144 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %145 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %144, i32 0, i32 0
  %146 = load i32, i32* %19, align 4
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef %145, i32 noundef %146, i32 noundef 0)
  br label %147

147:                                              ; preds = %141, %115
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i64, i64* %16, align 8
  store i64 %152, i64* %17, align 8
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i64, i64* %17, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 1, i32* %7, align 4
  br label %320

157:                                              ; preds = %153
  %158 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %159 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %158, i32 0, i32 0
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %17, align 8
  call void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* noundef %159, i8* noundef %160, i64 noundef %161)
  %162 = load i64, i64* %17, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 %162
  store i8* %164, i8** %10, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i64*, i64** %11, align 8
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %165
  store i64 %168, i64* %166, align 8
  %169 = load i64, i64* %17, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %172 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sub i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %176 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 0, i32 7
  %181 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %182 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  br label %317

183:                                              ; preds = %101
  %184 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %185 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 6
  br i1 %187, label %188, label %228

188:                                              ; preds = %183
  %189 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %190 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %189, i32 0, i32 4
  %191 = load i8, i8* %190, align 4
  %192 = zext i8 %191 to i32
  %193 = ashr i32 %192, 5
  %194 = and i32 %193, 3
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = icmp eq i32 %195, 3
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %22, align 4
  %199 = icmp sgt i32 %198, 0
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %24, align 4
  %201 = load i32, i32* %23, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %188
  %204 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %205 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %203, %188
  %209 = load i32, i32* %24, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %213 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211, %203
  store i32 1, i32* %7, align 4
  br label %320

217:                                              ; preds = %211, %208
  %218 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %219 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %218, i32 0, i32 0
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %24, align 4
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef %219, i32 noundef %220, i32 noundef %221)
  %222 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %223 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %222, i32 0, i32 5
  store i32 0, i32* %223, align 8
  %224 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %225 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %224, i32 0, i32 6
  store i32 0, i32* %225, align 4
  %226 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %227 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %226, i32 0, i32 3
  store i32 7, i32* %227, align 8
  br label %228

228:                                              ; preds = %217, %183
  %229 = load i64, i64* %17, align 8
  %230 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %231 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = zext i32 %232 to i64
  %234 = icmp ugt i64 %229, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %228
  %236 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %237 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %17, align 8
  br label %240

240:                                              ; preds = %235, %228
  %241 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %242 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %241, i32 0, i32 0
  %243 = load i64, i64* %15, align 8
  %244 = load i64, i64* %16, align 8
  %245 = add i64 %243, %244
  %246 = load i8*, i8** %10, align 8
  %247 = load i32, i32* %18, align 4
  %248 = load i32*, i32** %13, align 8
  %249 = call i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* noundef %242, i64 noundef %245, i8* noundef %246, i64* noundef %17, i32 noundef %247, i32* noundef %248)
  store i32 %249, i32* %21, align 4
  %250 = load i64, i64* %17, align 8
  %251 = load i8*, i8** %10, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 %250
  store i8* %252, i8** %10, align 8
  %253 = load i64, i64* %17, align 8
  %254 = load i64*, i64** %11, align 8
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %255, %253
  store i64 %256, i64* %254, align 8
  %257 = load i64, i64* %17, align 8
  %258 = trunc i64 %257 to i32
  %259 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %260 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sub i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %264 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = sub i64 %266, %267
  store i64 %268, i64* %20, align 8
  %269 = load i64, i64* %20, align 8
  %270 = trunc i64 %269 to i32
  %271 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %272 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = sub i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %21, align 4
  store i32 %275, i32* %25, align 4
  %276 = load i32, i32* %25, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %240
  %279 = load i32, i32* %25, align 4
  store i32 %279, i32* %7, align 4
  br label %320

280:                                              ; preds = %240
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 3
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* %21, align 4
  store i32 %285, i32* %7, align 4
  br label %320

286:                                              ; preds = %280
  %287 = load i64, i64* %17, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %310

289:                                              ; preds = %286
  %290 = load i64, i64* %20, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %289
  %293 = load i32*, i32** %13, align 8
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 4
  br i1 %295, label %306, label %296

296:                                              ; preds = %292
  %297 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %298 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %303 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301, %296, %292
  store i32 1, i32* %7, align 4
  br label %320

307:                                              ; preds = %301
  %308 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %8, align 8
  %309 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %308, i32 0, i32 3
  store i32 0, i32* %309, align 8
  br label %310

310:                                              ; preds = %307, %289, %286
  %311 = load i32*, i32** %13, align 8
  %312 = load i32, i32* %311, align 4
  %313 = icmp eq i32 %312, 4
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = load i32*, i32** %13, align 8
  store i32 2, i32* %315, align 4
  br label %316

316:                                              ; preds = %314, %310
  br label %317

317:                                              ; preds = %316, %157
  br label %30, !llvm.loop !4

318:                                              ; preds = %30
  %319 = load i32*, i32** %13, align 8
  store i32 1, i32* %319, align 4
  store i32 0, i32* %7, align 4
  br label %320

320:                                              ; preds = %318, %306, %284, %278, %216, %156, %139, %113, %69, %52, %44
  %321 = load i32, i32* %7, align 4
  ret i32 %321
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CLzma2Dec*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %9 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %151 [
    i32 0, label %11
    i32 1, label %49
    i32 2, label %57
    i32 3, label %76
    i32 4, label %82
    i32 5, label %110
  ]

11:                                               ; preds = %2
  %12 = load i8, i8* %5, align 1
  %13 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %14 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %13, i32 0, i32 4
  store i8 %12, i8* %14, align 4
  %15 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %16 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 8, i32* %3, align 4
  br label %152

21:                                               ; preds = %11
  %22 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %23 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %22, i32 0, i32 4
  %24 = load i8, i8* %23, align 4
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %30 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %29, i32 0, i32 4
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 9, i32* %3, align 4
  br label %152

36:                                               ; preds = %28
  %37 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %38 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  br label %48

39:                                               ; preds = %21
  %40 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %41 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %40, i32 0, i32 4
  %42 = load i8, i8* %41, align 4
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 16
  %46 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %47 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %36
  store i32 1, i32* %3, align 4
  br label %152

49:                                               ; preds = %2
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %54 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  store i32 2, i32* %3, align 4
  br label %152

57:                                               ; preds = %2
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %61 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %65 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %69 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %68, i32 0, i32 4
  %70 = load i8, i8* %69, align 4
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 6, i32 3
  store i32 %75, i32* %3, align 4
  br label %152

76:                                               ; preds = %2
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 8
  %80 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %81 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 4, i32* %3, align 4
  br label %152

82:                                               ; preds = %2
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %86 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %90 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %94 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %93, i32 0, i32 4
  %95 = load i8, i8* %94, align 4
  %96 = zext i8 %95 to i32
  %97 = ashr i32 %96, 5
  %98 = and i32 %97, 3
  %99 = icmp sge i32 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %82
  br label %108

101:                                              ; preds = %82
  %102 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %103 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 9, i32 6
  br label %108

108:                                              ; preds = %101, %100
  %109 = phi i32 [ 5, %100 ], [ %107, %101 ]
  store i32 %109, i32* %3, align 4
  br label %152

110:                                              ; preds = %2
  %111 = load i8, i8* %5, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sge i32 %112, 225
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 9, i32* %3, align 4
  br label %152

115:                                              ; preds = %110
  %116 = load i8, i8* %5, align 1
  %117 = zext i8 %116 to i32
  %118 = srem i32 %117, 9
  store i32 %118, i32* %6, align 4
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i32
  %121 = sdiv i32 %120, 9
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %5, align 1
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = sdiv i32 %124, 5
  %126 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %127 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %128, i32 0, i32 2
  store i32 %125, i32* %129, align 8
  %130 = load i8, i8* %5, align 1
  %131 = zext i8 %130 to i32
  %132 = srem i32 %131, 5
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 4
  br i1 %136, label %137, label %138

137:                                              ; preds = %115
  store i32 9, i32* %3, align 4
  br label %152

138:                                              ; preds = %115
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %141 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %146 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 4
  %149 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %4, align 8
  %150 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %149, i32 0, i32 7
  store i32 0, i32* %150, align 8
  store i32 6, i32* %3, align 4
  br label %152

151:                                              ; preds = %2
  store i32 9, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %138, %137, %114, %108, %76, %57, %49, %48, %35, %20
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.CLzmaDec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.CLzmaDec* %0, %struct.CLzmaDec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %8 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %11 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 %15, i1 false)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %18 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %22 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  %26 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %27 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %31 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %29, %32
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %39 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %43 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %25, %3
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.CLzmaDec*, %struct.CLzmaDec** %4, align 8
  %48 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, %46
  store i32 %50, i32* %48, align 8
  ret void
}

declare dso_local i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* noundef, i64 noundef, i8* noundef, i64* noundef, i32 noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToBuf(%struct.CLzma2Dec* noundef %0, i8* noundef %1, i64* noundef %2, i8* noundef %3, i64* noundef %4, i32 noundef %5, i32* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.CLzma2Dec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.CLzma2Dec* %0, %struct.CLzma2Dec** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %17, align 8
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %119, %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %18, align 8
  %31 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %32 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %36 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %42 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %46 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %51 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %20, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ugt i64 %49, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %59 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %67

62:                                               ; preds = %44
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %16, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %19, align 8
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %21, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef %68, i64 noundef %69, i8* noundef %70, i64* noundef %18, i32 noundef %71, i32* noundef %72)
  store i32 %73, i32* %22, align 4
  %74 = load i64, i64* %18, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %12, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %17, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64*, i64** %13, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %80
  store i64 %83, i64* %81, align 8
  %84 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %85 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %20, align 8
  %89 = sub i64 %87, %88
  store i64 %89, i64* %19, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %9, align 8
  %92 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %20, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i64, i64* %19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %90, i8* align 1 %96, i64 %97, i1 false)
  %98 = load i64, i64* %19, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %10, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %16, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %67
  %111 = load i32, i32* %22, align 4
  store i32 %111, i32* %8, align 4
  br label %120

112:                                              ; preds = %67
  %113 = load i64, i64* %19, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %16, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %112
  store i32 0, i32* %8, align 4
  br label %120

119:                                              ; preds = %115
  br label %29

120:                                              ; preds = %118, %110
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Decode(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64* noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32* noundef %6, %struct.ISzAlloc* noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ISzAlloc*, align 8
  %18 = alloca %struct.CLzma2Dec, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [5 x i8], align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64* %1, i64** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8 %4, i8* %14, align 1
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.ISzAlloc* %7, %struct.ISzAlloc** %17, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %20, align 8
  %27 = load i64*, i64** %13, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %21, align 8
  %29 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %30 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %29, i32 0, i32 2
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %32 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %31, i32 0, i32 1
  store i16* null, i16** %32, align 8
  %33 = load i64*, i64** %13, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %11, align 8
  store i64 0, i64* %34, align 8
  %35 = load i32*, i32** %16, align 8
  store i32 0, i32* %35, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %38 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %20, align 8
  %40 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %41 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  %42 = load i8, i8* %14, align 1
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 0
  %44 = call i32 @Lzma2Dec_GetOldProps(i8 noundef zeroext %42, i8* noundef %43)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %23, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %8
  %48 = load i32, i32* %23, align 4
  store i32 %48, i32* %9, align 4
  br label %82

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %22, i64 0, i64 0
  %52 = load %struct.ISzAlloc*, %struct.ISzAlloc** %17, align 8
  %53 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef %50, i8* noundef %51, i32 noundef 5, %struct.ISzAlloc* noundef %52)
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %24, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %24, align 4
  store i32 %57, i32* %9, align 4
  br label %82

58:                                               ; preds = %49
  %59 = load i64, i64* %21, align 8
  %60 = load i64*, i64** %13, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %20, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef %18, i64 noundef %61, i8* noundef %62, i64* noundef %63, i32 noundef %64, i32* noundef %65)
  store i32 %66, i32* %19, align 4
  %67 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %68 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %11, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %19, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 6, i32* %19, align 4
  br label %78

78:                                               ; preds = %77, %73, %58
  %79 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %80 = load %struct.ISzAlloc*, %struct.ISzAlloc** %17, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* noundef %79, %struct.ISzAlloc* noundef %80)
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %56, %47
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local void @LzmaDec_FreeProbs(%struct.CLzmaDec* noundef, %struct.ISzAlloc* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
