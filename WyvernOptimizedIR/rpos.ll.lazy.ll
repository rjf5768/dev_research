; ModuleID = './rpos.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/rpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@ord_PRECEDENCE = external dso_local global i32*, align 8
@symbol_SIGNATURE = external dso_local global %struct.signature**, align 8
@symbol_TYPESTATBITS = external dso_local constant i32, align 4
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4
@cont_INSTANCECONTEXT = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_Equal(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call i32 @term_EqualTopSymbols(%struct.term* noundef %0, %struct.term* noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %36

5:                                                ; preds = %2
  %6 = call i32 @term_IsComplex(%struct.term* noundef %0)
  %.not3 = icmp eq i32 %6, 0
  br i1 %.not3, label %7, label %8

7:                                                ; preds = %5
  br label %36

8:                                                ; preds = %5
  %9 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %10 = call i32 @symbol_HasProperty(i32 noundef %9, i32 noundef 16)
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %16, label %11

11:                                               ; preds = %8
  %12 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %0, %struct.term* noundef %1)
  %13 = call i32 @list_Empty(%struct.LIST_HELP* noundef %12)
  %.not6 = icmp eq i32 %13, 0
  br i1 %.not6, label %15, label %14

14:                                               ; preds = %11
  br label %36

15:                                               ; preds = %11
  call void @list_Delete(%struct.LIST_HELP* noundef %12)
  br label %36

16:                                               ; preds = %8
  %17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  br label %19

19:                                               ; preds = %31, %16
  %.02 = phi %struct.LIST_HELP* [ %17, %16 ], [ %32, %31 ]
  %.01 = phi %struct.LIST_HELP* [ %18, %16 ], [ %33, %31 ]
  %20 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not5 = icmp eq i32 %20, 0
  br i1 %.not5, label %21, label %28

21:                                               ; preds = %19
  %22 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %23 = bitcast i8* %22 to %struct.term*
  %24 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %25 = bitcast i8* %24 to %struct.term*
  %26 = call i32 @rpos_Equal(%struct.term* noundef %23, %struct.term* noundef %25)
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %19
  %29 = phi i1 [ false, %19 ], [ %27, %21 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  %33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %19, !llvm.loop !4

34:                                               ; preds = %28
  %35 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  br label %36

36:                                               ; preds = %34, %15, %14, %7, %4
  %.0 = phi i32 [ 1, %14 ], [ 0, %15 ], [ %35, %34 ], [ 1, %7 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_EqualTopSymbols(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1) #1 {
  %3 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %5 = call i32 @symbol_Equal(i32 noundef %3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsComplex(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %3 = icmp ne %struct.LIST_HELP* %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @symbol_Index(i32 noundef %0)
  %4 = call %struct.signature* @symbol_Signature(i32 noundef %3)
  %5 = getelementptr inbounds %struct.signature, %struct.signature* %4, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_TopSymbol(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %4 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %3) #7
  %5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %6 = call %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* noundef %4, %struct.LIST_HELP* noundef %5, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.term*, %struct.term*)* @rpos_Equal to i32 (i8*, i8*)*)) #7
  ret %struct.LIST_HELP* %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #2 {
  %2 = icmp eq %struct.LIST_HELP* %0, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

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
  br label %2, !llvm.loop !6

6:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_GreaterEqual(%struct.term* noundef %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call i32 @term_IsVariable(%struct.term* noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = call i32 @term_EqualTopSymbols(%struct.term* noundef %0, %struct.term* noundef %1)
  %.not11 = icmp eq i32 %5, 0
  br i1 %.not11, label %8, label %6

6:                                                ; preds = %4
  %7 = call i32 @ord_Equal()
  br label %64

8:                                                ; preds = %4
  %9 = call i32 @ord_Uncomparable()
  br label %64

10:                                               ; preds = %2
  %11 = call i32 @term_IsVariable(%struct.term* noundef %1)
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %10
  %13 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %14 = call i32 @term_ContainsSymbol(%struct.term* noundef %0, i32 noundef %13) #7
  %.not10 = icmp eq i32 %14, 0
  br i1 %.not10, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @ord_GreaterThan()
  br label %64

17:                                               ; preds = %12
  %18 = call i32 @ord_Uncomparable()
  br label %64

19:                                               ; preds = %10
  %20 = call i32 @term_EqualTopSymbols(%struct.term* noundef %0, %struct.term* noundef %1)
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %28, label %21

21:                                               ; preds = %19
  %22 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %23 = call i32 @symbol_HasProperty(i32 noundef %22, i32 noundef 16)
  %.not9 = icmp eq i32 %23, 0
  br i1 %.not9, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @rpos_MulGreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1)
  br label %64

26:                                               ; preds = %21
  %27 = call i32 @rpos_LexGreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1)
  br label %64

28:                                               ; preds = %19
  %29 = load i32*, i32** @ord_PRECEDENCE, align 8
  %30 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %31 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %32 = call i32 @symbol_PrecedenceGreater(i32* noundef %29, i32 noundef %30, i32 noundef %31)
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %48, label %33

33:                                               ; preds = %28
  %34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  br label %35

35:                                               ; preds = %44, %33
  %.01 = phi %struct.LIST_HELP* [ %34, %33 ], [ %45, %44 ]
  %36 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not7 = icmp eq i32 %36, 0
  br i1 %.not7, label %37, label %46

37:                                               ; preds = %35
  %38 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %39 = bitcast i8* %38 to %struct.term*
  %40 = call i32 @rpos_Greater(%struct.term* noundef %0, %struct.term* noundef %39)
  %.not8 = icmp eq i32 %40, 0
  br i1 %.not8, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @ord_Uncomparable()
  br label %64

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %35, !llvm.loop !7

46:                                               ; preds = %35
  %47 = call i32 @ord_GreaterThan()
  br label %64

48:                                               ; preds = %28
  %49 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  br label %50

50:                                               ; preds = %60, %48
  %.1 = phi %struct.LIST_HELP* [ %49, %48 ], [ %61, %60 ]
  %51 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not5 = icmp eq i32 %51, 0
  br i1 %.not5, label %52, label %62

52:                                               ; preds = %50
  %53 = call i8* @list_Car(%struct.LIST_HELP* noundef %.1)
  %54 = bitcast i8* %53 to %struct.term*
  %55 = call i32 @rpos_GreaterEqual(%struct.term* noundef %54, %struct.term* noundef %1)
  %56 = call i32 @ord_IsUncomparable(i32 noundef %55)
  %.not6 = icmp eq i32 %56, 0
  br i1 %.not6, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @ord_GreaterThan()
  br label %64

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.1)
  br label %50, !llvm.loop !8

62:                                               ; preds = %50
  %63 = call i32 @ord_Uncomparable()
  br label %64

64:                                               ; preds = %62, %57, %46, %41, %26, %24, %17, %15, %8, %6
  %.0 = phi i32 [ %7, %6 ], [ %9, %8 ], [ %16, %15 ], [ %18, %17 ], [ %25, %24 ], [ %27, %26 ], [ %42, %41 ], [ %47, %46 ], [ %58, %57 ], [ %63, %62 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsVariable(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = call i32 @symbol_IsVariable(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_Equal() #2 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_Uncomparable() #2 {
  ret i32 0
}

declare dso_local i32 @term_ContainsSymbol(%struct.term* noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_GreaterThan() #2 {
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_MulGreaterEqual(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %0, %struct.term* noundef %1)
  %4 = call i32 @list_Empty(%struct.LIST_HELP* noundef %3)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %2
  %6 = call i32 @ord_Equal()
  br label %37

7:                                                ; preds = %2
  %8 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %1, %struct.term* noundef %0)
  br label %9

9:                                                ; preds = %30, %7
  %.03 = phi %struct.LIST_HELP* [ %8, %7 ], [ %31, %30 ]
  %.01 = phi i32 [ 1, %7 ], [ %.1, %30 ]
  %10 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.03)
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %11, label %13

11:                                               ; preds = %9
  %12 = icmp ne i32 %.01, 0
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i1 [ false, %9 ], [ %12, %11 ]
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %27, %15
  %.02 = phi %struct.LIST_HELP* [ %3, %15 ], [ %28, %27 ]
  %.1 = phi i32 [ 0, %15 ], [ %26, %27 ]
  %17 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not6 = icmp eq i32 %17, 0
  br i1 %.not6, label %18, label %19

18:                                               ; preds = %16
  %.not7 = icmp eq i32 %.1, 0
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i1 [ false, %16 ], [ %.not7, %18 ]
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %23 = bitcast i8* %22 to %struct.term*
  %24 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %25 = bitcast i8* %24 to %struct.term*
  %26 = call i32 @rpos_Greater(%struct.term* noundef %23, %struct.term* noundef %25)
  br label %27

27:                                               ; preds = %21
  %28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %16, !llvm.loop !9

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %.03)
  br label %9, !llvm.loop !10

32:                                               ; preds = %13
  call void @list_Delete(%struct.LIST_HELP* noundef %3)
  %.not5 = icmp eq i32 %.01, 0
  br i1 %.not5, label %35, label %33

33:                                               ; preds = %32
  %34 = call i32 @ord_GreaterThan()
  br label %37

35:                                               ; preds = %32
  %36 = call i32 @ord_Uncomparable()
  br label %37

37:                                               ; preds = %35, %33, %5
  %.0 = phi i32 [ %6, %5 ], [ %34, %33 ], [ %36, %35 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_LexGreaterEqual(%struct.term* noundef %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %4 = call i32 @symbol_HasProperty(i32 noundef %3, i32 noundef 8)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %2
  %6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %7 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %6) #7
  %8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %9 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %8) #7
  br label %13

10:                                               ; preds = %2
  %11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  br label %13

13:                                               ; preds = %10, %5
  %.06 = phi %struct.LIST_HELP* [ %9, %5 ], [ %12, %10 ]
  %.05 = phi %struct.LIST_HELP* [ %7, %5 ], [ %11, %10 ]
  %14 = call i32 @ord_Equal()
  br label %15

15:                                               ; preds = %26, %13
  %.03 = phi i32 [ %14, %13 ], [ %22, %26 ]
  %.01 = phi %struct.LIST_HELP* [ %.05, %13 ], [ %27, %26 ]
  %.0 = phi %struct.LIST_HELP* [ %.06, %13 ], [ %28, %26 ]
  %16 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not12 = icmp eq i32 %16, 0
  br i1 %.not12, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %19 = bitcast i8* %18 to %struct.term*
  %20 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %21 = bitcast i8* %20 to %struct.term*
  %22 = call i32 @rpos_GreaterEqual(%struct.term* noundef %19, %struct.term* noundef %21)
  %23 = call i32 @ord_IsEqual(i32 noundef %22)
  %.not21 = icmp eq i32 %23, 0
  br i1 %.not21, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %15, !llvm.loop !11

.loopexit:                                        ; preds = %15
  br label %29

29:                                               ; preds = %.loopexit, %24
  %.14 = phi i32 [ %22, %24 ], [ %.03, %.loopexit ]
  %30 = call i32 @ord_IsEqual(i32 noundef %.14)
  %.not13 = icmp eq i32 %30, 0
  br i1 %.not13, label %32, label %31

31:                                               ; preds = %29
  br label %76

32:                                               ; preds = %29
  %33 = call i32 @ord_IsGreaterThan(i32 noundef %.14)
  %.not14 = icmp eq i32 %33, 0
  br i1 %.not14, label %55, label %34

34:                                               ; preds = %32
  %35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %36

36:                                               ; preds = %46, %34
  %.1 = phi %struct.LIST_HELP* [ %35, %34 ], [ %47, %46 ]
  %37 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not19 = icmp eq i32 %37, 0
  br i1 %.not19, label %38, label %43

38:                                               ; preds = %36
  %39 = call i8* @list_Car(%struct.LIST_HELP* noundef %.1)
  %40 = bitcast i8* %39 to %struct.term*
  %41 = call i32 @rpos_Greater(%struct.term* noundef %0, %struct.term* noundef %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i1 [ false, %36 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.1)
  br label %36, !llvm.loop !12

48:                                               ; preds = %43
  %49 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not20 = icmp eq i32 %49, 0
  br i1 %.not20, label %52, label %50

50:                                               ; preds = %48
  %51 = call i32 @ord_GreaterThan()
  br label %54

52:                                               ; preds = %48
  %53 = call i32 @ord_Uncomparable()
  br label %54

54:                                               ; preds = %52, %50
  %.2 = phi i32 [ %51, %50 ], [ %53, %52 ]
  br label %75

55:                                               ; preds = %32
  %56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %57 = call i32 @ord_Uncomparable()
  br label %58

58:                                               ; preds = %72, %55
  %.3 = phi i32 [ %57, %55 ], [ %.4, %72 ]
  %.12 = phi %struct.LIST_HELP* [ %56, %55 ], [ %73, %72 ]
  %59 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.12)
  %.not15 = icmp eq i32 %59, 0
  br i1 %.not15, label %60, label %62

60:                                               ; preds = %58
  %61 = call i32 @ord_IsGreaterThan(i32 noundef %.3)
  %.not16 = icmp eq i32 %61, 0
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i1 [ false, %58 ], [ %.not16, %60 ]
  br i1 %63, label %64, label %74

64:                                               ; preds = %62
  %65 = call i8* @list_Car(%struct.LIST_HELP* noundef %.12)
  %66 = bitcast i8* %65 to %struct.term*
  %67 = call i32 @rpos_GreaterEqual(%struct.term* noundef %66, %struct.term* noundef %1)
  %68 = call i32 @ord_IsUncomparable(i32 noundef %67)
  %.not18 = icmp eq i32 %68, 0
  br i1 %.not18, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @ord_GreaterThan()
  br label %71

71:                                               ; preds = %69, %64
  %.4 = phi i32 [ %.3, %64 ], [ %70, %69 ]
  br label %72

72:                                               ; preds = %71
  %73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.12)
  br label %58, !llvm.loop !13

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %54
  %.5 = phi i32 [ %.2, %54 ], [ %.3, %74 ]
  br label %76

