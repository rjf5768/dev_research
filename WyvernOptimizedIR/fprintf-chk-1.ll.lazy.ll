; ModuleID = './fprintf-chk-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/fprintf-chk-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@should_optimize = dso_local global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef %1, i8* noundef %2, ...) #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store volatile i32 1, i32* @should_optimize, align 4
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = call i32 @vfprintf(%struct._IO_FILE* noundef %0, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6) #4
  %8 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %8)
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store volatile i32 1, i32* @should_optimize, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = load volatile i32, i32* @should_optimize, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  store volatile i32 0, i32* @should_optimize, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %.not1 = icmp eq i32 %7, 5
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %5
  %10 = load volatile i32, i32* @should_optimize, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %11, label %12

11:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  store volatile i32 1, i32* @should_optimize, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = load volatile i32, i32* @should_optimize, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %17

16:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  store volatile i32 0, i32* @should_optimize, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not4 = icmp eq i32 %19, 6
  br i1 %.not4, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = load volatile i32, i32* @should_optimize, align 4
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %23, label %24

23:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  store volatile i32 1, i32* @should_optimize, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %27 = load volatile i32, i32* @should_optimize, align 4
  %.not6 = icmp eq i32 %27, 0
  br i1 %.not6, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %24
  store volatile i32 0, i32* @should_optimize, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %30, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %.not7 = icmp eq i32 %31, 1
  br i1 %.not7, label %33, label %32

32:                                               ; preds = %29
  call void @abort() #5
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %29
  %34 = load volatile i32, i32* @should_optimize, align 4
  %.not8 = icmp eq i32 %34, 0
  br i1 %.not8, label %35, label %36

35:                                               ; preds = %33
  call void @abort() #5
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  store volatile i32 1, i32* @should_optimize, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %39 = load volatile i32, i32* @should_optimize, align 4
  %.not9 = icmp eq i32 %39, 0
  br i1 %.not9, label %40, label %41

40:                                               ; preds = %36
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  store volatile i32 0, i32* @should_optimize, align 4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %42, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %.not10 = icmp eq i32 %43, 0
  br i1 %.not10, label %45, label %44

44:                                               ; preds = %41
  call void @abort() #5
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %41
  %46 = load volatile i32, i32* @should_optimize, align 4
  %.not11 = icmp eq i32 %46, 0
  br i1 %.not11, label %47, label %48

47:                                               ; preds = %45
  call void @abort() #5
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %45
  store volatile i32 1, i32* @should_optimize, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %49, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %51 = load volatile i32, i32* @should_optimize, align 4
  %.not12 = icmp eq i32 %51, 0
  br i1 %.not12, label %52, label %53

52:                                               ; preds = %48
  call void @abort() #5
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %48
  store volatile i32 0, i32* @should_optimize, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %54, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %.not13 = icmp eq i32 %55, 5
  br i1 %.not13, label %57, label %56

56:                                               ; preds = %53
  call void @abort() #5
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %53
  %58 = load volatile i32, i32* @should_optimize, align 4
  %.not14 = icmp eq i32 %58, 0
  br i1 %.not14, label %59, label %60

59:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  store volatile i32 1, i32* @should_optimize, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %61, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = load volatile i32, i32* @should_optimize, align 4
  %.not15 = icmp eq i32 %63, 0
  br i1 %.not15, label %64, label %65

64:                                               ; preds = %60
  call void @abort() #5
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %60
  store volatile i32 0, i32* @should_optimize, align 4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %66, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not16 = icmp eq i32 %67, 6
  br i1 %.not16, label %69, label %68

68:                                               ; preds = %65
  call void @abort() #5
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %65
  %70 = load volatile i32, i32* @should_optimize, align 4
  %.not17 = icmp eq i32 %70, 0
  br i1 %.not17, label %71, label %72

71:                                               ; preds = %69
  call void @abort() #5
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  store volatile i32 1, i32* @should_optimize, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %73, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = load volatile i32, i32* @should_optimize, align 4
  %.not18 = icmp eq i32 %75, 0
  br i1 %.not18, label %76, label %77

