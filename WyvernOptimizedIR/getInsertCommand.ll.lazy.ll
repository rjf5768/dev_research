; ModuleID = './getInsertCommand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInsertCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@getInsertCommand.name = internal global [17 x i8] c"getInsertCommand\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInsertCommand.c\00", align 1
@__PRETTY_FUNCTION__.getInsertCommand = private unnamed_addr constant [44 x i8] c"Int getInsertCommand(FILE *, DataObject **)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown data object type\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"improper format - type must be an integer\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"allocation failure for non-key attribute\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInsertCommand(%struct._IO_FILE* noundef %0, %struct.DataObject** noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %.not8 = icmp eq %struct.DataObject** %1, null
  br i1 %.not8, label %10, label %9

9:                                                ; preds = %8
  br label %11

10:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %12 = call i64 @getInt(%struct._IO_FILE* noundef nonnull %0, i64* noundef nonnull %3) #4
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %27

15:                                               ; preds = %11
  %16 = icmp eq i64 %12, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %115

18:                                               ; preds = %15
  %19 = icmp eq i64 %12, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %115

21:                                               ; preds = %18
  %22 = icmp eq i64 %12, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @errorMessage(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %115

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i64, i64* %3, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call %struct.DataObject* @createDataObject(i32 noundef 1) #4
  store %struct.DataObject* %31, %struct.DataObject** %1, align 8
  br label %45

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call %struct.DataObject* @createDataObject(i32 noundef 2) #4
  store %struct.DataObject* %36, %struct.DataObject** %1, align 8
  br label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call %struct.DataObject* @createDataObject(i32 noundef 3) #4
  store %struct.DataObject* %41, %struct.DataObject** %1, align 8
  br label %43

42:                                               ; preds = %37
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %115

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %35
  %.01 = phi i64 [ 25, %35 ], [ 51, %43 ]
  br label %45

45:                                               ; preds = %44, %30
  %.1 = phi i64 [ 18, %30 ], [ %.01, %44 ]
  %46 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %47 = icmp eq %struct.DataObject* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %115

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %81, %49
  %.02 = phi i64 [ 0, %49 ], [ %82, %81 ]
  %51 = icmp ult i64 %.02, 8
  br i1 %51, label %52, label %83

52:                                               ; preds = %50
  %53 = call i64 @getKeyAttribute(%struct._IO_FILE* noundef nonnull %0, float* noundef nonnull %4) #4
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load float, float* %4, align 4
  %57 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %58 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %57, i64 0, i32 1
  %59 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %58, align 8
  %60 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %59, i64 %.02, i32 0
  %61 = bitcast %union.anon* %60 to float*
  store float %56, float* %61, align 8
  br label %80

62:                                               ; preds = %52
  %63 = icmp eq i64 %53, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  %65 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %66 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %65, i64 0, i32 1
  %67 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %66, align 8
  %68 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %67, i64 %.02, i32 0
  %69 = bitcast %union.anon* %68 to float*
  store float 0xC7EFFFFFE0000000, float* %69, align 8
  br label %115

70:                                               ; preds = %62
  %71 = icmp eq i64 %53, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  call void @errorMessage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  %73 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %74 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %73, i64 0, i32 1
  %75 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %74, align 8
  %76 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %75, i64 %.02, i32 0
  %77 = bitcast %union.anon* %76 to float*
  store float 0xC7EFFFFFE0000000, float* %77, align 8
  br label %115

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %55
  br label %81

81:                                               ; preds = %80
  %82 = add nuw nsw i64 %.02, 1
  br label %50, !llvm.loop !4

83:                                               ; preds = %50
  br label %84

84:                                               ; preds = %112, %83
  %.13 = phi i64 [ 8, %83 ], [ %113, %112 ]
  %85 = icmp slt i64 %.13, %.1
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = call i64 @getNonKeyAttribute(%struct._IO_FILE* noundef nonnull %0, i8** noundef nonnull %5) #4
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %92 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %91, i64 0, i32 1
  %93 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %92, align 8
  %94 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %93, i64 %.13, i32 0, i32 0
  store i8* %90, i8** %94, align 8
  br label %111

95:                                               ; preds = %86
  %96 = icmp eq i64 %87, 2
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  %98 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %99 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %98, i64 0, i32 1
  %100 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %99, align 8
  %101 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %100, i64 %.13, i32 0, i32 0
  store i8* null, i8** %101, align 8
  br label %115

102:                                              ; preds = %95
  %103 = icmp eq i64 %87, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  %105 = load %struct.DataObject*, %struct.DataObject** %1, align 8
  %106 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %105, i64 0, i32 1
  %107 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %106, align 8
  %108 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %107, i64 %.13, i32 0, i32 0
  store i8* null, i8** %108, align 8
  br label %115

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %89
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i64 %.13, 1
  br label %84, !llvm.loop !6

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %114, %104, %97, %72, %64, %48, %42, %23, %20, %17
  %.0 = phi i64 [ 4, %48 ], [ 2, %64 ], [ 1, %72 ], [ 2, %97 ], [ 4, %104 ], [ 0, %114 ], [ 3, %42 ], [ 2, %17 ], [ 1, %20 ], [ 1, %23 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %10, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getInt(%struct._IO_FILE* noundef, i64* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local %struct.DataObject* @createDataObject(i32 noundef) #2

declare dso_local i64 @getKeyAttribute(%struct._IO_FILE* noundef, float* noundef) #2

declare dso_local i64 @getNonKeyAttribute(%struct._IO_FILE* noundef, i8** noundef) #2

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
!6 = distinct !{!6, !5}