76:                                               ; preds = %75, %31
  %.6 = phi i32 [ %.14, %31 ], [ %.5, %75 ]
  %77 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %78 = call i32 @symbol_HasProperty(i32 noundef %77, i32 noundef 8)
  %.not17 = icmp eq i32 %78, 0
  br i1 %.not17, label %80, label %79

79:                                               ; preds = %76
  call void @list_Delete(%struct.LIST_HELP* noundef %.05)
  call void @list_Delete(%struct.LIST_HELP* noundef %.06)
  br label %80

80:                                               ; preds = %79, %76
  ret i32 %.6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_PrecedenceGreater(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1)
  %5 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %2)
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_Greater(%struct.term* noundef %0, %struct.term* nocapture noundef readonly %1) #0 {
  %3 = call i32 @rpos_GreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1)
  %4 = call i32 @ord_IsGreaterThan(i32 noundef %3)
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_IsUncomparable(i32 noundef %0) #2 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = call i32 @rpos_GreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1)
  %4 = call i32 @ord_IsUncomparable(i32 noundef %3)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  br label %11

6:                                                ; preds = %2
  %7 = call i32 @rpos_Greater(%struct.term* noundef %1, %struct.term* noundef %0)
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %10, label %8

8:                                                ; preds = %6
  %9 = call i32 @ord_SmallerThan()
  br label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %8, %5
  %.0 = phi i32 [ %9, %8 ], [ 0, %10 ], [ %3, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_SmallerThan() #2 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.binding* %2, %struct.binding** %6, align 8
  %7 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %1)
  %8 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %3)
  %9 = call i32 @term_EqualTopSymbols(%struct.term* noundef %7, %struct.term* noundef %8)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %4
  br label %46

