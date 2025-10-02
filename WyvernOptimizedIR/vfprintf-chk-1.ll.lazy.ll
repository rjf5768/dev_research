; ModuleID = './vfprintf-chk-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vfprintf-chk-1.c"
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
define dso_local i32 @__vfprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #0 {
  store volatile i32 1, i32* @should_optimize, align 4
  %5 = call i32 @vfprintf(%struct._IO_FILE* noundef %0, i8* noundef %2, %struct.__va_list_tag* noundef %3) #4
  ret i32 %5
}

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @inner(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  switch i32 %0, label %171 [
    i32 0, label %6
    i32 1, label %21
    i32 2, label %36
    i32 3, label %51
    i32 4, label %66
    i32 5, label %81
    i32 6, label %96
    i32 7, label %111
    i32 8, label %126
    i32 9, label %141
    i32 10, label %156
  ]

6:                                                ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %8)
  %10 = load volatile i32, i32* @should_optimize, align 4
  %.not30 = icmp eq i32 %10, 0
  br i1 %.not30, label %11, label %12

11:                                               ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %6
  store volatile i32 0, i32* @should_optimize, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %15 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %14)
  %.not31 = icmp eq i32 %15, 5
  br i1 %.not31, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  %18 = load volatile i32, i32* @should_optimize, align 4
  %.not32 = icmp eq i32 %18, 0
  br i1 %.not32, label %19, label %20

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  br label %172

21:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %24 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %23)
  %25 = load volatile i32, i32* @should_optimize, align 4
  %.not27 = icmp eq i32 %25, 0
  br i1 %.not27, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %21
  store volatile i32 0, i32* @should_optimize, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %30 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %29)
  %.not28 = icmp eq i32 %30, 6
  br i1 %.not28, label %32, label %31

31:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %27
  %33 = load volatile i32, i32* @should_optimize, align 4
  %.not29 = icmp eq i32 %33, 0
  br i1 %.not29, label %34, label %35

34:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  br label %172

36:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %39 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %38)
  %40 = load volatile i32, i32* @should_optimize, align 4
  %.not24 = icmp eq i32 %40, 0
  br i1 %.not24, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #5
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %36
  store volatile i32 0, i32* @should_optimize, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %45 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %43, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %44)
  %.not25 = icmp eq i32 %45, 1
  br i1 %.not25, label %47, label %46

46:                                               ; preds = %42
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %42
  %48 = load volatile i32, i32* @should_optimize, align 4
  %.not26 = icmp eq i32 %48, 0
  br i1 %.not26, label %49, label %50

49:                                               ; preds = %47
  call void @abort() #5
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  br label %172

51:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %54 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %52, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %53)
  %55 = load volatile i32, i32* @should_optimize, align 4
  %.not21 = icmp eq i32 %55, 0
  br i1 %.not21, label %56, label %57

56:                                               ; preds = %51
  call void @abort() #5
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %51
  store volatile i32 0, i32* @should_optimize, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %60 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %58, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %59)
  %.not22 = icmp eq i32 %60, 0
  br i1 %.not22, label %62, label %61

61:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %57
  %63 = load volatile i32, i32* @should_optimize, align 4
  %.not23 = icmp eq i32 %63, 0
  br i1 %.not23, label %64, label %65

64:                                               ; preds = %62
  call void @abort() #5
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %62
  br label %172

66:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %69 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %67, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %68)
  %70 = load volatile i32, i32* @should_optimize, align 4
  %.not18 = icmp eq i32 %70, 0
  br i1 %.not18, label %71, label %72

71:                                               ; preds = %66
  call void @abort() #5
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %66
  store volatile i32 0, i32* @should_optimize, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %75 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %73, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %74)
  %.not19 = icmp eq i32 %75, 5
  br i1 %.not19, label %77, label %76

76:                                               ; preds = %72
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %72
  %78 = load volatile i32, i32* @should_optimize, align 4
  %.not20 = icmp eq i32 %78, 0
  br i1 %.not20, label %79, label %80

79:                                               ; preds = %77
  call void @abort() #5
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %77
  br label %172

81:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %84 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %82, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %83)
  %85 = load volatile i32, i32* @should_optimize, align 4
  %.not15 = icmp eq i32 %85, 0
  br i1 %.not15, label %86, label %87

86:                                               ; preds = %81
  call void @abort() #5
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %81
  store volatile i32 0, i32* @should_optimize, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %90 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %88, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %89)
  %.not16 = icmp eq i32 %90, 6
  br i1 %.not16, label %92, label %91

91:                                               ; preds = %87
  call void @abort() #5
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %87
  %93 = load volatile i32, i32* @should_optimize, align 4
  %.not17 = icmp eq i32 %93, 0
  br i1 %.not17, label %94, label %95

94:                                               ; preds = %92
  call void @abort() #5
  br label %UnifiedUnreachableBlock

