; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/valid.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@validIndexKey.name = internal global [14 x i8] c"validIndexKey\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/valid.c\00", align 1
@__PRETTY_FUNCTION__.validIndexKey = private unnamed_addr constant [34 x i8] c"Boolean validIndexKey(IndexKey *)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Lower T > Upper T\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Lower X > Upper X\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Lower Y > Upper Y\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Lower Z > Upper Z\00", align 1
@validAttributes.name = internal global [16 x i8] c"validAttributes\00", align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"invalid attribute code\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"key value out-of-range\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"non-key value set to NULL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @validIndexKey(%struct.IndexKey* noundef %0) #0 {
  %2 = alloca %struct.IndexKey*, align 8
  %3 = alloca i8, align 1
  store %struct.IndexKey* %0, %struct.IndexKey** %2, align 8
  store i8 1, i8* %3, align 1
  %4 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %5 = icmp ne %struct.IndexKey* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.validIndexKey, i64 0, i64 0)) #3
  unreachable

8:                                                ; preds = %6
  %9 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %10 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fcmp oge float %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %3, align 1
  br label %55

19:                                               ; preds = %8
  %20 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %21, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %25 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oge float %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %3, align 1
  br label %54

30:                                               ; preds = %19
  %31 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 2
  %38 = load float, float* %37, align 4
  %39 = fcmp oge float %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %3, align 1
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %43 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %43, i32 0, i32 3
  %45 = load float, float* %44, align 4
  %46 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %47, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = fcmp oge float %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %3, align 1
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i8, i8* %3, align 1
  ret i8 %56
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @validAttributes(%struct.DataAttribute* noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DataAttribute*, align 8
  %4 = alloca %struct.DataAttribute*, align 8
  store %struct.DataAttribute* %0, %struct.DataAttribute** %3, align 8
  %5 = load %struct.DataAttribute*, %struct.DataAttribute** %3, align 8
  store %struct.DataAttribute* %5, %struct.DataAttribute** %4, align 8
  br label %6

6:                                                ; preds = %59, %1
  %7 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %8 = icmp ne %struct.DataAttribute* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %6
  %10 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %11 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %16 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 50
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  call void @errorMessage(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %2, align 1
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %22 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %27 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 8
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %32 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to float*
  %35 = load float, float* %34, align 8
  %36 = fpext float %35 to double
  %37 = fcmp olt double %36, 0xC7EFFFFFE091FF3D
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %40 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to float*
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = fcmp ogt double %44, 0x47EFFFFFE091FF3D
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30
  call void @errorMessage(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %2, align 1
  br label %64

47:                                               ; preds = %38
  br label %57

48:                                               ; preds = %25, %20
  %49 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %50 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %50, i32 0, i32 0
  %52 = bitcast %union.anon* %51 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1)
  store i8 0, i8* %2, align 1
  br label %64

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %61 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %60, i32 0, i32 2
  %62 = load %struct.DataAttribute*, %struct.DataAttribute** %61, align 8
  store %struct.DataAttribute* %62, %struct.DataAttribute** %4, align 8
  br label %6, !llvm.loop !4

63:                                               ; preds = %6
  store i8 1, i8* %2, align 1
  br label %64

64:                                               ; preds = %63, %55, %46, %19
  %65 = load i8, i8* %2, align 1
  ret i8 %65
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
