; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/resolution.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@cont_LEFTCONTEXT = external dso_local global %struct.binding*, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @res_InsertClauseIndex(%struct.CLAUSE_HELP* noundef %0, %struct.st* noundef %1) #0 {
  %3 = alloca %struct.CLAUSE_HELP*, align 8
  %4 = alloca %struct.st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %3, align 8
  store %struct.st* %1, %struct.st** %4, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %8 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.st*, %struct.st** %4, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %15, i32 noundef %16)
  %18 = bitcast %struct.LITERAL_HELP* %17 to i8*
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %19, i32 noundef %20)
  %22 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* noundef %14, i8* noundef %18, %struct.term* noundef %21, %struct.binding* noundef %22)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %9, !llvm.loop !4

26:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* noundef %3)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %6 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* noundef %5)
  %7 = add nsw i32 %4, %6
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %9 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* noundef %8)
  %10 = add nsw i32 %7, %9
  ret i32 %10
}

declare dso_local void @st_EntryCreate(%struct.st* noundef, i8* noundef, %struct.term* noundef, %struct.binding* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CLAUSE_HELP*, align 8
  %4 = alloca i32, align 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %6 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 10
  %7 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %7, i64 %9
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %10, align 8
  ret %struct.LITERAL_HELP* %11
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CLAUSE_HELP*, align 8
  %4 = alloca i32, align 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %5, i32 noundef %6)
  %8 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* noundef %7)
  ret %struct.term* %8
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @res_DeleteClauseIndex(%struct.CLAUSE_HELP* noundef %0, %struct.st* noundef %1) #0 {
  %3 = alloca %struct.CLAUSE_HELP*, align 8
  %4 = alloca %struct.st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %3, align 8
  store %struct.st* %1, %struct.st** %4, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %8 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.st*, %struct.st** %4, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %15, i32 noundef %16)
  %18 = bitcast %struct.LITERAL_HELP* %17 to i8*
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %19, i32 noundef %20)
  %22 = call %struct.binding* @cont_LeftContext()
  %23 = call i32 @st_EntryDelete(%struct.st* noundef %14, i8* noundef %18, %struct.term* noundef %21, %struct.binding* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  call void @misc_DumpCore()
  br label %26

26:                                               ; preds = %25, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %9, !llvm.loop !6

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @st_EntryDelete(%struct.st* noundef, i8* noundef, %struct.term* noundef, %struct.binding* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @misc_DumpCore() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7)
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CLAUSE_HELP* @res_SelectLightestClause(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  %3 = alloca %struct.CLAUSE_HELP*, align 8
  %4 = alloca %struct.LIST_HELP*, align 8
  %5 = alloca i32, align 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %7 = call i8* @list_Car(%struct.LIST_HELP* noundef %6)
  %8 = bitcast i8* %7 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %3, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %10 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %11)
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %4, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %15 = call i32 @list_Empty(%struct.LIST_HELP* noundef %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %20 = call i8* @list_Car(%struct.LIST_HELP* noundef %19)
  %21 = bitcast i8* %20 to %struct.CLAUSE_HELP*
  %22 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %27 = call i8* @list_Car(%struct.LIST_HELP* noundef %26)
  %28 = bitcast i8* %27 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %28, %struct.CLAUSE_HELP** %3, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %30 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %33)
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %4, align 8
  br label %13, !llvm.loop !7

35:                                               ; preds = %13
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  ret %struct.CLAUSE_HELP* %36
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
define internal i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
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
define internal i32 @list_Empty(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = icmp eq %struct.LIST_HELP* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @res_HasTautology(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %9 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %8)
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %56

20:                                               ; preds = %18
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %21, i32 noundef %22)
  %24 = call %struct.term* @fol_ComplementaryTerm(%struct.term* noundef %23)
  store %struct.term* %24, %struct.term** %4, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %48, %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.term*, %struct.term** %4, align 8
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %41, i32 noundef %42)
  %44 = call i32 @term_Equal(%struct.term* noundef %40, %struct.term* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39, %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %25, !llvm.loop !8

51:                                               ; preds = %33
  %52 = load %struct.term*, %struct.term** %4, align 8
  call void @term_Delete(%struct.term* noundef %52)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %10, !llvm.loop !9

56:                                               ; preds = %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.term* @fol_ComplementaryTerm(%struct.term* noundef) #1

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local void @term_Delete(%struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @res_BackSubWithLength(%struct.CLAUSE_HELP* noundef %0, %struct.st* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CLAUSE_HELP*, align 8
  %5 = alloca %struct.st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LIST_HELP*, align 8
  %9 = alloca %struct.LIST_HELP*, align 8
  %10 = alloca %struct.term*, align 8
  %11 = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %4, align 8
  store %struct.st* %1, %struct.st** %5, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %13 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %19, i32 noundef %20)
  store %struct.term* %21, %struct.term** %10, align 8
  %22 = call %struct.binding* @cont_LeftContext()
  %23 = load %struct.st*, %struct.st** %5, align 8
  %24 = load %struct.term*, %struct.term** %10, align 8
  %25 = call %struct.LIST_HELP* @st_GetGen(%struct.binding* noundef %22, %struct.st* noundef %23, %struct.term* noundef %24)
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %9, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  store %struct.LIST_HELP* %26, %struct.LIST_HELP** %8, align 8
  br label %27

27:                                               ; preds = %64, %18
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %29 = call i32 @list_Empty(%struct.LIST_HELP* noundef %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %34 = call i8* @list_Car(%struct.LIST_HELP* noundef %33)
  %35 = bitcast i8* %34 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %35, %struct.LITERAL_HELP** %11, align 8
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, align 8
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, align 8
  %38 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %37)
  %39 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %38, i32 noundef 0)
  %40 = icmp eq %struct.LITERAL_HELP* %36, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %32
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %43 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %42)
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, align 8
  %45 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %44)
  %46 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %45)
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %50 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %49)
  %51 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, align 8
  %52 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %51)
  %53 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %52)
  %54 = icmp uge i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, align 8
  %57 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %56)
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %59 = call i32 @subs_Idc(%struct.CLAUSE_HELP* noundef %57, %struct.CLAUSE_HELP* noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %62)
  store i32 1, i32* %3, align 4
  br label %73

63:                                               ; preds = %55, %48, %41, %32
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %65)
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %8, align 8
  br label %27, !llvm.loop !10

67:                                               ; preds = %27
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %68)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %14, !llvm.loop !11

72:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.LIST_HELP* @st_GetGen(%struct.binding* noundef, %struct.st* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %0) #0 {
  %2 = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %2, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %3, i32 0, i32 3
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  ret %struct.CLAUSE_HELP* %5
}

declare dso_local i32 @subs_Idc(%struct.CLAUSE_HELP* noundef, %struct.CLAUSE_HELP* noundef) #1

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
  br label %5, !llvm.loop !12

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 11
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 12
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* noundef %0) #0 {
  %2 = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %2, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %3, i32 0, i32 4
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

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
  call void @free(i8* noundef %68) #5
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
declare dso_local void @free(i8* noundef) #3

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
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