11:                                               ; preds = %4
  %12 = call i32 @term_IsComplex(%struct.term* noundef %7)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %11
  br label %46

14:                                               ; preds = %11
  %15 = call i32 @term_TopSymbol(%struct.term* noundef %7)
  %16 = call i32 @symbol_HasProperty(i32 noundef %15, i32 noundef 16)
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %24, label %17

17:                                               ; preds = %14
  %18 = load %struct.binding*, %struct.binding** %5, align 8
  %19 = load %struct.binding*, %struct.binding** %6, align 8
  %20 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %18, %struct.term* noundef %7, %struct.binding* noundef %19, %struct.term* noundef %8)
  %21 = call i32 @list_Empty(%struct.LIST_HELP* noundef %20)
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %17
  br label %46

23:                                               ; preds = %17
  call void @list_Delete(%struct.LIST_HELP* noundef %20)
  br label %46

24:                                               ; preds = %14
  %25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %7)
  %26 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %8)
  br label %27

27:                                               ; preds = %41, %24
  %.02 = phi %struct.LIST_HELP* [ %26, %24 ], [ %43, %41 ]
  %.01 = phi %struct.LIST_HELP* [ %25, %24 ], [ %42, %41 ]
  %28 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not5 = icmp eq i32 %28, 0
  br i1 %.not5, label %29, label %38

