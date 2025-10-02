; ModuleID = './resolution.ll'
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
define dso_local void @res_InsertClauseIndex(%struct.CLAUSE_HELP* nocapture noundef readonly %0, %struct.st* noundef %1) #0 {
  %3 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  br label %4

4:                                                ; preds = %11, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.0)
  %8 = bitcast %struct.LITERAL_HELP* %7 to i8*
  %9 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.0)
  %10 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* noundef %1, i8* noundef %8, %struct.term* noundef %9, %struct.binding* noundef %10) #9
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_Length(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #1 {
  %2 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* noundef %0)
  %3 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* noundef %0)
  %4 = add nsw i32 %2, %3
  %5 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* noundef %0)
  %6 = add nsw i32 %4, %5
  ret i32 %6
}

declare dso_local void @st_EntryCreate(%struct.st* noundef, i8* noundef, %struct.term* noundef, %struct.binding* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 10
  %4 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %3, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %4, i64 %5
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %6, align 8
  ret %struct.LITERAL_HELP* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %0, i32 noundef %1)
  %4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* noundef %3)
  ret %struct.term* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_LeftContext() #1 {
  %1 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @res_DeleteClauseIndex(%struct.CLAUSE_HELP* nocapture noundef readonly %0, %struct.st* noundef %1) #0 {
  %3 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  br label %4

4:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %5 = icmp slt i32 %.0, %3
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.0)
  %8 = bitcast %struct.LITERAL_HELP* %7 to i8*
  %9 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.0)
  %10 = call %struct.binding* @cont_LeftContext()
  %11 = call i32 @st_EntryDelete(%struct.st* noundef %1, i8* noundef %8, %struct.term* noundef %9, %struct.binding* noundef %10) #9
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %13

12:                                               ; preds = %6
  call void @misc_DumpCore()
  br label %13

13:                                               ; preds = %12, %6
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

16:                                               ; preds = %4
  ret void
}

declare dso_local i32 @st_EntryDelete(%struct.st* noundef, i8* noundef, %struct.term* noundef, %struct.binding* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @misc_DumpCore() #3 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1) #10
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3) #9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7) #9
  call void @abort() #11
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.CLAUSE_HELP* @res_SelectLightestClause(%struct.LIST_HELP* nocapture noundef readonly %0) #4 {
  %2 = call i8* @list_Car(%struct.LIST_HELP* noundef %0)
  %3 = bitcast i8* %2 to %struct.CLAUSE_HELP*
  %4 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %3)
  %5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0)
  br label %6

6:                                                ; preds = %18, %1
  %.03 = phi %struct.LIST_HELP* [ %5, %1 ], [ %19, %18 ]
  %.01 = phi %struct.CLAUSE_HELP* [ %3, %1 ], [ %.12, %18 ]
  %.0 = phi i32 [ %4, %1 ], [ %.1, %18 ]
  %7 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.03)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %20

8:                                                ; preds = %6
  %9 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %10 = bitcast i8* %9 to %struct.CLAUSE_HELP*
  %11 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %10)
  %12 = icmp ult i32 %11, %.0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %15 = bitcast i8* %14 to %struct.CLAUSE_HELP*
  %16 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %15)
  br label %17

17:                                               ; preds = %13, %8
  %.12 = phi %struct.CLAUSE_HELP* [ %15, %13 ], [ %.01, %8 ]
  %.1 = phi i32 [ %16, %13 ], [ %.0, %8 ]
  br label %18

18:                                               ; preds = %17
  %19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.03)
  br label %6, !llvm.loop !7

