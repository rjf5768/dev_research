; ModuleID = './condensing.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/condensing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }

@vec_MAX = external dso_local global i32, align 4
@vec_VECTOR = external dso_local global [10000 x i8*], align 16
@cont_BINDINGS = external dso_local global i32, align 4
@cont_STACK = external dso_local global [1000 x i32], align 16
@cont_STACKPOINTER = external dso_local global i32, align 4
@cont_LEFTCONTEXT = external dso_local global %struct.binding*, align 8
@cont_CURRENTBINDING = external dso_local global %struct.binding*, align 8
@cont_LASTBINDING = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP* noundef %0) #0 {
  %2 = call %struct.LIST_HELP* @list_Nil()
  %3 = call i32 @vec_ActMax()
  br label %4

4:                                                ; preds = %10, %1
  %.02 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %5 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  %6 = icmp slt i32 %.02, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = zext i32 %.02 to i64
  %9 = inttoptr i64 %8 to i8*
  call void @vec_Push(i8* noundef %9)
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  %13 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %0)
  br label %14

14:                                               ; preds = %67, %12
  %.01.in = phi i32 [ %13, %12 ], [ %.01, %67 ]
  %.0 = phi %struct.LIST_HELP* [ %2, %12 ], [ %.1, %67 ]
  %.01 = add nsw i32 %.01.in, -1
  %15 = icmp sgt i32 %.01.in, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %64, %16
  %.13 = phi i32 [ %3, %16 ], [ %65, %64 ]
  %.1 = phi %struct.LIST_HELP* [ %.0, %16 ], [ %.4, %64 ]
  %18 = call i32 @vec_ActMax()
  %19 = icmp slt i32 %.13, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = call i8* @vec_GetNth(i32 noundef %.13)
  %22 = ptrtoint i8* %21 to i64
  %23 = trunc i64 %22 to i32
  %.not = icmp eq i32 %.01, %23
  br i1 %.not, label %63, label %24

24:                                               ; preds = %20
  call void @cont_StartBinding()
  %25 = call %struct.binding* @cont_LeftContext()
  %26 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %.01)
  %27 = call i8* @vec_GetNth(i32 noundef %.13)
  %28 = ptrtoint i8* %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %0, i32 noundef %29)
  %31 = call i32 @unify_Match(%struct.binding* noundef %25, %struct.term* noundef %26, %struct.term* noundef %30) #7
  %.not8 = icmp eq i32 %31, 0
  br i1 %.not8, label %60, label %32

32:                                               ; preds = %24
  %33 = call i32 @cont_BackTrack()
  br label %34

34:                                               ; preds = %47, %32
  %.06 = phi i32 [ %3, %32 ], [ %48, %47 ]
  %35 = call i32 @vec_ActMax()
  %36 = icmp slt i32 %.06, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = call i8* @vec_GetNth(i32 noundef %.06)
  %39 = ptrtoint i8* %38 to i64
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %.01, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i32 @vec_ActMax()
  %44 = add nsw i32 %43, -1
  call void @vec_Swap(i32 noundef %44, i32 noundef %.06) #7
  %45 = call i32 @vec_ActMax()
  br label %46

