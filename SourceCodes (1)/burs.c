; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/burs.c'
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
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.item_set*, align 8
  %4 = alloca %struct.operator*, align 8
  %5 = call %struct.queue* @newQ()
  store %struct.queue* %5, %struct.queue** @globalQ, align 8
  %6 = call %struct.mapping* @newMapping(i32 noundef 32768)
  store %struct.mapping* %6, %struct.mapping** @globalMap, align 8
  %7 = call %struct.item_set* @newItem_Set(i16* noundef null)
  store %struct.item_set* %7, %struct.item_set** %3, align 8
  %8 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %9 = load %struct.item_set*, %struct.item_set** %3, align 8
  %10 = call %struct.item_set* @encode(%struct.mapping* noundef %8, %struct.item_set* noundef %9, i32* noundef %1)
  store %struct.item_set* %10, %struct.item_set** @errorState, align 8
  %11 = load %struct.item_set*, %struct.item_set** %3, align 8
  %12 = getelementptr inbounds %struct.item_set, %struct.item_set* %11, i32 0, i32 6
  %13 = load %struct.item*, %struct.item** %12, align 8
  %14 = load %struct.item_set*, %struct.item_set** %3, align 8
  %15 = getelementptr inbounds %struct.item_set, %struct.item_set* %14, i32 0, i32 7
  store %struct.item* %13, %struct.item** %15, align 8
  %16 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %17 = load %struct.item_set*, %struct.item_set** %3, align 8
  call void @addQ(%struct.queue* noundef %16, %struct.item_set* noundef %17)
  %18 = load %struct.list*, %struct.list** @leaves, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.operator*)* @doLeaf to i8* (i8*)*), %struct.list* noundef %18)
  %19 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %20 = call %struct.item_set* @popQ(%struct.queue* noundef %19)
  store %struct.item_set* %20, %struct.item_set** %3, align 8
  br label %21

21:                                               ; preds = %45, %0
  %22 = load %struct.item_set*, %struct.item_set** %3, align 8
  %23 = icmp ne %struct.item_set* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load %struct.list*, %struct.list** @operators, align 8
  store %struct.list* %25, %struct.list** %2, align 8
  br label %26

26:                                               ; preds = %40, %24
  %27 = load %struct.list*, %struct.list** %2, align 8
  %28 = icmp ne %struct.list* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.list*, %struct.list** %2, align 8
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.operator*
  store %struct.operator* %33, %struct.operator** %4, align 8
  %34 = load %struct.operator*, %struct.operator** %4, align 8
  %35 = call %struct.operator* @addTypeInfo(%struct.operator* noundef %34)
  store %struct.operator* %35, %struct.operator** %4, align 8
  %36 = load %struct.operator*, %struct.operator** %4, align 8
  %37 = getelementptr inbounds %struct.operator, %struct.operator* %36, i32 0, i32 6
  %38 = load %struct.table*, %struct.table** %37, align 8
  %39 = load %struct.item_set*, %struct.item_set** %3, align 8
  call void @addToTable(%struct.table* noundef %38, %struct.item_set* noundef %39)
  br label %40

40:                                               ; preds = %29
  %41 = load %struct.list*, %struct.list** %2, align 8
  %42 = getelementptr inbounds %struct.list, %struct.list* %41, i32 0, i32 1
  %43 = load %struct.list*, %struct.list** %42, align 8
  store %struct.list* %43, %struct.list** %2, align 8
  br label %26, !llvm.loop !4

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %47 = call %struct.item_set* @popQ(%struct.queue* noundef %46)
  store %struct.item_set* %47, %struct.item_set** %3, align 8
  br label %21, !llvm.loop !6