20:                                               ; preds = %6
  ret %struct.CLAUSE_HELP* %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_Weight(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #5 {
  %2 = icmp eq %struct.LIST_HELP* %0, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @res_HasTautology(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #0 {
  %2 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  br label %3

3:                                                ; preds = %25, %1
  %.02 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %.01 = phi i32 [ 0, %1 ], [ %.1, %25 ]
  %4 = icmp slt i32 %.02, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  %.not5 = icmp eq i32 %.01, 0
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i1 [ false, %3 ], [ %.not5, %5 ]
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.02)
  %10 = call %struct.term* @fol_ComplementaryTerm(%struct.term* noundef %9) #9
  br label %11

11:                                               ; preds = %22, %8
  %.1 = phi i32 [ %.01, %8 ], [ %.2, %22 ]
  %.0 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %12 = icmp slt i32 %.0, %2
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  %.not4 = icmp eq i32 %.1, 0
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i1 [ false, %11 ], [ %.not4, %13 ]
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %.not = icmp eq i32 %.0, %.02
  br i1 %.not, label %21, label %17

17:                                               ; preds = %16
  %18 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.0)
  %19 = call i32 @term_Equal(%struct.term* noundef %10, %struct.term* noundef %18) #9
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %17, %16
  %.2 = phi i32 [ 1, %20 ], [ %.1, %17 ], [ %.1, %16 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !8

24:                                               ; preds = %14
  call void @term_Delete(%struct.term* noundef %10) #9
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.02, 1
  br label %3, !llvm.loop !9

27:                                               ; preds = %6
  ret i32 %.01
}

declare dso_local %struct.term* @fol_ComplementaryTerm(%struct.term* noundef) #2

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #2

declare dso_local void @term_Delete(%struct.term* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @res_BackSubWithLength(%struct.CLAUSE_HELP* noundef %0, %struct.st* noundef %1) #0 {
  %3 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  br label %4

4:                                                ; preds = %34, %2
  %.02 = phi i32 [ 0, %2 ], [ %35, %34 ]
  %5 = icmp slt i32 %.02, %3
  br i1 %5, label %6, label %36

6:                                                ; preds = %4
  %7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.02)
  %8 = call %struct.binding* @cont_LeftContext()
  %9 = call %struct.LIST_HELP* @st_GetGen(%struct.binding* noundef %8, %struct.st* noundef %1, %struct.term* noundef %7) #9
  br label %10

10:                                               ; preds = %31, %6
  %.01 = phi %struct.LIST_HELP* [ %9, %6 ], [ %32, %31 ]
  %11 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %33

12:                                               ; preds = %10
  %13 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %14 = bitcast i8* %13 to %struct.LITERAL_HELP*
  %15 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %14)
  %16 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %15, i32 noundef 0)
  %17 = icmp eq %struct.LITERAL_HELP* %16, %14
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  %20 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %14)
  %21 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %20)
  %.not3 = icmp slt i32 %19, %21
  br i1 %.not3, label %30, label %22

22:                                               ; preds = %18
  %23 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %0)
  %24 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %14)
  %25 = call i32 @clause_Weight(%struct.CLAUSE_HELP* noundef %24)
  %.not4 = icmp ult i32 %23, %25
  br i1 %.not4, label %30, label %26

26:                                               ; preds = %22
  %27 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* noundef %14)
  %28 = call i32 @subs_Idc(%struct.CLAUSE_HELP* noundef %27, %struct.CLAUSE_HELP* noundef %0) #9
  %.not5 = icmp eq i32 %28, 0
  br i1 %.not5, label %30, label %29

29:                                               ; preds = %26
  call void @list_Delete(%struct.LIST_HELP* noundef %9)
  br label %37

30:                                               ; preds = %26, %22, %18, %12
  br label %31

31:                                               ; preds = %30
  %32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %10, !llvm.loop !10

33:                                               ; preds = %10
  call void @list_Delete(%struct.LIST_HELP* noundef %9)
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !11

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %29
  %.0 = phi i32 [ 1, %29 ], [ 0, %36 ]
  ret i32 %.0
}

declare dso_local %struct.LIST_HELP* @st_GetGen(%struct.binding* noundef, %struct.st* noundef, %struct.term* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i64 0, i32 3
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  ret %struct.CLAUSE_HELP* %3
}

