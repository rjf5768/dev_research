; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sha256.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }

@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Sha256_Init(%struct.CSha256* noundef %0) #0 {
  %2 = alloca %struct.CSha256*, align 8
  store %struct.CSha256* %0, %struct.CSha256** %2, align 8
  %3 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %4 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %3, i32 0, i32 0
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 1779033703, i32* %5, align 8
  %6 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %7 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %6, i32 0, i32 0
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 -1150833019, i32* %8, align 4
  %9 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %10 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 1013904242, i32* %11, align 8
  %12 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %13 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %12, i32 0, i32 0
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  store i32 -1521486534, i32* %14, align 4
  %15 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %16 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %15, i32 0, i32 0
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  store i32 1359893119, i32* %17, align 8
  %18 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %19 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %18, i32 0, i32 0
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 5
  store i32 -1694144372, i32* %20, align 4
  %21 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %22 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %21, i32 0, i32 0
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 6
  store i32 528734635, i32* %23, align 8
  %24 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %25 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %24, i32 0, i32 0
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 7
  store i32 1541459225, i32* %26, align 4
  %27 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %28 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Sha256_Update(%struct.CSha256* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.CSha256*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.CSha256* %0, %struct.CSha256** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.CSha256*, %struct.CSha256** %4, align 8
  %9 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 63
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  %20 = load %struct.CSha256*, %struct.CSha256** %4, align 8
  %21 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %20, i32 0, i32 2
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 %24
  store i8 %19, i8* %25, align 1
  %26 = load %struct.CSha256*, %struct.CSha256** %4, align 8
  %27 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %35 = load %struct.CSha256*, %struct.CSha256** %4, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %35)
  br label %36

36:                                               ; preds = %34, %16
  br label %13, !llvm.loop !4

37:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Sha256_WriteByteBlock(%struct.CSha256* noundef %0) #0 {
  %2 = alloca %struct.CSha256*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.CSha256* %0, %struct.CSha256** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %53, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %56

8:                                                ; preds = %5
  %9 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %10 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %9, i32 0, i32 2
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 %11, 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 24
  %18 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %19 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %18, i32 0, i32 2
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 %20, 4
  %22 = add i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 16
  %28 = add i32 %17, %27
  %29 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %30 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %29, i32 0, i32 2
  %31 = load i32, i32* %4, align 4
  %32 = mul i32 %31, 4
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %30, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = add i32 %28, %38
  %40 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %41 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %40, i32 0, i32 2
  %42 = load i32, i32* %4, align 4
  %43 = mul i32 %42, 4
  %44 = add i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %41, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %39, %48
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %8
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %5, !llvm.loop !6

56:                                               ; preds = %5
  %57 = load %struct.CSha256*, %struct.CSha256** %2, align 8
  %58 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %57, i32 0, i32 0
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 0, i64 0
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  call void @Sha256_Transform(i32* noundef %59, i32* noundef %60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Sha256_Final(%struct.CSha256* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.CSha256*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.CSha256* %0, %struct.CSha256** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %9 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 %10, 3
  store i64 %11, i64* %5, align 8
  %12 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %13 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 63
  store i32 %16, i32* %6, align 4
  %17 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %18 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %17, i32 0, i32 2
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %21
  store i8 -128, i8* %22, align 1
  br label %23

23:                                               ; preds = %33, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 56
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 63
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %32)
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %35 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %34, i32 0, i32 2
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %35, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  br label %23, !llvm.loop !7

40:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %42, 8
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = lshr i64 %45, 56
  %47 = trunc i64 %46 to i8
  %48 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %49 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %48, i32 0, i32 2
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %49, i64 0, i64 %52
  store i8 %47, i8* %53, align 1
  %54 = load i64, i64* %5, align 8
  %55 = shl i64 %54, 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %41, !llvm.loop !8

59:                                               ; preds = %41
  %60 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* noundef %60)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %104, %59
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %107

64:                                               ; preds = %61
  %65 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %66 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = lshr i32 %70, 24
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  store i8 %72, i8* %73, align 1
  %75 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %76 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = lshr i32 %80, 16
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  store i8 %82, i8* %83, align 1
  %85 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %86 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %86, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = lshr i32 %90, 8
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  store i8 %92, i8* %93, align 1
  %95 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  %96 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %95, i32 0, i32 0
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %96, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  store i8 %101, i8* %102, align 1
  br label %104

104:                                              ; preds = %64
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %61, !llvm.loop !9