46:                                               ; preds = %42, %37
  %.17 = phi i32 [ %45, %42 ], [ %.06, %37 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %.17, 1
  br label %34, !llvm.loop !6

49:                                               ; preds = %34
  %50 = call i32 @vec_ActMax()
  %51 = add nsw i32 %50, -1
  %52 = call i32 @subs_IdcRes(%struct.CLAUSE_HELP* noundef %0, i32 noundef %3, i32 noundef %51) #7
  %.not9 = icmp eq i32 %52, 0
  br i1 %.not9, label %57, label %53

53:                                               ; preds = %49
  %54 = sext i32 %.01 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call %struct.LIST_HELP* @list_Cons(i8* noundef %55, %struct.LIST_HELP* noundef %.1)
  call void @vec_Pop()
  br label %57

57:                                               ; preds = %53, %49
  %.2 = phi %struct.LIST_HELP* [ %56, %53 ], [ %.1, %49 ]
  %58 = call i32 @vec_ActMax()
  %59 = add nsw i32 %58, 1
  br label %62

60:                                               ; preds = %24
  %61 = call i32 @cont_BackTrack()
  br label %62

62:                                               ; preds = %60, %57
  %.24 = phi i32 [ %59, %57 ], [ %.13, %60 ]
  %.3 = phi %struct.LIST_HELP* [ %.2, %57 ], [ %.1, %60 ]
  br label %63

63:                                               ; preds = %62, %20
  %.35 = phi i32 [ %.24, %62 ], [ %.13, %20 ]
  %.4 = phi %struct.LIST_HELP* [ %.3, %62 ], [ %.1, %20 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nsw i32 %.35, 1
  br label %17, !llvm.loop !7

66:                                               ; preds = %17
  br label %67

67:                                               ; preds = %66
  br label %14, !llvm.loop !8

68:                                               ; preds = %14
  call void @vec_SetMax(i32 noundef %3)
  ret %struct.LIST_HELP* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.LIST_HELP* @list_Nil() #1 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @vec_ActMax() #2 {
  %1 = load i32, i32* @vec_MAX, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_Length(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #2 {
  %2 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* noundef %0)
  %3 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* noundef %0)
  %4 = add nsw i32 %2, %3
  %5 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* noundef %0)
  %6 = add nsw i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @vec_Push(i8* noundef %0) #3 {
  %2 = load i32, i32* @vec_MAX, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @vec_MAX, align 4
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i64 0, i64 %4
  store i8* %0, i8** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @vec_GetNth(i32 noundef %0) #2 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i64 0, i64 %2
  %4 = load i8*, i8** %3, align 8
  ret i8* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_StartBinding() #3 {
  %1 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 noundef %1)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare dso_local i32 @unify_Match(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_LeftContext() #2 {
  %1 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* noundef %0, i32 noundef %1)
  %4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* noundef %3)
  ret %struct.term* %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @cont_BackTrack() #5 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @cont_BINDINGS, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @cont_BackTrackLastBinding()
  br label %1, !llvm.loop !9

5:                                                ; preds = %1
  %6 = call i32 @cont_StackEmpty(i32 noundef 0)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %9

7:                                                ; preds = %5
  %8 = call i32 @cont_StackPopResult()
  store i32 %8, i32* @cont_BINDINGS, align 4
  br label %9

9:                                                ; preds = %7, %5
  ret i32 0
}

declare dso_local void @vec_Swap(i32 noundef, i32 noundef) #4

declare dso_local i32 @subs_IdcRes(%struct.CLAUSE_HELP* noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = call i8* @memory_Malloc(i32 noundef 16) #7
  %4 = bitcast i8* %3 to %struct.LIST_HELP*
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %0, i8** %6, align 8
  %7 = bitcast i8* %3 to %struct.LIST_HELP**
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %7, align 8
  ret %struct.LIST_HELP* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @vec_Pop() #3 {
  %1 = load i32, i32* @vec_MAX, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @vec_MAX, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @vec_SetMax(i32 noundef %0) #6 {
  store i32 %0, i32* @vec_MAX, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 11
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 12
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 13
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_StackPush(i32 noundef %0) #3 {
  %2 = load i32, i32* @cont_STACKPOINTER, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @cont_STACKPOINTER, align 4
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i64 0, i64 %4
  store i32 %0, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i64 0, i32 4
  %3 = load %struct.term*, %struct.term** %2, align 8
  ret %struct.term* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i64 0, i32 10
  %4 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %3, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %4, i64 %5
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %6, align 8
  ret %struct.LITERAL_HELP* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_BackTrackLastBinding() #3 {
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_StackEmpty(i32 noundef %0) #2 {
  %2 = load i32, i32* @cont_STACKPOINTER, align 4
  %3 = icmp eq i32 %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @cont_StackPopResult() #3 {
  %1 = load i32, i32* @cont_STACKPOINTER, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @cont_STACKPOINTER, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @cont_BackTrackLastBindingHelp() #3 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_LastBinding() #2 {
  %1 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetLastBinding(%struct.binding* noundef %0) #6 {
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_BindingLink(%struct.binding* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 4
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  ret %struct.binding* %3
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
define internal void @cont_SetBindingRenaming(%struct.binding* nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 1
  store i32 %1, i32* %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Null() #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @cont_SetBindingLink(%struct.binding* nocapture noundef writeonly %0, %struct.binding* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 4
  store %struct.binding* %1, %struct.binding** %3, align 8
  ret void
}

declare dso_local i8* @memory_Malloc(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
