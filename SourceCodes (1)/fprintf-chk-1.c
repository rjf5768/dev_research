; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/fprintf-chk-1.c'
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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store volatile i32 1, i32* @should_optimize, align 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %14 = call i32 @vfprintf(%struct._IO_FILE* noundef %11, i8* noundef %12, %struct.__va_list_tag* noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = load i32, i32* %8, align 4
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store volatile i32 1, i32* @should_optimize, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %4 = load volatile i32, i32* @should_optimize, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  store volatile i32 0, i32* @should_optimize, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @abort() #4
  unreachable

12:                                               ; preds = %7
  %13 = load volatile i32, i32* @should_optimize, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #4
  unreachable

16:                                               ; preds = %12
  store volatile i32 1, i32* @should_optimize, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = load volatile i32, i32* @should_optimize, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call void @abort() #4
  unreachable

22:                                               ; preds = %16
  store volatile i32 0, i32* @should_optimize, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %23, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 6
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #4
  unreachable

27:                                               ; preds = %22
  %28 = load volatile i32, i32* @should_optimize, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @abort() #4
  unreachable

31:                                               ; preds = %27
  store volatile i32 1, i32* @should_optimize, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %32, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = load volatile i32, i32* @should_optimize, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @abort() #4
  unreachable

37:                                               ; preds = %31
  store volatile i32 0, i32* @should_optimize, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @abort() #4
  unreachable

42:                                               ; preds = %37
  %43 = load volatile i32, i32* @should_optimize, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @abort() #4
  unreachable

46:                                               ; preds = %42
  store volatile i32 1, i32* @should_optimize, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %49 = load volatile i32, i32* @should_optimize, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @abort() #4
  unreachable

52:                                               ; preds = %46
  store volatile i32 0, i32* @should_optimize, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %53, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @abort() #4
  unreachable

57:                                               ; preds = %52
  %58 = load volatile i32, i32* @should_optimize, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @abort() #4
  unreachable

61:                                               ; preds = %57
  store volatile i32 1, i32* @should_optimize, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %62, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = load volatile i32, i32* @should_optimize, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  call void @abort() #4
  unreachable

67:                                               ; preds = %61
  store volatile i32 0, i32* @should_optimize, align 4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %68, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i32 %69, 5
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @abort() #4
  unreachable

72:                                               ; preds = %67
  %73 = load volatile i32, i32* @should_optimize, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @abort() #4
  unreachable

76:                                               ; preds = %72
  store volatile i32 1, i32* @should_optimize, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %77, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %79 = load volatile i32, i32* @should_optimize, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  call void @abort() #4
  unreachable

82:                                               ; preds = %76
  store volatile i32 0, i32* @should_optimize, align 4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %83, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp ne i32 %84, 6
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void @abort() #4
  unreachable

87:                                               ; preds = %82
  %88 = load volatile i32, i32* @should_optimize, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void @abort() #4
  unreachable

91:                                               ; preds = %87
  store volatile i32 1, i32* @should_optimize, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %92, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %94 = load volatile i32, i32* @should_optimize, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  call void @abort() #4
  unreachable

97:                                               ; preds = %91
  store volatile i32 0, i32* @should_optimize, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %99 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %98, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  call void @abort() #4
  unreachable

102:                                              ; preds = %97
  %103 = load volatile i32, i32* @should_optimize, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @abort() #4
  unreachable

106:                                              ; preds = %102
  store volatile i32 1, i32* @should_optimize, align 4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %108 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %107, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %109 = load volatile i32, i32* @should_optimize, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  call void @abort() #4
  unreachable

112:                                              ; preds = %106
  store volatile i32 0, i32* @should_optimize, align 4
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %113, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  call void @abort() #4
  unreachable

117:                                              ; preds = %112
  %118 = load volatile i32, i32* @should_optimize, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @abort() #4
  unreachable

121:                                              ; preds = %117
  store volatile i32 1, i32* @should_optimize, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %123 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %122, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %124 = load volatile i32, i32* @should_optimize, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void @abort() #4
  unreachable

127:                                              ; preds = %121
  store volatile i32 0, i32* @should_optimize, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %129 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %128, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  call void @abort() #4
  unreachable

132:                                              ; preds = %127
  %133 = load volatile i32, i32* @should_optimize, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call void @abort() #4
  unreachable

136:                                              ; preds = %132
  store volatile i32 0, i32* @should_optimize, align 4
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %138 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %137, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %139 = load volatile i32, i32* @should_optimize, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  call void @abort() #4
  unreachable

142:                                              ; preds = %136
  store volatile i32 0, i32* @should_optimize, align 4
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %144 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %143, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %145 = icmp ne i32 %144, 7
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  call void @abort() #4
  unreachable

147:                                              ; preds = %142
  %148 = load volatile i32, i32* @should_optimize, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void @abort() #4
  unreachable

151:                                              ; preds = %147
  store volatile i32 0, i32* @should_optimize, align 4
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %153 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %152, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %154 = load volatile i32, i32* @should_optimize, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  call void @abort() #4
  unreachable

157:                                              ; preds = %151
  store volatile i32 0, i32* @should_optimize, align 4
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %159 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %158, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %160 = icmp ne i32 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  call void @abort() #4
  unreachable

162:                                              ; preds = %157
  %163 = load volatile i32, i32* @should_optimize, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call void @abort() #4
  unreachable

166:                                              ; preds = %162
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
