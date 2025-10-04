; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/printf-chk-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/printf-chk-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@should_optimize = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__printf_chk(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store volatile i32 1, i32* @should_optimize, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %11 = call i32 @vprintf(i8* noundef %9, %struct.__va_list_tag* noundef %10)
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  %14 = load i32, i32* %6, align 4
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store volatile i32 0, i32* @should_optimize, align 4
  %2 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = load volatile i32, i32* @should_optimize, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %0
  store volatile i32 0, i32* @should_optimize, align 4
  %7 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @abort() #4
  unreachable

10:                                               ; preds = %6
  %11 = load volatile i32, i32* @should_optimize, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #4
  unreachable

14:                                               ; preds = %10
  store volatile i32 1, i32* @should_optimize, align 4
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = load volatile i32, i32* @should_optimize, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #4
  unreachable

19:                                               ; preds = %14
  store volatile i32 0, i32* @should_optimize, align 4
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #4
  unreachable

23:                                               ; preds = %19
  %24 = load volatile i32, i32* @should_optimize, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #4
  unreachable

27:                                               ; preds = %23
  store volatile i32 1, i32* @should_optimize, align 4
  %28 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = load volatile i32, i32* @should_optimize, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @abort() #4
  unreachable

32:                                               ; preds = %27
  store volatile i32 0, i32* @should_optimize, align 4
  %33 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #4
  unreachable

36:                                               ; preds = %32
  %37 = load volatile i32, i32* @should_optimize, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #4
  unreachable

40:                                               ; preds = %36
  store volatile i32 1, i32* @should_optimize, align 4
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %42 = load volatile i32, i32* @should_optimize, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @abort() #4
  unreachable

45:                                               ; preds = %40
  store volatile i32 0, i32* @should_optimize, align 4
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #4
  unreachable

49:                                               ; preds = %45
  %50 = load volatile i32, i32* @should_optimize, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @abort() #4
  unreachable

53:                                               ; preds = %49
  store volatile i32 0, i32* @should_optimize, align 4
  %54 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %55 = load volatile i32, i32* @should_optimize, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @abort() #4
  unreachable

58:                                               ; preds = %53
  store volatile i32 0, i32* @should_optimize, align 4
  %59 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 5
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @abort() #4
  unreachable

62:                                               ; preds = %58
  %63 = load volatile i32, i32* @should_optimize, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @abort() #4
  unreachable

66:                                               ; preds = %62
  store volatile i32 1, i32* @should_optimize, align 4
  %67 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %68 = load volatile i32, i32* @should_optimize, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @abort() #4
  unreachable

71:                                               ; preds = %66
  store volatile i32 0, i32* @should_optimize, align 4
  %72 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 6
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @abort() #4
  unreachable

75:                                               ; preds = %71
  %76 = load volatile i32, i32* @should_optimize, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @abort() #4
  unreachable

79:                                               ; preds = %75
  store volatile i32 1, i32* @should_optimize, align 4
  %80 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = load volatile i32, i32* @should_optimize, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void @abort() #4
  unreachable

84:                                               ; preds = %79
  store volatile i32 0, i32* @should_optimize, align 4
  %85 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #4
  unreachable

88:                                               ; preds = %84
  %89 = load volatile i32, i32* @should_optimize, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @abort() #4
  unreachable

92:                                               ; preds = %88
  store volatile i32 1, i32* @should_optimize, align 4
  %93 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %94 = load volatile i32, i32* @should_optimize, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @abort() #4
  unreachable

97:                                               ; preds = %92
  store volatile i32 0, i32* @should_optimize, align 4
  %98 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #4
  unreachable

101:                                              ; preds = %97
  %102 = load volatile i32, i32* @should_optimize, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #4
  unreachable

105:                                              ; preds = %101
  store volatile i32 1, i32* @should_optimize, align 4
  %106 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %107 = load volatile i32, i32* @should_optimize, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void @abort() #4
  unreachable

110:                                              ; preds = %105
  store volatile i32 0, i32* @should_optimize, align 4
  %111 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @abort() #4
  unreachable

114:                                              ; preds = %110
  %115 = load volatile i32, i32* @should_optimize, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @abort() #4
  unreachable

118:                                              ; preds = %114
  store volatile i32 1, i32* @should_optimize, align 4
  %119 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %120 = load volatile i32, i32* @should_optimize, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  call void @abort() #4
  unreachable

123:                                              ; preds = %118
  store volatile i32 0, i32* @should_optimize, align 4
  %124 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %125 = icmp ne i32 %124, 7
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  call void @abort() #4
  unreachable

127:                                              ; preds = %123
  %128 = load volatile i32, i32* @should_optimize, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  call void @abort() #4
  unreachable

131:                                              ; preds = %127
  store volatile i32 0, i32* @should_optimize, align 4
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %133 = load volatile i32, i32* @should_optimize, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @abort() #4
  unreachable

136:                                              ; preds = %131
  store volatile i32 0, i32* @should_optimize, align 4
  %137 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %138 = icmp ne i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @abort() #4
  unreachable

140:                                              ; preds = %136
  %141 = load volatile i32, i32* @should_optimize, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @abort() #4
  unreachable

144:                                              ; preds = %140
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
