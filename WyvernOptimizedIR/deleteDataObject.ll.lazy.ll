; ModuleID = './deleteDataObject.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteDataObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteDataObject.c\00", align 1
@__PRETTY_FUNCTION__.deleteDataObject = private unnamed_addr constant [36 x i8] c"void deleteDataObject(DataObject *)\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"!( dataObject->type != SMALL && dataObject->type != MEDIUM && dataObject->type != LARGE )\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteDataObject(%struct.DataObject* noundef %0) #0 {
  %.not = icmp eq %struct.DataObject* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %.not2 = icmp eq i32 %6, 1
  br i1 %.not2, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %.not4 = icmp eq i32 %9, 2
  br i1 %.not4, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %.not5 = icmp eq i32 %12, 3
  br i1 %.not5, label %13, label %14

13:                                               ; preds = %10, %7, %4
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %32

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %25
  %.01 = phi i64 [ 51, %29 ], [ 0, %25 ]
  br label %31

31:                                               ; preds = %30, %24
  %.1 = phi i64 [ 25, %24 ], [ %.01, %30 ]
  br label %32

32:                                               ; preds = %31, %19
  %.2 = phi i64 [ 18, %19 ], [ %.1, %31 ]
  br label %33

33:                                               ; preds = %46, %32
  %.0 = phi i64 [ 8, %32 ], [ %47, %46 ]
  %34 = icmp slt i64 %.0, %.2
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %37 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %36, align 8
  %38 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %37, i64 %.0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %.not3 = icmp eq i8* %39, null
  br i1 %.not3, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %42 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %41, align 8
  %43 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %42, i64 %.0, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  call void @free(i8* noundef %44) #4
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i64 %.0, 1
  br label %33, !llvm.loop !4

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %50 = bitcast %struct.DataObjectAttribute** %49 to i8**
  %51 = load i8*, i8** %50, align 8
  call void @free(i8* noundef %51) #4
  %52 = bitcast %struct.DataObject* %0 to i8*
  call void @free(i8* noundef %52) #4
  ret void

UnifiedUnreachableBlock:                          ; preds = %14, %3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
