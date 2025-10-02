; ModuleID = './pattern.ll'
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
  %2 = call i8* @zalloc(i32 noundef 32) #3
  %3 = bitcast i8* %2 to %struct.pattern*
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to %struct.operator**
  store %struct.operator* %0, %struct.operator** %5, align 8
  ret %struct.pattern* %3
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpPattern(%struct.pattern* noundef readonly %0) #0 {
  %.not = icmp eq %struct.pattern* %0, null
  br i1 %.not, label %2, label %4

2:                                                ; preds = %1
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #3
  br label %42

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 1
  %6 = load %struct.operator*, %struct.operator** %5, align 8
  %.not1 = icmp eq %struct.operator* %6, null
  br i1 %.not1, label %36, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 1
  %9 = load %struct.operator*, %struct.operator** %8, align 8
  %10 = getelementptr inbounds %struct.operator, %struct.operator* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %11) #3
  %13 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 1
  %14 = load %struct.operator*, %struct.operator** %13, align 8
  %15 = getelementptr inbounds %struct.operator, %struct.operator* %14, i64 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %7
  %putchar = call i32 @putchar(i32 40)
  br label %19

19:                                               ; preds = %32, %18
  %.0 = phi i32 [ 0, %18 ], [ %33, %32 ]
  %20 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 1
  %21 = load %struct.operator*, %struct.operator** %20, align 8
  %22 = getelementptr inbounds %struct.operator, %struct.operator* %21, i64 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %.0, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 2, i64 %26
  %28 = load %struct.nonterminal*, %struct.nonterminal** %27, align 8
  %29 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %28, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %30) #3
  br label %32

32:                                               ; preds = %25
  %33 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !4

34:                                               ; preds = %19
  %putchar2 = call i32 @putchar(i32 41)
  br label %35

35:                                               ; preds = %34, %7
  br label %42

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 2, i64 0
  %38 = load %struct.nonterminal*, %struct.nonterminal** %37, align 8
  %39 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %38, i64 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %40) #3
  br label %42

42:                                               ; preds = %36, %35, %2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
