; ModuleID = './createDataObject.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createDataObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@createDataObject.name = internal global [17 x i8] c"createDataObject\00", align 16
@.str = private unnamed_addr constant [83 x i8] c"!(dataObjectType != SMALL && dataObjectType != MEDIUM && dataObjectType != LARGE )\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createDataObject.c\00", align 1
@__PRETTY_FUNCTION__.createDataObject = private unnamed_addr constant [45 x i8] c"DataObject *createDataObject(DataObjectType)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid object type to create\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DataObject* @createDataObject(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %.not4 = icmp eq i32 %0, 2
  br i1 %.not4, label %4, label %3

3:                                                ; preds = %2
  %.not5 = icmp eq i32 %0, 3
  br i1 %.not5, label %4, label %5

4:                                                ; preds = %3, %2, %1
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.createDataObject, i64 0, i64 0)) #4
  unreachable

6:                                                ; preds = %4
  %7 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %8 = bitcast i8* %7 to %struct.DataObject*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %53

11:                                               ; preds = %6
  %12 = icmp eq i32 %0, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 0
  store i32 1, i32* %14, align 8
  br label %26

15:                                               ; preds = %11
  %16 = icmp eq i32 %0, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 0
  store i32 2, i32* %18, align 8
  br label %25

19:                                               ; preds = %15
  %20 = icmp eq i32 %0, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 0
  store i32 3, i32* %22, align 8
  br label %24

23:                                               ; preds = %19
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1) #5
  call void @free(i8* noundef %7) #5
  br label %53

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %17
  %.01 = phi i64 [ 25, %17 ], [ 51, %24 ]
  br label %26

26:                                               ; preds = %25, %13
  %.1 = phi i64 [ 18, %13 ], [ %.01, %25 ]
  %27 = shl nsw i64 %.1, 3
  %28 = call noalias i8* @malloc(i64 noundef %27) #5
  %29 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 1
  %30 = bitcast %struct.DataObjectAttribute** %29 to i8**
  store i8* %28, i8** %30, align 8
  %31 = icmp eq i8* %28, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1) #5
  call void @free(i8* noundef %7) #5
  br label %53

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %41, %33
  %.02 = phi i64 [ 0, %33 ], [ %42, %41 ]
  %35 = icmp ult i64 %.02, 8
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 1
  %38 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %37, align 8
  %39 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %38, i64 %.02, i32 0
  %40 = bitcast %union.anon* %39 to float*
  store float 0xC7EFFFFFE0000000, float* %40, align 8
  br label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %.02, 1
  br label %34, !llvm.loop !4

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %50, %43
  %.13 = phi i64 [ 8, %43 ], [ %51, %50 ]
  %45 = icmp slt i64 %.13, %.1
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i64 0, i32 1
  %48 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %47, align 8
  %49 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %48, i64 %.13, i32 0, i32 0
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %46
  %51 = add nuw nsw i64 %.13, 1
  br label %44, !llvm.loop !6

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %32, %23, %10
  %.0 = phi %struct.DataObject* [ null, %10 ], [ null, %32 ], [ %8, %52 ], [ null, %23 ]
  ret %struct.DataObject* %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
