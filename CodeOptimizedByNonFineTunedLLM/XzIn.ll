; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzIn.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.CXzs = type { i64, i64, %struct.CXzStream* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

@XZ_SIG = external dso_local global [6 x i8], align 1
@XZ_FOOTER_SIG = external dso_local global [2 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_ReadHeader(i16* noundef %0, %struct.ISeqInStream* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca %struct.ISeqInStream*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store %struct.ISeqInStream* %1, %struct.ISeqInStream** %5, align 8
  %8 = load %struct.ISeqInStream*, %struct.ISeqInStream** %5, align 8
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %10 = call i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %8, i8* noundef %9, i64 noundef 12, i32 noundef 17)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %17 = call i32 @memcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i64 0, i64 0), i64 noundef 6) #4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 17, i32* %3, align 4
  br label %24

20:                                               ; preds = %15
  %21 = load i16*, i16** %4, align 8
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %23 = call i32 @Xz_ParseHeader(i16* noundef %21, i8* noundef %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %19, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @Xz_ParseHeader(i16* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzBlock_ReadHeader(%struct.CXzBlock* noundef %0, %struct.ISeqInStream* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CXzBlock*, align 8
  %7 = alloca %struct.ISeqInStream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.CXzBlock* %0, %struct.CXzBlock** %6, align 8
  store %struct.ISeqInStream* %1, %struct.ISeqInStream** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.ISeqInStream*, %struct.ISeqInStream** %7, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %17 = call i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef %15, i8* noundef %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 2
  %27 = add i32 %26, 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32*, i32** %9, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 1, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load i32*, i32** %8, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ISeqInStream*, %struct.ISeqInStream** %7, align 8
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i32, i32* %11, align 4
  %41 = sub i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = call i32 @SeqInStream_Read(%struct.ISeqInStream* noundef %37, i8* noundef %39, i64 noundef %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load %struct.CXzBlock*, %struct.CXzBlock** %6, align 8
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %51 = call i32 @XzBlock_Parse(%struct.CXzBlock* noundef %49, i8* noundef %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %46, %30, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef, i8* noundef) #1

declare dso_local i32 @SeqInStream_Read(%struct.ISeqInStream* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @XzBlock_Parse(%struct.CXzBlock* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Xz_GetUnpackSize(%struct.CXzStream* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.CXzStream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %16 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %15, i32 0, i32 3
  %17 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %17, i64 %18
  %20 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %14, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i64 -1, i64* %2, align 8
  br label %34

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %7, !llvm.loop !4

32:                                               ; preds = %7
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Xz_GetPackSize(%struct.CXzStream* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.CXzStream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %16 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %15, i32 0, i32 3
  %17 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %17, i64 %18
  %20 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 3
  %23 = and i64 %22, -4
  %24 = add i64 %14, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store i64 -1, i64* %2, align 8
  br label %36

29:                                               ; preds = %13
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %7, !llvm.loop !6

34:                                               ; preds = %7
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xzs_Construct(%struct.CXzs* noundef %0) #0 {
  %2 = alloca %struct.CXzs*, align 8
  store %struct.CXzs* %0, %struct.CXzs** %2, align 8
  %3 = load %struct.CXzs*, %struct.CXzs** %2, align 8
  %4 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.CXzs*, %struct.CXzs** %2, align 8
  %6 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.CXzs*, %struct.CXzs** %2, align 8
  %8 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %7, i32 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xzs_Free(%struct.CXzs* noundef %0, %struct.ISzAlloc* noundef %1) #0 {
  %3 = alloca %struct.CXzs*, align 8
  %4 = alloca %struct.ISzAlloc*, align 8
  %5 = alloca i64, align 8
  store %struct.CXzs* %0, %struct.CXzs** %3, align 8
  store %struct.ISzAlloc* %1, %struct.ISzAlloc** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %9 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %14 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %13, i32 0, i32 2
  %15 = load %struct.CXzStream*, %struct.CXzStream** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %15, i64 %16
  %18 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  call void @Xz_Free(%struct.CXzStream* noundef %17, %struct.ISzAlloc* noundef %18)
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %6, !llvm.loop !7

22:                                               ; preds = %6
  %23 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %24 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %23, i32 0, i32 1
  %25 = load void (i8*, i8*)*, void (i8*, i8*)** %24, align 8
  %26 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %27 = bitcast %struct.ISzAlloc* %26 to i8*
  %28 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %29 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %28, i32 0, i32 2
  %30 = load %struct.CXzStream*, %struct.CXzStream** %29, align 8
  %31 = bitcast %struct.CXzStream* %30 to i8*
  call void %25(i8* noundef %27, i8* noundef %31)
  %32 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %33 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %35 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %37 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %36, i32 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %37, align 8
  ret void
}

declare dso_local void @Xz_Free(%struct.CXzStream* noundef, %struct.ISzAlloc* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Xzs_GetNumBlocks(%struct.CXzs* noundef %0) #0 {
  %2 = alloca %struct.CXzs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.CXzs* %0, %struct.CXzs** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.CXzs*, %struct.CXzs** %2, align 8
  %8 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.CXzs*, %struct.CXzs** %2, align 8
  %13 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %12, i32 0, i32 2
  %14 = load %struct.CXzStream*, %struct.CXzStream** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %14, i64 %15
  %17 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5, !llvm.loop !8

24:                                               ; preds = %5
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Xzs_GetUnpackSize(%struct.CXzs* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.CXzs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.CXzs* %0, %struct.CXzs** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %10 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.CXzs*, %struct.CXzs** %3, align 8
  %16 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %15, i32 0, i32 2
  %17 = load %struct.CXzStream*, %struct.CXzStream** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %17, i64 %18
  %20 = call i64 @Xz_GetUnpackSize(%struct.CXzStream* noundef %19)
  %21 = add i64 %14, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i64 -1, i64* %2, align 8
  br label %33

26:                                               ; preds = %13
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %7, !llvm.loop !9

31:                                               ; preds = %7
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xzs_ReadBackward(%struct.CXzs* noundef %0, %struct.ILookInStream* noundef %1, i64* noundef %2, %struct.ICompressProgress* noundef %3, %struct.ISzAlloc* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.CXzs*, align 8
  %8 = alloca %struct.ILookInStream*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ICompressProgress*, align 8
  %11 = alloca %struct.ISzAlloc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.CXzStream, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.CXzs* %0, %struct.CXzs** %7, align 8
  store %struct.ILookInStream* %1, %struct.ILookInStream** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.ICompressProgress* %3, %struct.ICompressProgress** %10, align 8
  store %struct.ISzAlloc* %4, %struct.ISzAlloc** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.ILookInStream*, %struct.ILookInStream** %8, align 8
  %21 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %20, i32 0, i32 3
  %22 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %21, align 8
  %23 = load %struct.ILookInStream*, %struct.ILookInStream** %8, align 8
  %24 = bitcast %struct.ILookInStream* %23 to i8*
  %25 = call i32 %22(i8* noundef %24, i64* noundef %12, i32 noundef 2)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %146

30:                                               ; preds = %5
  %31 = load i64, i64* %12, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %144, %30
  call void @Xz_Construct(%struct.CXzStream* noundef %14)
  %34 = load %struct.ILookInStream*, %struct.ILookInStream** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load %struct.ISzAlloc*, %struct.ISzAlloc** %11, align 8
  %37 = call i32 @Xz_ReadBackward(%struct.CXzStream* noundef %14, %struct.ILookInStream* noundef %34, i64* noundef %35, %struct.ISzAlloc* noundef %36)
  store i32 %37, i32* %15, align 4
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %14, i32 0, i32 4
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %146

46:                                               ; preds = %33
  %47 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %48 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %51 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %46
  %55 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %56 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %59 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = udiv i64 %60, 4
  %62 = add i64 %57, %61
  %63 = add i64 %62, 1
  store i64 %63, i64* %17, align 8
  %64 = load %struct.ISzAlloc*, %struct.ISzAlloc** %11, align 8
  %65 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %64, i32 0, i32 0
  %66 = load i8* (i8*, i64)*, i8* (i8*, i64)** %65, align 8
  %67 = load %struct.ISzAlloc*, %struct.ISzAlloc** %11, align 8
  %68 = bitcast %struct.ISzAlloc* %67 to i8*
  %69 = load i64, i64* %17, align 8
  %70 = mul i64 %69, 40
  %71 = call i8* %66(i8* noundef %68, i64 noundef %70)
  store i8* %71, i8** %18, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  store i32 2, i32* %6, align 4
  br label %146

75:                                               ; preds = %54
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %78 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %81 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %80, i32 0, i32 2
  %82 = load %struct.CXzStream*, %struct.CXzStream** %81, align 8
  %83 = bitcast %struct.CXzStream* %82 to i8*
  %84 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %85 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %86, 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 8 %83, i64 %87, i1 false)
  %88 = load %struct.ISzAlloc*, %struct.ISzAlloc** %11, align 8
  %89 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %88, i32 0, i32 1
  %90 = load void (i8*, i8*)*, void (i8*, i8*)** %89, align 8
  %91 = load %struct.ISzAlloc*, %struct.ISzAlloc** %11, align 8
  %92 = bitcast %struct.ISzAlloc* %91 to i8*
  %93 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %94 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %93, i32 0, i32 2
  %95 = load %struct.CXzStream*, %struct.CXzStream** %94, align 8
  %96 = bitcast %struct.CXzStream* %95 to i8*
  call void %90(i8* noundef %92, i8* noundef %96)
  %97 = load i8*, i8** %18, align 8
  %98 = bitcast i8* %97 to %struct.CXzStream*
  %99 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %100 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %99, i32 0, i32 2
  store %struct.CXzStream* %98, %struct.CXzStream** %100, align 8
  br label %101

101:                                              ; preds = %75, %46
  %102 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %103 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %102, i32 0, i32 2
  %104 = load %struct.CXzStream*, %struct.CXzStream** %103, align 8
  %105 = load %struct.CXzs*, %struct.CXzs** %7, align 8
  %106 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %104, i64 %107
  %110 = bitcast %struct.CXzStream* %109 to i8*
  %111 = bitcast %struct.CXzStream* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 40, i1 false)
  %112 = load i64*, i64** %9, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %145

116:                                              ; preds = %101
  %117 = load %struct.ILookInStream*, %struct.ILookInStream** %8, align 8
  %118 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %117, i32 0, i32 3
  %119 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %118, align 8
  %120 = load %struct.ILookInStream*, %struct.ILookInStream** %8, align 8
  %121 = bitcast %struct.ILookInStream* %120 to i8*
  %122 = load i64*, i64** %9, align 8
  %123 = call i32 %119(i8* noundef %121, i64* noundef %122, i32 noundef 0)
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %19, align 4
  store i32 %127, i32* %6, align 4
  br label %146

128:                                              ; preds = %116
  %129 = load %struct.ICompressProgress*, %struct.ICompressProgress** %10, align 8
  %130 = icmp ne %struct.ICompressProgress* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.ICompressProgress*, %struct.ICompressProgress** %10, align 8
  %133 = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %132, i32 0, i32 0
  %134 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %133, align 8
  %135 = load %struct.ICompressProgress*, %struct.ICompressProgress** %10, align 8
  %136 = bitcast %struct.ICompressProgress* %135 to i8*
  %137 = load i64, i64* %12, align 8
  %138 = load i64*, i64** %9, align 8
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %137, %139
  %141 = call i32 %134(i8* noundef %136, i64 noundef %140, i64 noundef -1)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  store i32 10, i32* %6, align 4
  br label %146

144:                                              ; preds = %131, %128
  br label %33

145:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %143, %126, %74, %44, %28
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local void @Xz_Construct(%struct.CXzStream* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadBackward(%struct.CXzStream* noundef %0, %struct.ILookInStream* noundef %1, i64* noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CXzStream*, align 8
  %7 = alloca %struct.ILookInStream*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ISzAlloc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [12 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i16, align 2
  %28 = alloca %struct.CSecToRead, align 8
  %29 = alloca i32, align 4
  store %struct.CXzStream* %0, %struct.CXzStream** %6, align 8
  store %struct.ILookInStream* %1, %struct.ILookInStream** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.ISzAlloc* %3, %struct.ISzAlloc** %9, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, 3
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %4
  store i32 17, i32* %5, align 4
  br label %281

39:                                               ; preds = %34
  %40 = load i64*, i64** %8, align 8
  store i64 -12, i64* %40, align 8
  %41 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %41, i64* noundef %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %281

48:                                               ; preds = %39
  %49 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %51 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %49, i8* noundef %50, i64 noundef 12, i32 noundef 17)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %281

56:                                               ; preds = %48
  %57 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 10
  %59 = call i32 @memcmp(i8* noundef %58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i64 0, i64 0), i64 noundef 2) #4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %174

61:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 12
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %172, %61
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 12
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %14, align 8
  %71 = icmp sgt i64 %70, 65536
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %65
  store i32 17, i32* %5, align 4
  br label %281

73:                                               ; preds = %69
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 1024
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %81

78:                                               ; preds = %73
  %79 = load i64*, i64** %8, align 8
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi i64 [ 1024, %77 ], [ %80, %78 ]
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub nsw i64 0, %86
  %88 = load i64*, i64** %8, align 8
  store i64 %87, i64* %88, align 8
  %89 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %89, i64* noundef %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %5, align 4
  br label %281

96:                                               ; preds = %81
  %97 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %97, i8* noundef %98, i64 noundef %99, i32 noundef 17)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %5, align 4
  br label %281

105:                                              ; preds = %96
  %106 = load i64, i64* %16, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %121, %105
  %109 = load i32, i32* %15, align 4
  %110 = icmp sge i32 %109, 1
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %124

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %15, align 4
  br label %108, !llvm.loop !10

124:                                              ; preds = %119, %108
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %172

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = and i32 %128, 3
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 17, i32* %5, align 4
  br label %281

132:                                              ; preds = %127
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** %8, align 8
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %134
  store i64 %137, i64* %135, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %139, 12
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 17, i32* %5, align 4
  br label %281

142:                                              ; preds = %132
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 12
  store i64 %145, i64* %143, align 8
  %146 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %147 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %146, i32 0, i32 3
  %148 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %147, align 8
  %149 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %150 = bitcast %struct.ILookInStream* %149 to i8*
  %151 = load i64*, i64** %8, align 8
  %152 = call i32 %148(i8* noundef %150, i64* noundef %151, i32 noundef 0)
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i32, i32* %20, align 4
  store i32 %156, i32* %5, align 4
  br label %281

157:                                              ; preds = %142
  %158 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %159 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %160 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %158, i8* noundef %159, i64 noundef 12, i32 noundef 17)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %21, align 4
  store i32 %164, i32* %5, align 4
  br label %281

165:                                              ; preds = %157
  %166 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %167 = getelementptr inbounds i8, i8* %166, i64 10
  %168 = call i32 @memcmp(i8* noundef %167, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i64 0, i64 0), i64 noundef 2) #4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 17, i32* %5, align 4
  br label %281

171:                                              ; preds = %165
  br label %173

172:                                              ; preds = %124
  br label %65

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %56
  %175 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %176 = getelementptr inbounds i8, i8* %175, i64 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i16
  %180 = zext i16 %179 to i32
  %181 = shl i32 %180, 8
  %182 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %183 = getelementptr inbounds i8, i8* %182, i64 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = or i32 %181, %186
  %188 = trunc i32 %187 to i16
  %189 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %190 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %189, i32 0, i32 0
  store i16 %188, i16* %190, align 8
  %191 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %192 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %191, i32 0, i32 0
  %193 = load i16, i16* %192, align 8
  %194 = zext i16 %193 to i32
  %195 = icmp sle i32 %194, 15
  br i1 %195, label %197, label %196

196:                                              ; preds = %174
  store i32 4, i32* %5, align 4
  br label %281

197:                                              ; preds = %174
  %198 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %199 = bitcast i8* %198 to i32*
  %200 = load i32, i32* %199, align 1
  %201 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %202 = getelementptr inbounds i8, i8* %201, i64 4
  %203 = call i32 @CrcCalc(i8* noundef %202, i64 noundef 6)
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 16, i32* %5, align 4
  br label %281

206:                                              ; preds = %197
  %207 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %208 = getelementptr inbounds i8, i8* %207, i64 4
  %209 = bitcast i8* %208 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  %212 = add i64 %211, 1
  %213 = shl i64 %212, 2
  store i64 %213, i64* %10, align 8
  %214 = load i64, i64* %10, align 8
  %215 = add i64 %214, 12
  %216 = sub nsw i64 0, %215
  %217 = load i64*, i64** %8, align 8
  store i64 %216, i64* %217, align 8
  %218 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %219 = load i64*, i64** %8, align 8
  %220 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %218, i64* noundef %219)
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %206
  %224 = load i32, i32* %22, align 4
  store i32 %224, i32* %5, align 4
  br label %281

225:                                              ; preds = %206
  %226 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %227 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %228 = load i64, i64* %10, align 8
  %229 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %230 = call i32 @Xz_ReadIndex(%struct.CXzStream* noundef %226, %struct.ILookInStream* noundef %227, i64 noundef %228, %struct.ISzAlloc* noundef %229)
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* %23, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load i32, i32* %23, align 4
  store i32 %234, i32* %5, align 4
  br label %281

235:                                              ; preds = %225
  %236 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %237 = call i64 @Xz_GetPackSize(%struct.CXzStream* noundef %236)
  store i64 %237, i64* %24, align 8
  %238 = load i64, i64* %24, align 8
  %239 = add i64 12, %238
  %240 = load i64, i64* %10, align 8
  %241 = add i64 %239, %240
  store i64 %241, i64* %25, align 8
  %242 = load i64, i64* %24, align 8
  %243 = icmp eq i64 %242, -1
  br i1 %243, label %250, label %244

244:                                              ; preds = %235
  %245 = load i64, i64* %25, align 8
  %246 = icmp uge i64 %245, -9223372036854775808
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i64, i64* %24, align 8
  %249 = icmp uge i64 %248, -9223372036854775808
  br i1 %249, label %250, label %251

250:                                              ; preds = %247, %244, %235
  store i32 16, i32* %5, align 4
  br label %281

251:                                              ; preds = %247
  %252 = load i64, i64* %25, align 8
  %253 = sub nsw i64 0, %252
  %254 = load i64*, i64** %8, align 8
  store i64 %253, i64* %254, align 8
  %255 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %256 = load i64*, i64** %8, align 8
  %257 = call i32 @SeekFromCur(%struct.ILookInStream* noundef %255, i64* noundef %256)
  store i32 %257, i32* %26, align 4
  %258 = load i32, i32* %26, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = load i32, i32* %26, align 4
  store i32 %261, i32* %5, align 4
  br label %281

262:                                              ; preds = %251
  call void @SecToRead_CreateVTable(%struct.CSecToRead* noundef %28)
  %263 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %264 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %28, i32 0, i32 1
  store %struct.ILookInStream* %263, %struct.ILookInStream** %264, align 8
  %265 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %28, i32 0, i32 0
  %266 = call i32 @Xz_ReadHeader(i16* noundef %27, %struct.ISeqInStream* noundef %265)
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %29, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i32, i32* %29, align 4
  store i32 %270, i32* %5, align 4
  br label %281

271:                                              ; preds = %262
  %272 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %273 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %272, i32 0, i32 0
  %274 = load i16, i16* %273, align 8
  %275 = zext i16 %274 to i32
  %276 = load i16, i16* %27, align 2
  %277 = zext i16 %276 to i32
  %278 = icmp eq i32 %275, %277
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 0, i32 16
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %271, %269, %260, %250, %233, %223, %205, %196, %170, %163, %155, %141, %131, %103, %94, %72, %54, %46, %38
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @SeekFromCur(%struct.ILookInStream* noundef %0, i64* noundef %1) #0 {
  %3 = alloca %struct.ILookInStream*, align 8
  %4 = alloca i64*, align 8
  store %struct.ILookInStream* %0, %struct.ILookInStream** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.ILookInStream*, %struct.ILookInStream** %3, align 8
  %6 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %5, i32 0, i32 3
  %7 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %6, align 8
  %8 = load %struct.ILookInStream*, %struct.ILookInStream** %3, align 8
  %9 = bitcast %struct.ILookInStream* %8 to i8*
  %10 = load i64*, i64** %4, align 8
  %11 = call i32 %7(i8* noundef %9, i64* noundef %10, i32 noundef 1)
  ret i32 %11
}

declare dso_local i32 @LookInStream_Read2(%struct.ILookInStream* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @CrcCalc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadIndex(%struct.CXzStream* noundef %0, %struct.ILookInStream* noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CXzStream*, align 8
  %7 = alloca %struct.ILookInStream*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ISzAlloc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %6, align 8
  store %struct.ILookInStream* %1, %struct.ILookInStream** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ISzAlloc* %3, %struct.ISzAlloc** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 2147483648
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 4, i32* %5, align 4
  br label %54

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 4, i32* %5, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %24 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %23, i32 0, i32 0
  %25 = load i8* (i8*, i64)*, i8* (i8*, i64)** %24, align 8
  %26 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %27 = bitcast %struct.ISzAlloc* %26 to i8*
  %28 = load i64, i64* %11, align 8
  %29 = call i8* %25(i8* noundef %27, i64 noundef %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 2, i32* %5, align 4
  br label %54

33:                                               ; preds = %22
  %34 = load %struct.ILookInStream*, %struct.ILookInStream** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %34, i8* noundef %35, i64 noundef %36, i32 noundef 4)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %45 = call i32 @Xz_ReadIndex2(%struct.CXzStream* noundef %41, i8* noundef %42, i64 noundef %43, %struct.ISzAlloc* noundef %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %48 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %47, i32 0, i32 1
  %49 = load void (i8*, i8*)*, void (i8*, i8*)** %48, align 8
  %50 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %51 = bitcast %struct.ISzAlloc* %50 to i8*
  %52 = load i8*, i8** %12, align 8
  call void %49(i8* noundef %51, i8* noundef %52)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %32, %21, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local void @SecToRead_CreateVTable(%struct.CSecToRead* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Xz_ReadIndex2(%struct.CXzStream* noundef %0, i8* noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CXzStream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ISzAlloc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.CXzBlockSizes*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.CXzStream* %0, %struct.CXzStream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ISzAlloc* %3, %struct.ISzAlloc** %9, align 8
  store i64 1, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 5
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %4
  store i32 16, i32* %5, align 4
  br label %174

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, 4
  store i64 %31, i64* %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @CrcCalc(i8* noundef %32, i64 noundef %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 16, i32* %5, align 4
  br label %174

43:                                               ; preds = %29
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub i64 %47, %48
  %50 = call i32 @Xz_ReadVarInt(i8* noundef %46, i64 noundef %49, i64* noundef %15)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 16, i32* %5, align 4
  br label %174

54:                                               ; preds = %43
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %15, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  %65 = mul i64 %64, 2
  %66 = load i64, i64* %8, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %54
  store i32 16, i32* %5, align 4
  br label %174

69:                                               ; preds = %63
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %12, align 8
  %71 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %72 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  call void @Xz_Free(%struct.CXzStream* noundef %71, %struct.ISzAlloc* noundef %72)
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %78 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %81 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %83 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %82, i32 0, i32 0
  %84 = load i8* (i8*, i64)*, i8* (i8*, i64)** %83, align 8
  %85 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %86 = bitcast %struct.ISzAlloc* %85 to i8*
  %87 = load i64, i64* %11, align 8
  %88 = mul i64 16, %87
  %89 = call i8* %84(i8* noundef %86, i64 noundef %88)
  %90 = bitcast i8* %89 to %struct.CXzBlockSizes*
  %91 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %92 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %91, i32 0, i32 3
  store %struct.CXzBlockSizes* %90, %struct.CXzBlockSizes** %92, align 8
  %93 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %94 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %93, i32 0, i32 3
  %95 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %94, align 8
  %96 = icmp eq %struct.CXzBlockSizes* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %75
  store i32 2, i32* %5, align 4
  br label %174

98:                                               ; preds = %75
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %149, %98
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %152

103:                                              ; preds = %99
  %104 = load %struct.CXzStream*, %struct.CXzStream** %6, align 8
  %105 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %104, i32 0, i32 3
  %106 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %106, i64 %107
  store %struct.CXzBlockSizes* %108, %struct.CXzBlockSizes** %17, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %13, align 8
  %114 = sub i64 %112, %113
  %115 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %17, align 8
  %116 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %115, i32 0, i32 1
  %117 = call i32 @Xz_ReadVarInt(i8* noundef %111, i64 noundef %114, i64* noundef %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %103
  store i32 16, i32* %5, align 4
  br label %174

121:                                              ; preds = %103
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %13, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %13, align 8
  %131 = sub i64 %129, %130
  %132 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %17, align 8
  %133 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %132, i32 0, i32 0
  %134 = call i32 @Xz_ReadVarInt(i8* noundef %128, i64 noundef %131, i64* noundef %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  store i32 16, i32* %5, align 4
  br label %174

138:                                              ; preds = %121
  %139 = load i32, i32* %19, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %13, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %13, align 8
  %143 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %17, align 8
  %144 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 16, i32* %5, align 4
  br label %174

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %99, !llvm.loop !11

152:                                              ; preds = %99
  br label %153

153:                                              ; preds = %152, %69
  br label %154

154:                                              ; preds = %167, %153
  %155 = load i64, i64* %13, align 8
  %156 = and i64 %155, 3
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8*, i8** %7, align 8
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %13, align 8
  %162 = getelementptr inbounds i8, i8* %159, i64 %160
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 16, i32* %5, align 4
  br label %174

167:                                              ; preds = %158
  br label %154, !llvm.loop !12

168:                                              ; preds = %154
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 0, i32 16
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %168, %166, %147, %137, %120, %97, %68, %53, %42, %28
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @Xz_ReadVarInt(i8* noundef, i64 noundef, i64* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn }

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
