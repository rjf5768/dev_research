; ModuleID = './operator.ll'
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
  %4 = icmp slt i32 %2, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = call i32 @fatal(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 noundef 16) #2
  br label %7

7:                                                ; preds = %5, %3
  %8 = call i8* @zalloc(i32 noundef 40) #2
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %9, label %11

9:                                                ; preds = %7
  %10 = call i32 @fatal(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 noundef 18) #2
  br label %11

11:                                               ; preds = %9, %7
  %12 = bitcast i8* %8 to %struct.operator*
  %13 = bitcast i8* %8 to i8**
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds i8, i8* %8, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 4
  %16 = getelementptr inbounds i8, i8* %8, i64 24
  %17 = bitcast i8* %16 to i32*
  store i32 %2, i32* %17, align 8
  %18 = load %struct.list*, %struct.list** @operators, align 8
  %19 = call %struct.list* @newList(i8* noundef %8, %struct.list* noundef %18) #2
  store %struct.list* %19, %struct.list** @operators, align 8
  ret %struct.operator* %12
}

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

declare dso_local i8* @zalloc(i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator_s(%struct.operator* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3, i32 noundef %5, i32 noundef %7) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator(%struct.operator* nocapture noundef readonly %0, i32 noundef %1) #0 {
  call void @dumpOperator_s(%struct.operator* noundef %0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 6
  %5 = load %struct.table*, %struct.table** %4, align 8
  call void @dumpTable(%struct.table* noundef %5, i32 noundef 0) #2
  br label %6

6:                                                ; preds = %3, %2
  ret void
}

declare dso_local void @dumpTable(%struct.table* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpOperator_l(%struct.operator* nocapture noundef readonly %0) #0 {
  call void @dumpOperator(%struct.operator* noundef %0, i32 noundef 1)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