95:                                               ; preds = %92
  br label %172

96:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %99 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %98)
  %100 = load volatile i32, i32* @should_optimize, align 4
  %.not12 = icmp eq i32 %100, 0
  br i1 %.not12, label %101, label %102

101:                                              ; preds = %96
  call void @abort() #5
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %96
  store volatile i32 0, i32* @should_optimize, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %105 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %103, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %104)
  %.not13 = icmp eq i32 %105, 1
  br i1 %.not13, label %107, label %106

106:                                              ; preds = %102
  call void @abort() #5
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %102
  %108 = load volatile i32, i32* @should_optimize, align 4
  %.not14 = icmp eq i32 %108, 0
  br i1 %.not14, label %109, label %110

109:                                              ; preds = %107
  call void @abort() #5
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %107
  br label %172

111:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %114 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %112, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %113)
  %115 = load volatile i32, i32* @should_optimize, align 4
  %.not9 = icmp eq i32 %115, 0
  br i1 %.not9, label %116, label %117

116:                                              ; preds = %111
  call void @abort() #5
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %111
  store volatile i32 0, i32* @should_optimize, align 4
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %120 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %118, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %119)
  %.not10 = icmp eq i32 %120, 0
  br i1 %.not10, label %122, label %121

121:                                              ; preds = %117
  call void @abort() #5
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %117
  %123 = load volatile i32, i32* @should_optimize, align 4
  %.not11 = icmp eq i32 %123, 0
  br i1 %.not11, label %124, label %125

124:                                              ; preds = %122
  call void @abort() #5
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %122
  br label %172

126:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %129 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %127, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %128)
  %130 = load volatile i32, i32* @should_optimize, align 4
  %.not6 = icmp eq i32 %130, 0
  br i1 %.not6, label %131, label %132

131:                                              ; preds = %126
  call void @abort() #5
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %126
  store volatile i32 0, i32* @should_optimize, align 4
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %135 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %133, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %134)
  %.not7 = icmp eq i32 %135, 1
  br i1 %.not7, label %137, label %136

136:                                              ; preds = %132
  call void @abort() #5
  br label %UnifiedUnreachableBlock

137:                                              ; preds = %132
  %138 = load volatile i32, i32* @should_optimize, align 4
  %.not8 = icmp eq i32 %138, 0
  br i1 %.not8, label %139, label %140

139:                                              ; preds = %137
  call void @abort() #5
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %137
  br label %172

141:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %144 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %142, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %143)
  %145 = load volatile i32, i32* @should_optimize, align 4
  %.not3 = icmp eq i32 %145, 0
  br i1 %.not3, label %146, label %147

146:                                              ; preds = %141
  call void @abort() #5
  br label %UnifiedUnreachableBlock

147:                                              ; preds = %141
  store volatile i32 0, i32* @should_optimize, align 4
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %149 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %150 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %148, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %149)
  %.not4 = icmp eq i32 %150, 7
  br i1 %.not4, label %152, label %151

151:                                              ; preds = %147
  call void @abort() #5
  br label %UnifiedUnreachableBlock

152:                                              ; preds = %147
  %153 = load volatile i32, i32* @should_optimize, align 4
  %.not5 = icmp eq i32 %153, 0
  br i1 %.not5, label %154, label %155

154:                                              ; preds = %152
  call void @abort() #5
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %152
  br label %172

156:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %158 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %159 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %157, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %158)
  %160 = load volatile i32, i32* @should_optimize, align 4
  %.not = icmp eq i32 %160, 0
  br i1 %.not, label %161, label %162

161:                                              ; preds = %156
  call void @abort() #5
  br label %UnifiedUnreachableBlock

162:                                              ; preds = %156
  store volatile i32 0, i32* @should_optimize, align 4
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %164 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %165 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %163, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %164)
  %.not1 = icmp eq i32 %165, 2
  br i1 %.not1, label %167, label %166

166:                                              ; preds = %162
  call void @abort() #5
  br label %UnifiedUnreachableBlock

167:                                              ; preds = %162
  %168 = load volatile i32, i32* @should_optimize, align 4
  %.not2 = icmp eq i32 %168, 0
  br i1 %.not2, label %169, label %170

169:                                              ; preds = %167
  call void @abort() #5
  br label %UnifiedUnreachableBlock

170:                                              ; preds = %167
  br label %172

171:                                              ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

172:                                              ; preds = %170, %155, %140, %125, %110, %95, %80, %65, %50, %35, %20
  %173 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %173)
  %174 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %174)
  ret void

UnifiedUnreachableBlock:                          ; preds = %171, %169, %166, %161, %154, %151, %146, %139, %136, %131, %124, %121, %116, %109, %106, %101, %94, %91, %86, %79, %76, %71, %64, %61, %56, %49, %46, %41, %34, %31, %26, %19, %16, %11
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