76:                                               ; preds = %72
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %72
  store volatile i32 0, i32* @should_optimize, align 4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %79 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %78, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %.not19 = icmp eq i32 %79, 1
  br i1 %.not19, label %81, label %80

80:                                               ; preds = %77
  call void @abort() #5
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %77
  %82 = load volatile i32, i32* @should_optimize, align 4
  %.not20 = icmp eq i32 %82, 0
  br i1 %.not20, label %83, label %84

83:                                               ; preds = %81
  call void @abort() #5
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %81
  store volatile i32 1, i32* @should_optimize, align 4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %85, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %87 = load volatile i32, i32* @should_optimize, align 4
  %.not21 = icmp eq i32 %87, 0
  br i1 %.not21, label %88, label %89

88:                                               ; preds = %84
  call void @abort() #5
  br label %UnifiedUnreachableBlock

89:                                               ; preds = %84
  store volatile i32 0, i32* @should_optimize, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %90, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %.not22 = icmp eq i32 %91, 0
  br i1 %.not22, label %93, label %92

92:                                               ; preds = %89
  call void @abort() #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %89
  %94 = load volatile i32, i32* @should_optimize, align 4
  %.not23 = icmp eq i32 %94, 0
  br i1 %.not23, label %95, label %96

95:                                               ; preds = %93
  call void @abort() #5
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  store volatile i32 1, i32* @should_optimize, align 4
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %99 = load volatile i32, i32* @should_optimize, align 4
  %.not24 = icmp eq i32 %99, 0
  br i1 %.not24, label %100, label %101

100:                                              ; preds = %96
  call void @abort() #5
  br label %UnifiedUnreachableBlock

101:                                              ; preds = %96
  store volatile i32 0, i32* @should_optimize, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %103 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %102, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %.not25 = icmp eq i32 %103, 1
  br i1 %.not25, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #5
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %101
  %106 = load volatile i32, i32* @should_optimize, align 4
  %.not26 = icmp eq i32 %106, 0
  br i1 %.not26, label %107, label %108

107:                                              ; preds = %105
  call void @abort() #5
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %105
  store volatile i32 0, i32* @should_optimize, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %109, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %111 = load volatile i32, i32* @should_optimize, align 4
  %.not27 = icmp eq i32 %111, 0
  br i1 %.not27, label %112, label %113

112:                                              ; preds = %108
  call void @abort() #5
  br label %UnifiedUnreachableBlock

113:                                              ; preds = %108
  store volatile i32 0, i32* @should_optimize, align 4
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %115 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %114, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not28 = icmp eq i32 %115, 7
  br i1 %.not28, label %117, label %116

116:                                              ; preds = %113
  call void @abort() #5
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %113
  %118 = load volatile i32, i32* @should_optimize, align 4
  %.not29 = icmp eq i32 %118, 0
  br i1 %.not29, label %119, label %120

119:                                              ; preds = %117
  call void @abort() #5
  br label %UnifiedUnreachableBlock

120:                                              ; preds = %117
  store volatile i32 0, i32* @should_optimize, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %122 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %121, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %123 = load volatile i32, i32* @should_optimize, align 4
  %.not30 = icmp eq i32 %123, 0
  br i1 %.not30, label %124, label %125

124:                                              ; preds = %120
  call void @abort() #5
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %120
  store volatile i32 0, i32* @should_optimize, align 4
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %126, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %.not31 = icmp eq i32 %127, 2
  br i1 %.not31, label %129, label %128

128:                                              ; preds = %125
  call void @abort() #5
  br label %UnifiedUnreachableBlock

129:                                              ; preds = %125
  %130 = load volatile i32, i32* @should_optimize, align 4
  %.not32 = icmp eq i32 %130, 0
  br i1 %.not32, label %131, label %132

131:                                              ; preds = %129
  call void @abort() #5
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %129
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %131, %128, %124, %119, %116, %112, %107, %104, %100, %95, %92, %88, %83, %80, %76, %71, %68, %64, %59, %56, %52, %47, %44, %40, %35, %32, %28, %23, %20, %16, %11, %8, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
