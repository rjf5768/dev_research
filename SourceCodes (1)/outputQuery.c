; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputQuery.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@outputQuery.name = internal global [12 x i8] c"outputQuery\00", align 1
@outputQuery.temp = internal global [51 x i8] zeroinitializer, align 16
@outputQuery.dataObjectString = internal global [44484 x i8] zeroinitializer, align 16
@outputFile = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"outputFile\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputQuery.c\00", align 1
@__PRETTY_FUNCTION__.outputQuery = private unnamed_addr constant [31 x i8] c"void outputQuery(DataObject *)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"!(dataObject->type != SMALL && dataObject->type != MEDIUM && dataObject->type != LARGE )\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"dataObject->attributes[ i ].value.nonKey\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"strlen( dataObject->attributes[ i ].value.nonKey ) > 0\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"dataObject->attributes[ numberOfAttributes ].value.nonKey\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"strlen(dataObject->attributes[numberOfAttributes].value.nonKey) > 0\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"strlen( dataObjectString ) <= REPRESENTATION_LENGTH\00", align 1
@outputBuffer = internal global [88967 x i8] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [30 x i8] c"output buffer full - flushing\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@__PRETTY_FUNCTION__.initOutputBuffer = private unnamed_addr constant [30 x i8] c"void initOutputBuffer(FILE *)\00", align 1
@__PRETTY_FUNCTION__.flushOutputBuffer = private unnamed_addr constant [29 x i8] c"void flushOutputBuffer(void)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outputQuery(%struct.DataObject* noundef %0) #0 {
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.DataObject* %0, %struct.DataObject** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %11 = icmp ne %struct.DataObject* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %21 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %26 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %14
  br label %31

30:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

31:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  %32 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %33 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 17, i64* %4, align 8
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %39 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i64 24, i64* %4, align 8
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %45 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i64 50, i64* %4, align 8
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %36
  store i8 0, i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), align 16
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %3, align 8
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %57 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %56, i32 0, i32 1
  %58 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %58, i64 %59
  %61 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to float*
  %63 = load float, float* %62, align 8
  %64 = fpext float %63 to double
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double noundef %64) #6
  %66 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0)) #6
  %67 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %68

68:                                               ; preds = %55
  %69 = load i64, i64* %3, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %52, !llvm.loop !4

71:                                               ; preds = %52
  store i64 8, i64* %3, align 8
  br label %72

72:                                               ; preds = %112, %71
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %78 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %77, i32 0, i32 1
  %79 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %79, i64 %80
  %82 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %81, i32 0, i32 0
  %83 = bitcast %union.anon* %82 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %88

87:                                               ; preds = %76
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

88:                                               ; preds = %86
  %89 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %90 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %89, i32 0, i32 1
  %91 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %90, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %91, i64 %92
  %94 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %93, i32 0, i32 0
  %95 = bitcast %union.anon* %94 to i8**
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strlen(i8* noundef %96) #7
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %101

100:                                              ; preds = %88
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

101:                                              ; preds = %99
  %102 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %103 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %102, i32 0, i32 1
  %104 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %103, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %104, i64 %105
  %107 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %107 to i8**
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef %109) #6
  %111 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %112

112:                                              ; preds = %101
  %113 = load i64, i64* %3, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %72, !llvm.loop !6

115:                                              ; preds = %72
  %116 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %117 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %116, i32 0, i32 1
  %118 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %118, i64 %119
  %121 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %120, i32 0, i32 0
  %122 = bitcast %union.anon* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %127

126:                                              ; preds = %115
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

127:                                              ; preds = %125
  %128 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %129 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %128, i32 0, i32 1
  %130 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %130, i64 %131
  %133 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %132, i32 0, i32 0
  %134 = bitcast %union.anon* %133 to i8**
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strlen(i8* noundef %135) #7
  %137 = icmp ugt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %140

139:                                              ; preds = %127
  call void @__assert_fail(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

140:                                              ; preds = %138
  %141 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %142 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %141, i32 0, i32 1
  %143 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %142, align 8
  %144 = load i64, i64* %4, align 8
  %145 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %143, i64 %144
  %146 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %145, i32 0, i32 0
  %147 = bitcast %union.anon* %146 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef %148) #6
  %150 = call i8* @strcat(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6
  %151 = call i64 @strlen(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #7
  %152 = icmp ule i64 %151, 44483
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %155

154:                                              ; preds = %140
  call void @__assert_fail(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #5
  unreachable

155:                                              ; preds = %153
  %156 = call i64 @strlen(i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #7
  %157 = call i64 @strlen(i8* noundef getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0)) #7
  %158 = add i64 %156, %157
  %159 = icmp ugt i64 %158, 88966
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @outputQuery.name, i64 0, i64 0), i8 noundef signext 1)
  call void @flushErrorMessage()
  call void @flushOutputBuffer()
  br label %161

161:                                              ; preds = %160, %155
  %162 = call i8* @strcat(i8* noundef getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #4

declare dso_local void @flushErrorMessage() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushOutputBuffer() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.flushOutputBuffer, i64 0, i64 0)) #5
  unreachable

5:                                                ; preds = %3
  %6 = call i64 @strlen(i8* noundef getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0)) #7
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11)
  br label %13

13:                                               ; preds = %8, %5
  store i8 0, i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initOutputBuffer(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = icmp ne %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.initOutputBuffer, i64 0, i64 0)) #5
  unreachable

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @outputFile, align 8
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
