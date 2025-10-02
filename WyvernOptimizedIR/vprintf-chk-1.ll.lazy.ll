; ModuleID = './vprintf-chk-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vprintf-chk-1.c"
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
define dso_local i32 @__vprintf_chk(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  store volatile i32 1, i32* @should_optimize, align 4
  %4 = call i32 @vprintf(i8* noundef %1, %struct.__va_list_tag* noundef %2) #4
  ret i32 %4
}

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @inner(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  switch i32 %0, label %149 [
    i32 0, label %6
    i32 1, label %19
    i32 2, label %32
    i32 3, label %45
    i32 4, label %58
    i32 5, label %71
    i32 6, label %84
    i32 7, label %97
    i32 8, label %110
    i32 9, label %123
    i32 10, label %136
  ]

6:                                                ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %8 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %7)
  %9 = load volatile i32, i32* @should_optimize, align 4
  %.not30 = icmp eq i32 %9, 0
  br i1 %.not30, label %10, label %11

10:                                               ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  store volatile i32 0, i32* @should_optimize, align 4
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %12)
  %.not31 = icmp eq i32 %13, 5
  br i1 %.not31, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = load volatile i32, i32* @should_optimize, align 4
  %.not32 = icmp eq i32 %16, 0
  br i1 %.not32, label %17, label %18

17:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  br label %150

19:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %21 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %20)
  %22 = load volatile i32, i32* @should_optimize, align 4
  %.not27 = icmp eq i32 %22, 0
  br i1 %.not27, label %23, label %24

23:                                               ; preds = %19
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %19
  store volatile i32 0, i32* @should_optimize, align 4
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %26 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %25)
  %.not28 = icmp eq i32 %26, 6
  br i1 %.not28, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = load volatile i32, i32* @should_optimize, align 4
  %.not29 = icmp eq i32 %29, 0
  br i1 %.not29, label %30, label %31

30:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %28
  br label %150

32:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %34 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %33)
  %35 = load volatile i32, i32* @should_optimize, align 4
  %.not24 = icmp eq i32 %35, 0
  br i1 %.not24, label %36, label %37

36:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %32
  store volatile i32 0, i32* @should_optimize, align 4
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %39 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %38)
  %.not25 = icmp eq i32 %39, 1
  br i1 %.not25, label %41, label %40

40:                                               ; preds = %37
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %37
  %42 = load volatile i32, i32* @should_optimize, align 4
  %.not26 = icmp eq i32 %42, 0
  br i1 %.not26, label %43, label %44

43:                                               ; preds = %41
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  br label %150

45:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %47 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %46)
  %48 = load volatile i32, i32* @should_optimize, align 4
  %.not21 = icmp eq i32 %48, 0
  br i1 %.not21, label %49, label %50

49:                                               ; preds = %45
  call void @abort() #5
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %45
  store volatile i32 0, i32* @should_optimize, align 4
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %52 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %51)
  %.not22 = icmp eq i32 %52, 0
  br i1 %.not22, label %54, label %53

53:                                               ; preds = %50
  call void @abort() #5
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %50
  %55 = load volatile i32, i32* @should_optimize, align 4
  %.not23 = icmp eq i32 %55, 0
  br i1 %.not23, label %56, label %57

56:                                               ; preds = %54
  call void @abort() #5
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54
  br label %150

58:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %60 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %59)
  %61 = load volatile i32, i32* @should_optimize, align 4
  %.not18 = icmp eq i32 %61, 0
  br i1 %.not18, label %62, label %63

62:                                               ; preds = %58
  call void @abort() #5
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %58
  store volatile i32 0, i32* @should_optimize, align 4
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %65 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %64)
  %.not19 = icmp eq i32 %65, 5
  br i1 %.not19, label %67, label %66

66:                                               ; preds = %63
  call void @abort() #5
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %63
  %68 = load volatile i32, i32* @should_optimize, align 4
  %.not20 = icmp eq i32 %68, 0
  br i1 %.not20, label %69, label %70

69:                                               ; preds = %67
  call void @abort() #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  br label %150

71:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %73 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %72)
  %74 = load volatile i32, i32* @should_optimize, align 4
  %.not15 = icmp eq i32 %74, 0
  br i1 %.not15, label %75, label %76

75:                                               ; preds = %71
  call void @abort() #5
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %71
  store volatile i32 0, i32* @should_optimize, align 4
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %78 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %77)
  %.not16 = icmp eq i32 %78, 6
  br i1 %.not16, label %80, label %79

79:                                               ; preds = %76
  call void @abort() #5
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %76
  %81 = load volatile i32, i32* @should_optimize, align 4
  %.not17 = icmp eq i32 %81, 0
  br i1 %.not17, label %82, label %83

82:                                               ; preds = %80
  call void @abort() #5
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %80
  br label %150

84:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %86 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %85)
  %87 = load volatile i32, i32* @should_optimize, align 4
  %.not12 = icmp eq i32 %87, 0
  br i1 %.not12, label %88, label %89

88:                                               ; preds = %84
  call void @abort() #5
  br label %UnifiedUnreachableBlock

