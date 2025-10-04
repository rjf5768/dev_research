; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInsertCommand.c'
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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.DataObject**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.DataObject** %1, %struct.DataObject*** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = icmp ne %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #3
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %18 = icmp ne %struct.DataObject** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #3
  unreachable

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %23 = call i64 @getInt(%struct._IO_FILE* noundef %22, i64* noundef %8)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %3, align 8
  br label %168

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %3, align 8
  br label %168

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @errorMessage(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %3, align 8
  br label %168

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call %struct.DataObject* @createDataObject(i32 noundef 1)
  %47 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %46, %struct.DataObject** %47, align 8
  store i64 18, i64* %9, align 8
  br label %63

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call %struct.DataObject* @createDataObject(i32 noundef 2)
  %53 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %52, %struct.DataObject** %53, align 8
  store i64 25, i64* %9, align 8
  br label %62

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call %struct.DataObject* @createDataObject(i32 noundef 3)
  %59 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %58, %struct.DataObject** %59, align 8
  store i64 51, i64* %9, align 8
  br label %61

60:                                               ; preds = %54
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %3, align 8
  br label %168

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %65 = load %struct.DataObject*, %struct.DataObject** %64, align 8
  %66 = icmp eq %struct.DataObject* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 4, i64* %3, align 8
  br label %168

68:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %114, %68
  %70 = load i64, i64* %6, align 8
  %71 = icmp slt i64 %70, 8
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %74 = call i64 @getKeyAttribute(%struct._IO_FILE* noundef %73, float* noundef %10)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load float, float* %10, align 4
  %79 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %80 = load %struct.DataObject*, %struct.DataObject** %79, align 8
  %81 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %80, i32 0, i32 1
  %82 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %82, i64 %83
  %85 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to float*
  store float %78, float* %86, align 8
  br label %113

87:                                               ; preds = %72
  %88 = load i64, i64* %7, align 8
  %89 = icmp eq i64 %88, 1
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  %91 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %92 = load %struct.DataObject*, %struct.DataObject** %91, align 8
  %93 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %92, i32 0, i32 1
  %94 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %94, i64 %95
  %97 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %96, i32 0, i32 0
  %98 = bitcast %union.anon* %97 to float*
  store float 0xC7EFFFFFE0000000, float* %98, align 8
  store i64 2, i64* %3, align 8
  br label %168

99:                                               ; preds = %87
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 2
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  call void @errorMessage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  %103 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %104 = load %struct.DataObject*, %struct.DataObject** %103, align 8
  %105 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %104, i32 0, i32 1
  %106 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %106, i64 %107
  %109 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %108, i32 0, i32 0
  %110 = bitcast %union.anon* %109 to float*
  store float 0xC7EFFFFFE0000000, float* %110, align 8
  store i64 1, i64* %3, align 8
  br label %168

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %6, align 8
  br label %69, !llvm.loop !4

117:                                              ; preds = %69
  store i64 8, i64* %6, align 8
  br label %118

118:                                              ; preds = %164, %117
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %118
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %124 = call i64 @getNonKeyAttribute(%struct._IO_FILE* noundef %123, i8** noundef %11)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %130 = load %struct.DataObject*, %struct.DataObject** %129, align 8
  %131 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %130, i32 0, i32 1
  %132 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %132, i64 %133
  %135 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %134, i32 0, i32 0
  %136 = bitcast %union.anon* %135 to i8**
  store i8* %128, i8** %136, align 8
  br label %163

137:                                              ; preds = %122
  %138 = load i64, i64* %7, align 8
  %139 = icmp eq i64 %138, 2
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  %141 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %142 = load %struct.DataObject*, %struct.DataObject** %141, align 8
  %143 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %142, i32 0, i32 1
  %144 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %144, i64 %145
  %147 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %146, i32 0, i32 0
  %148 = bitcast %union.anon* %147 to i8**
  store i8* null, i8** %148, align 8
  store i64 2, i64* %3, align 8
  br label %168

149:                                              ; preds = %137
  %150 = load i64, i64* %7, align 8
  %151 = icmp eq i64 %150, 1
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 noundef signext 1)
  %153 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %154 = load %struct.DataObject*, %struct.DataObject** %153, align 8
  %155 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %154, i32 0, i32 1
  %156 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %156, i64 %157
  %159 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %158, i32 0, i32 0
  %160 = bitcast %union.anon* %159 to i8**
  store i8* null, i8** %160, align 8
  store i64 4, i64* %3, align 8
  br label %168

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %127
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %6, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %6, align 8
  br label %118, !llvm.loop !6

167:                                              ; preds = %118
  store i64 0, i64* %3, align 8
  br label %168

168:                                              ; preds = %167, %152, %140, %102, %90, %67, %60, %38, %34, %30
  %169 = load i64, i64* %3, align 8
  ret i64 %169
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
