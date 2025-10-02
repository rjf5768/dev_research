; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/hasharray.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/hasharray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP** @hsh_Create() #0 {
  %1 = alloca %struct.LIST_HELP**, align 8
  %2 = alloca i32, align 4
  %3 = call i8* @memory_Malloc(i32 noundef 232)
  %4 = bitcast i8* %3 to %struct.LIST_HELP**
  store %struct.LIST_HELP** %4, %struct.LIST_HELP*** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ult i32 %6, 29
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call %struct.LIST_HELP* @list_Nil()
  %10 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %10, i64 %12
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %13, align 8
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %5, !llvm.loop !4

17:                                               ; preds = %5
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %1, align 8
  ret %struct.LIST_HELP** %18
}

declare dso_local i8* @memory_Malloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #0 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsh_Reset(%struct.LIST_HELP** noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %0, %struct.LIST_HELP*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 29
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %10, i64 %12
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %4, align 8
  br label %15

15:                                               ; preds = %28, %9
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %17 = call i32 @list_Empty(%struct.LIST_HELP* noundef %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %22 = call i8* @list_Car(%struct.LIST_HELP* noundef %21)
  %23 = bitcast i8* %22 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %5, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %25 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %24)
  %26 = bitcast i8* %25 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* noundef %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  call void @list_PairFree(%struct.LIST_HELP* noundef %27)
  br label %28

28:                                               ; preds = %20
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %29)
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %4, align 8
  br label %15, !llvm.loop !6

31:                                               ; preds = %15
  %32 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %32, i64 %34
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %35, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %36)
  %37 = call %struct.LIST_HELP* @list_Nil()
  %38 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %38, i64 %40
  store %struct.LIST_HELP* %37, %struct.LIST_HELP** %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6, !llvm.loop !7

45:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = icmp eq %struct.LIST_HELP* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  %3 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %7 = call i32 @list_Empty(%struct.LIST_HELP* noundef %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %11)
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %2, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  call void @list_Free(%struct.LIST_HELP* noundef %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %3, align 8
  br label %5, !llvm.loop !8

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %3)
  %5 = bitcast %struct.LIST_HELP* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  call void @list_Free(%struct.LIST_HELP* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsh_Delete(%struct.LIST_HELP** noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP**, align 8
  store %struct.LIST_HELP** %0, %struct.LIST_HELP*** %2, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  call void @hsh_Reset(%struct.LIST_HELP** noundef %3)
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %5 = bitcast %struct.LIST_HELP** %4 to i8*
  call void @memory_Free(i8* noundef %5, i32 noundef 232)
  ret void
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
define dso_local %struct.LIST_HELP* @hsh_GetAllEntries(%struct.LIST_HELP** noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP**, align 8
  %3 = alloca %struct.LIST_HELP*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca i32, align 4
  store %struct.LIST_HELP** %0, %struct.LIST_HELP*** %2, align 8
  %6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 29
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %11, i64 %13
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %14, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %3, align 8
  br label %16

16:                                               ; preds = %30, %10
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %18 = call i32 @list_Empty(%struct.LIST_HELP* noundef %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %24 = call i8* @list_Car(%struct.LIST_HELP* noundef %23)
  %25 = bitcast i8* %24 to %struct.LIST_HELP*
  %26 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %25)
  %27 = bitcast i8* %26 to %struct.LIST_HELP*
  %28 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %27)
  %29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* noundef %22, %struct.LIST_HELP* noundef %28)
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %4, align 8
  br label %30

30:                                               ; preds = %21
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %31)
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %3, align 8
  br label %16, !llvm.loop !9

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7, !llvm.loop !10

37:                                               ; preds = %7
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %38
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = alloca %struct.LIST_HELP*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca %struct.LIST_HELP*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %4, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %5, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %8 = call i32 @list_Empty(%struct.LIST_HELP* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %14 = call i32 @list_Empty(%struct.LIST_HELP* noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %3, align 8
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %6, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %4, align 8
  br label %21

21:                                               ; preds = %28, %18
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %22)
  %24 = call i32 @list_Empty(%struct.LIST_HELP* noundef %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %29)
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %4, align 8
  br label %21, !llvm.loop !11

31:                                               ; preds = %21
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %34 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %33, i32 0, i32 0
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %34, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %3, align 8
  br label %36

36:                                               ; preds = %31, %16, %10
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  ret %struct.LIST_HELP* %37
}

declare dso_local %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsh_Check(%struct.LIST_HELP** noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP**, align 8
  %3 = alloca %struct.LIST_HELP*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca %struct.LIST_HELP*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.LIST_HELP** %0, %struct.LIST_HELP*** %2, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %52, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %11, 29
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %2, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %14, i64 %16
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %17, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %3, align 8
  br label %19

19:                                               ; preds = %48, %13
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %21 = call i32 @list_Empty(%struct.LIST_HELP* noundef %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %26 = call i8* @list_Car(%struct.LIST_HELP* noundef %25)
  %27 = bitcast i8* %26 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %5, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %29 = call i8* @list_PairFirst(%struct.LIST_HELP* noundef %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %32 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %31)
  %33 = bitcast i8* %32 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %4, align 8
  br label %34

34:                                               ; preds = %44, %24
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %36 = call i32 @list_Empty(%struct.LIST_HELP* noundef %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %41 = call i8* @list_Car(%struct.LIST_HELP* noundef %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %9, align 1
  br label %44

44:                                               ; preds = %39
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %45)
  store %struct.LIST_HELP* %46, %struct.LIST_HELP** %4, align 8
  br label %34, !llvm.loop !12

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %49)
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %3, align 8
  br label %19, !llvm.loop !13

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %10, !llvm.loop !14

55:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call i8* @list_Car(%struct.LIST_HELP* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = bitcast %struct.LIST_HELP* %3 to i8*
  call void @memory_Free(i8* noundef %4, i32 noundef 16)
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