29:                                               ; preds = %27
  %30 = load %struct.binding*, %struct.binding** %5, align 8
  %31 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %32 = bitcast i8* %31 to %struct.term*
  %33 = load %struct.binding*, %struct.binding** %6, align 8
  %34 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %35 = bitcast i8* %34 to %struct.term*
  %36 = call i32 @rpos_ContEqual(%struct.binding* noundef %30, %struct.term* noundef %32, %struct.binding* noundef %33, %struct.term* noundef %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %29, %27
  %39 = phi i1 [ false, %27 ], [ %37, %29 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %27, !llvm.loop !14

44:                                               ; preds = %38
  %45 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  br label %46

46:                                               ; preds = %44, %23, %22, %13, %10
  %.0 = phi i32 [ 1, %22 ], [ 0, %23 ], [ %45, %44 ], [ 1, %13 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** nocapture noundef %0, %struct.term* noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %20, %2
  %.01 = phi %struct.term* [ %1, %2 ], [ %18, %20 ]
  %4 = call i32 @term_IsVariable(%struct.term* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = load %struct.binding*, %struct.binding** %0, align 8
  %7 = call %struct.binding* @cont_InstanceContext()
  %8 = icmp ne %struct.binding* %6, %7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i1 [ false, %3 ], [ %8, %5 ]
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = call i32 @term_TopSymbol(%struct.term* noundef %.01)
  %13 = load %struct.binding*, %struct.binding** %0, align 8
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %13, i32 noundef %12)
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.binding*, %struct.binding** %0, align 8
  %17 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %16, i32 noundef %12)
  %18 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %16, i32 noundef %12)
  store %struct.binding* %17, %struct.binding** %0, align 8
  br label %20

19:                                               ; preds = %11
  br label %22

20:                                               ; preds = %15
  br label %3, !llvm.loop !15

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %19
  ret %struct.term* %.01
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %0, %struct.term* nocapture noundef readonly %1, %struct.binding* noundef %2, %struct.term* nocapture noundef readonly %3) #0 {
  %5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %6 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %5) #7
  %7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %3)
  br label %8

