; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/subst.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4
@cont_BINDINGS = external dso_local global i32, align 4
@cont_CURRENTBINDING = external dso_local global %struct.binding*, align 8
@cont_LASTBINDING = external dso_local global %struct.binding*, align 8
@cont_INSTANCECONTEXT = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Add(i32 noundef %0, %struct.term* noundef %1, %struct.subst* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.subst*, align 8
  %7 = alloca %struct.subst*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.term* %1, %struct.term** %5, align 8
  store %struct.subst* %2, %struct.subst** %6, align 8
  %8 = call %struct.subst* @subst_Get()
  store %struct.subst* %8, %struct.subst** %7, align 8
  %9 = load %struct.subst*, %struct.subst** %6, align 8
  %10 = load %struct.subst*, %struct.subst** %7, align 8
  %11 = getelementptr inbounds %struct.subst, %struct.subst* %10, i32 0, i32 0
  store %struct.subst* %9, %struct.subst** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.subst*, %struct.subst** %7, align 8
  %14 = getelementptr inbounds %struct.subst, %struct.subst* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.term*, %struct.term** %5, align 8
  %16 = load %struct.subst*, %struct.subst** %7, align 8
  %17 = getelementptr inbounds %struct.subst, %struct.subst* %16, i32 0, i32 2
  store %struct.term* %15, %struct.term** %17, align 8
  %18 = load %struct.subst*, %struct.subst** %7, align 8
  ret %struct.subst* %18
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subst* @subst_Get() #0 {
  %1 = call i8* @memory_Malloc(i32 noundef 24)
  %2 = bitcast i8* %1 to %struct.subst*
  ret %struct.subst* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Delete(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  %3 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.subst*, %struct.subst** %2, align 8
  %6 = call i32 @subst_Exist(%struct.subst* noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.subst*, %struct.subst** %2, align 8
  %10 = call %struct.subst* @subst_Next(%struct.subst* noundef %9)
  store %struct.subst* %10, %struct.subst** %3, align 8
  %11 = load %struct.subst*, %struct.subst** %2, align 8
  %12 = call %struct.term* @subst_Cod(%struct.subst* noundef %11)
  %13 = icmp ne %struct.term* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.subst*, %struct.subst** %2, align 8
  %16 = call %struct.term* @subst_Cod(%struct.subst* noundef %15)
  call void @term_Delete(%struct.term* noundef %16)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.subst*, %struct.subst** %2, align 8
  call void @subst_FreeOneNode(%struct.subst* noundef %18)
  %19 = load %struct.subst*, %struct.subst** %3, align 8
  store %struct.subst* %19, %struct.subst** %2, align 8
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @subst_Exist(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = call %struct.subst* @subst_Nil()
  %5 = icmp ne %struct.subst* %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subst* @subst_Next(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = getelementptr inbounds %struct.subst, %struct.subst* %3, i32 0, i32 0
  %5 = load %struct.subst*, %struct.subst** %4, align 8
  ret %struct.subst* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @subst_Cod(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = getelementptr inbounds %struct.subst, %struct.subst* %3, i32 0, i32 2
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

declare dso_local void @term_Delete(%struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @subst_FreeOneNode(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = bitcast %struct.subst* %3 to i8*
  call void @memory_Free(i8* noundef %4, i32 noundef 24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Free(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  %3 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.subst*, %struct.subst** %2, align 8
  %6 = call i32 @subst_Exist(%struct.subst* noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load %struct.subst*, %struct.subst** %2, align 8
  %10 = call %struct.subst* @subst_Next(%struct.subst* noundef %9)
  store %struct.subst* %10, %struct.subst** %3, align 8
  %11 = load %struct.subst*, %struct.subst** %2, align 8
  call void @subst_FreeOneNode(%struct.subst* noundef %11)
  %12 = load %struct.subst*, %struct.subst** %3, align 8
  store %struct.subst* %12, %struct.subst** %2, align 8
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.term* @subst_Term(i32 noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subst*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call i32 @symbol_Equal(i32 noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.subst*, %struct.subst** %5, align 8
  %18 = call %struct.term* @subst_Cod(%struct.subst* noundef %17)
  store %struct.term* %18, %struct.term** %3, align 8
  br label %24

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call %struct.subst* @subst_Next(%struct.subst* noundef %21)
  store %struct.subst* %22, %struct.subst** %5, align 8
  br label %6, !llvm.loop !7

23:                                               ; preds = %6
  store %struct.term* null, %struct.term** %3, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.term*, %struct.term** %3, align 8
  ret %struct.term* %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @subst_Dom(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = getelementptr inbounds %struct.subst, %struct.subst* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.term* @subst_Apply(%struct.subst* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.subst*, align 8
  %5 = alloca %struct.term*, align 8
  store %struct.subst* %0, %struct.subst** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %6 = load %struct.subst*, %struct.subst** %4, align 8
  %7 = call i32 @subst_Empty(%struct.subst* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.term*, %struct.term** %5, align 8
  store %struct.term* %10, %struct.term** %3, align 8
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.subst*, %struct.subst** %4, align 8
  %13 = load %struct.term*, %struct.term** %5, align 8
  %14 = call %struct.term* @subst_ApplyIntern(%struct.subst* noundef %12, %struct.term* noundef %13)
  store %struct.term* %14, %struct.term** %3, align 8
  br label %15

15:                                               ; preds = %11, %9
  %16 = load %struct.term*, %struct.term** %3, align 8
  ret %struct.term* %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @subst_Empty(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  %4 = call %struct.subst* @subst_Nil()
  %5 = icmp eq %struct.subst* %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @subst_ApplyIntern(%struct.subst* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca i32, align 4
  store %struct.subst* %0, %struct.subst** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %8 = load %struct.term*, %struct.term** %4, align 8
  %9 = call i32 @term_TopSymbol(%struct.term* noundef %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @symbol_IsVariable(i32 noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.subst*, %struct.subst** %3, align 8
  %16 = call %struct.term* @subst_Term(i32 noundef %14, %struct.subst* noundef %15)
  store %struct.term* %16, %struct.term** %5, align 8
  %17 = icmp ne %struct.term* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.term*, %struct.term** %5, align 8
  %20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %19)
  %21 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* noundef %20)
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %6, align 8
  %22 = load %struct.term*, %struct.term** %4, align 8
  %23 = load %struct.term*, %struct.term** %5, align 8
  %24 = call i32 @term_TopSymbol(%struct.term* noundef %23)
  call void @term_RplacTop(%struct.term* noundef %22, i32 noundef %24)
  %25 = load %struct.term*, %struct.term** %4, align 8
  %26 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %25)
  call void @term_DeleteTermList(%struct.LIST_HELP* noundef %26)
  %27 = load %struct.term*, %struct.term** %4, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @term_RplacArgumentList(%struct.term* noundef %27, %struct.LIST_HELP* noundef %28)
  br label %47

29:                                               ; preds = %13, %2
  %30 = load %struct.term*, %struct.term** %4, align 8
  %31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %30)
  store %struct.LIST_HELP* %31, %struct.LIST_HELP** %6, align 8
  br label %32

32:                                               ; preds = %43, %29
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %34 = call i32 @list_Empty(%struct.LIST_HELP* noundef %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.subst*, %struct.subst** %3, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %40 = call i8* @list_Car(%struct.LIST_HELP* noundef %39)
  %41 = bitcast i8* %40 to %struct.term*
  %42 = call %struct.term* @subst_ApplyIntern(%struct.subst* noundef %38, %struct.term* noundef %41)
  br label %43

43:                                               ; preds = %37
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %44)
  store %struct.LIST_HELP* %45, %struct.LIST_HELP** %6, align 8
  br label %32, !llvm.loop !8

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Merge(%struct.subst* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  %5 = alloca %struct.subst*, align 8
  %6 = alloca i32, align 4
  store %struct.subst* %0, %struct.subst** %3, align 8
  store %struct.subst* %1, %struct.subst** %4, align 8
  br label %7

7:                                                ; preds = %47, %2
  %8 = load %struct.subst*, %struct.subst** %3, align 8
  %9 = call i32 @subst_Exist(%struct.subst* noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  %12 = load %struct.subst*, %struct.subst** %4, align 8
  store %struct.subst* %12, %struct.subst** %5, align 8
  br label %13

13:                                               ; preds = %30, %11
  %14 = load %struct.subst*, %struct.subst** %5, align 8
  %15 = call i32 @subst_Exist(%struct.subst* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.subst*, %struct.subst** %3, align 8
  %19 = getelementptr inbounds %struct.subst, %struct.subst* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.subst*, %struct.subst** %3, align 8
  %22 = getelementptr inbounds %struct.subst, %struct.subst* %21, i32 0, i32 2
  %23 = load %struct.term*, %struct.term** %22, align 8
  %24 = load %struct.subst*, %struct.subst** %5, align 8
  %25 = getelementptr inbounds %struct.subst, %struct.subst* %24, i32 0, i32 2
  %26 = call i32 @term_SubstituteVariable(i32 noundef %20, %struct.term* noundef %23, %struct.term** noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.subst*, %struct.subst** %5, align 8
  %32 = call %struct.subst* @subst_Next(%struct.subst* noundef %31)
  store %struct.subst* %32, %struct.subst** %5, align 8
  br label %13, !llvm.loop !9

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load %struct.subst*, %struct.subst** %3, align 8
  %38 = getelementptr inbounds %struct.subst, %struct.subst* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.subst*, %struct.subst** %3, align 8
  %41 = getelementptr inbounds %struct.subst, %struct.subst* %40, i32 0, i32 2
  %42 = load %struct.term*, %struct.term** %41, align 8
  %43 = call %struct.term* @term_Copy(%struct.term* noundef %42)
  %44 = load %struct.subst*, %struct.subst** %4, align 8
  %45 = call %struct.subst* @subst_Add(i32 noundef %39, %struct.term* noundef %43, %struct.subst* noundef %44)
  store %struct.subst* %45, %struct.subst** %4, align 8
  br label %46

46:                                               ; preds = %36, %33
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.subst*, %struct.subst** %3, align 8
  %49 = call %struct.subst* @subst_Next(%struct.subst* noundef %48)
  store %struct.subst* %49, %struct.subst** %3, align 8
  br label %7, !llvm.loop !10

50:                                               ; preds = %7
  %51 = load %struct.subst*, %struct.subst** %4, align 8
  ret %struct.subst* %51
}

declare dso_local i32 @term_SubstituteVariable(i32 noundef, %struct.term* noundef, %struct.term** noundef) #1

declare dso_local %struct.term* @term_Copy(%struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Compose(%struct.subst* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  %5 = alloca %struct.subst*, align 8
  %6 = alloca %struct.subst*, align 8
  %7 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %3, align 8
  store %struct.subst* %1, %struct.subst** %4, align 8
  %8 = call %struct.subst* @subst_Nil()
  store %struct.subst* %8, %struct.subst** %7, align 8
  %9 = load %struct.subst*, %struct.subst** %3, align 8
  store %struct.subst* %9, %struct.subst** %5, align 8
  br label %10

10:                                               ; preds = %46, %2
  %11 = load %struct.subst*, %struct.subst** %5, align 8
  %12 = call i32 @subst_Exist(%struct.subst* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.subst*, %struct.subst** %4, align 8
  store %struct.subst* %15, %struct.subst** %6, align 8
  br label %16

16:                                               ; preds = %28, %14
  %17 = load %struct.subst*, %struct.subst** %6, align 8
  %18 = call i32 @subst_Exist(%struct.subst* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call i32 @subst_Dom(%struct.subst* noundef %21)
  %23 = load %struct.subst*, %struct.subst** %5, align 8
  %24 = call %struct.term* @subst_Cod(%struct.subst* noundef %23)
  %25 = load %struct.subst*, %struct.subst** %6, align 8
  %26 = getelementptr inbounds %struct.subst, %struct.subst* %25, i32 0, i32 2
  %27 = call i32 @term_SubstituteVariable(i32 noundef %22, %struct.term* noundef %24, %struct.term** noundef %26)
  br label %28

28:                                               ; preds = %20
  %29 = load %struct.subst*, %struct.subst** %6, align 8
  %30 = call %struct.subst* @subst_Next(%struct.subst* noundef %29)
  store %struct.subst* %30, %struct.subst** %6, align 8
  br label %16, !llvm.loop !11

31:                                               ; preds = %16
  %32 = load %struct.subst*, %struct.subst** %5, align 8
  %33 = call i32 @subst_Dom(%struct.subst* noundef %32)
  %34 = load %struct.subst*, %struct.subst** %4, align 8
  %35 = call i32 @subst_BindVar(i32 noundef %33, %struct.subst* noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.subst*, %struct.subst** %5, align 8
  %39 = call i32 @subst_Dom(%struct.subst* noundef %38)
  %40 = load %struct.subst*, %struct.subst** %5, align 8
  %41 = call %struct.term* @subst_Cod(%struct.subst* noundef %40)
  %42 = call %struct.term* @term_Copy(%struct.term* noundef %41)
  %43 = load %struct.subst*, %struct.subst** %7, align 8
  %44 = call %struct.subst* @subst_Add(i32 noundef %39, %struct.term* noundef %42, %struct.subst* noundef %43)
  store %struct.subst* %44, %struct.subst** %7, align 8
  br label %45

45:                                               ; preds = %37, %31
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.subst*, %struct.subst** %5, align 8
  %48 = call %struct.subst* @subst_Next(%struct.subst* noundef %47)
  store %struct.subst* %48, %struct.subst** %5, align 8
  br label %10, !llvm.loop !12

49:                                               ; preds = %10
  %50 = load %struct.subst*, %struct.subst** %4, align 8
  %51 = load %struct.subst*, %struct.subst** %7, align 8
  %52 = call %struct.subst* @subst_NUnion(%struct.subst* noundef %50, %struct.subst* noundef %51)
  ret %struct.subst* %52
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subst* @subst_Nil() #0 {
  ret %struct.subst* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_BindVar(i32 noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.subst*, align 8
  %6 = alloca %struct.subst*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.subst* %1, %struct.subst** %5, align 8
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  store %struct.subst* %7, %struct.subst** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.subst*, %struct.subst** %6, align 8
  %10 = call i32 @subst_Exist(%struct.subst* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.subst*, %struct.subst** %6, align 8
  %14 = call i32 @subst_Dom(%struct.subst* noundef %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @symbol_Equal(i32 noundef %14, i32 noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.subst*, %struct.subst** %6, align 8
  %22 = call %struct.subst* @subst_Next(%struct.subst* noundef %21)
  store %struct.subst* %22, %struct.subst** %6, align 8
  br label %8, !llvm.loop !13

23:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subst* @subst_NUnion(%struct.subst* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  %5 = alloca %struct.subst*, align 8
  %6 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  %7 = load %struct.subst*, %struct.subst** %4, align 8
  %8 = icmp eq %struct.subst* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.subst*, %struct.subst** %5, align 8
  store %struct.subst* %10, %struct.subst** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = icmp eq %struct.subst* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.subst*, %struct.subst** %4, align 8
  store %struct.subst* %15, %struct.subst** %3, align 8
  br label %33

16:                                               ; preds = %11
  %17 = load %struct.subst*, %struct.subst** %4, align 8
  store %struct.subst* %17, %struct.subst** %6, align 8
  br label %18

18:                                               ; preds = %24, %16
  %19 = load %struct.subst*, %struct.subst** %4, align 8
  %20 = getelementptr inbounds %struct.subst, %struct.subst* %19, i32 0, i32 0
  %21 = load %struct.subst*, %struct.subst** %20, align 8
  %22 = icmp ne %struct.subst* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.subst*, %struct.subst** %4, align 8
  %26 = getelementptr inbounds %struct.subst, %struct.subst* %25, i32 0, i32 0
  %27 = load %struct.subst*, %struct.subst** %26, align 8
  store %struct.subst* %27, %struct.subst** %4, align 8
  br label %18, !llvm.loop !14

28:                                               ; preds = %18
  %29 = load %struct.subst*, %struct.subst** %5, align 8
  %30 = load %struct.subst*, %struct.subst** %4, align 8
  %31 = getelementptr inbounds %struct.subst, %struct.subst* %30, i32 0, i32 0
  store %struct.subst* %29, %struct.subst** %31, align 8
  %32 = load %struct.subst*, %struct.subst** %6, align 8
  store %struct.subst* %32, %struct.subst** %3, align 8
  br label %33

33:                                               ; preds = %28, %14, %9
  %34 = load %struct.subst*, %struct.subst** %3, align 8
  ret %struct.subst* %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Copy(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %5 = call %struct.subst* @subst_Nil()
  store %struct.subst* %5, %struct.subst** %4, align 8
  %6 = call %struct.subst* @subst_Nil()
  store %struct.subst* %6, %struct.subst** %3, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load %struct.subst*, %struct.subst** %2, align 8
  %9 = call i32 @subst_Exist(%struct.subst* noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.subst*, %struct.subst** %4, align 8
  %13 = call i32 @subst_Exist(%struct.subst* noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.subst*, %struct.subst** %3, align 8
  %17 = load %struct.subst*, %struct.subst** %2, align 8
  %18 = call i32 @subst_Dom(%struct.subst* noundef %17)
  %19 = load %struct.subst*, %struct.subst** %2, align 8
  %20 = call %struct.term* @subst_Cod(%struct.subst* noundef %19)
  %21 = call %struct.term* @term_Copy(%struct.term* noundef %20)
  %22 = call %struct.subst* @subst_Nil()
  %23 = call %struct.subst* @subst_Add(i32 noundef %18, %struct.term* noundef %21, %struct.subst* noundef %22)
  call void @subst_SetNext(%struct.subst* noundef %16, %struct.subst* noundef %23)
  %24 = load %struct.subst*, %struct.subst** %3, align 8
  %25 = call %struct.subst* @subst_Next(%struct.subst* noundef %24)
  store %struct.subst* %25, %struct.subst** %3, align 8
  br label %35

26:                                               ; preds = %11
  %27 = load %struct.subst*, %struct.subst** %2, align 8
  %28 = call i32 @subst_Dom(%struct.subst* noundef %27)
  %29 = load %struct.subst*, %struct.subst** %2, align 8
  %30 = call %struct.term* @subst_Cod(%struct.subst* noundef %29)
  %31 = call %struct.term* @term_Copy(%struct.term* noundef %30)
  %32 = call %struct.subst* @subst_Nil()
  %33 = call %struct.subst* @subst_Add(i32 noundef %28, %struct.term* noundef %31, %struct.subst* noundef %32)
  store %struct.subst* %33, %struct.subst** %4, align 8
  %34 = load %struct.subst*, %struct.subst** %4, align 8
  store %struct.subst* %34, %struct.subst** %3, align 8
  br label %35

35:                                               ; preds = %26, %15
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.subst*, %struct.subst** %2, align 8
  %38 = call %struct.subst* @subst_Next(%struct.subst* noundef %37)
  store %struct.subst* %38, %struct.subst** %2, align 8
  br label %7, !llvm.loop !15

39:                                               ; preds = %7
  %40 = load %struct.subst*, %struct.subst** %4, align 8
  ret %struct.subst* %40
}

; Function Attrs: noinline nounwind uwtable
define internal void @subst_SetNext(%struct.subst* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %3, align 8
  store %struct.subst* %1, %struct.subst** %4, align 8
  %5 = load %struct.subst*, %struct.subst** %4, align 8
  %6 = load %struct.subst*, %struct.subst** %3, align 8
  %7 = getelementptr inbounds %struct.subst, %struct.subst* %6, i32 0, i32 0
  store %struct.subst* %5, %struct.subst** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_MatchTops(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.binding*, %struct.binding** %4, align 8
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %11, i32 noundef %13)
  %15 = icmp ne %struct.term* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.binding*, %struct.binding** %4, align 8
  %18 = load %struct.subst*, %struct.subst** %5, align 8
  %19 = call i32 @subst_Dom(%struct.subst* noundef %18)
  %20 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %17, i32 noundef %19)
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call %struct.term* @subst_Cod(%struct.subst* noundef %21)
  %23 = call i32 @term_EqualTopSymbols(%struct.term* noundef %20, %struct.term* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %31

26:                                               ; preds = %16, %10
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.subst*, %struct.subst** %5, align 8
  %29 = call %struct.subst* @subst_Next(%struct.subst* noundef %28)
  store %struct.subst* %29, %struct.subst** %5, align 8
  br label %6, !llvm.loop !16

30:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 2
  %10 = load %struct.term*, %struct.term** %9, align 8
  ret %struct.term* %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_EqualTopSymbols(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %5 = load %struct.term*, %struct.term** %3, align 8
  %6 = call i32 @term_TopSymbol(%struct.term* noundef %5)
  %7 = load %struct.term*, %struct.term** %4, align 8
  %8 = call i32 @term_TopSymbol(%struct.term* noundef %7)
  %9 = call i32 @symbol_Equal(i32 noundef %6, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_Unify(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %52, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.binding*, %struct.binding** %4, align 8
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %10
  %17 = load %struct.binding*, %struct.binding** %4, align 8
  %18 = load %struct.subst*, %struct.subst** %5, align 8
  %19 = call i32 @subst_Dom(%struct.subst* noundef %18)
  %20 = load %struct.binding*, %struct.binding** %4, align 8
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call %struct.term* @subst_Cod(%struct.subst* noundef %21)
  %23 = call i32 @unify_OccurCheck(%struct.binding* noundef %17, i32 noundef %19, %struct.binding* noundef %20, %struct.term* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

26:                                               ; preds = %16
  %27 = load %struct.binding*, %struct.binding** %4, align 8
  %28 = load %struct.subst*, %struct.subst** %5, align 8
  %29 = call i32 @subst_Dom(%struct.subst* noundef %28)
  %30 = load %struct.binding*, %struct.binding** %4, align 8
  %31 = load %struct.subst*, %struct.subst** %5, align 8
  %32 = call %struct.term* @subst_Cod(%struct.subst* noundef %31)
  %33 = call i32 @cont_CreateBinding(%struct.binding* noundef %27, i32 noundef %29, %struct.binding* noundef %30, %struct.term* noundef %32)
  br label %34

34:                                               ; preds = %26
  br label %52

35:                                               ; preds = %10
  %36 = load %struct.binding*, %struct.binding** %4, align 8
  %37 = load %struct.binding*, %struct.binding** %4, align 8
  %38 = load %struct.subst*, %struct.subst** %5, align 8
  %39 = call %struct.term* @subst_Cod(%struct.subst* noundef %38)
  %40 = load %struct.binding*, %struct.binding** %4, align 8
  %41 = load %struct.subst*, %struct.subst** %5, align 8
  %42 = call i32 @subst_Dom(%struct.subst* noundef %41)
  %43 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %40, i32 noundef %42)
  %44 = load %struct.binding*, %struct.binding** %4, align 8
  %45 = load %struct.subst*, %struct.subst** %5, align 8
  %46 = call i32 @subst_Dom(%struct.subst* noundef %45)
  %47 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %44, i32 noundef %46)
  %48 = call i32 @unify_UnifyAllOC(%struct.binding* noundef %36, %struct.binding* noundef %37, %struct.term* noundef %39, %struct.binding* noundef %43, %struct.term* noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.subst*, %struct.subst** %5, align 8
  %54 = call %struct.subst* @subst_Next(%struct.subst* noundef %53)
  store %struct.subst* %54, %struct.subst** %5, align 8
  br label %6, !llvm.loop !17

55:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %5, i32 noundef %6)
  %8 = icmp ne %struct.term* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare dso_local i32 @unify_OccurCheck(%struct.binding* noundef, i32 noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_CreateBinding(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %9 = load %struct.binding*, %struct.binding** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.binding*, %struct.binding** %7, align 8
  %12 = load %struct.term*, %struct.term** %8, align 8
  call void @cont_CreateBindingHelp(%struct.binding* noundef %9, i32 noundef %10, %struct.binding* noundef %11, %struct.term* noundef %12)
  %13 = load i32, i32* @cont_BINDINGS, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @cont_BINDINGS, align 4
  ret i32 %14
}

declare dso_local i32 @unify_UnifyAllOC(%struct.binding* noundef, %struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 3
  %10 = load %struct.binding*, %struct.binding** %9, align 8
  ret %struct.binding* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_IsShallow(%struct.subst* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subst*, align 8
  %4 = alloca %struct.subst*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  store %struct.subst* %0, %struct.subst** %3, align 8
  %7 = load %struct.subst*, %struct.subst** %3, align 8
  store %struct.subst* %7, %struct.subst** %4, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.subst*, %struct.subst** %4, align 8
  %10 = call %struct.subst* @subst_Nil()
  %11 = icmp ne %struct.subst* %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load %struct.subst*, %struct.subst** %4, align 8
  %14 = call %struct.term* @subst_Cod(%struct.subst* noundef %13)
  store %struct.term* %14, %struct.term** %5, align 8
  %15 = load %struct.term*, %struct.term** %5, align 8
  %16 = call i32 @term_IsVariable(%struct.term* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %12
  %19 = load %struct.term*, %struct.term** %5, align 8
  %20 = call i32 @term_IsGround(%struct.term* noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = load %struct.term*, %struct.term** %5, align 8
  %24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %23)
  store %struct.LIST_HELP* %24, %struct.LIST_HELP** %6, align 8
  br label %25

25:                                               ; preds = %43, %22
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %27 = call %struct.LIST_HELP* @list_Nil()
  %28 = icmp ne %struct.LIST_HELP* %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %31 = call i8* @list_Car(%struct.LIST_HELP* noundef %30)
  %32 = bitcast i8* %31 to %struct.term*
  %33 = call i32 @term_IsVariable(%struct.term* noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %37 = call i8* @list_Car(%struct.LIST_HELP* noundef %36)
  %38 = bitcast i8* %37 to %struct.term*
  %39 = call i32 @term_IsGround(%struct.term* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %52

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %44)
  store %struct.LIST_HELP* %45, %struct.LIST_HELP** %6, align 8
  br label %25, !llvm.loop !18

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %18, %12
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.subst*, %struct.subst** %4, align 8
  %50 = call %struct.subst* @subst_Next(%struct.subst* noundef %49)
  store %struct.subst* %50, %struct.subst** %4, align 8
  br label %8, !llvm.loop !19

51:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = call i32 @symbol_IsVariable(i32 noundef %4)
  ret i32 %5
}

declare dso_local i32 @term_IsGround(%struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #0 {
  ret %struct.LIST_HELP* null
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
define dso_local i32 @subst_Match(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.binding*, %struct.binding** %4, align 8
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.binding*, %struct.binding** %4, align 8
  %18 = load %struct.subst*, %struct.subst** %5, align 8
  %19 = call %struct.term* @subst_Cod(%struct.subst* noundef %18)
  %20 = load %struct.binding*, %struct.binding** %4, align 8
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call i32 @subst_Dom(%struct.subst* noundef %21)
  %23 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %20, i32 noundef %22)
  %24 = call i32 @unify_Match(%struct.binding* noundef %17, %struct.term* noundef %19, %struct.term* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16, %10
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.subst*, %struct.subst** %5, align 8
  %29 = call %struct.subst* @subst_Next(%struct.subst* noundef %28)
  store %struct.subst* %29, %struct.subst** %5, align 8
  br label %6, !llvm.loop !20

30:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @unify_Match(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_MatchReverse(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %47, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load %struct.binding*, %struct.binding** %4, align 8
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = load %struct.subst*, %struct.subst** %5, align 8
  %18 = call i32 @subst_Dom(%struct.subst* noundef %17)
  %19 = call i32 @symbol_IsIndexVariable(i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.binding*, %struct.binding** %4, align 8
  %23 = load %struct.subst*, %struct.subst** %5, align 8
  %24 = call i32 @subst_Dom(%struct.subst* noundef %23)
  %25 = call %struct.binding* @cont_InstanceContext()
  %26 = load %struct.subst*, %struct.subst** %5, align 8
  %27 = call %struct.term* @subst_Cod(%struct.subst* noundef %26)
  %28 = call i32 @cont_CreateBinding(%struct.binding* noundef %22, i32 noundef %24, %struct.binding* noundef %25, %struct.term* noundef %27)
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %51

30:                                               ; preds = %21
  br label %47

31:                                               ; preds = %10
  %32 = load %struct.binding*, %struct.binding** %4, align 8
  %33 = load %struct.subst*, %struct.subst** %5, align 8
  %34 = call %struct.term* @subst_Cod(%struct.subst* noundef %33)
  %35 = load %struct.binding*, %struct.binding** %4, align 8
  %36 = load %struct.subst*, %struct.subst** %5, align 8
  %37 = call i32 @subst_Dom(%struct.subst* noundef %36)
  %38 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %35, i32 noundef %37)
  %39 = load %struct.binding*, %struct.binding** %4, align 8
  %40 = load %struct.subst*, %struct.subst** %5, align 8
  %41 = call i32 @subst_Dom(%struct.subst* noundef %40)
  %42 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %39, i32 noundef %41)
  %43 = call i32 @unify_MatchReverse(%struct.binding* noundef %32, %struct.term* noundef %34, %struct.binding* noundef %38, %struct.term* noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.subst*, %struct.subst** %5, align 8
  %49 = call %struct.subst* @subst_Next(%struct.subst* noundef %48)
  store %struct.subst* %49, %struct.subst** %5, align 8
  br label %6, !llvm.loop !21

50:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsIndexVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 2000
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 3000
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

declare dso_local i32 @unify_MatchReverse(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_Variation(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.subst* %1, %struct.subst** %5, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.subst*, %struct.subst** %5, align 8
  %8 = call i32 @subst_Exist(%struct.subst* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.binding*, %struct.binding** %4, align 8
  %12 = load %struct.subst*, %struct.subst** %5, align 8
  %13 = call i32 @subst_Dom(%struct.subst* noundef %12)
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.binding*, %struct.binding** %4, align 8
  %18 = load %struct.subst*, %struct.subst** %5, align 8
  %19 = call %struct.term* @subst_Cod(%struct.subst* noundef %18)
  %20 = load %struct.binding*, %struct.binding** %4, align 8
  %21 = load %struct.subst*, %struct.subst** %5, align 8
  %22 = call i32 @subst_Dom(%struct.subst* noundef %21)
  %23 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %20, i32 noundef %22)
  %24 = call i32 @unify_Variation(%struct.binding* noundef %17, %struct.term* noundef %19, %struct.term* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16, %10
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.subst*, %struct.subst** %5, align 8
  %29 = call %struct.subst* @subst_Next(%struct.subst* noundef %28)
  store %struct.subst* %29, %struct.subst** %5, align 8
  br label %6, !llvm.loop !22

30:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @unify_Variation(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_ComGen(%struct.binding* noundef %0, %struct.subst* noundef %1, %struct.subst** noundef %2, %struct.subst** noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.subst*, align 8
  %7 = alloca %struct.subst**, align 8
  %8 = alloca %struct.subst**, align 8
  %9 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.subst* %1, %struct.subst** %6, align 8
  store %struct.subst** %2, %struct.subst*** %7, align 8
  store %struct.subst** %3, %struct.subst*** %8, align 8
  %10 = load %struct.subst**, %struct.subst*** %8, align 8
  store %struct.subst* null, %struct.subst** %10, align 8
  %11 = load %struct.subst**, %struct.subst*** %7, align 8
  store %struct.subst* null, %struct.subst** %11, align 8
  store %struct.subst* null, %struct.subst** %9, align 8
  br label %12

12:                                               ; preds = %100, %4
  %13 = load %struct.binding*, %struct.binding** %5, align 8
  %14 = load %struct.subst*, %struct.subst** %6, align 8
  %15 = call i32 @subst_Dom(%struct.subst* noundef %14)
  %16 = call i32 @cont_VarIsBound(%struct.binding* noundef %13, i32 noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = load %struct.subst*, %struct.subst** %6, align 8
  %20 = call i32 @subst_Dom(%struct.subst* noundef %19)
  %21 = load %struct.subst*, %struct.subst** %6, align 8
  %22 = call %struct.term* @subst_Cod(%struct.subst* noundef %21)
  %23 = call %struct.term* @term_Copy(%struct.term* noundef %22)
  %24 = load %struct.subst**, %struct.subst*** %7, align 8
  %25 = load %struct.subst*, %struct.subst** %24, align 8
  %26 = call %struct.subst* @subst_Add(i32 noundef %20, %struct.term* noundef %23, %struct.subst* noundef %25)
  %27 = load %struct.subst**, %struct.subst*** %7, align 8
  store %struct.subst* %26, %struct.subst** %27, align 8
  br label %94

28:                                               ; preds = %12
  %29 = load %struct.binding*, %struct.binding** %5, align 8
  %30 = load %struct.subst*, %struct.subst** %6, align 8
  %31 = call i32 @subst_Dom(%struct.subst* noundef %30)
  %32 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %29, i32 noundef %31)
  %33 = load %struct.subst*, %struct.subst** %6, align 8
  %34 = call %struct.term* @subst_Cod(%struct.subst* noundef %33)
  %35 = call i32 @term_Equal(%struct.term* noundef %32, %struct.term* noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.subst*, %struct.subst** %6, align 8
  %39 = call i32 @subst_Dom(%struct.subst* noundef %38)
  %40 = load %struct.subst*, %struct.subst** %6, align 8
  %41 = call %struct.term* @subst_Cod(%struct.subst* noundef %40)
  %42 = call %struct.term* @term_Copy(%struct.term* noundef %41)
  %43 = load %struct.subst*, %struct.subst** %9, align 8
  %44 = call %struct.subst* @subst_Add(i32 noundef %39, %struct.term* noundef %42, %struct.subst* noundef %43)
  store %struct.subst* %44, %struct.subst** %9, align 8
  br label %93

45:                                               ; preds = %28
  %46 = load %struct.binding*, %struct.binding** %5, align 8
  %47 = load %struct.subst*, %struct.subst** %6, align 8
  %48 = call i32 @subst_Dom(%struct.subst* noundef %47)
  %49 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %46, i32 noundef %48)
  %50 = call i32 @term_TopSymbol(%struct.term* noundef %49)
  %51 = load %struct.subst*, %struct.subst** %6, align 8
  %52 = call %struct.term* @subst_Cod(%struct.subst* noundef %51)
  %53 = call i32 @term_TopSymbol(%struct.term* noundef %52)
  %54 = call i32 @symbol_Equal(i32 noundef %50, i32 noundef %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %45
  %57 = load %struct.subst*, %struct.subst** %6, align 8
  %58 = call i32 @subst_Dom(%struct.subst* noundef %57)
  %59 = load %struct.subst*, %struct.subst** %6, align 8
  %60 = call %struct.term* @subst_Cod(%struct.subst* noundef %59)
  %61 = call %struct.term* @term_Copy(%struct.term* noundef %60)
  %62 = load %struct.subst**, %struct.subst*** %7, align 8
  %63 = load %struct.subst*, %struct.subst** %62, align 8
  %64 = call %struct.subst* @subst_Add(i32 noundef %58, %struct.term* noundef %61, %struct.subst* noundef %63)
  %65 = load %struct.subst**, %struct.subst*** %7, align 8
  store %struct.subst* %64, %struct.subst** %65, align 8
  %66 = load %struct.subst*, %struct.subst** %6, align 8
  %67 = call i32 @subst_Dom(%struct.subst* noundef %66)
  %68 = load %struct.binding*, %struct.binding** %5, align 8
  %69 = load %struct.subst*, %struct.subst** %6, align 8
  %70 = call i32 @subst_Dom(%struct.subst* noundef %69)
  %71 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %68, i32 noundef %70)
  %72 = call %struct.term* @term_Copy(%struct.term* noundef %71)
  %73 = load %struct.subst**, %struct.subst*** %8, align 8
  %74 = load %struct.subst*, %struct.subst** %73, align 8
  %75 = call %struct.subst* @subst_Add(i32 noundef %67, %struct.term* noundef %72, %struct.subst* noundef %74)
  %76 = load %struct.subst**, %struct.subst*** %8, align 8
  store %struct.subst* %75, %struct.subst** %76, align 8
  br label %92

77:                                               ; preds = %45
  %78 = load %struct.subst*, %struct.subst** %6, align 8
  %79 = call i32 @subst_Dom(%struct.subst* noundef %78)
  %80 = load %struct.binding*, %struct.binding** %5, align 8
  %81 = load %struct.subst**, %struct.subst*** %8, align 8
  %82 = load %struct.binding*, %struct.binding** %5, align 8
  %83 = load %struct.subst*, %struct.subst** %6, align 8
  %84 = call i32 @subst_Dom(%struct.subst* noundef %83)
  %85 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %82, i32 noundef %84)
  %86 = load %struct.subst**, %struct.subst*** %7, align 8
  %87 = load %struct.subst*, %struct.subst** %6, align 8
  %88 = call %struct.term* @subst_Cod(%struct.subst* noundef %87)
  %89 = call %struct.term* @unify_ComGenLinear(%struct.binding* noundef %80, %struct.subst** noundef %81, %struct.term* noundef %85, %struct.subst** noundef %86, %struct.term* noundef %88)
  %90 = load %struct.subst*, %struct.subst** %9, align 8
  %91 = call %struct.subst* @subst_Add(i32 noundef %79, %struct.term* noundef %89, %struct.subst* noundef %90)
  store %struct.subst* %91, %struct.subst** %9, align 8
  br label %92

92:                                               ; preds = %77, %56
  br label %93

93:                                               ; preds = %92, %37
  br label %94

94:                                               ; preds = %93, %18
  %95 = load %struct.binding*, %struct.binding** %5, align 8
  %96 = load %struct.subst*, %struct.subst** %6, align 8
  %97 = call i32 @subst_Dom(%struct.subst* noundef %96)
  call void @cont_CloseBinding(%struct.binding* noundef %95, i32 noundef %97)
  %98 = load %struct.subst*, %struct.subst** %6, align 8
  %99 = call %struct.subst* @subst_Next(%struct.subst* noundef %98)
  store %struct.subst* %99, %struct.subst** %6, align 8
  br label %100

100:                                              ; preds = %94
  %101 = load %struct.subst*, %struct.subst** %6, align 8
  %102 = call i32 @subst_Exist(%struct.subst* noundef %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %12, label %104, !llvm.loop !23

104:                                              ; preds = %100
  %105 = load %struct.subst*, %struct.subst** %9, align 8
  ret %struct.subst* %105
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

declare dso_local %struct.term* @unify_ComGenLinear(%struct.binding* noundef, %struct.subst** noundef, %struct.term* noundef, %struct.subst** noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @cont_CloseBinding(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @cont_CloseBindingHelp(%struct.binding* noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_CloseVariables(%struct.binding* noundef %0, %struct.subst* noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca %struct.subst*, align 8
  store %struct.binding* %0, %struct.binding** %3, align 8
  store %struct.subst* %1, %struct.subst** %4, align 8
  br label %5

5:                                                ; preds = %13, %2
  %6 = load %struct.subst*, %struct.subst** %4, align 8
  %7 = call i32 @subst_Exist(%struct.subst* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.binding*, %struct.binding** %3, align 8
  %11 = load %struct.subst*, %struct.subst** %4, align 8
  %12 = call i32 @subst_Dom(%struct.subst* noundef %11)
  call void @cont_CloseBinding(%struct.binding* noundef %10, i32 noundef %12)
  br label %13

13:                                               ; preds = %9
  %14 = load %struct.subst*, %struct.subst** %4, align 8
  %15 = call %struct.subst* @subst_Next(%struct.subst* noundef %14)
  store %struct.subst* %15, %struct.subst** %4, align 8
  br label %5, !llvm.loop !24

16:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_CloseOpenVariables(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  br label %3

3:                                                ; preds = %15, %1
  %4 = call %struct.binding* @cont_LastBinding()
  %5 = icmp ne %struct.binding* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = call i32 @cont_LastIsBound()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call i32 @cont_LastBindingSymbol()
  %11 = call %struct.term* @cont_LastBindingTerm()
  %12 = call %struct.term* @term_Copy(%struct.term* noundef %11)
  %13 = load %struct.subst*, %struct.subst** %2, align 8
  %14 = call %struct.subst* @subst_Add(i32 noundef %10, %struct.term* noundef %12, %struct.subst* noundef %13)
  store %struct.subst* %14, %struct.subst** %2, align 8
  br label %15

15:                                               ; preds = %9, %6
  call void @cont_BackTrackLastBinding()
  br label %3, !llvm.loop !25

16:                                               ; preds = %3
  %17 = load %struct.subst*, %struct.subst** %2, align 8
  ret %struct.subst* %17
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_LastIsBound() #0 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call i32 @cont_BindingIsBound(%struct.binding* noundef %1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_LastBindingSymbol() #0 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call i32 @cont_BindingSymbol(%struct.binding* noundef %1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_LastBindingTerm() #0 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %1)
  ret %struct.term* %2
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_BackTrackLastBinding() #0 {
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_ExtractUnifier(%struct.binding* noundef %0, %struct.subst** noundef %1, %struct.binding* noundef %2, %struct.subst** noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.subst**, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.subst**, align 8
  %9 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.subst** %1, %struct.subst*** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.subst** %3, %struct.subst*** %8, align 8
  %10 = call %struct.subst* @subst_Nil()
  %11 = load %struct.subst**, %struct.subst*** %6, align 8
  store %struct.subst* %10, %struct.subst** %11, align 8
  %12 = call %struct.subst* @subst_Nil()
  %13 = load %struct.subst**, %struct.subst*** %8, align 8
  store %struct.subst* %12, %struct.subst** %13, align 8
  %14 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %14, %struct.binding** %9, align 8
  br label %15

15:                                               ; preds = %57, %4
  %16 = load %struct.binding*, %struct.binding** %9, align 8
  %17 = icmp ne %struct.binding* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = load %struct.binding*, %struct.binding** %5, align 8
  %20 = load %struct.binding*, %struct.binding** %9, align 8
  %21 = call i32 @cont_BindingSymbol(%struct.binding* noundef %20)
  %22 = load %struct.binding*, %struct.binding** %9, align 8
  %23 = call i32 @cont_IsInContext(%struct.binding* noundef %19, i32 noundef %21, %struct.binding* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.binding*, %struct.binding** %9, align 8
  %27 = call i32 @cont_BindingSymbol(%struct.binding* noundef %26)
  %28 = load %struct.binding*, %struct.binding** %9, align 8
  %29 = call %struct.binding* @cont_BindingContext(%struct.binding* noundef %28)
  %30 = load %struct.binding*, %struct.binding** %9, align 8
  %31 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %30)
  %32 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef %29, %struct.term* noundef %31)
  %33 = load %struct.subst**, %struct.subst*** %6, align 8
  %34 = load %struct.subst*, %struct.subst** %33, align 8
  %35 = call %struct.subst* @subst_Add(i32 noundef %27, %struct.term* noundef %32, %struct.subst* noundef %34)
  %36 = load %struct.subst**, %struct.subst*** %6, align 8
  store %struct.subst* %35, %struct.subst** %36, align 8
  br label %57

37:                                               ; preds = %18
  %38 = load %struct.binding*, %struct.binding** %7, align 8
  %39 = load %struct.binding*, %struct.binding** %9, align 8
  %40 = call i32 @cont_BindingSymbol(%struct.binding* noundef %39)
  %41 = load %struct.binding*, %struct.binding** %9, align 8
  %42 = call i32 @cont_IsInContext(%struct.binding* noundef %38, i32 noundef %40, %struct.binding* noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.binding*, %struct.binding** %9, align 8
  %46 = call i32 @cont_BindingSymbol(%struct.binding* noundef %45)
  %47 = load %struct.binding*, %struct.binding** %9, align 8
  %48 = call %struct.binding* @cont_BindingContext(%struct.binding* noundef %47)
  %49 = load %struct.binding*, %struct.binding** %9, align 8
  %50 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %49)
  %51 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef %48, %struct.term* noundef %50)
  %52 = load %struct.subst**, %struct.subst*** %8, align 8
  %53 = load %struct.subst*, %struct.subst** %52, align 8
  %54 = call %struct.subst* @subst_Add(i32 noundef %46, %struct.term* noundef %51, %struct.subst* noundef %53)
  %55 = load %struct.subst**, %struct.subst*** %8, align 8
  store %struct.subst* %54, %struct.subst** %55, align 8
  br label %56

56:                                               ; preds = %44, %37
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.binding*, %struct.binding** %9, align 8
  %59 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef %58)
  store %struct.binding* %59, %struct.binding** %9, align 8
  br label %15, !llvm.loop !26

60:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_IsInContext(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2) #0 {
  %4 = alloca %struct.binding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.binding* %2, %struct.binding** %6, align 8
  %7 = load %struct.binding*, %struct.binding** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.binding* @cont_Binding(%struct.binding* noundef %7, i32 noundef %8)
  %10 = load %struct.binding*, %struct.binding** %6, align 8
  %11 = icmp eq %struct.binding* %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_BindingSymbol(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

declare dso_local %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_BindingContext(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 3
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_BindingTerm(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 2
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_BindingLink(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 4
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_ExtractUnifierCom(%struct.binding* noundef %0, %struct.subst** noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca %struct.subst**, align 8
  %5 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %3, align 8
  store %struct.subst** %1, %struct.subst*** %4, align 8
  %6 = call %struct.subst* @subst_Nil()
  %7 = load %struct.subst**, %struct.subst*** %4, align 8
  store %struct.subst* %6, %struct.subst** %7, align 8
  %8 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %8, %struct.binding** %5, align 8
  br label %9

9:                                                ; preds = %12, %2
  %10 = load %struct.binding*, %struct.binding** %5, align 8
  %11 = icmp ne %struct.binding* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.binding*, %struct.binding** %5, align 8
  %14 = call i32 @cont_BindingSymbol(%struct.binding* noundef %13)
  %15 = load %struct.binding*, %struct.binding** %3, align 8
  %16 = load %struct.binding*, %struct.binding** %5, align 8
  %17 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %16)
  %18 = call %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* noundef %15, %struct.term* noundef %17)
  %19 = load %struct.subst**, %struct.subst*** %4, align 8
  %20 = load %struct.subst*, %struct.subst** %19, align 8
  %21 = call %struct.subst* @subst_Add(i32 noundef %14, %struct.term* noundef %18, %struct.subst* noundef %20)
  %22 = load %struct.subst**, %struct.subst*** %4, align 8
  store %struct.subst* %21, %struct.subst** %22, align 8
  %23 = load %struct.binding*, %struct.binding** %5, align 8
  %24 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef %23)
  store %struct.binding* %24, %struct.binding** %5, align 8
  br label %9, !llvm.loop !27

25:                                               ; preds = %9
  ret void
}

declare dso_local %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_ExtractMatcher() #0 {
  %1 = alloca %struct.binding*, align 8
  %2 = alloca %struct.subst*, align 8
  %3 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %3, %struct.binding** %1, align 8
  %4 = call %struct.subst* @subst_Nil()
  store %struct.subst* %4, %struct.subst** %2, align 8
  br label %5

5:                                                ; preds = %15, %0
  %6 = load %struct.binding*, %struct.binding** %1, align 8
  %7 = icmp ne %struct.binding* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load %struct.binding*, %struct.binding** %1, align 8
  %10 = call i32 @cont_BindingSymbol(%struct.binding* noundef %9)
  %11 = load %struct.binding*, %struct.binding** %1, align 8
  %12 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %11)
  %13 = load %struct.subst*, %struct.subst** %2, align 8
  %14 = call %struct.subst* @subst_Add(i32 noundef %10, %struct.term* noundef %12, %struct.subst* noundef %13)
  store %struct.subst* %14, %struct.subst** %2, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load %struct.binding*, %struct.binding** %1, align 8
  %17 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef %16)
  store %struct.binding* %17, %struct.binding** %1, align 8
  br label %5, !llvm.loop !28

18:                                               ; preds = %5
  %19 = load %struct.subst*, %struct.subst** %2, align 8
  ret %struct.subst* %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Print(%struct.subst* noundef %0) #0 {
  %2 = alloca %struct.subst*, align 8
  store %struct.subst* %0, %struct.subst** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %3)
  br label %5

5:                                                ; preds = %28, %1
  %6 = load %struct.subst*, %struct.subst** %2, align 8
  %7 = call i32 @subst_Exist(%struct.subst* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load %struct.subst*, %struct.subst** %2, align 8
  %11 = call i32 @subst_Dom(%struct.subst* noundef %10)
  call void @symbol_Print(i32 noundef %11)
  %12 = load %struct.subst*, %struct.subst** %2, align 8
  %13 = call %struct.term* @subst_Cod(%struct.subst* noundef %12)
  %14 = icmp ne %struct.term* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 @fputs(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %16)
  %18 = load %struct.subst*, %struct.subst** %2, align 8
  %19 = call %struct.term* @subst_Cod(%struct.subst* noundef %18)
  call void @term_PrintPrefix(%struct.term* noundef %19)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load %struct.subst*, %struct.subst** %2, align 8
  %22 = call %struct.subst* @subst_Next(%struct.subst* noundef %21)
  %23 = icmp ne %struct.subst* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.subst*, %struct.subst** %2, align 8
  %30 = call %struct.subst* @subst_Next(%struct.subst* noundef %29)
  store %struct.subst* %30, %struct.subst** %2, align 8
  br label %5, !llvm.loop !29

31:                                               ; preds = %5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %32)
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @symbol_Print(i32 noundef) #1

declare dso_local void @term_PrintPrefix(%struct.term* noundef) #1

declare dso_local i8* @memory_Malloc(i32 noundef) #1

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
define internal i32 @symbol_IsVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* noundef %3, i8* (i8*)* noundef bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_RplacTop(%struct.term* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.term*, %struct.term** %3, align 8
  %7 = getelementptr inbounds %struct.term, %struct.term* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* noundef %3, void (i8*)* noundef bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_RplacArgumentList(%struct.term* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %4, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %6 = load %struct.term*, %struct.term** %3, align 8
  %7 = getelementptr inbounds %struct.term, %struct.term* %6, i32 0, i32 2
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %7, align 8
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

declare dso_local %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* noundef, i8* (i8*)* noundef) #1

declare dso_local void @list_DeleteWithElement(%struct.LIST_HELP* noundef, void (i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @cont_CreateBindingHelp(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %9 = load %struct.binding*, %struct.binding** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.binding* @cont_Binding(%struct.binding* noundef %9, i32 noundef %10)
  store %struct.binding* %11, %struct.binding** @cont_CURRENTBINDING, align 8
  %12 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %13 = load %struct.term*, %struct.term** %8, align 8
  call void @cont_SetBindingTerm(%struct.binding* noundef %12, %struct.term* noundef %13)
  %14 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %15 = load %struct.binding*, %struct.binding** %7, align 8
  call void @cont_SetBindingContext(%struct.binding* noundef %14, %struct.binding* noundef %15)
  %16 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %17 = call %struct.binding* @cont_LastBinding()
  call void @cont_SetBindingLink(%struct.binding* noundef %16, %struct.binding* noundef %17)
  %18 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetLastBinding(%struct.binding* noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_Binding(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  ret %struct.binding* %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetBindingTerm(%struct.binding* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %5 = load %struct.term*, %struct.term** %4, align 8
  %6 = load %struct.binding*, %struct.binding** %3, align 8
  %7 = getelementptr inbounds %struct.binding, %struct.binding* %6, i32 0, i32 2
  store %struct.term* %5, %struct.term** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetBindingContext(%struct.binding* noundef %0, %struct.binding* noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %3, align 8
  store %struct.binding* %1, %struct.binding** %4, align 8
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  %6 = load %struct.binding*, %struct.binding** %3, align 8
  %7 = getelementptr inbounds %struct.binding, %struct.binding* %6, i32 0, i32 3
  store %struct.binding* %5, %struct.binding** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetBindingLink(%struct.binding* noundef %0, %struct.binding* noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %3, align 8
  store %struct.binding* %1, %struct.binding** %4, align 8
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  %6 = load %struct.binding*, %struct.binding** %3, align 8
  %7 = getelementptr inbounds %struct.binding, %struct.binding* %6, i32 0, i32 4
  store %struct.binding* %5, %struct.binding** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetLastBinding(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  store %struct.binding* %3, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_CloseBindingHelp(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @cont_SetContextBindingTerm(%struct.binding* noundef %5, i32 noundef %6, %struct.term* noundef null)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1, %struct.term* noundef %2) #0 {
  %4 = alloca %struct.binding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.term* %2, %struct.term** %6, align 8
  %7 = load %struct.term*, %struct.term** %6, align 8
  %8 = load %struct.binding*, %struct.binding** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.binding, %struct.binding* %8, i64 %10
  %12 = getelementptr inbounds %struct.binding, %struct.binding* %11, i32 0, i32 2
  store %struct.term* %7, %struct.term** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_BindingIsBound(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %3)
  %5 = icmp ne %struct.term* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_BackTrackLastBindingHelp() #0 {
  %1 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %1, %struct.binding** @cont_CURRENTBINDING, align 8
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %3 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef %2)
  call void @cont_SetLastBinding(%struct.binding* noundef %3)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* noundef %4, %struct.term* noundef null)
  %5 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* noundef %5, %struct.binding* noundef null)
  %6 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %7 = call i32 @symbol_Null()
  call void @cont_SetBindingRenaming(%struct.binding* noundef %6, i32 noundef %7)
  %8 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingLink(%struct.binding* noundef %8, %struct.binding* noundef null)
  %9 = load i32, i32* @cont_BINDINGS, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_SetBindingRenaming(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.binding*, %struct.binding** %3, align 8
  %7 = getelementptr inbounds %struct.binding, %struct.binding* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Null() #0 {
  ret i32 0
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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
