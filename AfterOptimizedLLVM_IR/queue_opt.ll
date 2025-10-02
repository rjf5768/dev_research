; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/queue.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.queue* @newQ() #0 {
  %1 = alloca %struct.queue*, align 8
  %2 = call i8* @zalloc(i32 noundef 16)
  %3 = bitcast i8* %2 to %struct.queue*
  store %struct.queue* %3, %struct.queue** %1, align 8
  %4 = load %struct.queue*, %struct.queue** %1, align 8
  %5 = icmp ne %struct.queue* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 14)
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i1 [ true, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = load %struct.queue*, %struct.queue** %1, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  store %struct.list* null, %struct.list** %13, align 8
  %14 = load %struct.queue*, %struct.queue** %1, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 1
  store %struct.list* null, %struct.list** %15, align 8
  %16 = load %struct.queue*, %struct.queue** %1, align 8
  ret %struct.queue* %16
}

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @addQ(%struct.queue* noundef %0, %struct.item_set* noundef %1) #0 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.item_set*, align 8
  %5 = alloca %struct.list*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  store %struct.item_set* %1, %struct.item_set** %4, align 8
  %6 = load %struct.queue*, %struct.queue** %3, align 8
  %7 = icmp ne %struct.queue* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 26)
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = load %struct.item_set*, %struct.item_set** %4, align 8
  %15 = icmp ne %struct.item_set* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 27)
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ true, %11 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.item_set*, %struct.item_set** %4, align 8
  %23 = bitcast %struct.item_set* %22 to i8*
  %24 = call %struct.list* @newList(i8* noundef %23, %struct.list* noundef null)
  store %struct.list* %24, %struct.list** %5, align 8
  %25 = load %struct.queue*, %struct.queue** %3, align 8
  %26 = getelementptr inbounds %struct.queue, %struct.queue* %25, i32 0, i32 0
  %27 = load %struct.list*, %struct.list** %26, align 8
  %28 = icmp ne %struct.list* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load %struct.queue*, %struct.queue** %3, align 8
  %31 = getelementptr inbounds %struct.queue, %struct.queue* %30, i32 0, i32 1
  %32 = load %struct.list*, %struct.list** %31, align 8
  %33 = icmp ne %struct.list* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 31)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ true, %29 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = load %struct.list*, %struct.list** %5, align 8
  %41 = load %struct.queue*, %struct.queue** %3, align 8
  %42 = getelementptr inbounds %struct.queue, %struct.queue* %41, i32 0, i32 1
  %43 = load %struct.list*, %struct.list** %42, align 8
  %44 = getelementptr inbounds %struct.list, %struct.list* %43, i32 0, i32 1
  store %struct.list* %40, %struct.list** %44, align 8
  %45 = load %struct.list*, %struct.list** %5, align 8
  %46 = load %struct.queue*, %struct.queue** %3, align 8
  %47 = getelementptr inbounds %struct.queue, %struct.queue* %46, i32 0, i32 1
  store %struct.list* %45, %struct.list** %47, align 8
  br label %54

48:                                               ; preds = %19
  %49 = load %struct.list*, %struct.list** %5, align 8
  %50 = load %struct.queue*, %struct.queue** %3, align 8
  %51 = getelementptr inbounds %struct.queue, %struct.queue* %50, i32 0, i32 1
  store %struct.list* %49, %struct.list** %51, align 8
  %52 = load %struct.queue*, %struct.queue** %3, align 8
  %53 = getelementptr inbounds %struct.queue, %struct.queue* %52, i32 0, i32 0
  store %struct.list* %49, %struct.list** %53, align 8
  br label %54

54:                                               ; preds = %48, %37
  ret void
}

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.item_set* @popQ(%struct.queue* noundef %0) #0 {
  %2 = alloca %struct.item_set*, align 8
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.item_set*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  %6 = load %struct.queue*, %struct.queue** %3, align 8
  %7 = icmp ne %struct.queue* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i32 @fatal(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 noundef 45)
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ true, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = load %struct.queue*, %struct.queue** %3, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 0
  %16 = load %struct.list*, %struct.list** %15, align 8
  %17 = icmp ne %struct.list* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.queue*, %struct.queue** %3, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 0
  %21 = load %struct.list*, %struct.list** %20, align 8
  store %struct.list* %21, %struct.list** %4, align 8
  %22 = load %struct.queue*, %struct.queue** %3, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 0
  %24 = load %struct.list*, %struct.list** %23, align 8
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 1
  %26 = load %struct.list*, %struct.list** %25, align 8
  %27 = load %struct.queue*, %struct.queue** %3, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 0
  store %struct.list* %26, %struct.list** %28, align 8
  %29 = load %struct.list*, %struct.list** %4, align 8
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.item_set*
  store %struct.item_set* %32, %struct.item_set** %5, align 8
  %33 = load %struct.list*, %struct.list** %4, align 8
  %34 = bitcast %struct.list* %33 to i8*
  call void @zfree(i8* noundef %34)
  %35 = load %struct.item_set*, %struct.item_set** %5, align 8
  store %struct.item_set* %35, %struct.item_set** %2, align 8
  br label %37

36:                                               ; preds = %11
  store %struct.item_set* null, %struct.item_set** %2, align 8
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.item_set*, %struct.item_set** %2, align 8
  ret %struct.item_set* %38
}

declare dso_local void @zfree(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpQ(%struct.queue* noundef %0) #0 {
  %2 = alloca %struct.queue*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.item_set*)* @dumpItem_Set to i8* (i8*)*), %struct.list* noundef %6)
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @foreachList(i8* (i8*)* noundef, %struct.list* noundef) #1

declare dso_local void @dumpItem_Set(%struct.item_set* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
