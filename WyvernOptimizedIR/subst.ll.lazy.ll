; ModuleID = './subst.ll'
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
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, %struct.term* }

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
  %4 = call %struct.subst* @subst_Get()
  %5 = getelementptr inbounds %struct.subst, %struct.subst* %4, i64 0, i32 0
  store %struct.subst* %2, %struct.subst** %5, align 8
  %6 = getelementptr inbounds %struct.subst, %struct.subst* %4, i64 0, i32 1
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.subst, %struct.subst* %4, i64 0, i32 2
  store %struct.term* %1, %struct.term** %7, align 8
  ret %struct.subst* %4
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subst* @subst_Get() #0 {
  %1 = call i8* @memory_Malloc(i32 noundef 24) #11
  %2 = bitcast i8* %1 to %struct.subst*
  ret %struct.subst* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Delete(%struct.subst* noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi %struct.subst* [ %0, %1 ], [ %5, %9 ]
  %3 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  %6 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  %.not1 = icmp eq %struct.term* %6, null
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %4
  %8 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  call void @term_Delete(%struct.term* noundef %8) #11
  br label %9

9:                                                ; preds = %7, %4
  call void @subst_FreeOneNode(%struct.subst* noundef %.0)
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @subst_Exist(%struct.subst* noundef readnone %0) #1 {
  %2 = call %struct.subst* @subst_Nil()
  %3 = icmp ne %struct.subst* %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.subst* @subst_Next(%struct.subst* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.subst, %struct.subst* %0, i64 0, i32 0
  %3 = load %struct.subst*, %struct.subst** %2, align 8
  ret %struct.subst* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @subst_Cod(%struct.subst* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.subst, %struct.subst* %0, i64 0, i32 2
  %3 = load %struct.term*, %struct.term** %2, align 8
  ret %struct.term* %3
}

declare dso_local void @term_Delete(%struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @subst_FreeOneNode(%struct.subst* noundef %0) #0 {
  %2 = bitcast %struct.subst* %0 to i8*
  call void @memory_Free(i8* noundef %2, i32 noundef 24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Free(%struct.subst* noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.subst* [ %0, %1 ], [ %5, %4 ]
  %3 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  call void @subst_FreeOneNode(%struct.subst* noundef %.0)
  br label %2, !llvm.loop !6

6:                                                ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.term* @subst_Term(i32 noundef %0, %struct.subst* noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %12, %11 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @symbol_Equal(i32 noundef %0, i32 noundef %6)
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %10, label %8

8:                                                ; preds = %5
  %9 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %8
  %.0 = phi %struct.term* [ %9, %8 ], [ null, %13 ]
  ret %struct.term* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @subst_Dom(%struct.subst* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.subst, %struct.subst* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.term* @subst_Apply(%struct.subst* noundef %0, %struct.term* noundef %1) #0 {
  %3 = call i32 @subst_Empty(%struct.subst* noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  %6 = call %struct.term* @subst_ApplyIntern(%struct.subst* noundef %0, %struct.term* noundef %1)
  br label %7

7:                                                ; preds = %5, %4
  ret %struct.term* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @subst_Empty(%struct.subst* noundef readnone %0) #1 {
  %2 = call %struct.subst* @subst_Nil()
  %3 = icmp eq %struct.subst* %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @subst_ApplyIntern(%struct.subst* noundef %0, %struct.term* noundef returned %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_subst_ApplyIntern_287194207, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.term* %1, %struct.term** %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_subst_ApplyIntern_287194207(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %3 = call i32 @symbol_IsVariable(i32 noundef %_wyvern_thunkcall)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %11, label %4

4:                                                ; preds = %2
  %5 = call %struct.term* @_wyvern_calleeclone_subst_Term_0144998518(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, %struct.subst* noundef %0)
  %.not2 = icmp eq %struct.term* %5, null
  br i1 %.not2, label %11, label %6

6:                                                ; preds = %4
  %7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef nonnull %5)
  %8 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* noundef %7)
  %9 = call i32 @term_TopSymbol(%struct.term* noundef nonnull %5)
  call void @term_RplacTop(%struct.term* noundef %1, i32 noundef %9)
  %10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  call void @term_DeleteTermList(%struct.LIST_HELP* noundef %10)
  call void @term_RplacArgumentList(%struct.term* noundef %1, %struct.LIST_HELP* noundef %8)
  br label %22

11:                                               ; preds = %4, %2
  %12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  br label %13

13:                                               ; preds = %19, %11
  %.0 = phi %struct.LIST_HELP* [ %12, %11 ], [ %20, %19 ]
  %14 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %15, label %21

15:                                               ; preds = %13
  %16 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %17 = bitcast i8* %16 to %struct.term*
  %18 = call %struct.term* @subst_ApplyIntern(%struct.subst* noundef %0, %struct.term* noundef %17)
  br label %19

19:                                               ; preds = %15
  %20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %13, !llvm.loop !8

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %6
  ret %struct.term* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Merge(%struct.subst* noundef readonly %0, %struct.subst* noundef %1) #0 {
  br label %3

3:                                                ; preds = %28, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %.1, %28 ]
  %.0 = phi %struct.subst* [ %0, %2 ], [ %29, %28 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %30, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %17, %5
  %.03 = phi i32 [ 0, %5 ], [ %.14, %17 ]
  %.02 = phi %struct.subst* [ %.01, %5 ], [ %18, %17 ]
  %7 = call i32 @subst_Exist(%struct.subst* noundef %.02)
  %.not5 = icmp eq i32 %7, 0
  br i1 %.not5, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.subst, %struct.subst* %.0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.subst, %struct.subst* %.0, i64 0, i32 2
  %12 = load %struct.term*, %struct.term** %11, align 8
  %13 = getelementptr inbounds %struct.subst, %struct.subst* %.02, i64 0, i32 2
  %14 = call i32 @term_SubstituteVariable(i32 noundef %10, %struct.term* noundef %12, %struct.term** noundef nonnull %13) #11
  %.not7 = icmp eq i32 %14, 0
  br i1 %.not7, label %16, label %15

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %8
  %.14 = phi i32 [ 1, %15 ], [ %.03, %8 ]
  br label %17

17:                                               ; preds = %16
  %18 = call %struct.subst* @subst_Next(%struct.subst* noundef %.02)
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %.not6 = icmp eq i32 %.03, 0
  br i1 %.not6, label %20, label %27

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.subst, %struct.subst* %.0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.subst, %struct.subst* %.0, i64 0, i32 2
  %24 = load %struct.term*, %struct.term** %23, align 8
  %25 = call %struct.term* @term_Copy(%struct.term* noundef %24) #11
  %26 = call %struct.subst* @subst_Add(i32 noundef %22, %struct.term* noundef %25, %struct.subst* noundef %.01)
  br label %27

27:                                               ; preds = %20, %19
  %.1 = phi %struct.subst* [ %.01, %19 ], [ %26, %20 ]
  br label %28

28:                                               ; preds = %27
  %29 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  br label %3, !llvm.loop !10

30:                                               ; preds = %3
  ret %struct.subst* %.01
}

declare dso_local i32 @term_SubstituteVariable(i32 noundef, %struct.term* noundef, %struct.term** noundef) #3

declare dso_local %struct.term* @term_Copy(%struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Compose(%struct.subst* noundef readonly %0, %struct.subst* noundef %1) #0 {
  %3 = call %struct.subst* @subst_Nil()
  br label %4

4:                                                ; preds = %25, %2
  %.02 = phi %struct.subst* [ %0, %2 ], [ %26, %25 ]
  %.0 = phi %struct.subst* [ %3, %2 ], [ %.1, %25 ]
  %5 = call i32 @subst_Exist(%struct.subst* noundef %.02)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %27, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %14, %6
  %.01 = phi %struct.subst* [ %1, %6 ], [ %15, %14 ]
  %8 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %16, label %9

9:                                                ; preds = %7
  %10 = call i32 @subst_Dom(%struct.subst* noundef %.02)
  %11 = call %struct.term* @subst_Cod(%struct.subst* noundef %.02)
  %12 = getelementptr inbounds %struct.subst, %struct.subst* %.01, i64 0, i32 2
  %13 = call i32 @term_SubstituteVariable(i32 noundef %10, %struct.term* noundef %11, %struct.term** noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %9
  %15 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %7, !llvm.loop !11

16:                                               ; preds = %7
  %17 = call i32 @subst_Dom(%struct.subst* noundef %.02)
  %18 = call i32 @subst_BindVar(i32 noundef %17, %struct.subst* noundef %1)
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 @subst_Dom(%struct.subst* noundef %.02)
  %21 = call %struct.term* @subst_Cod(%struct.subst* noundef %.02)
  %22 = call %struct.term* @term_Copy(%struct.term* noundef %21) #11
  %23 = call %struct.subst* @subst_Add(i32 noundef %20, %struct.term* noundef %22, %struct.subst* noundef %.0)
  br label %24

24:                                               ; preds = %19, %16
  %.1 = phi %struct.subst* [ %.0, %16 ], [ %23, %19 ]
  br label %25

25:                                               ; preds = %24
  %26 = call %struct.subst* @subst_Next(%struct.subst* noundef %.02)
  br label %4, !llvm.loop !12

27:                                               ; preds = %4
  %28 = call %struct.subst* @subst_NUnion(%struct.subst* noundef %1, %struct.subst* noundef %.0)
  ret %struct.subst* %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.subst* @subst_Nil() #1 {
  ret %struct.subst* null
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @subst_BindVar(i32 noundef %0, %struct.subst* noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %10, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %11, %10 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %12, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @symbol_Equal(i32 noundef %6, i32 noundef %0)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %5
  br label %13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal %struct.subst* @subst_NUnion(%struct.subst* noundef %0, %struct.subst* noundef %1) #5 {
  %3 = icmp eq %struct.subst* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %18

5:                                                ; preds = %2
  %6 = icmp eq %struct.subst* %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %18

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %13, %8
  %.01 = phi %struct.subst* [ %0, %8 ], [ %15, %13 ]
  %10 = getelementptr inbounds %struct.subst, %struct.subst* %.01, i64 0, i32 0
  %11 = load %struct.subst*, %struct.subst** %10, align 8
  %.not = icmp eq %struct.subst* %11, null
  br i1 %.not, label %16, label %12

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.subst, %struct.subst* %.01, i64 0, i32 0
  %15 = load %struct.subst*, %struct.subst** %14, align 8
  br label %9, !llvm.loop !14

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.subst, %struct.subst* %.01, i64 0, i32 0
  store %struct.subst* %1, %struct.subst** %17, align 8
  br label %18

18:                                               ; preds = %16, %7, %4
  %.0 = phi %struct.subst* [ %1, %4 ], [ %0, %7 ], [ %0, %16 ]
  ret %struct.subst* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_Copy(%struct.subst* noundef readonly %0) #0 {
  %2 = call %struct.subst* @subst_Nil()
  %3 = call %struct.subst* @subst_Nil()
  br label %4

4:                                                ; preds = %22, %1
  %.02 = phi %struct.subst* [ %2, %1 ], [ %.13, %22 ]
  %.01 = phi %struct.subst* [ %3, %1 ], [ %.1, %22 ]
  %.0 = phi %struct.subst* [ %0, %1 ], [ %23, %22 ]
  %5 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %24, label %6

6:                                                ; preds = %4
  %7 = call i32 @subst_Exist(%struct.subst* noundef %.02)
  %.not4 = icmp eq i32 %7, 0
  br i1 %.not4, label %15, label %8

8:                                                ; preds = %6
  %9 = call i32 @subst_Dom(%struct.subst* noundef %.0)
  %10 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  %11 = call %struct.term* @term_Copy(%struct.term* noundef %10) #11
  %12 = call %struct.subst* @subst_Nil()
  %13 = call %struct.subst* @subst_Add(i32 noundef %9, %struct.term* noundef %11, %struct.subst* noundef %12)
  call void @subst_SetNext(%struct.subst* noundef %.01, %struct.subst* noundef %13)
  %14 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %21

15:                                               ; preds = %6
  %16 = call i32 @subst_Dom(%struct.subst* noundef %.0)
  %17 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  %18 = call %struct.term* @term_Copy(%struct.term* noundef %17) #11
  %19 = call %struct.subst* @subst_Nil()
  %20 = call %struct.subst* @subst_Add(i32 noundef %16, %struct.term* noundef %18, %struct.subst* noundef %19)
  br label %21

21:                                               ; preds = %15, %8
  %.13 = phi %struct.subst* [ %.02, %8 ], [ %20, %15 ]
  %.1 = phi %struct.subst* [ %14, %8 ], [ %20, %15 ]
  br label %22

22:                                               ; preds = %21
  %23 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  br label %4, !llvm.loop !15

24:                                               ; preds = %4
  ret %struct.subst* %.02
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @subst_SetNext(%struct.subst* nocapture noundef writeonly %0, %struct.subst* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.subst, %struct.subst* %0, i64 0, i32 0
  store %struct.subst* %1, %struct.subst** %3, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @subst_MatchTops(%struct.binding* nocapture noundef readonly %0, %struct.subst* noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %15, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %16, %15 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %17, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %6)
  %.not2 = icmp eq %struct.term* %7, null
  br i1 %.not2, label %14, label %8

8:                                                ; preds = %5
  %9 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %10 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %9)
  %11 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %12 = call i32 @term_EqualTopSymbols(%struct.term* noundef %10, %struct.term* noundef %11)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %8
  br label %18

14:                                               ; preds = %8, %5
  br label %15

15:                                               ; preds = %14
  %16 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !16

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %.0 = phi i32 [ 1, %13 ], [ 0, %17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 2
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_EqualTopSymbols(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1) #2 {
  %3 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %5 = call i32 @symbol_Equal(i32 noundef %3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_Unify(%struct.binding* noundef %0, %struct.subst* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %27, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %28, %27 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %29, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %6)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %18

8:                                                ; preds = %5
  %9 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %10 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %11 = call i32 @unify_OccurCheck(%struct.binding* noundef %0, i32 noundef %9, %struct.binding* noundef %0, %struct.term* noundef %10) #11
  %.not3 = icmp eq i32 %11, 0
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %8
  br label %30

13:                                               ; preds = %8
  %14 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %15 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %16 = call i32 @cont_CreateBinding(%struct.binding* noundef %0, i32 noundef %14, %struct.binding* noundef %0, %struct.term* noundef %15)
  br label %17

17:                                               ; preds = %13
  br label %27

18:                                               ; preds = %5
  %19 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %20 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %21 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %0, i32 noundef %20)
  %22 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %23 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %22)
  %24 = call i32 @unify_UnifyAllOC(%struct.binding* noundef %0, %struct.binding* noundef %0, %struct.term* noundef %19, %struct.binding* noundef %21, %struct.term* noundef %23) #11
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !17

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25, %12
  %.0 = phi i32 [ 0, %25 ], [ 0, %12 ], [ 1, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_VarIsBound(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1)
  %4 = icmp ne %struct.term* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare dso_local i32 @unify_OccurCheck(%struct.binding* noundef, i32 noundef, %struct.binding* noundef, %struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @cont_CreateBinding(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7 {
  call void @cont_CreateBindingHelp(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3)
  %5 = load i32, i32* @cont_BINDINGS, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @cont_BINDINGS, align 4
  ret i32 %6
}

declare dso_local i32 @unify_UnifyAllOC(%struct.binding* noundef, %struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 3
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_IsShallow(%struct.subst* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %27, %1
  %.02 = phi %struct.subst* [ %0, %1 ], [ %28, %27 ]
  %3 = call %struct.subst* @subst_Nil()
  %.not = icmp eq %struct.subst* %.02, %3
  br i1 %.not, label %29, label %4

4:                                                ; preds = %2
  %5 = call %struct.term* @subst_Cod(%struct.subst* noundef %.02)
  %6 = call i32 @term_IsVariable(%struct.term* noundef %5)
  %.not3 = icmp eq i32 %6, 0
  br i1 %.not3, label %7, label %26

7:                                                ; preds = %4
  %8 = call i32 @term_IsGround(%struct.term* noundef %5) #11
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %9, label %26

9:                                                ; preds = %7
  %10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %5)
  br label %11

11:                                               ; preds = %23, %9
  %.01 = phi %struct.LIST_HELP* [ %10, %9 ], [ %24, %23 ]
  %12 = call %struct.LIST_HELP* @list_Nil()
  %.not5 = icmp eq %struct.LIST_HELP* %.01, %12
  br i1 %.not5, label %25, label %13

13:                                               ; preds = %11
  %14 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %15 = bitcast i8* %14 to %struct.term*
  %16 = call i32 @term_IsVariable(%struct.term* noundef %15)
  %.not6 = icmp eq i32 %16, 0
  br i1 %.not6, label %17, label %22

17:                                               ; preds = %13
  %18 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %19 = bitcast i8* %18 to %struct.term*
  %20 = call i32 @term_IsGround(%struct.term* noundef %19) #11
  %.not7 = icmp eq i32 %20, 0
  br i1 %.not7, label %21, label %22

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %17, %13
  br label %23

23:                                               ; preds = %22
  %24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %11, !llvm.loop !18

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %7, %4
  br label %27

27:                                               ; preds = %26
  %28 = call %struct.subst* @subst_Next(%struct.subst* noundef %.02)
  br label %2, !llvm.loop !19

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %21
  %.0 = phi i32 [ 0, %21 ], [ 1, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsVariable(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = call i32 @symbol_IsVariable(i32 noundef %2)
  ret i32 %3
}

declare dso_local i32 @term_IsGround(%struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.LIST_HELP* @list_Nil() #1 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_Match(%struct.binding* noundef %0, %struct.subst* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %14, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %15, %14 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %6)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %13, label %8

8:                                                ; preds = %5
  %9 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %10 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %10)
  %12 = call i32 @unify_Match(%struct.binding* noundef %0, %struct.term* noundef %9, %struct.term* noundef %11) #11
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %8, %5
  br label %17

14:                                               ; preds = %8
  %15 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !20

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %16 ]
  ret i32 %.0
}

declare dso_local i32 @unify_Match(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_MatchReverse(%struct.binding* noundef %0, %struct.subst* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %27, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %28, %27 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %29, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %6)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %18

8:                                                ; preds = %5
  %9 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %10 = call i32 @symbol_IsIndexVariable(i32 noundef %9)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %16, label %11

11:                                               ; preds = %8
  %12 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %13 = call %struct.binding* @cont_InstanceContext()
  %14 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %15 = call i32 @cont_CreateBinding(%struct.binding* noundef %0, i32 noundef %12, %struct.binding* noundef %13, %struct.term* noundef %14)
  br label %17

16:                                               ; preds = %8
  br label %30

17:                                               ; preds = %11
  br label %27

18:                                               ; preds = %5
  %19 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %20 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %21 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %0, i32 noundef %20)
  %22 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %23 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %22)
  %24 = call i32 @unify_MatchReverse(%struct.binding* noundef %0, %struct.term* noundef %19, %struct.binding* noundef %21, %struct.term* noundef %23) #11
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !21

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25, %16
  %.0 = phi i32 [ 0, %25 ], [ 0, %16 ], [ 1, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsIndexVariable(i32 noundef %0) #1 {
  %2 = icmp sgt i32 %0, 2000
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 3001
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_InstanceContext() #2 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

declare dso_local i32 @unify_MatchReverse(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subst_Variation(%struct.binding* noundef %0, %struct.subst* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %14, %2
  %.01 = phi %struct.subst* [ %1, %2 ], [ %15, %14 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %6)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %13, label %8

8:                                                ; preds = %5
  %9 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %10 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %10)
  %12 = call i32 @unify_Variation(%struct.binding* noundef %0, %struct.term* noundef %9, %struct.term* noundef %11) #11
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %8, %5
  br label %17

14:                                               ; preds = %8
  %15 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %3, !llvm.loop !22

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %16 ]
  ret i32 %.0
}

declare dso_local i32 @unify_Variation(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_ComGen(%struct.binding* noundef %0, %struct.subst* nocapture noundef readonly %1, %struct.subst** noundef %2, %struct.subst** noundef %3) #0 {
  store %struct.subst* null, %struct.subst** %3, align 8
  store %struct.subst* null, %struct.subst** %2, align 8
  br label %5

5:                                                ; preds = %55, %4
  %.01 = phi %struct.subst* [ %1, %4 ], [ %54, %55 ]
  %.0 = phi %struct.subst* [ null, %4 ], [ %.3, %55 ]
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %7 = call i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %6)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %14

8:                                                ; preds = %5
  %9 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %10 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %11 = call %struct.term* @term_Copy(%struct.term* noundef %10) #11
  %12 = load %struct.subst*, %struct.subst** %2, align 8
  %13 = call %struct.subst* @subst_Add(i32 noundef %9, %struct.term* noundef %11, %struct.subst* noundef %12)
  store %struct.subst* %13, %struct.subst** %2, align 8
  br label %52

14:                                               ; preds = %5
  %15 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %16 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %15)
  %17 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %18 = call i32 @term_Equal(%struct.term* noundef %16, %struct.term* noundef %17) #11
  %.not3 = icmp eq i32 %18, 0
  br i1 %.not3, label %24, label %19

19:                                               ; preds = %14
  %20 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %21 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %22 = call %struct.term* @term_Copy(%struct.term* noundef %21) #11
  %23 = call %struct.subst* @subst_Add(i32 noundef %20, %struct.term* noundef %22, %struct.subst* noundef %.0)
  br label %51

24:                                               ; preds = %14
  %25 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %26 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %25)
  %27 = call i32 @term_TopSymbol(%struct.term* noundef %26)
  %28 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %29 = call i32 @term_TopSymbol(%struct.term* noundef %28)
  %30 = call i32 @symbol_Equal(i32 noundef %27, i32 noundef %29)
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %31, label %43

31:                                               ; preds = %24
  %32 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %33 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %34 = call %struct.term* @term_Copy(%struct.term* noundef %33) #11
  %35 = load %struct.subst*, %struct.subst** %2, align 8
  %36 = call %struct.subst* @subst_Add(i32 noundef %32, %struct.term* noundef %34, %struct.subst* noundef %35)
  store %struct.subst* %36, %struct.subst** %2, align 8
  %37 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %38 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %39 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %38)
  %40 = call %struct.term* @term_Copy(%struct.term* noundef %39) #11
  %41 = load %struct.subst*, %struct.subst** %3, align 8
  %42 = call %struct.subst* @subst_Add(i32 noundef %37, %struct.term* noundef %40, %struct.subst* noundef %41)
  store %struct.subst* %42, %struct.subst** %3, align 8
  br label %50

43:                                               ; preds = %24
  %44 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %45 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %46 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %45)
  %47 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  %48 = call %struct.term* @unify_ComGenLinear(%struct.binding* noundef %0, %struct.subst** noundef nonnull %3, %struct.term* noundef %46, %struct.subst** noundef nonnull %2, %struct.term* noundef %47) #11
  %49 = call %struct.subst* @subst_Add(i32 noundef %44, %struct.term* noundef %48, %struct.subst* noundef %.0)
  br label %50

50:                                               ; preds = %43, %31
  %.1 = phi %struct.subst* [ %49, %43 ], [ %.0, %31 ]
  br label %51

51:                                               ; preds = %50, %19
  %.2 = phi %struct.subst* [ %23, %19 ], [ %.1, %50 ]
  br label %52

52:                                               ; preds = %51, %8
  %.3 = phi %struct.subst* [ %.2, %51 ], [ %.0, %8 ]
  %53 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  call void @cont_CloseBinding(%struct.binding* noundef %0, i32 noundef %53)
  %54 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %55

55:                                               ; preds = %52
  %56 = call i32 @subst_Exist(%struct.subst* noundef %54)
  %.not2 = icmp eq i32 %56, 0
  br i1 %.not2, label %57, label %5, !llvm.loop !23

57:                                               ; preds = %55
  ret %struct.subst* %.3
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_TopSymbol(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

declare dso_local %struct.term* @unify_ComGenLinear(%struct.binding* noundef, %struct.subst** noundef, %struct.term* noundef, %struct.subst** noundef, %struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_CloseBinding(%struct.binding* nocapture noundef writeonly %0, i32 noundef %1) #6 {
  call void @cont_CloseBindingHelp(%struct.binding* noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @subst_CloseVariables(%struct.binding* nocapture noundef writeonly %0, %struct.subst* noundef readonly %1) #5 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi %struct.subst* [ %1, %2 ], [ %8, %7 ]
  %4 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = call i32 @subst_Dom(%struct.subst* noundef %.0)
  call void @cont_CloseBinding(%struct.binding* noundef %0, i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  br label %3, !llvm.loop !24

9:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_CloseOpenVariables(%struct.subst* noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi %struct.subst* [ %0, %1 ], [ %.1, %11 ]
  %3 = call %struct.binding* @cont_LastBinding()
  %.not = icmp eq %struct.binding* %3, null
  br i1 %.not, label %12, label %4

4:                                                ; preds = %2
  %5 = call i32 @cont_LastIsBound()
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %11, label %6

6:                                                ; preds = %4
  %7 = call i32 @cont_LastBindingSymbol()
  %8 = call %struct.term* @cont_LastBindingTerm()
  %9 = call %struct.term* @term_Copy(%struct.term* noundef %8) #11
  %10 = call %struct.subst* @subst_Add(i32 noundef %7, %struct.term* noundef %9, %struct.subst* noundef %.0)
  br label %11

11:                                               ; preds = %6, %4
  %.1 = phi %struct.subst* [ %10, %6 ], [ %.0, %4 ]
  call void @cont_BackTrackLastBinding()
  br label %2, !llvm.loop !25

12:                                               ; preds = %2
  ret %struct.subst* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_LastBinding() #2 {
  %1 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_LastIsBound() #2 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call i32 @cont_BindingIsBound(%struct.binding* noundef %1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_LastBindingSymbol() #2 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call i32 @cont_BindingSymbol(%struct.binding* noundef %1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @cont_LastBindingTerm() #2 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %1)
  ret %struct.term* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_BackTrackLastBinding() #7 {
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_ExtractUnifier(%struct.binding* noundef readnone %0, %struct.subst** nocapture noundef %1, %struct.binding* noundef readnone %2, %struct.subst** nocapture noundef %3) #0 {
  %5 = call %struct.subst* @subst_Nil()
  store %struct.subst* %5, %struct.subst** %1, align 8
  %6 = call %struct.subst* @subst_Nil()
  store %struct.subst* %6, %struct.subst** %3, align 8
  %7 = call %struct.binding* @cont_LastBinding()
  br label %8

8:                                                ; preds = %30, %4
  %.0 = phi %struct.binding* [ %7, %4 ], [ %31, %30 ]
  %.not = icmp eq %struct.binding* %.0, null
  br i1 %.not, label %32, label %9

9:                                                ; preds = %8
  %10 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %11 = call i32 @cont_IsInContext(%struct.binding* noundef %0, i32 noundef %10, %struct.binding* noundef nonnull %.0)
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %19, label %12

12:                                               ; preds = %9
  %13 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %14 = call %struct.binding* @cont_BindingContext(%struct.binding* noundef nonnull %.0)
  %15 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef nonnull %.0)
  %16 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef %14, %struct.term* noundef %15) #11
  %17 = load %struct.subst*, %struct.subst** %1, align 8
  %18 = call %struct.subst* @subst_Add(i32 noundef %13, %struct.term* noundef %16, %struct.subst* noundef %17)
  store %struct.subst* %18, %struct.subst** %1, align 8
  br label %30

19:                                               ; preds = %9
  %20 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %21 = call i32 @cont_IsInContext(%struct.binding* noundef %2, i32 noundef %20, %struct.binding* noundef nonnull %.0)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %29, label %22

22:                                               ; preds = %19
  %23 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %24 = call %struct.binding* @cont_BindingContext(%struct.binding* noundef nonnull %.0)
  %25 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef nonnull %.0)
  %26 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef %24, %struct.term* noundef %25) #11
  %27 = load %struct.subst*, %struct.subst** %3, align 8
  %28 = call %struct.subst* @subst_Add(i32 noundef %23, %struct.term* noundef %26, %struct.subst* noundef %27)
  store %struct.subst* %28, %struct.subst** %3, align 8
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %12
  %31 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef nonnull %.0)
  br label %8, !llvm.loop !26

32:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @cont_IsInContext(%struct.binding* noundef readnone %0, i32 noundef %1, %struct.binding* noundef readnone %2) #1 {
  %4 = call %struct.binding* @cont_Binding(%struct.binding* noundef %0, i32 noundef %1)
  %5 = icmp eq %struct.binding* %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_BindingSymbol(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

declare dso_local %struct.term* @cont_CopyAndApplyBindings(%struct.binding* noundef, %struct.term* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_BindingContext(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 3
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  ret %struct.binding* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @cont_BindingTerm(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 2
  %3 = load %struct.term*, %struct.term** %2, align 8
  ret %struct.term* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_BindingLink(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 4
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  ret %struct.binding* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_ExtractUnifierCom(%struct.binding* noundef %0, %struct.subst** nocapture noundef %1) #0 {
  %3 = call %struct.subst* @subst_Nil()
  store %struct.subst* %3, %struct.subst** %1, align 8
  %4 = call %struct.binding* @cont_LastBinding()
  br label %5

5:                                                ; preds = %6, %2
  %.0 = phi %struct.binding* [ %4, %2 ], [ %12, %6 ]
  %.not = icmp eq %struct.binding* %.0, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %5
  %7 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %8 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef nonnull %.0)
  %9 = call %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* noundef %0, %struct.term* noundef %8) #11
  %10 = load %struct.subst*, %struct.subst** %1, align 8
  %11 = call %struct.subst* @subst_Add(i32 noundef %7, %struct.term* noundef %9, %struct.subst* noundef %10)
  store %struct.subst* %11, %struct.subst** %1, align 8
  %12 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef nonnull %.0)
  br label %5, !llvm.loop !27

13:                                               ; preds = %5
  ret void
}

declare dso_local %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* noundef, %struct.term* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.subst* @subst_ExtractMatcher() #0 {
  %1 = call %struct.binding* @cont_LastBinding()
  %2 = call %struct.subst* @subst_Nil()
  br label %3

3:                                                ; preds = %8, %0
  %.01 = phi %struct.subst* [ %2, %0 ], [ %7, %8 ]
  %.0 = phi %struct.binding* [ %1, %0 ], [ %9, %8 ]
  %.not = icmp eq %struct.binding* %.0, null
  br i1 %.not, label %10, label %4

4:                                                ; preds = %3
  %5 = call i32 @cont_BindingSymbol(%struct.binding* noundef nonnull %.0)
  %6 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef nonnull %.0)
  %7 = call %struct.subst* @subst_Add(i32 noundef %5, %struct.term* noundef %6, %struct.subst* noundef %.01)
  br label %8

8:                                                ; preds = %4
  %9 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef nonnull %.0)
  br label %3, !llvm.loop !28

10:                                               ; preds = %3
  ret %struct.subst* %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subst_Print(%struct.subst* noundef readonly %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %2)
  br label %4

4:                                                ; preds = %19, %1
  %.0 = phi %struct.subst* [ %0, %1 ], [ %20, %19 ]
  %5 = call i32 @subst_Exist(%struct.subst* noundef %.0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %21, label %6

6:                                                ; preds = %4
  %7 = call i32 @subst_Dom(%struct.subst* noundef %.0)
  call void @symbol_Print(i32 noundef %7) #11
  %8 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  %.not1 = icmp eq %struct.term* %8, null
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %10)
  %12 = call %struct.term* @subst_Cod(%struct.subst* noundef %.0)
  call void @term_PrintPrefix(%struct.term* noundef %12) #11
  br label %13

13:                                               ; preds = %9, %6
  %14 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  %.not2 = icmp eq %struct.subst* %14, null
  br i1 %.not2, label %18, label %15

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %16)
  br label %18

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %18
  %20 = call %struct.subst* @subst_Next(%struct.subst* noundef %.0)
  br label %4, !llvm.loop !29

21:                                               ; preds = %4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %22)
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

declare dso_local void @symbol_Print(i32 noundef) #3

declare dso_local void @term_PrintPrefix(%struct.term* noundef) #3

declare dso_local i8* @memory_Malloc(i32 noundef) #3

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
  call void @free(i8* noundef %52) #11
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
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #2 {
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
declare dso_local void @free(i8* noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #1 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsVariable(i32 noundef %0) #1 {
  %2 = icmp sgt i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* noundef %0) #0 {
  %2 = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* noundef %0, i8* (i8*)* noundef bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*)) #11
  ret %struct.LIST_HELP* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @term_RplacTop(%struct.term* nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 0
  store i32 %1, i32* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* noundef %0) #0 {
  call void @list_DeleteWithElement(%struct.LIST_HELP* noundef %0, void (i8*)* noundef bitcast (void (%struct.term*)* @term_Delete to void (i8*)*)) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @term_RplacArgumentList(%struct.term* nocapture noundef writeonly %0, %struct.LIST_HELP* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #1 {
  %2 = icmp eq %struct.LIST_HELP* %0, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare dso_local %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* noundef, i8* (i8*)* noundef) #3

declare dso_local void @list_DeleteWithElement(%struct.LIST_HELP* noundef, void (i8*)* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_CreateBindingHelp(%struct.binding* noundef %0, i32 noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7 {
  %5 = call %struct.binding* @cont_Binding(%struct.binding* noundef %0, i32 noundef %1)
  store %struct.binding* %5, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* noundef %5, %struct.term* noundef %3)
  %6 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* noundef %6, %struct.binding* noundef %2)
  %7 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %8 = call %struct.binding* @cont_LastBinding()
  call void @cont_SetBindingLink(%struct.binding* noundef %7, %struct.binding* noundef %8)
  %9 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetLastBinding(%struct.binding* noundef %9)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.binding* @cont_Binding(%struct.binding* noundef readnone %0, i32 noundef %1) #1 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3
  ret %struct.binding* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetBindingTerm(%struct.binding* nocapture noundef writeonly %0, %struct.term* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 2
  store %struct.term* %1, %struct.term** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetBindingContext(%struct.binding* nocapture noundef writeonly %0, %struct.binding* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 3
  store %struct.binding* %1, %struct.binding** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetBindingLink(%struct.binding* nocapture noundef writeonly %0, %struct.binding* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 4
  store %struct.binding* %1, %struct.binding** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetLastBinding(%struct.binding* noundef %0) #6 {
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_CloseBindingHelp(%struct.binding* nocapture noundef writeonly %0, i32 noundef %1) #6 {
  call void @cont_SetContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1, %struct.term* noundef null)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetContextBindingTerm(%struct.binding* nocapture noundef writeonly %0, i32 noundef %1, %struct.term* noundef %2) #6 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %4, i32 2
  store %struct.term* %2, %struct.term** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_BindingIsBound(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = call %struct.term* @cont_BindingTerm(%struct.binding* noundef %0)
  %3 = icmp ne %struct.term* %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_BackTrackLastBindingHelp() #7 {
  %1 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %1, %struct.binding** @cont_CURRENTBINDING, align 8
  %2 = call %struct.binding* @cont_BindingLink(%struct.binding* noundef %1)
  call void @cont_SetLastBinding(%struct.binding* noundef %2)
  %3 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* noundef %3, %struct.term* noundef null)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* noundef %4, %struct.binding* noundef null)
  %5 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %6 = call i32 @symbol_Null()
  call void @cont_SetBindingRenaming(%struct.binding* noundef %5, i32 noundef %6)
  %7 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingLink(%struct.binding* noundef %7, %struct.binding* noundef null)
  %8 = load i32, i32* @cont_BINDINGS, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetBindingRenaming(%struct.binding* nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 1
  store i32 %1, i32* %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Null() #1 {
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_subst_ApplyIntern_287194207(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.term*, %struct.term** %_wyvern_arg_addr_, align 8
  %0 = call i32 @term_TopSymbol(%struct.term* noundef %_wyvern_arg_)
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.term* @_wyvern_calleeclone_subst_Term_0144998518(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, %struct.subst* noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %10, %1
  %.01 = phi %struct.subst* [ %0, %1 ], [ %11, %10 ]
  %3 = call i32 @subst_Exist(%struct.subst* noundef %.01)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %12, label %4

4:                                                ; preds = %2
  %5 = call i32 @subst_Dom(%struct.subst* noundef %.01)
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #11
  %6 = call i32 @symbol_Equal(i32 noundef %_wyvern_thunkcall, i32 noundef %5)
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %4
  %8 = call %struct.term* @subst_Cod(%struct.subst* noundef %.01)
  br label %13

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = call %struct.subst* @subst_Next(%struct.subst* noundef %.01)
  br label %2, !llvm.loop !7

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %7
  %.0 = phi %struct.term* [ %8, %7 ], [ null, %12 ]
  ret %struct.term* %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

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