89:                                               ; preds = %84
  store volatile i32 0, i32* @should_optimize, align 4
  %90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %91 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %90)
  %.not13 = icmp eq i32 %91, 1
  br i1 %.not13, label %93, label %92

92:                                               ; preds = %89
  call void @abort() #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %89
  %94 = load volatile i32, i32* @should_optimize, align 4
  %.not14 = icmp eq i32 %94, 0
  br i1 %.not14, label %95, label %96

95:                                               ; preds = %93
  call void @abort() #5
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  br label %150

97:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %99 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %98)
  %100 = load volatile i32, i32* @should_optimize, align 4
  %.not9 = icmp eq i32 %100, 0
  br i1 %.not9, label %101, label %102

101:                                              ; preds = %97
  call void @abort() #5
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %97
  store volatile i32 0, i32* @should_optimize, align 4
  %103 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %104 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %103)
  %.not10 = icmp eq i32 %104, 0
  br i1 %.not10, label %106, label %105

105:                                              ; preds = %102
  call void @abort() #5
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %102
  %107 = load volatile i32, i32* @should_optimize, align 4
  %.not11 = icmp eq i32 %107, 0
  br i1 %.not11, label %108, label %109

108:                                              ; preds = %106
  call void @abort() #5
  br label %UnifiedUnreachableBlock

109:                                              ; preds = %106
  br label %150

110:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %111 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %112 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %111)
  %113 = load volatile i32, i32* @should_optimize, align 4
  %.not6 = icmp eq i32 %113, 0
  br i1 %.not6, label %114, label %115

114:                                              ; preds = %110
  call void @abort() #5
  br label %UnifiedUnreachableBlock

115:                                              ; preds = %110
  store volatile i32 0, i32* @should_optimize, align 4
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %117 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %116)
  %.not7 = icmp eq i32 %117, 1
  br i1 %.not7, label %119, label %118

118:                                              ; preds = %115
  call void @abort() #5
  br label %UnifiedUnreachableBlock

119:                                              ; preds = %115
  %120 = load volatile i32, i32* @should_optimize, align 4
  %.not8 = icmp eq i32 %120, 0
  br i1 %.not8, label %121, label %122

121:                                              ; preds = %119
  call void @abort() #5
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %119
  br label %150

123:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %124 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %125 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %124)
  %126 = load volatile i32, i32* @should_optimize, align 4
  %.not3 = icmp eq i32 %126, 0
  br i1 %.not3, label %127, label %128

127:                                              ; preds = %123
  call void @abort() #5
  br label %UnifiedUnreachableBlock

128:                                              ; preds = %123
  store volatile i32 0, i32* @should_optimize, align 4
  %129 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %130 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %129)
  %.not4 = icmp eq i32 %130, 7
  br i1 %.not4, label %132, label %131

131:                                              ; preds = %128
  call void @abort() #5
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %128
  %133 = load volatile i32, i32* @should_optimize, align 4
  %.not5 = icmp eq i32 %133, 0
  br i1 %.not5, label %134, label %135

134:                                              ; preds = %132
  call void @abort() #5
  br label %UnifiedUnreachableBlock

135:                                              ; preds = %132
  br label %150

136:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %137 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %138 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %137)
  %139 = load volatile i32, i32* @should_optimize, align 4
  %.not = icmp eq i32 %139, 0
  br i1 %.not, label %140, label %141

140:                                              ; preds = %136
  call void @abort() #5
  br label %UnifiedUnreachableBlock

141:                                              ; preds = %136
  store volatile i32 0, i32* @should_optimize, align 4
  %142 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %143 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %142)
  %.not1 = icmp eq i32 %143, 2
  br i1 %.not1, label %145, label %144

144:                                              ; preds = %141
  call void @abort() #5
  br label %UnifiedUnreachableBlock

145:                                              ; preds = %141
  %146 = load volatile i32, i32* @should_optimize, align 4
  %.not2 = icmp eq i32 %146, 0
  br i1 %.not2, label %147, label %148

147:                                              ; preds = %145
  call void @abort() #5
  br label %UnifiedUnreachableBlock

148:                                              ; preds = %145
  br label %150

149:                                              ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

150:                                              ; preds = %148, %135, %122, %109, %96, %83, %70, %57, %44, %31, %18
  %151 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %151)
  %152 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %152)
  ret void

UnifiedUnreachableBlock:                          ; preds = %149, %147, %144, %140, %134, %131, %127, %121, %118, %114, %108, %105, %101, %95, %92, %88, %82, %79, %75, %69, %66, %62, %56, %53, %49, %43, %40, %36, %30, %27, %23, %17, %14, %10
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @inner(i32 noundef 0)
  call void (i32, ...) @inner(i32 noundef 1)
  call void (i32, ...) @inner(i32 noundef 2)
  call void (i32, ...) @inner(i32 noundef 3)
  call void (i32, ...) @inner(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 8, i32 noundef 120)
  call void (i32, ...) @inner(i32 noundef 9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 10, i32 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
