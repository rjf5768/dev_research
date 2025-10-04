; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vprintf-chk-1.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store volatile i32 1, i32* @should_optimize, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %9 = call i32 @vprintf(i8* noundef %7, %struct.__va_list_tag* noundef %8)
  ret i32 %9
}

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #1

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
  switch i32 %9, label %186 [
    i32 0, label %10
    i32 1, label %26
    i32 2, label %42
    i32 3, label %58
    i32 4, label %74
    i32 5, label %90
    i32 6, label %106
    i32 7, label %122
    i32 8, label %138
    i32 9, label %154
    i32 10, label %170
  ]

10:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %11)
  %13 = load volatile i32, i32* @should_optimize, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @abort() #4
  unreachable

16:                                               ; preds = %10
  store volatile i32 0, i32* @should_optimize, align 4
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %18 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %17)
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @abort() #4
  unreachable

21:                                               ; preds = %16
  %22 = load volatile i32, i32* @should_optimize, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #4
  unreachable

25:                                               ; preds = %21
  br label %187

26:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %28 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %27)
  %29 = load volatile i32, i32* @should_optimize, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @abort() #4
  unreachable

32:                                               ; preds = %26
  store volatile i32 0, i32* @should_optimize, align 4
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %34 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %33)
  %35 = icmp ne i32 %34, 6
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @abort() #4
  unreachable

37:                                               ; preds = %32
  %38 = load volatile i32, i32* @should_optimize, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @abort() #4
  unreachable

41:                                               ; preds = %37
  br label %187

42:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %44 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %43)
  %45 = load volatile i32, i32* @should_optimize, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  call void @abort() #4
  unreachable

48:                                               ; preds = %42
  store volatile i32 0, i32* @should_optimize, align 4
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %50 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @abort() #4
  unreachable

53:                                               ; preds = %48
  %54 = load volatile i32, i32* @should_optimize, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @abort() #4
  unreachable

57:                                               ; preds = %53
  br label %187

58:                                               ; preds = %1
  store volatile i32 1, i32* @should_optimize, align 4
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %60 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %59)
  %61 = load volatile i32, i32* @should_optimize, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void @abort() #4
  unreachable

64:                                               ; preds = %58
  store volatile i32 0, i32* @should_optimize, align 4
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %66 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #4
  unreachable

69:                                               ; preds = %64
  %70 = load volatile i32, i32* @should_optimize, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @abort() #4
  unreachable

73:                                               ; preds = %69
  br label %187

74:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %76 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %75)
  %77 = load volatile i32, i32* @should_optimize, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call void @abort() #4
  unreachable

80:                                               ; preds = %74
  store volatile i32 0, i32* @should_optimize, align 4
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %82 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %81)
  %83 = icmp ne i32 %82, 5
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  call void @abort() #4
  unreachable

85:                                               ; preds = %80
  %86 = load volatile i32, i32* @should_optimize, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void @abort() #4
  unreachable

89:                                               ; preds = %85
  br label %187

90:                                               ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %92 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %91)
  %93 = load volatile i32, i32* @should_optimize, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  call void @abort() #4
  unreachable

96:                                               ; preds = %90
  store volatile i32 0, i32* @should_optimize, align 4
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %98 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %97)
  %99 = icmp ne i32 %98, 6
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  call void @abort() #4
  unreachable

101:                                              ; preds = %96
  %102 = load volatile i32, i32* @should_optimize, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #4
  unreachable

105:                                              ; preds = %101
  br label %187

106:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %107 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %108 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %107)
  %109 = load volatile i32, i32* @should_optimize, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  call void @abort() #4
  unreachable

112:                                              ; preds = %106
  store volatile i32 0, i32* @should_optimize, align 4
  %113 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %114 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %113)
  %115 = icmp ne i32 %114, 1
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
  br label %187

122:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %123 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %124 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %123)
  %125 = load volatile i32, i32* @should_optimize, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  call void @abort() #4
  unreachable

128:                                              ; preds = %122
  store volatile i32 0, i32* @should_optimize, align 4
  %129 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %130 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  call void @abort() #4
  unreachable

133:                                              ; preds = %128
  %134 = load volatile i32, i32* @should_optimize, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @abort() #4
  unreachable

137:                                              ; preds = %133
  br label %187

138:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %139 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %140 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %139)
  %141 = load volatile i32, i32* @should_optimize, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  call void @abort() #4
  unreachable

144:                                              ; preds = %138
  store volatile i32 0, i32* @should_optimize, align 4
  %145 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %146 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %145)
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  call void @abort() #4
  unreachable

149:                                              ; preds = %144
  %150 = load volatile i32, i32* @should_optimize, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @abort() #4
  unreachable

153:                                              ; preds = %149
  br label %187

154:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %155 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %156 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %155)
  %157 = load volatile i32, i32* @should_optimize, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  call void @abort() #4
  unreachable

160:                                              ; preds = %154
  store volatile i32 0, i32* @should_optimize, align 4
  %161 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %162 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %161)
  %163 = icmp ne i32 %162, 7
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  call void @abort() #4
  unreachable

165:                                              ; preds = %160
  %166 = load volatile i32, i32* @should_optimize, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void @abort() #4
  unreachable

169:                                              ; preds = %165
  br label %187

170:                                              ; preds = %1
  store volatile i32 0, i32* @should_optimize, align 4
  %171 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %172 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %171)
  %173 = load volatile i32, i32* @should_optimize, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  call void @abort() #4
  unreachable

176:                                              ; preds = %170
  store volatile i32 0, i32* @should_optimize, align 4
  %177 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %178 = call i32 @__vprintf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %177)
  %179 = icmp ne i32 %178, 2
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  call void @abort() #4
  unreachable

181:                                              ; preds = %176
  %182 = load volatile i32, i32* @should_optimize, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call void @abort() #4
  unreachable

185:                                              ; preds = %181
  br label %187

186:                                              ; preds = %1
  call void @abort() #4
  unreachable

187:                                              ; preds = %185, %169, %153, %137, %121, %105, %89, %73, %57, %41, %25
  %188 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %189 = bitcast %struct.__va_list_tag* %188 to i8*
  call void @llvm.va_end(i8* %189)
  %190 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %191 = bitcast %struct.__va_list_tag* %190 to i8*
  call void @llvm.va_end(i8* %191)
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