8:                                                ; preds = %26, %4
  %.0 = phi %struct.LIST_HELP* [ %7, %4 ], [ %27, %26 ]
  %9 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %28

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %23, %10
  %.01 = phi %struct.LIST_HELP* [ %6, %10 ], [ %24, %23 ]
  %12 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %.not4 = icmp eq i8* %14, null
  br i1 %.not4, label %22, label %15

15:                                               ; preds = %13
  %16 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %17 = bitcast i8* %16 to %struct.term*
  %18 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %19 = bitcast i8* %18 to %struct.term*
  %20 = call i32 @rpos_ContEqual(%struct.binding* noundef %0, %struct.term* noundef %17, %struct.binding* noundef %2, %struct.term* noundef %19)
  %.not5 = icmp eq i32 %20, 0
  br i1 %.not5, label %22, label %21

21:                                               ; preds = %15
  call void @list_Rplaca(%struct.LIST_HELP* noundef %.01, i8* noundef null)
  br label %25

22:                                               ; preds = %15, %13
  br label %23

23:                                               ; preds = %22
  %24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %11, !llvm.loop !16

.loopexit:                                        ; preds = %11
  br label %25

25:                                               ; preds = %.loopexit, %21
  br label %26

26:                                               ; preds = %25
  %27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %8, !llvm.loop !17

28:                                               ; preds = %8
  %29 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* noundef %6, i8* noundef null) #7
  ret %struct.LIST_HELP* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.binding* %2, %struct.binding** %6, align 8
  %7 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %1)
  %8 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %3)
  %9 = call i32 @term_IsVariable(%struct.term* noundef %7)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %16, label %10

10:                                               ; preds = %4
  %11 = call i32 @term_EqualTopSymbols(%struct.term* noundef %7, %struct.term* noundef %8)
  %.not11 = icmp eq i32 %11, 0
  br i1 %.not11, label %14, label %12

12:                                               ; preds = %10
  %13 = call i32 @ord_Equal()
  br label %79

14:                                               ; preds = %10
  %15 = call i32 @ord_Uncomparable()
  br label %79

16:                                               ; preds = %4
  %17 = call i32 @term_IsVariable(%struct.term* noundef %8)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %26, label %18

18:                                               ; preds = %16
  %19 = load %struct.binding*, %struct.binding** %5, align 8
  %20 = call i32 @term_TopSymbol(%struct.term* noundef %8)
  %21 = call i32 @cont_TermContainsSymbol(%struct.binding* noundef %19, %struct.term* noundef %7, i32 noundef %20) #7
  %.not10 = icmp eq i32 %21, 0
  br i1 %.not10, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @ord_GreaterThan()
  br label %79

24:                                               ; preds = %18
  %25 = call i32 @ord_Uncomparable()
  br label %79

26:                                               ; preds = %16
  %27 = call i32 @term_EqualTopSymbols(%struct.term* noundef %7, %struct.term* noundef %8)
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %39, label %28

28:                                               ; preds = %26
  %29 = call i32 @term_TopSymbol(%struct.term* noundef %7)
  %30 = call i32 @symbol_HasProperty(i32 noundef %29, i32 noundef 16)
  %.not9 = icmp eq i32 %30, 0
  br i1 %.not9, label %35, label %31

31:                                               ; preds = %28
  %32 = load %struct.binding*, %struct.binding** %5, align 8
  %33 = load %struct.binding*, %struct.binding** %6, align 8
  %34 = call i32 @rpos_ContMulGreaterEqual(%struct.binding* noundef %32, %struct.term* noundef %7, %struct.binding* noundef %33, %struct.term* noundef %8)
  br label %79

