; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/pattern.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.list = type { i8*, %struct.list* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_pattern = dso_local global [5 x i8] c"$Id$\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"[no-pattern]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pattern* @newPattern(%struct.operator* noundef %0) #0 {
  %2 = alloca %struct.operator*, align 8
  %3 = alloca %struct.pattern*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %4 = call i8* @zalloc(i32 noundef 32)
  %5 = bitcast i8* %4 to %struct.pattern*
  store %struct.pattern* %5, %struct.pattern** %3, align 8
  %6 = load %struct.operator*, %struct.operator** %2, align 8
  %7 = load %struct.pattern*, %struct.pattern** %3, align 8
  %8 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i32 0, i32 1
  store %struct.operator* %6, %struct.operator** %8, align 8
  %9 = load %struct.pattern*, %struct.pattern** %3, align 8
  ret %struct.pattern* %9
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpPattern(%struct.pattern* noundef %0) #0 {
  %2 = alloca %struct.pattern*, align 8
  %3 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %2, align 8
  %4 = load %struct.pattern*, %struct.pattern** %2, align 8
  %5 = icmp ne %struct.pattern* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %60

8:                                                ; preds = %1
  %9 = load %struct.pattern*, %struct.pattern** %2, align 8
  %10 = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 1
  %11 = load %struct.operator*, %struct.operator** %10, align 8
  %12 = icmp ne %struct.operator* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = load %struct.pattern*, %struct.pattern** %2, align 8
  %15 = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 1
  %16 = load %struct.operator*, %struct.operator** %15, align 8
  %17 = getelementptr inbounds %struct.operator, %struct.operator* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18)
  %20 = load %struct.pattern*, %struct.pattern** %2, align 8
  %21 = getelementptr inbounds %struct.pattern, %struct.pattern* %20, i32 0, i32 1
  %22 = load %struct.operator*, %struct.operator** %21, align 8
  %23 = getelementptr inbounds %struct.operator, %struct.operator* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %13
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.pattern*, %struct.pattern** %2, align 8
  %31 = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 1
  %32 = load %struct.operator*, %struct.operator** %31, align 8
  %33 = getelementptr inbounds %struct.operator, %struct.operator* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.pattern*, %struct.pattern** %2, align 8
  %38 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 2
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %38, i64 0, i64 %40
  %42 = load %struct.nonterminal*, %struct.nonterminal** %41, align 8
  %43 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %28, !llvm.loop !4

49:                                               ; preds = %28
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %13
  br label %60

52:                                               ; preds = %8
  %53 = load %struct.pattern*, %struct.pattern** %2, align 8
  %54 = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 2
  %55 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %54, i64 0, i64 0
  %56 = load %struct.nonterminal*, %struct.nonterminal** %55, align 8
  %57 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %58)
  br label %60

60:                                               ; preds = %6, %52, %51
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
