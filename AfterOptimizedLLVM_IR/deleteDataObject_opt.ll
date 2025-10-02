; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteDataObject.c'
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
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.DataObject* %0, %struct.DataObject** %2, align 8
  %5 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %6 = icmp ne %struct.DataObject* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #3
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %11 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %21 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14, %9
  br label %26

25:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #3
  unreachable

26:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  %27 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %28 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i64 18, i64* %4, align 8
  br label %46

32:                                               ; preds = %26
  %33 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %34 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i64 25, i64* %4, align 8
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %40 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i64 51, i64* %4, align 8
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %31
  store i64 8, i64* %3, align 8
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %53 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %52, i32 0, i32 1
  %54 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %54, i64 %55
  %57 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %63 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %62, i32 0, i32 1
  %64 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %64, i64 %65
  %67 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %66, i32 0, i32 0
  %68 = bitcast %union.anon* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  call void @free(i8* noundef %69) #4
  br label %70

70:                                               ; preds = %61, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %47, !llvm.loop !4

74:                                               ; preds = %47
  %75 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %76 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %75, i32 0, i32 1
  %77 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %76, align 8
  %78 = bitcast %struct.DataObjectAttribute* %77 to i8*
  call void @free(i8* noundef %78) #4
  %79 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %80 = bitcast %struct.DataObject* %79 to i8*
  call void @free(i8* noundef %80) #4
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  ret void
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
