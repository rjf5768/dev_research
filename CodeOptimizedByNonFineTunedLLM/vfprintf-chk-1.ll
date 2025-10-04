; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vfprintf-chk-1.c'
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
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.__va_list_tag*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %8, align 8
  store volatile i32 1, i32* @should_optimize, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %8, align 8
  %12 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %struct.__va_list_tag* noundef %11)
  ret i32 %12
}

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @inner(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %208 [
    i32 0, label %10
    i32 1, label %28
    i32 2, label %46
    i32 3, label %64
    i32 4, label %82
    i32 5, label %100
    i32 6, label %118
    i32 7, label %136
    i32 8, label %154
    i32 9, label %172
    i32 10, label %190
  ]

10:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %12)
  %14 = load volatile i32, i32* @should_optimize, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  call void @abort() #4
  unreachable

17:                                               ; preds = %10
  store volatile i32 0, i32* @should_optimize, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %20 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %19)
  %21 = icmp ne i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #4
  unreachable

23:                                               ; preds = %17
  %24 = load volatile i32, i32* @should_optimize, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #4
  unreachable

27:                                               ; preds = %23
  br label %209

28:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %30)
  %32 = load volatile i32, i32* @should_optimize, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @abort() #4
  unreachable

35:                                               ; preds = %28
  store volatile i32 0, i32* @should_optimize, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %38 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %36, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %37)
  %39 = icmp ne i32 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #4
  unreachable

41:                                               ; preds = %35
  %42 = load volatile i32, i32* @should_optimize, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @abort() #4
  unreachable

45:                                               ; preds = %41
  br label %209

46:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %49 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %48)
  %50 = load volatile i32, i32* @should_optimize, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  call void @abort() #4
  unreachable

53:                                               ; preds = %46
  store volatile i32 0, i32* @should_optimize, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %56 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %54, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #4
  unreachable

59:                                               ; preds = %53
  %60 = load volatile i32, i32* @should_optimize, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @abort() #4
  unreachable

63:                                               ; preds = %59
  br label %209

64:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %67 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %65, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %66)
  %68 = load volatile i32, i32* @should_optimize, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  call void @abort() #4
  unreachable

71:                                               ; preds = %64
  store volatile i32 0, i32* @should_optimize, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %74 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %72, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void @abort() #4
  unreachable

77:                                               ; preds = %71
  %78 = load volatile i32, i32* @should_optimize, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @abort() #4
  unreachable

81:                                               ; preds = %77
  br label %209

82:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %85 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %83, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %84)
  %86 = load volatile i32, i32* @should_optimize, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void @abort() #4
  unreachable

89:                                               ; preds = %82
  store volatile i32 0, i32* @should_optimize, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %92 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %90, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %91)
  %93 = icmp ne i32 %92, 5
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  call void @abort() #4
  unreachable

95:                                               ; preds = %89
  %96 = load volatile i32, i32* @should_optimize, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @abort() #4
  unreachable

99:                                               ; preds = %95
  br label %209

100:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %103 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %101, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %102)
  %104 = load volatile i32, i32* @should_optimize, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  call void @abort() #4
  unreachable

107:                                              ; preds = %100
  store volatile i32 0, i32* @should_optimize, align 4
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %110 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %108, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %109)
  %111 = icmp ne i32 %110, 6
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  call void @abort() #4
  unreachable

113:                                              ; preds = %107
  %114 = load volatile i32, i32* @should_optimize, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @abort() #4
  unreachable

117:                                              ; preds = %113
  br label %209

118:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %121 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %119, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %120)
  %122 = load volatile i32, i32* @should_optimize, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  call void @abort() #4
  unreachable

125:                                              ; preds = %118
  store volatile i32 0, i32* @should_optimize, align 4
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %128 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %126, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %127)
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  call void @abort() #4
  unreachable

131:                                              ; preds = %125
  %132 = load volatile i32, i32* @should_optimize, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @abort() #4
  unreachable

135:                                              ; preds = %131
  br label %209

136:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %138 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %139 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %137, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %138)
  %140 = load volatile i32, i32* @should_optimize, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  call void @abort() #4
  unreachable

143:                                              ; preds = %136
  store volatile i32 0, i32* @should_optimize, align 4
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %145 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %146 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %144, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  call void @abort() #4
  unreachable

149:                                              ; preds = %143
  %150 = load volatile i32, i32* @should_optimize, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @abort() #4
  unreachable

153:                                              ; preds = %149
  br label %209

154:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %156 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %157 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %155, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %156)
  %158 = load volatile i32, i32* @should_optimize, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  call void @abort() #4
  unreachable

161:                                              ; preds = %154
  store volatile i32 0, i32* @should_optimize, align 4
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %164 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %162, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %163)
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  call void @abort() #4
  unreachable

167:                                              ; preds = %161
  %168 = load volatile i32, i32* @should_optimize, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call void @abort() #4
  unreachable

171:                                              ; preds = %167
  br label %209

172:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %174 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %175 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %173, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %174)
  %176 = load volatile i32, i32* @should_optimize, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  call void @abort() #4
  unreachable

179:                                              ; preds = %172
  store volatile i32 0, i32* @should_optimize, align 4
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %181 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %182 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %180, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %181)
  %183 = icmp ne i32 %182, 7
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  call void @abort() #4
  unreachable

185:                                              ; preds = %179
  %186 = load volatile i32, i32* @should_optimize, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  call void @abort() #4
  unreachable

189:                                              ; preds = %185
  br label %209

190:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %192 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %193 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %191, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %192)
  %194 = load volatile i32, i32* @should_optimize, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %190
  call void @abort() #4
  unreachable

197:                                              ; preds = %190
  store volatile i32 0, i32* @should_optimize, align 4
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %199 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %200 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %198, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %199)
  %201 = icmp ne i32 %200, 2
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  call void @abort() #4
  unreachable

203:                                              ; preds = %197
  %204 = load volatile i32, i32* @should_optimize, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call void @abort() #4
  unreachable

207:                                              ; preds = %203
  br label %209

208:                                              ; preds = %1
  call void @abort() #4
  unreachable

209:                                              ; preds = %207, %189, %171, %153, %135, %117, %99, %81, %63, %45, %27
  %210 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %211 = bitcast %struct.__va_list_tag* %210 to i8*
  call void @llvm.va_end(i8* %211)
  %212 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %213 = bitcast %struct.__va_list_tag* %212 to i8*
  call void @llvm.va_end(i8* %213)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
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
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