35:                                               ; preds = %28
  %36 = load %struct.binding*, %struct.binding** %5, align 8
  %37 = load %struct.binding*, %struct.binding** %6, align 8
  %38 = call i32 @rpos_ContLexGreaterEqual(%struct.binding* noundef %36, %struct.term* noundef %7, %struct.binding* noundef %37, %struct.term* noundef %8)
  br label %79

39:                                               ; preds = %26
  %40 = load i32*, i32** @ord_PRECEDENCE, align 8
  %41 = call i32 @term_TopSymbol(%struct.term* noundef %7)
  %42 = call i32 @term_TopSymbol(%struct.term* noundef %8)
  %43 = call i32 @symbol_PrecedenceGreater(i32* noundef %40, i32 noundef %41, i32 noundef %42)
  %.not4 = icmp eq i32 %43, 0
  br i1 %.not4, label %61, label %44

44:                                               ; preds = %39
  %45 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %8)
  br label %46

46:                                               ; preds = %57, %44
  %.01 = phi %struct.LIST_HELP* [ %45, %44 ], [ %58, %57 ]
  %47 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not7 = icmp eq i32 %47, 0
  br i1 %.not7, label %48, label %59

48:                                               ; preds = %46
  %49 = load %struct.binding*, %struct.binding** %5, align 8
  %50 = load %struct.binding*, %struct.binding** %6, align 8
  %51 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %52 = bitcast i8* %51 to %struct.term*
  %53 = call i32 @rpos_ContGreater(%struct.binding* noundef %49, %struct.term* noundef %7, %struct.binding* noundef %50, %struct.term* noundef %52)
  %.not8 = icmp eq i32 %53, 0
  br i1 %.not8, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @ord_Uncomparable()
  br label %79

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %46, !llvm.loop !18

59:                                               ; preds = %46
  %60 = call i32 @ord_GreaterThan()
  br label %79

61:                                               ; preds = %39
  %62 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %7)
  br label %63

63:                                               ; preds = %75, %61
  %.1 = phi %struct.LIST_HELP* [ %62, %61 ], [ %76, %75 ]
  %64 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not5 = icmp eq i32 %64, 0
  br i1 %.not5, label %65, label %77

65:                                               ; preds = %63
  %66 = load %struct.binding*, %struct.binding** %5, align 8
  %67 = call i8* @list_Car(%struct.LIST_HELP* noundef %.1)
  %68 = bitcast i8* %67 to %struct.term*
  %69 = load %struct.binding*, %struct.binding** %6, align 8
  %70 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %66, %struct.term* noundef %68, %struct.binding* noundef %69, %struct.term* noundef %8)
  %71 = call i32 @ord_IsUncomparable(i32 noundef %70)
  %.not6 = icmp eq i32 %71, 0
  br i1 %.not6, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @ord_GreaterThan()
  br label %79

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.1)
  br label %63, !llvm.loop !19

77:                                               ; preds = %63
  %78 = call i32 @ord_Uncomparable()
  br label %79

79:                                               ; preds = %77, %72, %59, %54, %35, %31, %24, %22, %14, %12
  %.0 = phi i32 [ %13, %12 ], [ %15, %14 ], [ %23, %22 ], [ %25, %24 ], [ %34, %31 ], [ %38, %35 ], [ %55, %54 ], [ %60, %59 ], [ %73, %72 ], [ %78, %77 ]
  ret i32 %.0
}

declare dso_local i32 @cont_TermContainsSymbol(%struct.binding* noundef, %struct.term* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContMulGreaterEqual(%struct.binding* noundef %0, %struct.term* nocapture noundef readonly %1, %struct.binding* noundef %2, %struct.term* nocapture noundef readonly %3) #0 {
  %5 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3)
  %6 = call i32 @list_Empty(%struct.LIST_HELP* noundef %5)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %4
  %8 = call i32 @ord_Equal()
  br label %39

9:                                                ; preds = %4
  %10 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %2, %struct.term* noundef %3, %struct.binding* noundef %0, %struct.term* noundef %1)
  br label %11

11:                                               ; preds = %32, %9
  %.03 = phi %struct.LIST_HELP* [ %10, %9 ], [ %33, %32 ]
  %.01 = phi i32 [ 1, %9 ], [ %.1, %32 ]
  %12 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.03)
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %13, label %15

