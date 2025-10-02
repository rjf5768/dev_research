; ModuleID = './burs.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/burs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { %struct.list*, %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_burs = dso_local global [5 x i8] c"$Id$\00", align 1
@globalQ = external dso_local global %struct.queue*, align 8
@globalMap = external dso_local global %struct.mapping*, align 8
@errorState = dso_local global %struct.item_set* null, align 8
@leaves = external dso_local global %struct.list*, align 8
@operators = external dso_local global %struct.list*, align 8
@.str = private unnamed_addr constant [67 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/burs.c\00", align 1
@rules = external dso_local global %struct.list*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @build() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.queue* @newQ() #3
  store %struct.queue* %2, %struct.queue** @globalQ, align 8
  %3 = call %struct.mapping* @newMapping(i32 noundef 32768) #3
  store %struct.mapping* %3, %struct.mapping** @globalMap, align 8
  %4 = call %struct.item_set* @newItem_Set(i16* noundef null) #3
  %5 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %6 = call %struct.item_set* @encode(%struct.mapping* noundef %5, %struct.item_set* noundef %4, i32* noundef nonnull %1) #3
  store %struct.item_set* %6, %struct.item_set** @errorState, align 8
  %7 = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i64 0, i32 6
  %8 = load %struct.item*, %struct.item** %7, align 8
  %9 = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i64 0, i32 7
  store %struct.item* %8, %struct.item** %9, align 8
  %10 = load %struct.queue*, %struct.queue** @globalQ, align 8
  call void @addQ(%struct.queue* noundef %10, %struct.item_set* noundef %4) #3
  %11 = load %struct.list*, %struct.list** @leaves, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.operator*)* @doLeaf to i8* (i8*)*), %struct.list* noundef %11) #3
  %12 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %13 = call %struct.item_set* @popQ(%struct.queue* noundef %12) #3
  br label %14

14:                                               ; preds = %25, %0
  %.01 = phi %struct.item_set* [ %13, %0 ], [ %27, %25 ]
  %.not = icmp eq %struct.item_set* %.01, null
  br i1 %.not, label %28, label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %22, %15
  %.0.in = phi %struct.list** [ @operators, %15 ], [ %23, %22 ]
  %.0 = load %struct.list*, %struct.list** %.0.in, align 8
  %.not2 = icmp eq %struct.list* %.0, null
  br i1 %.not2, label %24, label %17

17:                                               ; preds = %16
  %18 = bitcast %struct.list* %.0 to %struct.operator**
  %19 = load %struct.operator*, %struct.operator** %18, align 8
  %20 = getelementptr inbounds %struct.operator, %struct.operator* %19, i64 0, i32 6
  %21 = load %struct.table*, %struct.table** %20, align 8
  call void @addToTable(%struct.table* noundef %21, %struct.item_set* noundef nonnull %.01) #3
  br label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  br label %16, !llvm.loop !4

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %27 = call %struct.item_set* @popQ(%struct.queue* noundef %26) #3
  br label %14, !llvm.loop !6

28:                                               ; preds = %14
  ret void
}

declare dso_local %struct.queue* @newQ() #1

declare dso_local %struct.mapping* @newMapping(i32 noundef) #1

declare dso_local %struct.item_set* @newItem_Set(i16* noundef) #1

declare dso_local %struct.item_set* @encode(%struct.mapping* noundef, %struct.item_set* noundef, i32* noundef) #1

declare dso_local void @addQ(%struct.queue* noundef, %struct.item_set* noundef) #1