107:                                              ; preds = %61
  %108 = load %struct.CSha256*, %struct.CSha256** %3, align 8
  call void @Sha256_Init(%struct.CSha256* noundef %108)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Sha256_Transform(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %9, !llvm.loop !10

24:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %335, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %26, 64
  br i1 %27, label %28, label %338

28:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %331, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %334

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = sub i32 4, %33
  %35 = and i32 %34, 7
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %38, 6
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 4, %40
  %42 = and i32 %41, 7
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 26
  %47 = or i32 %39, %46
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 4, %48
  %50 = and i32 %49, 7
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = lshr i32 %53, 11
  %55 = load i32, i32* %8, align 4
  %56 = sub i32 4, %55
  %57 = and i32 %56, 7
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 21
  %62 = or i32 %54, %61
  %63 = xor i32 %47, %62
  %64 = load i32, i32* %8, align 4
  %65 = sub i32 4, %64
  %66 = and i32 %65, 7
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = lshr i32 %69, 25
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 4, %71
  %73 = and i32 %72, 7
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 7
  %78 = or i32 %70, %77
  %79 = xor i32 %63, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub i32 6, %80
  %82 = and i32 %81, 7
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 4, %86
  %88 = and i32 %87, 7
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 5, %92
  %94 = and i32 %93, 7
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub i32 6, %98
  %100 = and i32 %99, 7
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %97, %103
  %105 = and i32 %91, %104
  %106 = xor i32 %85, %105
  %107 = add i32 %79, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %107, %113
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %210

117:                                              ; preds = %32
  %118 = load i32, i32* %8, align 4
  %119 = sub i32 %118, 2
  %120 = and i32 %119, 15
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = lshr i32 %123, 17
  %125 = load i32, i32* %8, align 4
  %126 = sub i32 %125, 2
  %127 = and i32 %126, 15
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 15
  %132 = or i32 %124, %131
  %133 = load i32, i32* %8, align 4
  %134 = sub i32 %133, 2
  %135 = and i32 %134, 15
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = lshr i32 %138, 19
  %140 = load i32, i32* %8, align 4
  %141 = sub i32 %140, 2
  %142 = and i32 %141, 15
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 13
  %147 = or i32 %139, %146
  %148 = xor i32 %132, %147
  %149 = load i32, i32* %8, align 4
  %150 = sub i32 %149, 2
  %151 = and i32 %150, 15
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = lshr i32 %154, 10
  %156 = xor i32 %148, %155
  %157 = load i32, i32* %8, align 4
  %158 = sub i32 %157, 7
  %159 = and i32 %158, 15
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %156, %162
  %164 = load i32, i32* %8, align 4
  %165 = sub i32 %164, 15
  %166 = and i32 %165, 15
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = lshr i32 %169, 7
  %171 = load i32, i32* %8, align 4
  %172 = sub i32 %171, 15
  %173 = and i32 %172, 15
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 25
  %178 = or i32 %170, %177
  %179 = load i32, i32* %8, align 4
  %180 = sub i32 %179, 15
  %181 = and i32 %180, 15
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = lshr i32 %184, 18
  %186 = load i32, i32* %8, align 4
  %187 = sub i32 %186, 15
  %188 = and i32 %187, 15
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 14
  %193 = or i32 %185, %192
  %194 = xor i32 %178, %193
  %195 = load i32, i32* %8, align 4
  %196 = sub i32 %195, 15
  %197 = and i32 %196, 15
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = lshr i32 %200, 3
  %202 = xor i32 %194, %201
  %203 = add i32 %163, %202
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 15
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, %203
  store i32 %209, i32* %207, align 4
  br label %219

210:                                              ; preds = %32
  %211 = load i32*, i32** %4, align 8
  %212 = load i32, i32* %8, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %8, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %217
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %210, %117
  %220 = phi i32 [ %209, %117 ], [ %215, %210 ]
  %221 = add i32 %114, %220
  %222 = load i32, i32* %8, align 4
  %223 = sub i32 7, %222
  %224 = and i32 %223, 7
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %221
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %8, align 4
  %230 = sub i32 7, %229
  %231 = and i32 %230, 7
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %8, align 4
  %236 = sub i32 3, %235
  %237 = and i32 %236, 7
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, %234
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %8, align 4
  %243 = sub i32 0, %242
  %244 = and i32 %243, 7
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = lshr i32 %247, 2
  %249 = load i32, i32* %8, align 4
  %250 = sub i32 0, %249
  %251 = and i32 %250, 7
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = shl i32 %254, 30
  %256 = or i32 %248, %255
  %257 = load i32, i32* %8, align 4
  %258 = sub i32 0, %257
  %259 = and i32 %258, 7
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = lshr i32 %262, 13
  %264 = load i32, i32* %8, align 4
  %265 = sub i32 0, %264
  %266 = and i32 %265, 7
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 19
  %271 = or i32 %263, %270
  %272 = xor i32 %256, %271
  %273 = load i32, i32* %8, align 4
  %274 = sub i32 0, %273
  %275 = and i32 %274, 7
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = lshr i32 %278, 22
  %280 = load i32, i32* %8, align 4
  %281 = sub i32 0, %280
  %282 = and i32 %281, 7
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 10
  %287 = or i32 %279, %286
  %288 = xor i32 %272, %287
  %289 = load i32, i32* %8, align 4
  %290 = sub i32 0, %289
  %291 = and i32 %290, 7
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %8, align 4
  %296 = sub i32 1, %295
  %297 = and i32 %296, 7
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %294, %300
  %302 = load i32, i32* %8, align 4
  %303 = sub i32 2, %302
  %304 = and i32 %303, 7
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %8, align 4
  %309 = sub i32 0, %308
  %310 = and i32 %309, 7
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %8, align 4
  %315 = sub i32 1, %314
  %316 = and i32 %315, 7
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %313, %319
  %321 = and i32 %307, %320
  %322 = or i32 %301, %321
  %323 = add i32 %288, %322
  %324 = load i32, i32* %8, align 4
  %325 = sub i32 7, %324
  %326 = and i32 %325, 7
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, %323
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %219
  %332 = load i32, i32* %8, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %8, align 4
  br label %29, !llvm.loop !11

334:                                              ; preds = %29
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %6, align 4
  %337 = add i32 %336, 16
  store i32 %337, i32* %6, align 4
  br label %25, !llvm.loop !12

338:                                              ; preds = %25
  store i32 0, i32* %6, align 4
  br label %339

339:                                              ; preds = %353, %338
  %340 = load i32, i32* %6, align 4
  %341 = icmp ult i32 %340, 8
  br i1 %341, label %342, label %356

342:                                              ; preds = %339
  %343 = load i32, i32* %6, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %3, align 8
  %348 = load i32, i32* %6, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = add i32 %351, %346
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %342
  %354 = load i32, i32* %6, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %6, align 4
  br label %339, !llvm.loop !13

356:                                              ; preds = %339
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
