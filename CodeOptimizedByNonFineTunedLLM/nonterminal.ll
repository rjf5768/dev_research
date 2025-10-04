; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/nonterminal.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/nonterminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.list = type { i8*, %struct.list* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_nonterminal = dso_local global [5 x i8] c"$Id$\00", align 1
@max_nonterminal = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [74 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/nonterminal.c\00", align 1
@start = dso_local global %struct.nonterminal* null, align 8
@nonterminals = dso_local global %struct.list* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"(Unknown NonTerminal)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@last_user_nonterminal = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.nonterminal* @newNonTerminal(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nonterminal*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i8* @zalloc(i32 noundef 40)
  %5 = bitcast i8* %4 to %struct.nonterminal*
  store %struct.nonterminal* %5, %struct.nonterminal** %3, align 8
  %6 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  %7 = icmp ne %struct.nonterminal* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i32 @fatal(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 noundef 17)
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ true, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @max_nonterminal, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  store %struct.nonterminal* %17, %struct.nonterminal** @start, align 8
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i8*, i8** %2, align 8
  %20 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  %21 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @max_nonterminal, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @max_nonterminal, align 4
  %24 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  %25 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  %27 = bitcast %struct.nonterminal* %26 to i8*
  %28 = load %struct.list*, %struct.list** @nonterminals, align 8
  %29 = call %struct.list* @newList(i8* noundef %27, %struct.list* noundef %28)
  store %struct.list* %29, %struct.list** @nonterminals, align 8
  %30 = load %struct.nonterminal*, %struct.nonterminal** %3, align 8
  ret %struct.nonterminal* %30
}

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nonTerminalName(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list*, align 8
  %7 = alloca %struct.nonterminal*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.list*, %struct.list** @nonterminals, align 8
  store %struct.list* %8, %struct.list** %6, align 8
  br label %9

9:                                                ; preds = %29, %2
  %10 = load %struct.list*, %struct.list** %6, align 8
  %11 = icmp ne %struct.list* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.list*, %struct.list** %6, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.nonterminal*
  store %struct.nonterminal* %16, %struct.nonterminal** %7, align 8
  %17 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  %18 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  %25 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strcpy(i8* noundef %23, i8* noundef %26)
  store i32 1, i32* %3, align 4
  br label %36

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.list*, %struct.list** %6, align 8
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 1
  %32 = load %struct.list*, %struct.list** %31, align 8
  store %struct.list* %32, %struct.list** %6, align 8
  br label %9, !llvm.loop !4

33:                                               ; preds = %9
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strcpy(i8* noundef %34, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpNonTerminal(%struct.nonterminal* noundef %0) #0 {
  %2 = alloca %struct.nonterminal*, align 8
  store %struct.nonterminal* %0, %struct.nonterminal** %2, align 8
  %3 = load %struct.nonterminal*, %struct.nonterminal** %2, align 8
  %4 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.nonterminal*, %struct.nonterminal** %2, align 8
  %7 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %5, i32 noundef %8)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

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
