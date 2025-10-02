; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/operator.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_operator = dso_local global [5 x i8] c"$Id$\00", align 1
@max_arity = dso_local global i32 -1, align 4
@.str = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/operator.c\00", align 1
@operators = dso_local global %struct.list* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Op: %s(%d)=%d\0A\00", align 1
@leaves = dso_local global %struct.list* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.operator* @newOperator(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.operator*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = call i32 @fatal(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 noundef 16)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i1 [ true, %3 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i8* @zalloc(i32 noundef 40)
  %17 = bitcast i8* %16 to %struct.operator*
  store %struct.operator* %17, %struct.operator** %7, align 8
  %18 = load %struct.operator*, %struct.operator** %7, align 8
  %19 = icmp ne %struct.operator* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = call i32 @fatal(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 noundef 18)
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i1 [ true, %13 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.operator*, %struct.operator** %7, align 8
  %28 = getelementptr inbounds %struct.operator, %struct.operator* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.operator*, %struct.operator** %7, align 8
  %31 = getelementptr inbounds %struct.operator, %struct.operator* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.operator*, %struct.operator** %7, align 8
  %34 = getelementptr inbounds %struct.operator, %struct.operator* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.operator*, %struct.operator** %7, align 8
  %36 = bitcast %struct.operator* %35 to i8*
  %37 = load %struct.list*, %struct.list** @operators, align 8
  %38 = call %struct.list* @newList(i8* noundef %36, %struct.list* noundef %37)
  store %struct.list* %38, %struct.list** @operators, align 8
  %39 = load %struct.operator*, %struct.operator** %7, align 8
  ret %struct.operator* %39
}

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator_s(%struct.operator* noundef %0) #0 {
  %2 = alloca %struct.operator*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %3 = load %struct.operator*, %struct.operator** %2, align 8
  %4 = getelementptr inbounds %struct.operator, %struct.operator* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.operator*, %struct.operator** %2, align 8
  %7 = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.operator*, %struct.operator** %2, align 8
  %10 = getelementptr inbounds %struct.operator, %struct.operator* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5, i32 noundef %8, i32 noundef %11)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator(%struct.operator* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.operator*, align 8
  %4 = alloca i32, align 4
  store %struct.operator* %0, %struct.operator** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.operator*, %struct.operator** %3, align 8
  call void @dumpOperator_s(%struct.operator* noundef %5)
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.operator*, %struct.operator** %3, align 8
  %10 = getelementptr inbounds %struct.operator, %struct.operator* %9, i32 0, i32 6
  %11 = load %struct.table*, %struct.table** %10, align 8
  call void @dumpTable(%struct.table* noundef %11, i32 noundef 0)
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

declare dso_local void @dumpTable(%struct.table* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator_l(%struct.operator* noundef %0) #0 {
  %2 = alloca %struct.operator*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %3 = load %struct.operator*, %struct.operator** %2, align 8
  call void @dumpOperator(%struct.operator* noundef %3, i32 noundef 1)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