declare dso_local i32 @subs_Idc(%struct.CLAUSE_HELP* noundef, %struct.CLAUSE_HELP* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.LIST_HELP* [ %0, %1 ], [ %5, %4 ]
  %3 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %2
  %5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  call void @list_Free(%struct.LIST_HELP* noundef %.0)
  br label %2, !llvm.loop !12

6:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 11
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 12
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 13
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i64 0, i32 4
  %3 = load %struct.term*, %struct.term** %2, align 8
  ret %struct.term* %3
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: noinline nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* noundef %0) #0 {
  %2 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* noundef %2, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @memory_Free(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @memory_LookupRealBlockSize(i32 noundef %1)
  %4 = icmp ugt i32 %1, 1023
  br i1 %4, label %5, label %53

5:                                                ; preds = %2
  %6 = load i32, i32* @memory_OFFSET, align 4
  %7 = zext i32 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -16
  %11 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %11, align 8
  %.not = icmp eq %struct.MEMORY_BIGBLOCKHEADERHELP* %12, null
  br i1 %.not, label %20, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, i8* %10, i64 8
  %15 = bitcast i8* %14 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %15, align 8
  %17 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %17, align 8
  %19 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i64 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %19, align 8
  br label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds i8, i8* %10, i64 8
  %22 = bitcast i8* %21 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %23 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %22, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %23, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %27 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %26, align 8
  %.not1 = icmp eq %struct.MEMORY_BIGBLOCKHEADERHELP* %27, null
  br i1 %.not1, label %35, label %28

28:                                               ; preds = %24
  %29 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %30 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %29, align 8
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %33 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %32, align 8
  %34 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %33, i64 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %30, %struct.MEMORY_BIGBLOCKHEADERHELP** %34, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* @memory_MARKSIZE, align 4
  %37 = add i32 %3, %36
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 16
  %40 = load i64, i64* @memory_FREEDBYTES, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* @memory_FREEDBYTES, align 8
  %42 = load i64, i64* @memory_MAXMEM, align 8
  %43 = icmp sgt i64 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @memory_MARKSIZE, align 4
  %46 = add i32 %3, %45
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %47, 16
  %49 = load i64, i64* @memory_MAXMEM, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* @memory_MAXMEM, align 8
  br label %51

51:                                               ; preds = %44, %35
  %52 = getelementptr inbounds i8, i8* %0, i64 -16
  call void @free(i8* noundef %52) #9
  br label %72

53:                                               ; preds = %2
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %54
  %56 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %55, align 8
  %57 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %56, i64 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @memory_FREEDBYTES, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* @memory_FREEDBYTES, align 8
  %62 = zext i32 %1 to i64
  %63 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %62
  %64 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %63, align 8
  %65 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %64, i64 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %0 to i8**
  store i8* %66, i8** %67, align 8
  %68 = zext i32 %1 to i64
  %69 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %68
  %70 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %69, align 8
  %71 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %70, i64 0, i32 0
  store i8* %0, i8** %71, align 8
  br label %72

72:                                               ; preds = %53, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #1 {
  %2 = icmp ult i32 %0, 1024
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %4
  %6 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %5, align 8
  %7 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %6, i64 0, i32 5
  %8 = load i32, i32* %7, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @memory_CalculateRealBlockSize(i32 noundef %0)
  br label %11

11:                                               ; preds = %9, %3
  %.0 = phi i32 [ %8, %3 ], [ %10, %9 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #5 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1
  %4 = load i32, i32* @memory_ALIGN, align 4
  %5 = urem i32 %0, %4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @memory_ALIGN, align 4
  %8 = urem i32 %0, %7
  %9 = sub i32 %7, %8
  %10 = add i32 %9, %0
  br label %11

11:                                               ; preds = %6, %3
  %.1 = phi i32 [ %10, %6 ], [ %0, %3 ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

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
