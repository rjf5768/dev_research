; ModuleID = './printf-chk-1.ll'
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
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store volatile i32 1, i32* @should_optimize, align 4
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = call i32 @vprintf(i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5) #4
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %7)
  ret i32 %6
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store volatile i32 0, i32* @should_optimize, align 4
  %1 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %2 = load volatile i32, i32* @should_optimize, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  store volatile i32 0, i32* @should_optimize, align 4
  %5 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %.not1 = icmp eq i32 %5, 5
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @should_optimize, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  store volatile i32 1, i32* @should_optimize, align 4
  %11 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = load volatile i32, i32* @should_optimize, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  store volatile i32 0, i32* @should_optimize, align 4
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not4 = icmp eq i32 %15, 6
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = load volatile i32, i32* @should_optimize, align 4
  %.not5 = icmp eq i32 %18, 0
  br i1 %.not5, label %19, label %20

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  store volatile i32 1, i32* @should_optimize, align 4
  %21 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = load volatile i32, i32* @should_optimize, align 4
  %.not6 = icmp eq i32 %22, 0
  br i1 %.not6, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  store volatile i32 0, i32* @should_optimize, align 4
  %25 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %.not7 = icmp eq i32 %25, 1
  br i1 %.not7, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #5
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = load volatile i32, i32* @should_optimize, align 4
  %.not8 = icmp eq i32 %28, 0
  br i1 %.not8, label %29, label %30

29:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  store volatile i32 1, i32* @should_optimize, align 4
  %31 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %32 = load volatile i32, i32* @should_optimize, align 4
  %.not9 = icmp eq i32 %32, 0
  br i1 %.not9, label %33, label %34

33:                                               ; preds = %30
  call void @abort() #5
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %30
  store volatile i32 0, i32* @should_optimize, align 4
  %35 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %.not10 = icmp eq i32 %35, 0
  br i1 %.not10, label %37, label %36

36:                                               ; preds = %34
  call void @abort() #5
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34
  %38 = load volatile i32, i32* @should_optimize, align 4
  %.not11 = icmp eq i32 %38, 0
  br i1 %.not11, label %39, label %40

39:                                               ; preds = %37
  call void @abort() #5
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %37
  store volatile i32 0, i32* @should_optimize, align 4
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %42 = load volatile i32, i32* @should_optimize, align 4
  %.not12 = icmp eq i32 %42, 0
  br i1 %.not12, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  store volatile i32 0, i32* @should_optimize, align 4
  %45 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %.not13 = icmp eq i32 %45, 5
  br i1 %.not13, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %44
  %48 = load volatile i32, i32* @should_optimize, align 4
  %.not14 = icmp eq i32 %48, 0
  br i1 %.not14, label %49, label %50

49:                                               ; preds = %47
  call void @abort() #5
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  store volatile i32 1, i32* @should_optimize, align 4
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %52 = load volatile i32, i32* @should_optimize, align 4
  %.not15 = icmp eq i32 %52, 0
  br i1 %.not15, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #5
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %50
  store volatile i32 0, i32* @should_optimize, align 4
  %55 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not16 = icmp eq i32 %55, 6
  br i1 %.not16, label %57, label %56

56:                                               ; preds = %54
  call void @abort() #5
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54
  %58 = load volatile i32, i32* @should_optimize, align 4
  %.not17 = icmp eq i32 %58, 0
  br i1 %.not17, label %59, label %60

59:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  store volatile i32 1, i32* @should_optimize, align 4
  %61 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %62 = load volatile i32, i32* @should_optimize, align 4
  %.not18 = icmp eq i32 %62, 0
  br i1 %.not18, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #5
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %60
  store volatile i32 0, i32* @should_optimize, align 4
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %.not19 = icmp eq i32 %65, 1
  br i1 %.not19, label %67, label %66

66:                                               ; preds = %64
  call void @abort() #5
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %64
  %68 = load volatile i32, i32* @should_optimize, align 4
  %.not20 = icmp eq i32 %68, 0
  br i1 %.not20, label %69, label %70

69:                                               ; preds = %67
  call void @abort() #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  store volatile i32 1, i32* @should_optimize, align 4
  %71 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %72 = load volatile i32, i32* @should_optimize, align 4
  %.not21 = icmp eq i32 %72, 0
  br i1 %.not21, label %73, label %74

73:                                               ; preds = %70
  call void @abort() #5
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %70
  store volatile i32 0, i32* @should_optimize, align 4
  %75 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %.not22 = icmp eq i32 %75, 0
  br i1 %.not22, label %77, label %76

76:                                               ; preds = %74
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %74
  %78 = load volatile i32, i32* @should_optimize, align 4
  %.not23 = icmp eq i32 %78, 0
  br i1 %.not23, label %79, label %80

79:                                               ; preds = %77
  call void @abort() #5
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %77
  store volatile i32 1, i32* @should_optimize, align 4
  %81 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %82 = load volatile i32, i32* @should_optimize, align 4
  %.not24 = icmp eq i32 %82, 0
  br i1 %.not24, label %83, label %84

83:                                               ; preds = %80
  call void @abort() #5
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %80
  store volatile i32 0, i32* @should_optimize, align 4
  %85 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef 120)
  %.not25 = icmp eq i32 %85, 1
  br i1 %.not25, label %87, label %86

86:                                               ; preds = %84
  call void @abort() #5
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  %88 = load volatile i32, i32* @should_optimize, align 4
  %.not26 = icmp eq i32 %88, 0
  br i1 %.not26, label %89, label %90

89:                                               ; preds = %87
  call void @abort() #5
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  store volatile i32 1, i32* @should_optimize, align 4
  %91 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = load volatile i32, i32* @should_optimize, align 4
  %.not27 = icmp eq i32 %92, 0
  br i1 %.not27, label %93, label %94

93:                                               ; preds = %90
  call void @abort() #5
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %90
  store volatile i32 0, i32* @should_optimize, align 4
  %95 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not28 = icmp eq i32 %95, 7
  br i1 %.not28, label %97, label %96

96:                                               ; preds = %94
  call void @abort() #5
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %94
  %98 = load volatile i32, i32* @should_optimize, align 4
  %.not29 = icmp eq i32 %98, 0
  br i1 %.not29, label %99, label %100

99:                                               ; preds = %97
  call void @abort() #5
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %97
  store volatile i32 0, i32* @should_optimize, align 4
  %101 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %102 = load volatile i32, i32* @should_optimize, align 4
  %.not30 = icmp eq i32 %102, 0
  br i1 %.not30, label %103, label %104

103:                                              ; preds = %100
  call void @abort() #5
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %100
  store volatile i32 0, i32* @should_optimize, align 4
  %105 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  %.not31 = icmp eq i32 %105, 2
  br i1 %.not31, label %107, label %106

106:                                              ; preds = %104
  call void @abort() #5
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %104
  %108 = load volatile i32, i32* @should_optimize, align 4
  %.not32 = icmp eq i32 %108, 0
  br i1 %.not32, label %109, label %110

109:                                              ; preds = %107
  call void @abort() #5
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %107
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %109, %106, %103, %99, %96, %93, %89, %86, %83, %79, %76, %73, %69, %66, %63, %59, %56, %53, %49, %46, %43, %39, %36, %33, %29, %26, %23, %19, %16, %13, %9, %6, %3
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
