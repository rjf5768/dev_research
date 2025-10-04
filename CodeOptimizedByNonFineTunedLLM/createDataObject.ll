; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createDataObject.c'
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
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.DataObject*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %9, %1
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.createDataObject, i64 0, i64 0)) #4
  unreachable

17:                                               ; preds = %15
  %18 = call noalias i8* @malloc(i64 noundef 16) #5
  %19 = bitcast i8* %18 to %struct.DataObject*
  store %struct.DataObject* %19, %struct.DataObject** %6, align 8
  %20 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %21 = icmp eq %struct.DataObject* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1)
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %28 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i64 18, i64* %5, align 8
  br label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %34 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  store i64 25, i64* %5, align 8
  br label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %40 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 0
  store i32 3, i32* %40, align 8
  store i64 51, i64* %5, align 8
  br label %44

41:                                               ; preds = %35
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1)
  %42 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %43 = bitcast %struct.DataObject* %42 to i8*
  call void @free(i8* noundef %43) #5
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 %47, 8
  %49 = call noalias i8* @malloc(i64 noundef %48) #5
  %50 = bitcast i8* %49 to %struct.DataObjectAttribute*
  %51 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %52 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %51, i32 0, i32 1
  store %struct.DataObjectAttribute* %50, %struct.DataObjectAttribute** %52, align 8
  %53 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %54 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %53, i32 0, i32 1
  %55 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %54, align 8
  %56 = icmp eq %struct.DataObjectAttribute* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 noundef signext 1)
  %58 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %59 = bitcast %struct.DataObject* %58 to i8*
  call void @free(i8* noundef %59) #5
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

60:                                               ; preds = %46
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i64, i64* %4, align 8
  %63 = icmp slt i64 %62, 8
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %66 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %65, i32 0, i32 1
  %67 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %67, i64 %68
  %70 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %69, i32 0, i32 0
  %71 = bitcast %union.anon* %70 to float*
  store float 0xC7EFFFFFE0000000, float* %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %4, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %61, !llvm.loop !4

75:                                               ; preds = %61
  store i64 8, i64* %4, align 8
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %82 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %81, i32 0, i32 1
  %83 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %83, i64 %84
  %86 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %85, i32 0, i32 0
  %87 = bitcast %union.anon* %86 to i8**
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %4, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %76, !llvm.loop !6

91:                                               ; preds = %76
  %92 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  store %struct.DataObject* %92, %struct.DataObject** %2, align 8
  br label %93

93:                                               ; preds = %91, %57, %41, %22
  %94 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  ret %struct.DataObject* %94
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
