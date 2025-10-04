; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zStream.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CLookToRead = type { %struct.ILookInStream, %struct.ISeekInStream*, i64, i64, [16384 x i8] }
%struct.ISeekInStream = type { i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CSecToLook = type { %struct.ISeqInStream, %struct.ILookInStream* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ISeqInStream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ISeqInStream* %0, %struct.ISeqInStream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.ISeqInStream*, %struct.ISeqInStream** %6, align 8
  %18 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %17, i32 0, i32 0
  %19 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %18, align 8
  %20 = load %struct.ISeqInStream*, %struct.ISeqInStream** %6, align 8
  %21 = bitcast %struct.ISeqInStream* %20 to i8*
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 %19(i8* noundef %21, i8* noundef %22, i64* noundef %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %15
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %12, !llvm.loop !4

40:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %31, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_Read(%struct.ISeqInStream* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.ISeqInStream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ISeqInStream* %0, %struct.ISeqInStream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ISeqInStream*, %struct.ISeqInStream** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %7, i8* noundef %8, i64 noundef %9, i32 noundef 6)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ISeqInStream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ISeqInStream* %0, %struct.ISeqInStream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 1, i64* %6, align 8
  %8 = load %struct.ISeqInStream*, %struct.ISeqInStream** %4, align 8
  %9 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %8, i32 0, i32 0
  %10 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %9, align 8
  %11 = load %struct.ISeqInStream*, %struct.ISeqInStream** %4, align 8
  %12 = bitcast %struct.ISeqInStream* %11 to i8*
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 %10(i8* noundef %12, i8* noundef %13, i64* noundef %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 6
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_SeekTo(%struct.ILookInStream* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.ILookInStream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ILookInStream* %0, %struct.ILookInStream** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.ILookInStream*, %struct.ILookInStream** %3, align 8
  %8 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %7, i32 0, i32 3
  %9 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %8, align 8
  %10 = load %struct.ILookInStream*, %struct.ILookInStream** %3, align 8
  %11 = bitcast %struct.ILookInStream* %10 to i8*
  %12 = call i32 %9(i8* noundef %11, i64* noundef %5, i32 noundef 0)
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_LookRead(%struct.ILookInStream* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ILookInStream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ILookInStream* %0, %struct.ILookInStream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %16 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %15, i32 0, i32 0
  %17 = load i32 (i8*, i8**, i64*)*, i32 (i8*, i8**, i64*)** %16, align 8
  %18 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %19 = bitcast %struct.ILookInStream* %18 to i8*
  %20 = load i64*, i64** %7, align 8
  %21 = call i32 %17(i8* noundef %19, i8** noundef %8, i64* noundef %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %28, i64 %30, i1 false)
  %31 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %32 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %31, i32 0, i32 1
  %33 = load i32 (i8*, i64)*, i32 (i8*, i64)** %32, align 8
  %34 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %35 = bitcast %struct.ILookInStream* %34 to i8*
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 %33(i8* noundef %35, i64 noundef %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %24, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_Read2(%struct.ILookInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ILookInStream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ILookInStream* %0, %struct.ILookInStream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.ILookInStream*, %struct.ILookInStream** %6, align 8
  %18 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %17, i32 0, i32 2
  %19 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %18, align 8
  %20 = load %struct.ILookInStream*, %struct.ILookInStream** %6, align 8
  %21 = bitcast %struct.ILookInStream* %20 to i8*
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 %19(i8* noundef %21, i8* noundef %22, i64* noundef %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %15
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %12, !llvm.loop !6

40:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %31, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_Read(%struct.ILookInStream* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.ILookInStream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ILookInStream* %0, %struct.ILookInStream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ILookInStream*, %struct.ILookInStream** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %7, i8* noundef %8, i64 noundef %9, i32 noundef 6)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LookToRead_CreateVTable(%struct.CLookToRead* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CLookToRead*, align 8
  %4 = alloca i32, align 4
  store %struct.CLookToRead* %0, %struct.CLookToRead** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 (i8*, i8**, i64*)* @LookToRead_Look_Lookahead, i32 (i8*, i8**, i64*)* @LookToRead_Look_Exact
  %9 = load %struct.CLookToRead*, %struct.CLookToRead** %3, align 8
  %10 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %10, i32 0, i32 0
  store i32 (i8*, i8**, i64*)* %8, i32 (i8*, i8**, i64*)** %11, align 8
  %12 = load %struct.CLookToRead*, %struct.CLookToRead** %3, align 8
  %13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %13, i32 0, i32 1
  store i32 (i8*, i64)* @LookToRead_Skip, i32 (i8*, i64)** %14, align 8
  %15 = load %struct.CLookToRead*, %struct.CLookToRead** %3, align 8
  %16 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %16, i32 0, i32 2
  store i32 (i8*, i8*, i64*)* @LookToRead_Read, i32 (i8*, i8*, i64*)** %17, align 8
  %18 = load %struct.CLookToRead*, %struct.CLookToRead** %3, align 8
  %19 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %19, i32 0, i32 3
  store i32 (i8*, i64*, i32)* @LookToRead_Seek, i32 (i8*, i64*, i32)** %20, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Look_Lookahead(i8* noundef %0, i8** noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CLookToRead*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.CLookToRead*
  store %struct.CLookToRead* %11, %struct.CLookToRead** %8, align 8
  %12 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %16 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %27 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  store i64 16384, i64* %9, align 8
  %28 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %29 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %28, i32 0, i32 1
  %30 = load %struct.ISeekInStream*, %struct.ISeekInStream** %29, align 8
  %31 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %30, i32 0, i32 0
  %32 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %31, align 8
  %33 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %34 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %33, i32 0, i32 1
  %35 = load %struct.ISeekInStream*, %struct.ISeekInStream** %34, align 8
  %36 = bitcast %struct.ISeekInStream* %35 to i8*
  %37 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %38 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %37, i32 0, i32 4
  %39 = getelementptr inbounds [16384 x i8], [16384 x i8]* %38, i64 0, i64 0
  %40 = call i32 %32(i8* noundef %36, i8* noundef %39, i64* noundef %9)
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %43 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %25, %21, %3
  %45 = load i64, i64* %9, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %54 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %53, i32 0, i32 4
  %55 = getelementptr inbounds [16384 x i8], [16384 x i8]* %54, i64 0, i64 0
  %56 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %57 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Look_Exact(i8* noundef %0, i8** noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CLookToRead*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.CLookToRead*
  store %struct.CLookToRead* %11, %struct.CLookToRead** %8, align 8
  %12 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %16 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %3
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %27 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %29, 16384
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64*, i64** %6, align 8
  store i64 16384, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %35 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %34, i32 0, i32 1
  %36 = load %struct.ISeekInStream*, %struct.ISeekInStream** %35, align 8
  %37 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %36, i32 0, i32 0
  %38 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %37, align 8
  %39 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %40 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %39, i32 0, i32 1
  %41 = load %struct.ISeekInStream*, %struct.ISeekInStream** %40, align 8
  %42 = bitcast %struct.ISeekInStream* %41 to i8*
  %43 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %44 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %43, i32 0, i32 4
  %45 = getelementptr inbounds [16384 x i8], [16384 x i8]* %44, i64 0, i64 0
  %46 = load i64*, i64** %6, align 8
  %47 = call i32 %38(i8* noundef %42, i8* noundef %45, i64* noundef %46)
  store i32 %47, i32* %7, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %51 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  store i64 %49, i64* %9, align 8
  br label %52

52:                                               ; preds = %33, %21, %3
  %53 = load i64, i64* %9, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %62 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %61, i32 0, i32 4
  %63 = getelementptr inbounds [16384 x i8], [16384 x i8]* %62, i64 0, i64 0
  %64 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %65 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8**, i8*** %5, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Skip(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.CLookToRead*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.CLookToRead*
  store %struct.CLookToRead* %7, %struct.CLookToRead** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.CLookToRead*, %struct.CLookToRead** %5, align 8
  %10 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, %8
  store i64 %12, i64* %10, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Read(i8* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.CLookToRead*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.CLookToRead*
  store %struct.CLookToRead* %11, %struct.CLookToRead** %8, align 8
  %12 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %16 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %23 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %22, i32 0, i32 1
  %24 = load %struct.ISeekInStream*, %struct.ISeekInStream** %23, align 8
  %25 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %24, i32 0, i32 0
  %26 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %25, align 8
  %27 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %28 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %27, i32 0, i32 1
  %29 = load %struct.ISeekInStream*, %struct.ISeekInStream** %28, align 8
  %30 = bitcast %struct.ISeekInStream* %29 to i8*
  %31 = load i8*, i8** %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = call i32 %26(i8* noundef %30, i8* noundef %31, i64* noundef %32)
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %3
  %35 = load i64, i64* %9, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %45 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %44, i32 0, i32 4
  %46 = getelementptr inbounds [16384 x i8], [16384 x i8]* %45, i64 0, i64 0
  %47 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %48 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i64, i64* %9, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %50, i64 %51, i1 false)
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.CLookToRead*, %struct.CLookToRead** %8, align 8
  %54 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %42, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Seek(i8* noundef %0, i64* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.CLookToRead*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CLookToRead*
  store %struct.CLookToRead* %9, %struct.CLookToRead** %7, align 8
  %10 = load %struct.CLookToRead*, %struct.CLookToRead** %7, align 8
  %11 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.CLookToRead*, %struct.CLookToRead** %7, align 8
  %13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.CLookToRead*, %struct.CLookToRead** %7, align 8
  %15 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %14, i32 0, i32 1
  %16 = load %struct.ISeekInStream*, %struct.ISeekInStream** %15, align 8
  %17 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %16, i32 0, i32 1
  %18 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %17, align 8
  %19 = load %struct.CLookToRead*, %struct.CLookToRead** %7, align 8
  %20 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %19, i32 0, i32 1
  %21 = load %struct.ISeekInStream*, %struct.ISeekInStream** %20, align 8
  %22 = bitcast %struct.ISeekInStream* %21 to i8*
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %18(i8* noundef %22, i64* noundef %23, i32 noundef %24)
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LookToRead_Init(%struct.CLookToRead* noundef %0) #0 {
  %2 = alloca %struct.CLookToRead*, align 8
  store %struct.CLookToRead* %0, %struct.CLookToRead** %2, align 8
  %3 = load %struct.CLookToRead*, %struct.CLookToRead** %2, align 8
  %4 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.CLookToRead*, %struct.CLookToRead** %2, align 8
  %6 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SecToLook_CreateVTable(%struct.CSecToLook* noundef %0) #0 {
  %2 = alloca %struct.CSecToLook*, align 8
  store %struct.CSecToLook* %0, %struct.CSecToLook** %2, align 8
  %3 = load %struct.CSecToLook*, %struct.CSecToLook** %2, align 8
  %4 = getelementptr inbounds %struct.CSecToLook, %struct.CSecToLook* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %4, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToLook_Read, i32 (i8*, i8*, i64*)** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SecToLook_Read(i8* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.CSecToLook*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CSecToLook*
  store %struct.CSecToLook* %9, %struct.CSecToLook** %7, align 8
  %10 = load %struct.CSecToLook*, %struct.CSecToLook** %7, align 8
  %11 = getelementptr inbounds %struct.CSecToLook, %struct.CSecToLook* %10, i32 0, i32 1
  %12 = load %struct.ILookInStream*, %struct.ILookInStream** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = call i32 @LookInStream_LookRead(%struct.ILookInStream* noundef %12, i8* noundef %13, i64* noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SecToRead_CreateVTable(%struct.CSecToRead* noundef %0) #0 {
  %2 = alloca %struct.CSecToRead*, align 8
  store %struct.CSecToRead* %0, %struct.CSecToRead** %2, align 8
  %3 = load %struct.CSecToRead*, %struct.CSecToRead** %2, align 8
  %4 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %4, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToRead_Read, i32 (i8*, i8*, i64*)** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SecToRead_Read(i8* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.CSecToRead*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CSecToRead*
  store %struct.CSecToRead* %9, %struct.CSecToRead** %7, align 8
  %10 = load %struct.CSecToRead*, %struct.CSecToRead** %7, align 8
  %11 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %10, i32 0, i32 1
  %12 = load %struct.ILookInStream*, %struct.ILookInStream** %11, align 8
  %13 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %12, i32 0, i32 2
  %14 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %13, align 8
  %15 = load %struct.CSecToRead*, %struct.CSecToRead** %7, align 8
  %16 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %15, i32 0, i32 1
  %17 = load %struct.ILookInStream*, %struct.ILookInStream** %16, align 8
  %18 = bitcast %struct.ILookInStream* %17 to i8*
  %19 = load i8*, i8** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 %14(i8* noundef %18, i8* noundef %19, i64* noundef %20)
  ret i32 %21
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