13:                                               ; preds = %11
  %14 = icmp ne i32 %.01, 0
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i1 [ false, %11 ], [ %14, %13 ]
  br i1 %16, label %17, label %34

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %29, %17
  %.02 = phi %struct.LIST_HELP* [ %5, %17 ], [ %30, %29 ]
  %.1 = phi i32 [ 0, %17 ], [ %28, %29 ]
  %19 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not6 = icmp eq i32 %19, 0
  br i1 %.not6, label %20, label %21

20:                                               ; preds = %18
  %.not7 = icmp eq i32 %.1, 0
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i1 [ false, %18 ], [ %.not7, %20 ]
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %25 = bitcast i8* %24 to %struct.term*
  %26 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %27 = bitcast i8* %26 to %struct.term*
  %28 = call i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %25, %struct.binding* noundef %2, %struct.term* noundef %27)
  br label %29

29:                                               ; preds = %23
  %30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %18, !llvm.loop !20

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %.03)
  br label %11, !llvm.loop !21

34:                                               ; preds = %15
  call void @list_Delete(%struct.LIST_HELP* noundef %5)
  %.not5 = icmp eq i32 %.01, 0
  br i1 %.not5, label %37, label %35

35:                                               ; preds = %34
  %36 = call i32 @ord_GreaterThan()
  br label %39

37:                                               ; preds = %34
  %38 = call i32 @ord_Uncomparable()
  br label %39

39:                                               ; preds = %37, %35, %7
  %.0 = phi i32 [ %8, %7 ], [ %36, %35 ], [ %38, %37 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContLexGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %6 = call i32 @symbol_HasProperty(i32 noundef %5, i32 noundef 8)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %12, label %7

7:                                                ; preds = %4
  %8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %9 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %8) #7
  %10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %3)
  %11 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %10) #7
  br label %15

12:                                               ; preds = %4
  %13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %3)
  br label %15

15:                                               ; preds = %12, %7
  %.04 = phi %struct.LIST_HELP* [ %9, %7 ], [ %13, %12 ]
  %.03 = phi %struct.LIST_HELP* [ %11, %7 ], [ %14, %12 ]
  %16 = call i32 @ord_Equal()
  br label %17

17:                                               ; preds = %28, %15
  %.05 = phi i32 [ %16, %15 ], [ %24, %28 ]
  %.01 = phi %struct.LIST_HELP* [ %.04, %15 ], [ %29, %28 ]
  %.0 = phi %struct.LIST_HELP* [ %.03, %15 ], [ %30, %28 ]
  %18 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not12 = icmp eq i32 %18, 0
  br i1 %.not12, label %19, label %.loopexit

19:                                               ; preds = %17
  %20 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %21 = bitcast i8* %20 to %struct.term*
  %22 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %23 = bitcast i8* %22 to %struct.term*
  %24 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %21, %struct.binding* noundef %2, %struct.term* noundef %23)
  %25 = call i32 @ord_IsEqual(i32 noundef %24)
  %.not21 = icmp eq i32 %25, 0
  br i1 %.not21, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %17, !llvm.loop !22

.loopexit:                                        ; preds = %17
  br label %31

31:                                               ; preds = %.loopexit, %26
  %.16 = phi i32 [ %24, %26 ], [ %.05, %.loopexit ]
  %32 = call i32 @ord_IsEqual(i32 noundef %.16)
  %.not13 = icmp eq i32 %32, 0
  br i1 %.not13, label %34, label %33

33:                                               ; preds = %31
  br label %78

34:                                               ; preds = %31
  %35 = call i32 @ord_IsGreaterThan(i32 noundef %.16)
  %.not14 = icmp eq i32 %35, 0
  br i1 %.not14, label %57, label %36

36:                                               ; preds = %34
  %37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %38

38:                                               ; preds = %48, %36
  %.1 = phi %struct.LIST_HELP* [ %37, %36 ], [ %49, %48 ]
  %39 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not19 = icmp eq i32 %39, 0
  br i1 %.not19, label %40, label %45

40:                                               ; preds = %38
  %41 = call i8* @list_Car(%struct.LIST_HELP* noundef %.1)
  %42 = bitcast i8* %41 to %struct.term*
  %43 = call i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i1 [ false, %38 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.1)
  br label %38, !llvm.loop !23

50:                                               ; preds = %45
  %51 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.1)
  %.not20 = icmp eq i32 %51, 0
  br i1 %.not20, label %54, label %52

52:                                               ; preds = %50
  %53 = call i32 @ord_GreaterThan()
  br label %56

54:                                               ; preds = %50
  %55 = call i32 @ord_Uncomparable()
  br label %56

56:                                               ; preds = %54, %52
  %.2 = phi i32 [ %53, %52 ], [ %55, %54 ]
  br label %77