48:                                               ; preds = %21
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
  %2 = alloca %struct.operator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.item_set*, align 8
  %6 = alloca %struct.item_set*, align 8
  %7 = alloca %struct.rule*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %8 = load %struct.operator*, %struct.operator** %2, align 8
  %9 = getelementptr inbounds %struct.operator, %struct.operator* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i32 @fatal(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 noundef 17)
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i1 [ true, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.operator*, %struct.operator** %2, align 8
  %19 = getelementptr inbounds %struct.operator, %struct.operator* %18, i32 0, i32 6
  %20 = load %struct.table*, %struct.table** %19, align 8
  %21 = getelementptr inbounds %struct.table, %struct.table* %20, i32 0, i32 2
  %22 = load i16*, i16** %21, align 8
  %23 = call %struct.item_set* @newItem_Set(i16* noundef %22)
  store %struct.item_set* %23, %struct.item_set** %5, align 8
  %24 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %24, %struct.list** %4, align 8
  br label %25

25:                                               ; preds = %104, %15
  %26 = load %struct.list*, %struct.list** %4, align 8
  %27 = icmp ne %struct.list* %26, null
  br i1 %27, label %28, label %108

28:                                               ; preds = %25
  %29 = load %struct.list*, %struct.list** %4, align 8
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.rule*
  store %struct.rule* %32, %struct.rule** %7, align 8
  %33 = load %struct.rule*, %struct.rule** %7, align 8
  %34 = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 5
  %35 = load %struct.pattern*, %struct.pattern** %34, align 8
  %36 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 1
  %37 = load %struct.operator*, %struct.operator** %36, align 8
  %38 = load %struct.operator*, %struct.operator** %2, align 8
  %39 = icmp eq %struct.operator* %37, %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %28
  %41 = load %struct.item_set*, %struct.item_set** %5, align 8
  %42 = getelementptr inbounds %struct.item_set, %struct.item_set* %41, i32 0, i32 6
  %43 = load %struct.item*, %struct.item** %42, align 8
  %44 = load %struct.rule*, %struct.rule** %7, align 8
  %45 = getelementptr inbounds %struct.rule, %struct.rule* %44, i32 0, i32 4
  %46 = load %struct.nonterminal*, %struct.nonterminal** %45, align 8
  %47 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.item, %struct.item* %43, i64 %49
  %51 = getelementptr inbounds %struct.item, %struct.item* %50, i32 0, i32 1
  %52 = load %struct.rule*, %struct.rule** %51, align 8
  %53 = icmp ne %struct.rule* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %40
  %55 = load %struct.rule*, %struct.rule** %7, align 8
  %56 = getelementptr inbounds %struct.rule, %struct.rule* %55, i32 0, i32 0
  %57 = getelementptr inbounds [4 x i16], [4 x i16]* %56, i64 0, i64 0
  %58 = load %struct.item_set*, %struct.item_set** %5, align 8
  %59 = getelementptr inbounds %struct.item_set, %struct.item_set* %58, i32 0, i32 6
  %60 = load %struct.item*, %struct.item** %59, align 8
  %61 = load %struct.rule*, %struct.rule** %7, align 8
  %62 = getelementptr inbounds %struct.rule, %struct.rule* %61, i32 0, i32 4
  %63 = load %struct.nonterminal*, %struct.nonterminal** %62, align 8
  %64 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.item, %struct.item* %60, i64 %66
  %68 = getelementptr inbounds %struct.item, %struct.item* %67, i32 0, i32 0
  %69 = getelementptr inbounds [4 x i16], [4 x i16]* %68, i64 0, i64 0
  %70 = icmp ult i16* %57, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %54, %40
  %72 = load %struct.rule*, %struct.rule** %7, align 8
  %73 = load %struct.item_set*, %struct.item_set** %5, align 8
  %74 = getelementptr inbounds %struct.item_set, %struct.item_set* %73, i32 0, i32 6
  %75 = load %struct.item*, %struct.item** %74, align 8
  %76 = load %struct.rule*, %struct.rule** %7, align 8
  %77 = getelementptr inbounds %struct.rule, %struct.rule* %76, i32 0, i32 4
  %78 = load %struct.nonterminal*, %struct.nonterminal** %77, align 8
  %79 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.item, %struct.item* %75, i64 %81
  %83 = getelementptr inbounds %struct.item, %struct.item* %82, i32 0, i32 1
  store %struct.rule* %72, %struct.rule** %83, align 8
  %84 = load %struct.item_set*, %struct.item_set** %5, align 8
  %85 = getelementptr inbounds %struct.item_set, %struct.item_set* %84, i32 0, i32 6
  %86 = load %struct.item*, %struct.item** %85, align 8
  %87 = load %struct.rule*, %struct.rule** %7, align 8
  %88 = getelementptr inbounds %struct.rule, %struct.rule* %87, i32 0, i32 4
  %89 = load %struct.nonterminal*, %struct.nonterminal** %88, align 8
  %90 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.item, %struct.item* %86, i64 %92
  %94 = getelementptr inbounds %struct.item, %struct.item* %93, i32 0, i32 0
  %95 = getelementptr inbounds [4 x i16], [4 x i16]* %94, i64 0, i64 0
  %96 = load %struct.rule*, %struct.rule** %7, align 8
  %97 = getelementptr inbounds %struct.rule, %struct.rule* %96, i32 0, i32 0
  %98 = getelementptr inbounds [4 x i16], [4 x i16]* %97, i64 0, i64 0
  call void @ASSIGNCOST(i16* noundef %95, i16* noundef %98)
  %99 = load %struct.operator*, %struct.operator** %2, align 8
  %100 = load %struct.item_set*, %struct.item_set** %5, align 8
  %101 = getelementptr inbounds %struct.item_set, %struct.item_set* %100, i32 0, i32 2
  store %struct.operator* %99, %struct.operator** %101, align 8
  br label %102

102:                                              ; preds = %71, %54
  br label %103

103:                                              ; preds = %102, %28
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.list*, %struct.list** %4, align 8
  %106 = getelementptr inbounds %struct.list, %struct.list* %105, i32 0, i32 1
  %107 = load %struct.list*, %struct.list** %106, align 8
  store %struct.list* %107, %struct.list** %4, align 8
  br label %25, !llvm.loop !7

108:                                              ; preds = %25
  %109 = load %struct.item_set*, %struct.item_set** %5, align 8
  call void @trim(%struct.item_set* noundef %109)
  %110 = load %struct.item_set*, %struct.item_set** %5, align 8
  call void @zero(%struct.item_set* noundef %110)
  %111 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %112 = load %struct.item_set*, %struct.item_set** %5, align 8
  %113 = call %struct.item_set* @encode(%struct.mapping* noundef %111, %struct.item_set* noundef %112, i32* noundef %3)
  store %struct.item_set* %113, %struct.item_set** %6, align 8
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %108
  %117 = load %struct.item_set*, %struct.item_set** %5, align 8
  call void @closure(%struct.item_set* noundef %117)
  %118 = load %struct.item_set*, %struct.item_set** %5, align 8
  %119 = load %struct.operator*, %struct.operator** %2, align 8
  %120 = getelementptr inbounds %struct.operator, %struct.operator* %119, i32 0, i32 6
  %121 = load %struct.table*, %struct.table** %120, align 8
  %122 = getelementptr inbounds %struct.table, %struct.table* %121, i32 0, i32 4
  %123 = load %struct.item_set**, %struct.item_set*** %122, align 8
  %124 = getelementptr inbounds %struct.item_set*, %struct.item_set** %123, i64 0
  store %struct.item_set* %118, %struct.item_set** %124, align 8
  %125 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %126 = load %struct.item_set*, %struct.item_set** %5, align 8
  call void @addQ(%struct.queue* noundef %125, %struct.item_set* noundef %126)
  br label %136

127:                                              ; preds = %108
  %128 = load %struct.item_set*, %struct.item_set** %6, align 8
  %129 = load %struct.operator*, %struct.operator** %2, align 8
  %130 = getelementptr inbounds %struct.operator, %struct.operator* %129, i32 0, i32 6
  %131 = load %struct.table*, %struct.table** %130, align 8
  %132 = getelementptr inbounds %struct.table, %struct.table* %131, i32 0, i32 4
  %133 = load %struct.item_set**, %struct.item_set*** %132, align 8
  %134 = getelementptr inbounds %struct.item_set*, %struct.item_set** %133, i64 0
  store %struct.item_set* %128, %struct.item_set** %134, align 8
  %135 = load %struct.item_set*, %struct.item_set** %5, align 8
  call void @freeItem_Set(%struct.item_set* noundef %135)
  br label %136

136:                                              ; preds = %127, %116
  ret void
}

declare dso_local %struct.item_set* @popQ(%struct.queue* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.operator* @addTypeInfo(%struct.operator* noundef %0) #0 {
  %2 = alloca %struct.operator*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %3 = load %struct.operator*, %struct.operator** %2, align 8
  ret %struct.operator* %3
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
