; ModuleID = './outputQuery.ll'
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
define dso_local void @outputQuery(%struct.DataObject* noundef readonly %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %.not = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not3 = icmp eq %struct.DataObject* %0, null
  br i1 %.not3, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %.not4 = icmp eq i32 %10, 1
  br i1 %.not4, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %.not14 = icmp eq i32 %13, 2
  br i1 %.not14, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %.not15 = icmp eq i32 %16, 3
  br i1 %.not15, label %17, label %18

17:                                               ; preds = %14, %11, %8
  br label %19

18:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %29
  %.0 = phi i64 [ 50, %33 ], [ 0, %29 ]
  br label %35

35:                                               ; preds = %34, %28
  %.1 = phi i64 [ 24, %28 ], [ %.0, %34 ]
  br label %36

36:                                               ; preds = %35, %23
  %.2 = phi i64 [ 17, %23 ], [ %.1, %35 ]
  store i8 0, i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), align 16
  br label %37

37:                                               ; preds = %49, %36
  %.01 = phi i64 [ 0, %36 ], [ %50, %49 ]
  %38 = icmp ult i64 %.01, 8
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %41 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %40, align 8
  %42 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %41, i64 %.01, i32 0
  %43 = bitcast %union.anon* %42 to float*
  %44 = load float, float* %43, align 8
  %45 = fpext float %44 to double
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double noundef %45) #8
  %47 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0)) #8
  %strlen12 = call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0))
  %endptr13 = getelementptr [44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 %strlen12
  %48 = bitcast i8* %endptr13 to i16*
  store i16 32, i16* %48, align 1
  br label %49

49:                                               ; preds = %39
  %50 = add nuw nsw i64 %.01, 1
  br label %37, !llvm.loop !4

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %75, %51
  %.12 = phi i64 [ 8, %51 ], [ %76, %75 ]
  %53 = icmp slt i64 %.12, %.2
  br i1 %53, label %54, label %77

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %56 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %55, align 8
  %57 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %56, i64 %.12, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %.not7 = icmp eq i8* %58, null
  br i1 %.not7, label %60, label %59

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %63 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %62, align 8
  %64 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %63, i64 %.12, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %strlenfirst8 = load i8, i8* %65, align 1
  %.not9 = icmp eq i8 %strlenfirst8, 0
  br i1 %.not9, label %67, label %66

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %61
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %70 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %69, align 8
  %71 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %70, i64 %.12, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %72) #8
  %strlen10 = call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0))
  %endptr11 = getelementptr [44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 %strlen10
  %74 = bitcast i8* %endptr11 to i16*
  store i16 32, i16* %74, align 1
  br label %75

75:                                               ; preds = %68
  %76 = add nuw nsw i64 %.12, 1
  br label %52, !llvm.loop !6

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %79 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %78, align 8
  %80 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %79, i64 %.2, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %.not5 = icmp eq i8* %81, null
  br i1 %.not5, label %83, label %82

82:                                               ; preds = %77
  br label %84

83:                                               ; preds = %77
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %86 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %85, align 8
  %87 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %86, i64 %.2, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %strlenfirst = load i8, i8* %88, align 1
  %.not6 = icmp eq i8 %strlenfirst, 0
  br i1 %.not6, label %90, label %89

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %84
  call void @__assert_fail(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i64 0, i32 1
  %93 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %92, align 8
  %94 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %93, i64 %.2, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %95) #8
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0))
  %endptr = getelementptr [44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 %strlen
  %97 = bitcast i8* %endptr to i16*
  store i16 10, i16* %97, align 1
  %98 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #9
  %99 = icmp ult i64 %98, 44484
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %102

101:                                              ; preds = %91
  call void @__assert_fail(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %100
  %103 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #9
  %104 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0)) #9
  %105 = add i64 %103, %104
  %106 = icmp ugt i64 %105, 88966
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8 noundef signext 0) #8
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @outputQuery.name, i64 0, i64 0), i8 noundef signext 1) #8
  call void @flushErrorMessage() #8
  call void @flushOutputBuffer()
  br label %108

108:                                              ; preds = %107, %102
  %109 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #8
  ret void

UnifiedUnreachableBlock:                          ; preds = %101, %90, %83, %67, %60, %18, %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #3

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #4

declare dso_local void @flushErrorMessage() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushOutputBuffer() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %.not = icmp eq %struct._IO_FILE* %1, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.flushOutputBuffer, i64 0, i64 0)) #7
  unreachable

4:                                                ; preds = %2
  %strlenfirst = load i8, i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), align 16
  %.not1 = icmp eq i8 %strlenfirst, 0
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %fputs = call i32 @fputs(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7) #8
  br label %9

9:                                                ; preds = %5, %4
  store i8 0, i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initOutputBuffer(%struct._IO_FILE* noundef %0) #0 {
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.initOutputBuffer, i64 0, i64 0)) #7
  unreachable

4:                                                ; preds = %2
  store %struct._IO_FILE* %0, %struct._IO_FILE** @outputFile, align 8
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
