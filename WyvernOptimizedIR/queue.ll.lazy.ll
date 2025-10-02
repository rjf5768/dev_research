; ModuleID = './queue.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { %struct.list*, %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_queue = dso_local global [5 x i8] c"$Id$\00", align 1
@.str = private unnamed_addr constant [68 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/queue.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Begin Queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"End Queue\0A\00", align 1
@globalQ = dso_local global %struct.queue* null, align 8
@str = private unnamed_addr constant [12 x i8] c"Begin Queue\00", align 1
@str.1 = private unnamed_addr constant [10 x i8] c"End Queue\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.queue* @newQ() #0 {
  %1 = call i8* @zalloc(i32 noundef 16) #3
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 14) #3
  br label %4

4:                                                ; preds = %2, %0
  %5 = bitcast i8* %1 to %struct.queue*
  %6 = bitcast i8* %1 to %struct.list**
  store %struct.list* null, %struct.list** %6, align 8
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list* null, %struct.list** %8, align 8
  ret %struct.queue* %5
}

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @addQ(%struct.queue* noundef %0, %struct.item_set* noundef %1) #0 {
  %.not = icmp eq %struct.queue* %0, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %2
  %4 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 26) #3
  br label %5

5:                                                ; preds = %3, %2
  %.not1 = icmp eq %struct.item_set* %1, null
  br i1 %.not1, label %6, label %8

6:                                                ; preds = %5
  %7 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #3
  br label %8

8:                                                ; preds = %6, %5
  %9 = bitcast %struct.item_set* %1 to i8*
  %10 = call %struct.list* @newList(i8* noundef %9, %struct.list* noundef null) #3
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  %12 = load %struct.list*, %struct.list** %11, align 8
  %.not2 = icmp eq %struct.list* %12, null
  br i1 %.not2, label %23, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 1
  %15 = load %struct.list*, %struct.list** %14, align 8
  %.not3 = icmp eq %struct.list* %15, null
  br i1 %.not3, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #3
  br label %18

18:                                               ; preds = %16, %13
  %19 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 1
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i64 0, i32 1
  store %struct.list* %10, %struct.list** %21, align 8
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 1
  store %struct.list* %10, %struct.list** %22, align 8
  br label %26

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 1
  store %struct.list* %10, %struct.list** %24, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  store %struct.list* %10, %struct.list** %25, align 8
  br label %26

26:                                               ; preds = %23, %18
  ret void
}

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.item_set* @popQ(%struct.queue* noundef %0) #0 {
  %.not = icmp eq %struct.queue* %0, null
  br i1 %.not, label %2, label %4

2:                                                ; preds = %1
  %3 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #3
  br label %4

4:                                                ; preds = %2, %1
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  %6 = load %struct.list*, %struct.list** %5, align 8
  %.not1 = icmp eq %struct.list* %6, null
  br i1 %.not1, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  %9 = load %struct.list*, %struct.list** %8, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i64 0, i32 1
  %11 = load %struct.list*, %struct.list** %10, align 8
  %12 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  store %struct.list* %11, %struct.list** %12, align 8
  %13 = bitcast %struct.list* %9 to %struct.item_set**
  %14 = load %struct.item_set*, %struct.item_set** %13, align 8
  %15 = bitcast %struct.list* %9 to i8*
  call void @zfree(i8* noundef %15) #3
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %7
  %.0 = phi %struct.item_set* [ %14, %7 ], [ null, %16 ]
  ret %struct.item_set* %.0
}

declare dso_local void @zfree(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpQ(%struct.queue* nocapture noundef readonly %0) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str, i64 0, i64 0))
  %2 = getelementptr inbounds %struct.queue, %struct.queue* %0, i64 0, i32 0
  %3 = load %struct.list*, %struct.list** %2, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.item_set*)* @dumpItem_Set to i8* (i8*)*), %struct.list* noundef %3) #3
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @foreachList(i8* (i8*)* noundef, %struct.list* noundef) #1

declare dso_local void @dumpItem_Set(%struct.item_set* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
