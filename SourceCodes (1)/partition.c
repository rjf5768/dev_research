; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/partition.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @part_Create(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 %4, 3
  %6 = add nsw i32 %5, 3
  %7 = call i8* @memory_Calloc(i32 noundef %6, i32 noundef 4)
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 -1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 3
  %18 = add nsw i32 %17, 3
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 -2
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 -3
  store i32 1, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

declare dso_local i8* @memory_Calloc(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @part_Init(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 -2
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 3
  %11 = sdiv i32 %10, 3
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  call void @part_Free(i32* noundef %16)
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @part_Create(i32 noundef %17)
  store i32* %18, i32** %3, align 8
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 -1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 -3
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @part_SetStamp(i32* noundef %37, i32 noundef %38, i32 noundef 0)
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %32, !llvm.loop !4

43:                                               ; preds = %32
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -3
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %19
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

; Function Attrs: noinline nounwind uwtable
define internal void @part_Free(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 -2
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 3
  %11 = sdiv i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %6, i64 %13
  %15 = getelementptr inbounds i32, i32* %14, i64 -3
  %16 = bitcast i32* %15 to i8*
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 -2
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  call void @memory_Free(i8* noundef %16, i32 noundef %22)
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32* @part_SetStamp(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 -4, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32 %7, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  ret i32* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @part_Find(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @part_NF(i32* noundef %6, i32 noundef %7)
  %9 = call i32 @part_GetClass(i32* noundef %5, i32 noundef %8)
  %10 = sub nsw i32 0, %9
  %11 = sub nsw i32 %10, 1
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_GetClass(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_NF(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %15, %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @part_DelayedInit(i32* noundef %10, i32 noundef %11)
  %13 = call i32 @part_GetClass(i32* noundef %9, i32 noundef %12)
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @part_GetClass(i32* noundef %16, i32 noundef %17)
  store i32 %18, i32* %5, align 4
  br label %8, !llvm.loop !6

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @part_GetClass(i32* noundef %25, i32 noundef %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32* @part_SetClass(i32* noundef %28, i32 noundef %29, i32 noundef %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %4, align 4
  br label %20, !llvm.loop !7

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @part_Union(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @part_NF(i32* noundef %10, i32 noundef %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @part_NF(i32* noundef %13, i32 noundef %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @part_GetClassSize(i32* noundef %20, i32 noundef %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @part_GetClassSize(i32* noundef %23, i32 noundef %24)
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @part_GetClass(i32* noundef %33, i32 noundef %34)
  %36 = call i32* @part_SetClass(i32* noundef %31, i32 noundef %32, i32 noundef %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @part_GetClass(i32* noundef %38, i32 noundef %39)
  %41 = sub nsw i32 0, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @part_SetClass(i32* noundef %37, i32 noundef %42, i32 noundef %43)
  br label %45

45:                                               ; preds = %27, %19
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @part_SetClass(i32* noundef %46, i32 noundef %47, i32 noundef %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @part_GetClassSize(i32* noundef %52, i32 noundef %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @part_GetClassSize(i32* noundef %55, i32 noundef %56)
  %58 = add nsw i32 %54, %57
  %59 = call i32* @part_SetClassSize(i32* noundef %50, i32 noundef %51, i32 noundef %58)
  br label %60

60:                                               ; preds = %45, %3
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_GetClassSize(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 -1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32* @part_SetClass(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 %7, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  ret i32* %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32* @part_SetClassSize(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  store i32 %7, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  ret i32* %16
}

; Function Attrs: noinline nounwind uwtable
define internal void @memory_Free(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @memory_LookupRealBlockSize(i32 noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 1024
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @memory_OFFSET, align 4
  %14 = zext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -16
  %18 = bitcast i8* %17 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %18, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %19 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %20 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %19, i32 0, i32 0
  %21 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %20, align 8
  %22 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %25 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %24, i32 0, i32 1
  %26 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %25, align 8
  %27 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %28 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %27, i32 0, i32 0
  %29 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %28, align 8
  %30 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %29, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %26, %struct.MEMORY_BIGBLOCKHEADERHELP** %30, align 8
  br label %35

31:                                               ; preds = %11
  %32 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %33 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %32, i32 0, i32 1
  %34 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %33, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %34, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %37 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %36, i32 0, i32 1
  %38 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %37, align 8
  %39 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %42 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %41, i32 0, i32 0
  %43 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %42, align 8
  %44 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %45 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %44, i32 0, i32 1
  %46 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %45, align 8
  %47 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %46, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %43, %struct.MEMORY_BIGBLOCKHEADERHELP** %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @memory_MARKSIZE, align 4
  %51 = add i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = add i64 %52, 16
  %54 = load i64, i64* @memory_FREEDBYTES, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* @memory_FREEDBYTES, align 8
  %56 = load i64, i64* @memory_MAXMEM, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @memory_MARKSIZE, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = add i64 %62, 16
  %64 = load i64, i64* @memory_MAXMEM, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* @memory_MAXMEM, align 8
  br label %66

66:                                               ; preds = %58, %48
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -16
  call void @free(i8* noundef %68) #3
  br label %93

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %71
  %73 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %72, align 8
  %74 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @memory_FREEDBYTES, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* @memory_FREEDBYTES, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %80
  %82 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %81, align 8
  %83 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = bitcast i8* %85 to i8**
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %89
  %91 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %90, align 8
  %92 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 1024
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %8
  %10 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %9, align 8
  %11 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @memory_CalculateRealBlockSize(i32 noundef %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = urem i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = urem i32 %9, 1
  %11 = sub i32 1, %10
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @memory_ALIGN, align 4
  %17 = urem i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* @memory_ALIGN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @memory_ALIGN, align 4
  %23 = urem i32 %21, %22
  %24 = sub i32 %20, %23
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_DelayedInit(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @part_Stamped(i32* noundef %5, i32 noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 0, %12
  %14 = sub nsw i32 %13, 1
  %15 = call i32* @part_SetClass(i32* noundef %10, i32 noundef %11, i32 noundef %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @part_SetClassSize(i32* noundef %16, i32 noundef %17, i32 noundef 1)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 -3
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @part_SetStamp(i32* noundef %19, i32 noundef %20, i32 noundef %23)
  br label %25

25:                                               ; preds = %9, %2
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_Stamped(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @part_GetStamp(i32* noundef %5, i32 noundef %6)
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 -3
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @part_GetStamp(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 -4, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
