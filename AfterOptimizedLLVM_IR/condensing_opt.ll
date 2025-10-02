; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/condensing.c'
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
  %2 = alloca %struct.CLAUSE_HELP*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %2, align 8
  %8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %7, align 8
  %9 = call i32 @vec_ActMax()
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %13 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  call void @vec_Push(i8* noundef %18)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10, !llvm.loop !4

22:                                               ; preds = %10
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %24 = call i32 @clause_Length(%struct.CLAUSE_HELP* noundef %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %99, %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %102

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %95, %29
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vec_ActMax()
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @vec_GetNth(i32 noundef %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %35
  call void @cont_StartBinding()
  %42 = call %struct.binding* @cont_LeftContext()
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %43, i32 noundef %44)
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @vec_GetNth(i32 noundef %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* noundef %46, i32 noundef %49)
  %51 = call i32 @unify_Match(%struct.binding* noundef %42, %struct.term* noundef %45, %struct.term* noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %41
  %54 = call i32 @cont_BackTrack()
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @vec_ActMax()
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @vec_GetNth(i32 noundef %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = call i32 @vec_ActMax()
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %5, align 4
  call void @vec_Swap(i32 noundef %68, i32 noundef %69)
  %70 = call i32 @vec_ActMax()
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %56, !llvm.loop !6

75:                                               ; preds = %56
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @vec_ActMax()
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @subs_IdcRes(%struct.CLAUSE_HELP* noundef %76, i32 noundef %77, i32 noundef %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %87 = call %struct.LIST_HELP* @list_Cons(i8* noundef %85, %struct.LIST_HELP* noundef %86)
  store %struct.LIST_HELP* %87, %struct.LIST_HELP** %7, align 8
  call void @vec_Pop()
  br label %88

88:                                               ; preds = %82, %75
  %89 = call i32 @vec_ActMax()
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %93

91:                                               ; preds = %41
  %92 = call i32 @cont_BackTrack()
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %35
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %31, !llvm.loop !7

98:                                               ; preds = %31
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %6, align 4
  br label %26, !llvm.loop !8

102:                                              ; preds = %26
  %103 = load i32, i32* %3, align 4
  call void @vec_SetMax(i32 noundef %103)
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  ret %struct.LIST_HELP* %104
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #0 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @vec_ActMax() #0 {
  %1 = load i32, i32* @vec_MAX, align 4
  ret i32 %1
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

; Function Attrs: noinline nounwind uwtable
define internal void @vec_Push(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @vec_MAX, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @vec_MAX, align 4
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i64 0, i64 %6
  store i8* %3, i8** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @vec_GetNth(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @cont_StartBinding() #0 {
  %1 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 noundef %1)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare dso_local i32 @unify_Match(%struct.binding* noundef, %struct.term* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %1
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
define internal i32 @cont_BackTrack() #0 {
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
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @cont_StackPopResult()
  store i32 %9, i32* @cont_BINDINGS, align 4
  br label %10

10:                                               ; preds = %8, %5
  ret i32 0
}

declare dso_local void @vec_Swap(i32 noundef, i32 noundef) #1

declare dso_local i32 @subs_IdcRes(%struct.CLAUSE_HELP* noundef, i32 noundef, i32 noundef) #1

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

; Function Attrs: noinline nounwind uwtable
define internal void @vec_Pop() #0 {
  %1 = load i32, i32* @vec_MAX, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @vec_MAX, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @vec_SetMax(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @vec_MAX, align 4
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
define internal void @cont_StackPush(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @cont_STACKPOINTER, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @cont_STACKPOINTER, align 4
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i64 0, i64 %6
  store i32 %3, i32* %7, align 4
  ret void
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
define internal void @cont_BackTrackLastBinding() #0 {
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_StackEmpty(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @cont_STACKPOINTER, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_StackPopResult() #0 {
  %1 = load i32, i32* @cont_STACKPOINTER, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @cont_STACKPOINTER, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
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
define internal %struct.binding* @cont_LastBinding() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %1
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
define internal %struct.binding* @cont_BindingLink(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 4
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
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

declare dso_local i8* @memory_Malloc(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