declare dso_local void @foreachList(i8* (i8*)* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doLeaf(%struct.operator* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 5
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @fatal(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 noundef 17) #3
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 6
  %10 = load %struct.table*, %struct.table** %9, align 8
  %11 = getelementptr inbounds %struct.table, %struct.table* %10, i64 0, i32 2
  %12 = load i16*, i16** %11, align 8
  %13 = call %struct.item_set* @newItem_Set(i16* noundef %12) #3
  br label %14

14:                                               ; preds = %65, %8
  %.0.in = phi %struct.list** [ @rules, %8 ], [ %66, %65 ]
  %.0 = load %struct.list*, %struct.list** %.0.in, align 8
  %.not = icmp eq %struct.list* %.0, null
  br i1 %.not, label %67, label %15

15:                                               ; preds = %14
  %16 = bitcast %struct.list* %.0 to %struct.rule**
  %17 = load %struct.rule*, %struct.rule** %16, align 8
  %18 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 5
  %19 = load %struct.pattern*, %struct.pattern** %18, align 8
  %20 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i64 0, i32 1
  %21 = load %struct.operator*, %struct.operator** %20, align 8
  %22 = icmp eq %struct.operator* %21, %0
  br i1 %22, label %23, label %64

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i64 0, i32 6
  %25 = load %struct.item*, %struct.item** %24, align 8
  %26 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 4
  %27 = load %struct.nonterminal*, %struct.nonterminal** %26, align 8
  %28 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %27, i64 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.item, %struct.item* %25, i64 %30, i32 1
  %32 = load %struct.rule*, %struct.rule** %31, align 8
  %.not2 = icmp eq %struct.rule* %32, null
  br i1 %.not2, label %44, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 0, i64 0
  %35 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i64 0, i32 6
  %36 = load %struct.item*, %struct.item** %35, align 8
  %37 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 4
  %38 = load %struct.nonterminal*, %struct.nonterminal** %37, align 8
  %39 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %38, i64 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.item, %struct.item* %36, i64 %41, i32 0, i64 0
  %43 = icmp ult i16* %34, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %33, %23
  %45 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i64 0, i32 6
  %46 = load %struct.item*, %struct.item** %45, align 8
  %47 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 4
  %48 = load %struct.nonterminal*, %struct.nonterminal** %47, align 8
  %49 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %48, i64 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.item, %struct.item* %46, i64 %51, i32 1
  store %struct.rule* %17, %struct.rule** %52, align 8
  %53 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i64 0, i32 6
  %54 = load %struct.item*, %struct.item** %53, align 8
  %55 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 4
  %56 = load %struct.nonterminal*, %struct.nonterminal** %55, align 8
  %57 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %56, i64 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.item, %struct.item* %54, i64 %59, i32 0, i64 0
  %61 = getelementptr inbounds %struct.rule, %struct.rule* %17, i64 0, i32 0, i64 0
  call void @ASSIGNCOST(i16* noundef %60, i16* noundef %61) #3
  %62 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i64 0, i32 2
  store %struct.operator* %0, %struct.operator** %62, align 8
  br label %63

63:                                               ; preds = %44, %33
  br label %64

64:                                               ; preds = %63, %15
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  br label %14, !llvm.loop !7

67:                                               ; preds = %14
  call void @trim(%struct.item_set* noundef %13) #3
  call void @zero(%struct.item_set* noundef %13) #3
  %68 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %69 = call %struct.item_set* @encode(%struct.mapping* noundef %68, %struct.item_set* noundef %13, i32* noundef nonnull %2) #3
  %70 = load i32, i32* %2, align 4
  %.not1 = icmp eq i32 %70, 0
  br i1 %.not1, label %77, label %71

71:                                               ; preds = %67
  call void @closure(%struct.item_set* noundef %13) #3
  %72 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 6
  %73 = load %struct.table*, %struct.table** %72, align 8
  %74 = getelementptr inbounds %struct.table, %struct.table* %73, i64 0, i32 4
  %75 = load %struct.item_set**, %struct.item_set*** %74, align 8
  store %struct.item_set* %13, %struct.item_set** %75, align 8
  %76 = load %struct.queue*, %struct.queue** @globalQ, align 8
  call void @addQ(%struct.queue* noundef %76, %struct.item_set* noundef %13) #3
  br label %82

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 6
  %79 = load %struct.table*, %struct.table** %78, align 8
  %80 = getelementptr inbounds %struct.table, %struct.table* %79, i64 0, i32 4
  %81 = load %struct.item_set**, %struct.item_set*** %80, align 8
  store %struct.item_set* %69, %struct.item_set** %81, align 8
  call void @freeItem_Set(%struct.item_set* noundef %13) #3
  br label %82

82:                                               ; preds = %77, %71
  ret void
}

declare dso_local %struct.item_set* @popQ(%struct.queue* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.operator* @addTypeInfo(%struct.operator* noundef readnone returned %0) #2 {
  ret %struct.operator* %0
}

declare dso_local void @addToTable(%struct.table* noundef, %struct.item_set* noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

declare dso_local void @ASSIGNCOST(i16* noundef, i16* noundef) #1

declare dso_local void @trim(%struct.item_set* noundef) #1

declare dso_local void @zero(%struct.item_set* noundef) #1

declare dso_local void @closure(%struct.item_set* noundef) #1

declare dso_local void @freeItem_Set(%struct.item_set* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
