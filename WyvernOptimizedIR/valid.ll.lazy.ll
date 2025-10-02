; ModuleID = './valid.ll'
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
define dso_local signext i8 @validIndexKey(%struct.IndexKey* noundef readonly %0) #0 {
  %.not = icmp eq %struct.IndexKey* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.validIndexKey, i64 0, i64 0)) #3
  unreachable

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 0
  %8 = load float, float* %7, align 4
  %9 = fcmp ult float %6, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 1
  %15 = load float, float* %14, align 4
  %16 = fcmp ult float %13, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %34

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 2
  %22 = load float, float* %21, align 4
  %23 = fcmp ult float %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 3
  %29 = load float, float* %28, align 4
  %30 = fcmp ult float %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %32

32:                                               ; preds = %31, %25
  %.0 = phi i8 [ 0, %31 ], [ 1, %25 ]
  br label %33

33:                                               ; preds = %32, %24
  %.1 = phi i8 [ 0, %24 ], [ %.0, %32 ]
  br label %34

34:                                               ; preds = %33, %17
  %.2 = phi i8 [ 0, %17 ], [ %.1, %33 ]
  br label %35

35:                                               ; preds = %34, %10
  %.3 = phi i8 [ 0, %10 ], [ %.2, %34 ]
  ret i8 %.3
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @validAttributes(%struct.DataAttribute* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %42, %1
  %.01 = phi %struct.DataAttribute* [ %0, %1 ], [ %44, %42 ]
  %.not = icmp eq %struct.DataAttribute* %.01, null
  br i1 %.not, label %45, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 50
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %3
  call void @errorMessage(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %46

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 1, i32 0
  %22 = bitcast %union.anon* %21 to float*
  %23 = load float, float* %22, align 8
  %24 = fpext float %23 to double
  %25 = fcmp olt double %24, 0xC7EFFFFFE091FF3D
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 1, i32 0
  %28 = bitcast %union.anon* %27 to float*
  %29 = load float, float* %28, align 8
  %30 = fpext float %29 to double
  %31 = fcmp ogt double %30, 0x47EFFFFFE091FF3D
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  call void @errorMessage(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %46

33:                                               ; preds = %26
  br label %40

34:                                               ; preds = %16, %12
  %35 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 1, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %46

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.01, i64 0, i32 2
  %44 = load %struct.DataAttribute*, %struct.DataAttribute** %43, align 8
  br label %2, !llvm.loop !4

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %38, %32, %11
  %.0 = phi i8 [ 0, %11 ], [ 0, %32 ], [ 0, %38 ], [ 1, %45 ]
  ret i8 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