57:                                               ; preds = %34
  %58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %59 = call i32 @ord_Uncomparable()
  br label %60

60:                                               ; preds = %74, %57
  %.3 = phi i32 [ %59, %57 ], [ %.4, %74 ]
  %.12 = phi %struct.LIST_HELP* [ %58, %57 ], [ %75, %74 ]
  %61 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.12)
  %.not15 = icmp eq i32 %61, 0
  br i1 %.not15, label %62, label %64

62:                                               ; preds = %60
  %63 = call i32 @ord_IsGreaterThan(i32 noundef %.3)
  %.not16 = icmp eq i32 %63, 0
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i1 [ false, %60 ], [ %.not16, %62 ]
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = call i8* @list_Car(%struct.LIST_HELP* noundef %.12)
  %68 = bitcast i8* %67 to %struct.term*
  %69 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %68, %struct.binding* noundef %2, %struct.term* noundef %3)
  %70 = call i32 @ord_IsUncomparable(i32 noundef %69)
  %.not18 = icmp eq i32 %70, 0
  br i1 %.not18, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @ord_GreaterThan()
  br label %73

73:                                               ; preds = %71, %66
  %.4 = phi i32 [ %.3, %66 ], [ %72, %71 ]
  br label %74

74:                                               ; preds = %73
  %75 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.12)
  br label %60, !llvm.loop !24

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %56
  %.5 = phi i32 [ %.2, %56 ], [ %.3, %76 ]
  br label %78

78:                                               ; preds = %77, %33
  %.6 = phi i32 [ %.16, %33 ], [ %.5, %77 ]
  %79 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %80 = call i32 @symbol_HasProperty(i32 noundef %79, i32 noundef 8)
  %.not17 = icmp eq i32 %80, 0
  br i1 %.not17, label %82, label %81

81:                                               ; preds = %78
  call void @list_Delete(%struct.LIST_HELP* noundef %.04)
  call void @list_Delete(%struct.LIST_HELP* noundef %.03)
  br label %82

82:                                               ; preds = %81, %78
  ret i32 %.6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3)
  %6 = call i32 @ord_IsGreaterThan(i32 noundef %5)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.binding* %2, %struct.binding** %6, align 8
  %7 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %1)
  %8 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %3)
  %9 = load %struct.binding*, %struct.binding** %5, align 8
  %10 = load %struct.binding*, %struct.binding** %6, align 8
  %11 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %9, %struct.term* noundef %7, %struct.binding* noundef %10, %struct.term* noundef %8)
  %12 = call i32 @ord_IsUncomparable(i32 noundef %11)
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %14

13:                                               ; preds = %4
  br label %21

14:                                               ; preds = %4
  %15 = load %struct.binding*, %struct.binding** %6, align 8
  %16 = load %struct.binding*, %struct.binding** %5, align 8
  %17 = call i32 @rpos_ContGreater(%struct.binding* noundef %15, %struct.term* noundef %8, %struct.binding* noundef %16, %struct.term* noundef %7)
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 @ord_SmallerThan()
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %18, %13
  %.0 = phi i32 [ %19, %18 ], [ 0, %20 ], [ %11, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #1 {
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %3
  %5 = load %struct.signature*, %struct.signature** %4, align 8
  ret %struct.signature* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Index(i32 noundef %0) #2 {
  %2 = sub nsw i32 0, %0
  %3 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %4 = ashr i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckNoVariable(i32 noundef %0) #2 {
  ret void
}

declare dso_local %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef) #3

declare dso_local %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* noundef, %struct.LIST_HELP* noundef, i32 (i8*, i8*)* noundef) #3

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
  call void @free(i8* noundef %52) #7
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
declare dso_local void @free(i8* noundef) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #2 {
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
define internal i32 @symbol_IsVariable(i32 noundef %0) #2 {
  %2 = icmp sgt i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %0) #0 {
  %2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0)
  call void @list_Free(%struct.LIST_HELP* noundef %0)
  ret %struct.LIST_HELP* %2
}

declare dso_local %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_IsEqual(i32 noundef %0) #2 {
  %2 = icmp eq i32 %0, 2
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_IsGreaterThan(i32 noundef %0) #2 {
  %2 = icmp eq i32 %0, 3
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_Ordering(i32* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = call i32 @symbol_Index(i32 noundef %1)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_InstanceContext() #1 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_VarIsBound(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1)
  %4 = icmp ne %struct.term* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 3
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 2
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @list_Rplaca(%struct.LIST_HELP* nocapture noundef writeonly %0, i8* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  store i8* %1, i8** %3, align 8
  ret void
}

declare dso_local %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
