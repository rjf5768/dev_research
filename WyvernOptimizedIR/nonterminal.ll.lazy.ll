; ModuleID = './nonterminal.ll'
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
  %2 = call i8* @zalloc(i32 noundef 40) #3
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 @fatal(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 noundef 17) #3
  br label %5

5:                                                ; preds = %3, %1
  %6 = load i32, i32* @max_nonterminal, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8* %2, i8** bitcast (%struct.nonterminal** @start to i8**), align 8
  br label %9

9:                                                ; preds = %8, %5
  %10 = bitcast i8* %2 to %struct.nonterminal*
  %11 = bitcast i8* %2 to i8**
  store i8* %0, i8** %11, align 8
  %12 = load i32, i32* @max_nonterminal, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @max_nonterminal, align 4
  %14 = getelementptr inbounds i8, i8* %2, i64 8
  %15 = bitcast i8* %14 to i32*
  store i32 %12, i32* %15, align 8
  %16 = load %struct.list*, %struct.list** @nonterminals, align 8
  %17 = call %struct.list* @newList(i8* noundef %2, %struct.list* noundef %16) #3
  store %struct.list* %17, %struct.list** @nonterminals, align 8
  ret %struct.nonterminal* %10
}

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nonTerminalName(i8* noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %15, %2
  %.01.in = phi %struct.list** [ @nonterminals, %2 ], [ %16, %15 ]
  %.01 = load %struct.list*, %struct.list** %.01.in, align 8
  %.not = icmp eq %struct.list* %.01, null
  br i1 %.not, label %17, label %4

4:                                                ; preds = %3
  %5 = bitcast %struct.list* %.01 to %struct.nonterminal**
  %6 = load %struct.nonterminal*, %struct.nonterminal** %5, align 8
  %7 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %6, i64 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %6, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %12) #3
  br label %18

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.list, %struct.list* %.01, i64 0, i32 1
  br label %3, !llvm.loop !4

17:                                               ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(22) %0, i8* noundef nonnull align 1 dereferenceable(22) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 22, i1 false) #3
  br label %18

18:                                               ; preds = %17, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %17 ]
  ret i32 %.0
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpNonTerminal(%struct.nonterminal* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3, i32 noundef %5) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
