; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/component.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.cliteral = type { i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.litptr = type { %struct.cliteral**, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0Alength of LITPTR: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Entries of literal %d : \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"----------------------\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"used:\09\09\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"litindex:\09%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"litvarlist:\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"No entries in litptr structure\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0Aj = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0Aj == %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"lit = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"i   = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"hasinter = TRUE\00", align 1
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cliteral* @literal_Create(i32 noundef %0, i32 noundef %1, %struct.LIST_HELP* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.cliteral*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %6, align 8
  %8 = call i8* @memory_Malloc(i32 noundef 16)
  %9 = bitcast i8* %8 to %struct.cliteral*
  store %struct.cliteral* %9, %struct.cliteral** %7, align 8
  %10 = load %struct.cliteral*, %struct.cliteral** %7, align 8
  %11 = load i32, i32* %4, align 4
  call void @literal_PutUsed(%struct.cliteral* noundef %10, i32 noundef %11)
  %12 = load %struct.cliteral*, %struct.cliteral** %7, align 8
  %13 = load i32, i32* %5, align 4
  call void @literal_PutLitIndex(%struct.cliteral* noundef %12, i32 noundef %13)
  %14 = load %struct.cliteral*, %struct.cliteral** %7, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @literal_PutLitVarList(%struct.cliteral* noundef %14, %struct.LIST_HELP* noundef %15)
  %16 = load %struct.cliteral*, %struct.cliteral** %7, align 8
  ret %struct.cliteral* %16
}

declare dso_local i8* @memory_Malloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @literal_PutUsed(%struct.cliteral* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cliteral*, align 8
  %4 = alloca i32, align 4
  store %struct.cliteral* %0, %struct.cliteral** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cliteral*, %struct.cliteral** %3, align 8
  %7 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @literal_PutLitIndex(%struct.cliteral* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cliteral*, align 8
  %4 = alloca i32, align 4
  store %struct.cliteral* %0, %struct.cliteral** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cliteral*, %struct.cliteral** %3, align 8
  %7 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @literal_PutLitVarList(%struct.cliteral* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = alloca %struct.cliteral*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %3, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %4, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %6 = load %struct.cliteral*, %struct.cliteral** %3, align 8
  %7 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %6, i32 0, i32 2
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @literal_Delete(%struct.cliteral* noundef %0) #0 {
  %2 = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %2, align 8
  %3 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  %4 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* noundef %3)
  call void @list_Delete(%struct.LIST_HELP* noundef %4)
  %5 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  call void @literal_Free(%struct.cliteral* noundef %5)
  ret void
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
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* noundef %0) #0 {
  %2 = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %2, align 8
  %3 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  %4 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @literal_Free(%struct.cliteral* noundef %0) #0 {
  %2 = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %2, align 8
  %3 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  %4 = bitcast %struct.cliteral* %3 to i8*
  call void @memory_Free(i8* noundef %4, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.litptr* @litptr_Create(%struct.LIST_HELP* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = alloca %struct.LIST_HELP*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca %struct.litptr*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.LIST_HELP*, align 8
  %8 = alloca %struct.cliteral*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %3, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %4, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %13 = call i32 @list_Length(%struct.LIST_HELP* noundef %12)
  store i32 %13, i32* %10, align 4
  %14 = call i8* @memory_Malloc(i32 noundef 16)
  %15 = bitcast i8* %14 to %struct.litptr*
  store %struct.litptr* %15, %struct.litptr** %5, align 8
  %16 = load %struct.litptr*, %struct.litptr** %5, align 8
  %17 = load i32, i32* %10, align 4
  call void @litptr_SetLength(%struct.litptr* noundef %16, i32 noundef %17)
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i8* @memory_Malloc(i32 noundef %24)
  %26 = bitcast i8* %25 to %struct.cliteral**
  %27 = load %struct.litptr*, %struct.litptr** %5, align 8
  %28 = getelementptr inbounds %struct.litptr, %struct.litptr* %27, i32 0, i32 0
  store %struct.cliteral** %26, %struct.cliteral*** %28, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %6, align 8
  br label %30

30:                                               ; preds = %52, %20
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %32 = call i32 @list_Empty(%struct.LIST_HELP* noundef %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %37 = call i8* @list_Car(%struct.LIST_HELP* noundef %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %40 = call i8* @list_Car(%struct.LIST_HELP* noundef %39)
  %41 = bitcast i8* %40 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %41, %struct.LIST_HELP** %7, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %42)
  store %struct.LIST_HELP* %43, %struct.LIST_HELP** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %46 = call %struct.cliteral* @literal_Create(i32 noundef 0, i32 noundef %44, %struct.LIST_HELP* noundef %45)
  store %struct.cliteral* %46, %struct.cliteral** %8, align 8
  %47 = load %struct.litptr*, %struct.litptr** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.cliteral*, %struct.cliteral** %8, align 8
  call void @litptr_SetLiteral(%struct.litptr* noundef %47, i32 noundef %48, %struct.cliteral* noundef %49)
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %54 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %53)
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %6, align 8
  br label %30, !llvm.loop !6

55:                                               ; preds = %30
  br label %59

56:                                               ; preds = %2
  %57 = load %struct.litptr*, %struct.litptr** %5, align 8
  %58 = getelementptr inbounds %struct.litptr, %struct.litptr* %57, i32 0, i32 0
  store %struct.cliteral** null, %struct.cliteral*** %58, align 8
  br label %59

59:                                               ; preds = %56, %55
  %60 = load %struct.litptr*, %struct.litptr** %5, align 8
  ret %struct.litptr* %60
}

declare dso_local i32 @list_Length(%struct.LIST_HELP* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @litptr_SetLength(%struct.litptr* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.litptr*, align 8
  %4 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.litptr*, %struct.litptr** %3, align 8
  %7 = getelementptr inbounds %struct.litptr, %struct.litptr* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
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
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @litptr_SetLiteral(%struct.litptr* noundef %0, i32 noundef %1, %struct.cliteral* noundef %2) #0 {
  %4 = alloca %struct.litptr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cliteral*, align 8
  store %struct.litptr* %0, %struct.litptr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cliteral* %2, %struct.cliteral** %6, align 8
  %7 = load %struct.cliteral*, %struct.cliteral** %6, align 8
  %8 = load %struct.litptr*, %struct.litptr** %4, align 8
  %9 = getelementptr inbounds %struct.litptr, %struct.litptr* %8, i32 0, i32 0
  %10 = load %struct.cliteral**, %struct.cliteral*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %10, i64 %12
  store %struct.cliteral* %7, %struct.cliteral** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @litptr_Delete(%struct.litptr* noundef %0) #0 {
  %2 = alloca %struct.litptr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %2, align 8
  %5 = load %struct.litptr*, %struct.litptr** %2, align 8
  %6 = call i32 @litptr_Length(%struct.litptr* noundef %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %18, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.litptr*, %struct.litptr** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %15, i32 noundef %16)
  call void @literal_Delete(%struct.cliteral* noundef %17)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %10, !llvm.loop !7

21:                                               ; preds = %10
  %22 = load %struct.litptr*, %struct.litptr** %2, align 8
  %23 = getelementptr inbounds %struct.litptr, %struct.litptr* %22, i32 0, i32 0
  %24 = load %struct.cliteral**, %struct.cliteral*** %23, align 8
  %25 = bitcast %struct.cliteral** %24 to i8*
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  call void @memory_Free(i8* noundef %25, i32 noundef %29)
  %30 = load %struct.litptr*, %struct.litptr** %2, align 8
  %31 = bitcast %struct.litptr* %30 to i8*
  call void @memory_Free(i8* noundef %31, i32 noundef 16)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.litptr*, %struct.litptr** %2, align 8
  %34 = bitcast %struct.litptr* %33 to i8*
  call void @memory_Free(i8* noundef %34, i32 noundef 16)
  br label %35

35:                                               ; preds = %32, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @litptr_Length(%struct.litptr* noundef %0) #0 {
  %2 = alloca %struct.litptr*, align 8
  store %struct.litptr* %0, %struct.litptr** %2, align 8
  %3 = load %struct.litptr*, %struct.litptr** %2, align 8
  %4 = getelementptr inbounds %struct.litptr, %struct.litptr* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.litptr*, align 8
  %4 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.litptr*, %struct.litptr** %3, align 8
  %6 = getelementptr inbounds %struct.litptr, %struct.litptr* %5, i32 0, i32 0
  %7 = load %struct.cliteral**, %struct.cliteral*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %7, i64 %9
  %11 = load %struct.cliteral*, %struct.cliteral** %10, align 8
  ret %struct.cliteral* %11
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
define dso_local void @litptr_Print(%struct.litptr* noundef %0) #0 {
  %2 = alloca %struct.litptr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %2, align 8
  %5 = load %struct.litptr*, %struct.litptr** %2, align 8
  %6 = call i32 @litptr_Length(%struct.litptr* noundef %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %44, %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17)
  %19 = call i32 @puts(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call i32 @fputs(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %20)
  %22 = load %struct.litptr*, %struct.litptr** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %22, i32 noundef %23)
  %25 = call i32 @literal_GetUsed(%struct.cliteral* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @puts(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %31

29:                                               ; preds = %16
  %30 = call i32 @puts(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  %32 = load %struct.litptr*, %struct.litptr** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %32, i32 noundef %33)
  %35 = call i32 @literal_GetLitIndex(%struct.cliteral* noundef %34)
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 @fputs(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %37)
  %39 = load %struct.litptr*, %struct.litptr** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %39, i32 noundef %40)
  %42 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* noundef %41)
  call void @list_Apply(void (i8*)* noundef bitcast (void (i32)* @symbol_Print to void (i8*)*), %struct.LIST_HELP* noundef %42)
  %43 = call i32 @puts(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %12, !llvm.loop !8

47:                                               ; preds = %12
  br label %50

48:                                               ; preds = %1
  %49 = call i32 @puts(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @literal_GetUsed(%struct.cliteral* noundef %0) #0 {
  %2 = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %2, align 8
  %3 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  %4 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @literal_GetLitIndex(%struct.cliteral* noundef %0) #0 {
  %2 = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %0, %struct.cliteral** %2, align 8
  %3 = load %struct.cliteral*, %struct.cliteral** %2, align 8
  %4 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

declare dso_local void @list_Apply(void (i8*)* noundef, %struct.LIST_HELP* noundef) #1

declare dso_local void @symbol_Print(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @litptr_AllUsed(%struct.litptr* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.litptr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %3, align 8
  %6 = load %struct.litptr*, %struct.litptr** %3, align 8
  %7 = call i32 @litptr_Length(%struct.litptr* noundef %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.litptr*, %struct.litptr** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %13, i32 noundef %14)
  %16 = call i32 @literal_GetUsed(%struct.cliteral* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8, !llvm.loop !9

23:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP* @subs_CompList(%struct.litptr* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  %3 = alloca %struct.litptr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.LIST_HELP*, align 8
  %8 = alloca %struct.LIST_HELP*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.litptr* %0, %struct.litptr** %3, align 8
  %13 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %8, align 8
  %14 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %7, align 8
  %15 = load %struct.litptr*, %struct.litptr** %3, align 8
  %16 = call i32 @litptr_Length(%struct.litptr* noundef %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %160

19:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 noundef %25)
  %27 = load %struct.litptr*, %struct.litptr** %3, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %27, i32 noundef %28)
  %30 = call i32 @literal_GetUsed(%struct.cliteral* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %24
  %33 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %38 = call %struct.LIST_HELP* @list_Cons(i8* noundef %36, %struct.LIST_HELP* noundef %37)
  store %struct.LIST_HELP* %38, %struct.LIST_HELP** %7, align 8
  %39 = load %struct.litptr*, %struct.litptr** %3, align 8
  %40 = getelementptr inbounds %struct.litptr, %struct.litptr* %39, i32 0, i32 0
  %41 = load %struct.cliteral**, %struct.cliteral*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %41, i64 %43
  %45 = load %struct.cliteral*, %struct.cliteral** %44, align 8
  %46 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %51 = call %struct.LIST_HELP* @list_Cons(i8* noundef %49, %struct.LIST_HELP* noundef %50)
  store %struct.LIST_HELP* %51, %struct.LIST_HELP** %8, align 8
  %52 = load %struct.litptr*, %struct.litptr** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %52, i32 noundef %53)
  call void @literal_PutUsed(%struct.cliteral* noundef %54, i32 noundef 1)
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %57)
  br label %59

59:                                               ; preds = %32, %24
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %20, !llvm.loop !10

63:                                               ; preds = %20
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %68)
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  store %struct.LIST_HELP* %69, %struct.LIST_HELP** %2, align 8
  br label %162

70:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %158, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %159

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  store %struct.LIST_HELP* %75, %struct.LIST_HELP** %6, align 8
  br label %76

76:                                               ; preds = %150, %74
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %78 = call i32 @list_Empty(%struct.LIST_HELP* noundef %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %153

81:                                               ; preds = %76
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %83 = call i8* @list_Car(%struct.LIST_HELP* noundef %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %146, %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %149

89:                                               ; preds = %85
  %90 = load %struct.litptr*, %struct.litptr** %3, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %90, i32 noundef %91)
  %93 = call i32 @literal_GetUsed(%struct.cliteral* noundef %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %145, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 noundef %98)
  %100 = load %struct.litptr*, %struct.litptr** %3, align 8
  %101 = getelementptr inbounds %struct.litptr, %struct.litptr* %100, i32 0, i32 0
  %102 = load %struct.cliteral**, %struct.cliteral*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %102, i64 %104
  %106 = load %struct.cliteral*, %struct.cliteral** %105, align 8
  %107 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %106, i32 0, i32 2
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %107, align 8
  %109 = load %struct.litptr*, %struct.litptr** %3, align 8
  %110 = getelementptr inbounds %struct.litptr, %struct.litptr* %109, i32 0, i32 0
  %111 = load %struct.cliteral**, %struct.cliteral*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %111, i64 %113
  %115 = load %struct.cliteral*, %struct.cliteral** %114, align 8
  %116 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %115, i32 0, i32 2
  %117 = load %struct.LIST_HELP*, %struct.LIST_HELP** %116, align 8
  %118 = call i32 @list_HasIntersection(%struct.LIST_HELP* noundef %108, %struct.LIST_HELP* noundef %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %95
  %122 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %127 = call %struct.LIST_HELP* @list_Cons(i8* noundef %125, %struct.LIST_HELP* noundef %126)
  store %struct.LIST_HELP* %127, %struct.LIST_HELP** %7, align 8
  %128 = load %struct.litptr*, %struct.litptr** %3, align 8
  %129 = getelementptr inbounds %struct.litptr, %struct.litptr* %128, i32 0, i32 0
  %130 = load %struct.cliteral**, %struct.cliteral*** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %130, i64 %132
  %134 = load %struct.cliteral*, %struct.cliteral** %133, align 8
  %135 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %140 = call %struct.LIST_HELP* @list_Cons(i8* noundef %138, %struct.LIST_HELP* noundef %139)
  store %struct.LIST_HELP* %140, %struct.LIST_HELP** %8, align 8
  %141 = load %struct.litptr*, %struct.litptr** %3, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %141, i32 noundef %142)
  call void @literal_PutUsed(%struct.cliteral* noundef %143, i32 noundef 1)
  store i32 1, i32* %4, align 4
  br label %144

144:                                              ; preds = %121, %95
  br label %145

145:                                              ; preds = %144, %89
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %85, !llvm.loop !11

149:                                              ; preds = %85
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %152 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %151)
  store %struct.LIST_HELP* %152, %struct.LIST_HELP** %6, align 8
  br label %76, !llvm.loop !12

153:                                              ; preds = %76
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %157)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %153
  br label %71, !llvm.loop !13

159:                                              ; preds = %71
  br label %160

160:                                              ; preds = %159, %1
  %161 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  store %struct.LIST_HELP* %161, %struct.LIST_HELP** %2, align 8
  br label %162

162:                                              ; preds = %160, %67
  %163 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %163
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #0 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca %struct.LIST_HELP*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %4, align 8
  %6 = call i8* @memory_Malloc(i32 noundef 16)
  %7 = bitcast i8* %6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %10 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %13 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %12, i32 0, i32 0
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %13, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  ret %struct.LIST_HELP* %14
}

declare dso_local i32 @list_HasIntersection(%struct.LIST_HELP* noundef, %struct.LIST_HELP* noundef) #1

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
