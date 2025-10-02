; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ello\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"zllo\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"allo\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 6, i32* %3, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = call i32 @strncmp(i8* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  %16 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %15, i64 noundef 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %13
  call void @abort() #3
  unreachable

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  %25 = call i32 @strncmp(i8* noundef %24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %22
  call void @abort() #3
  unreachable

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  %34 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %33, i64 noundef 4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  call void @abort() #3
  unreachable

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %2, align 8
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 5)
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %2, align 8
  %47 = icmp ne i8* %46, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %40
  call void @abort() #3
  unreachable

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  %52 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %51, i64 noundef 5)
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = icmp ne i8* %55, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %49
  call void @abort() #3
  unreachable

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %2, align 8
  %61 = call i32 @strncmp(i8* noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 6)
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %2, align 8
  %65 = icmp ne i8* %64, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %58
  call void @abort() #3
  unreachable

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %2, align 8
  %70 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %69, i64 noundef 6)
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %2, align 8
  %74 = icmp ne i8* %73, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %67
  call void @abort() #3
  unreachable

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %2, align 8
  %79 = call i32 @strncmp(i8* noundef %78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 3)
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %2, align 8
  %83 = icmp ne i8* %82, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %76
  call void @abort() #3
  unreachable

85:                                               ; preds = %81
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %86 = load i8*, i8** %2, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %2, align 8
  %88 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %87, i64 noundef 3)
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %2, align 8
  %92 = icmp ne i8* %91, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %85
  call void @abort() #3
  unreachable

94:                                               ; preds = %90
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %2, align 8
  %97 = call i32 @strncmp(i8* noundef %96, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4)
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %2, align 8
  %101 = icmp ne i8* %100, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %94
  call void @abort() #3
  unreachable

103:                                              ; preds = %99
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %104 = load i8*, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %2, align 8
  %106 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %105, i64 noundef 4)
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %2, align 8
  %110 = icmp ne i8* %109, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %103
  call void @abort() #3
  unreachable

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %2, align 8
  %115 = call i32 @strncmp(i8* noundef %114, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5)
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %2, align 8
  %119 = icmp ne i8* %118, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %112
  call void @abort() #3
  unreachable

121:                                              ; preds = %117
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %122 = load i8*, i8** %2, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %2, align 8
  %124 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %123, i64 noundef 5)
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %2, align 8
  %128 = icmp ne i8* %127, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %121
  call void @abort() #3
  unreachable

130:                                              ; preds = %126
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %2, align 8
  %133 = call i32 @strncmp(i8* noundef %132, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %2, align 8
  %137 = icmp ne i8* %136, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %130
  call void @abort() #3
  unreachable

139:                                              ; preds = %135
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %140 = load i8*, i8** %2, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %2, align 8
  %142 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %141, i64 noundef 6)
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** %2, align 8
  %146 = icmp ne i8* %145, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %139
  call void @abort() #3
  unreachable

148:                                              ; preds = %144
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %149 = load i8*, i8** %2, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %2, align 8
  %151 = call i32 @strncmp(i8* noundef %150, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3)
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %2, align 8
  %155 = icmp ne i8* %154, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %148
  call void @abort() #3
  unreachable

157:                                              ; preds = %153
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %158 = load i8*, i8** %2, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %2, align 8
  %160 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %159, i64 noundef 3)
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** %2, align 8
  %164 = icmp ne i8* %163, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %157
  call void @abort() #3
  unreachable

166:                                              ; preds = %162
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %167 = load i8*, i8** %2, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %2, align 8
  %169 = call i32 @strncmp(i8* noundef %168, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4)
  %170 = icmp sle i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %2, align 8
  %173 = icmp ne i8* %172, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %173, label %174, label %175

174:                                              ; preds = %171, %166
  call void @abort() #3
  unreachable

175:                                              ; preds = %171
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %176 = load i8*, i8** %2, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %2, align 8
  %178 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %177, i64 noundef 4)
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %2, align 8
  %182 = icmp ne i8* %181, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %182, label %183, label %184

183:                                              ; preds = %180, %175
  call void @abort() #3
  unreachable

184:                                              ; preds = %180
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %185 = load i8*, i8** %2, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %2, align 8
  %187 = call i32 @strncmp(i8* noundef %186, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 5)
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i8*, i8** %2, align 8
  %191 = icmp ne i8* %190, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %184
  call void @abort() #3
  unreachable

193:                                              ; preds = %189
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %194 = load i8*, i8** %2, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %2, align 8
  %196 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %195, i64 noundef 5)
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = load i8*, i8** %2, align 8
  %200 = icmp ne i8* %199, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %193
  call void @abort() #3
  unreachable

202:                                              ; preds = %198
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %203 = load i8*, i8** %2, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %2, align 8
  %205 = call i32 @strncmp(i8* noundef %204, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 6)
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i8*, i8** %2, align 8
  %209 = icmp ne i8* %208, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %202
  call void @abort() #3
  unreachable

211:                                              ; preds = %207
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %212 = load i8*, i8** %2, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %2, align 8
  %214 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %213, i64 noundef 6)
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load i8*, i8** %2, align 8
  %218 = icmp ne i8* %217, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %218, label %219, label %220

219:                                              ; preds = %216, %211
  call void @abort() #3
  unreachable

220:                                              ; preds = %216
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %221 = load i8*, i8** %2, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %2, align 8
  %223 = load i32, i32* %4, align 4
  %224 = and i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %225
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 @strncmp(i8* noundef %222, i8* noundef %226, i64 noundef %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %220
  %233 = load i8*, i8** %2, align 8
  %234 = icmp ne i8* %233, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %3, align 4
  %237 = icmp ne i32 %236, 3
  br i1 %237, label %238, label %239

238:                                              ; preds = %235, %232, %220
  call void @abort() #3
  unreachable

239:                                              ; preds = %235
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %240 = load i32, i32* %4, align 4
  %241 = and i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %242
  %244 = load i8*, i8** %2, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %2, align 8
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = call i32 @strncmp(i8* noundef %243, i8* noundef %245, i64 noundef %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %239
  %252 = load i8*, i8** %2, align 8
  %253 = icmp ne i8* %252, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %3, align 4
  %256 = icmp ne i32 %255, 3
  br i1 %256, label %257, label %258

257:                                              ; preds = %254, %251, %239
  call void @abort() #3
  unreachable

258:                                              ; preds = %254
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %259 = load i8*, i8** %2, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %2, align 8
  %261 = load i32, i32* %4, align 4
  %262 = and i32 %261, 3
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %263
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = call i32 @strncmp(i8* noundef %260, i8* noundef %264, i64 noundef %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %258
  %271 = load i8*, i8** %2, align 8
  %272 = icmp ne i8* %271, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %3, align 4
  %275 = icmp ne i32 %274, 4
  br i1 %275, label %276, label %277

276:                                              ; preds = %273, %270, %258
  call void @abort() #3
  unreachable

277:                                              ; preds = %273
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %278 = load i32, i32* %4, align 4
  %279 = and i32 %278, 3
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %280
  %282 = load i8*, i8** %2, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %2, align 8
  %284 = load i32, i32* %3, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = call i32 @strncmp(i8* noundef %281, i8* noundef %283, i64 noundef %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %277
  %290 = load i8*, i8** %2, align 8
  %291 = icmp ne i8* %290, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %3, align 4
  %294 = icmp ne i32 %293, 4
  br i1 %294, label %295, label %296

295:                                              ; preds = %292, %289, %277
  call void @abort() #3
  unreachable

296:                                              ; preds = %292
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %297 = load i8*, i8** %2, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %2, align 8
  %299 = load i32, i32* %4, align 4
  %300 = and i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %301
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %3, align 4
  %305 = sext i32 %304 to i64
  %306 = call i32 @strncmp(i8* noundef %298, i8* noundef %302, i64 noundef %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %296
  %309 = load i8*, i8** %2, align 8
  %310 = icmp ne i8* %309, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %3, align 4
  %313 = icmp ne i32 %312, 5
  br i1 %313, label %314, label %315

314:                                              ; preds = %311, %308, %296
  call void @abort() #3
  unreachable

315:                                              ; preds = %311
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %316 = load i32, i32* %4, align 4
  %317 = and i32 %316, 3
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %318
  %320 = load i8*, i8** %2, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %2, align 8
  %322 = load i32, i32* %3, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = call i32 @strncmp(i8* noundef %319, i8* noundef %321, i64 noundef %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %315
  %328 = load i8*, i8** %2, align 8
  %329 = icmp ne i8* %328, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %329, label %333, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %3, align 4
  %332 = icmp ne i32 %331, 5
  br i1 %332, label %333, label %334

333:                                              ; preds = %330, %327, %315
  call void @abort() #3
  unreachable

334:                                              ; preds = %330
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %335 = load i8*, i8** %2, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %2, align 8
  %337 = load i32, i32* %4, align 4
  %338 = and i32 %337, 3
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %339
  %341 = load i32, i32* %3, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = call i32 @strncmp(i8* noundef %336, i8* noundef %340, i64 noundef %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %334
  %347 = load i8*, i8** %2, align 8
  %348 = icmp ne i8* %347, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %3, align 4
  %351 = icmp ne i32 %350, 6
  br i1 %351, label %352, label %353

352:                                              ; preds = %349, %346, %334
  call void @abort() #3
  unreachable

353:                                              ; preds = %349
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %354 = load i32, i32* %4, align 4
  %355 = and i32 %354, 3
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %356
  %358 = load i8*, i8** %2, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %2, align 8
  %360 = load i32, i32* %3, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %3, align 4
  %362 = sext i32 %361 to i64
  %363 = call i32 @strncmp(i8* noundef %357, i8* noundef %359, i64 noundef %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %371, label %365

365:                                              ; preds = %353
  %366 = load i8*, i8** %2, align 8
  %367 = icmp ne i8* %366, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %367, label %371, label %368

368:                                              ; preds = %365
  %369 = load i32, i32* %3, align 4
  %370 = icmp ne i32 %369, 6
  br i1 %370, label %371, label %372

371:                                              ; preds = %368, %365, %353
  call void @abort() #3
  unreachable

372:                                              ; preds = %368
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  %373 = load i8*, i8** %2, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %2, align 8
  %375 = load i32, i32* %3, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %3, align 4
  %377 = sext i32 %376 to i64
  %378 = call i32 @strncmp(i8* noundef %374, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef %377)
  %379 = icmp sge i32 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %372
  %381 = load i8*, i8** %2, align 8
  %382 = icmp ne i8* %381, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %382, label %386, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %3, align 4
  %385 = icmp ne i32 %384, 3
  br i1 %385, label %386, label %387

386:                                              ; preds = %383, %380, %372
  call void @abort() #3
  unreachable

387:                                              ; preds = %383
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %388 = load i8*, i8** %2, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %2, align 8
  %390 = load i32, i32* %3, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %3, align 4
  %392 = sext i32 %391 to i64
  %393 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %389, i64 noundef %392)
  %394 = icmp sle i32 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %387
  %396 = load i8*, i8** %2, align 8
  %397 = icmp ne i8* %396, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %397, label %401, label %398

398:                                              ; preds = %395
  %399 = load i32, i32* %3, align 4
  %400 = icmp ne i32 %399, 3
  br i1 %400, label %401, label %402

401:                                              ; preds = %398, %395, %387
  call void @abort() #3
  unreachable

402:                                              ; preds = %398
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %403 = load i8*, i8** %2, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %2, align 8
  %405 = load i32, i32* %3, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %3, align 4
  %407 = sext i32 %406 to i64
  %408 = call i32 @strncmp(i8* noundef %404, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef %407)
  %409 = icmp sge i32 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %402
  %411 = load i8*, i8** %2, align 8
  %412 = icmp ne i8* %411, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %412, label %416, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* %3, align 4
  %415 = icmp ne i32 %414, 4
  br i1 %415, label %416, label %417

416:                                              ; preds = %413, %410, %402
  call void @abort() #3
  unreachable

417:                                              ; preds = %413
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %418 = load i8*, i8** %2, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %2, align 8
  %420 = load i32, i32* %3, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %3, align 4
  %422 = sext i32 %421 to i64
  %423 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %419, i64 noundef %422)
  %424 = icmp sle i32 %423, 0
  br i1 %424, label %431, label %425

425:                                              ; preds = %417
  %426 = load i8*, i8** %2, align 8
  %427 = icmp ne i8* %426, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = load i32, i32* %3, align 4
  %430 = icmp ne i32 %429, 4
  br i1 %430, label %431, label %432

431:                                              ; preds = %428, %425, %417
  call void @abort() #3
  unreachable

432:                                              ; preds = %428
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %433 = load i8*, i8** %2, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %2, align 8
  %435 = load i32, i32* %3, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %3, align 4
  %437 = sext i32 %436 to i64
  %438 = call i32 @strncmp(i8* noundef %434, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef %437)
  %439 = icmp sge i32 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %432
  %441 = load i8*, i8** %2, align 8
  %442 = icmp ne i8* %441, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = load i32, i32* %3, align 4
  %445 = icmp ne i32 %444, 5
  br i1 %445, label %446, label %447

446:                                              ; preds = %443, %440, %432
  call void @abort() #3
  unreachable

447:                                              ; preds = %443
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %448 = load i8*, i8** %2, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %2, align 8
  %450 = load i32, i32* %3, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %3, align 4
  %452 = sext i32 %451 to i64
  %453 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %449, i64 noundef %452)
  %454 = icmp sle i32 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %447
  %456 = load i8*, i8** %2, align 8
  %457 = icmp ne i8* %456, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %457, label %461, label %458

458:                                              ; preds = %455
  %459 = load i32, i32* %3, align 4
  %460 = icmp ne i32 %459, 5
  br i1 %460, label %461, label %462

461:                                              ; preds = %458, %455, %447
  call void @abort() #3
  unreachable

462:                                              ; preds = %458
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %463 = load i8*, i8** %2, align 8
  %464 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %464, i8** %2, align 8
  %465 = load i32, i32* %3, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = call i32 @strncmp(i8* noundef %464, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef %467)
  %469 = icmp sge i32 %468, 0
  br i1 %469, label %476, label %470

470:                                              ; preds = %462
  %471 = load i8*, i8** %2, align 8
  %472 = icmp ne i8* %471, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load i32, i32* %3, align 4
  %475 = icmp ne i32 %474, 6
  br i1 %475, label %476, label %477

476:                                              ; preds = %473, %470, %462
  call void @abort() #3
  unreachable

477:                                              ; preds = %473
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %478 = load i8*, i8** %2, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %2, align 8
  %480 = load i32, i32* %3, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %3, align 4
  %482 = sext i32 %481 to i64
  %483 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %479, i64 noundef %482)
  %484 = icmp sle i32 %483, 0
  br i1 %484, label %491, label %485

485:                                              ; preds = %477
  %486 = load i8*, i8** %2, align 8
  %487 = icmp ne i8* %486, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %487, label %491, label %488

488:                                              ; preds = %485
  %489 = load i32, i32* %3, align 4
  %490 = icmp ne i32 %489, 6
  br i1 %490, label %491, label %492

491:                                              ; preds = %488, %485, %477
  call void @abort() #3
  unreachable

492:                                              ; preds = %488
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  %493 = load i8*, i8** %2, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** %2, align 8
  %495 = load i32, i32* %3, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %3, align 4
  %497 = sext i32 %496 to i64
  %498 = call i32 @strncmp(i8* noundef %494, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %497)
  %499 = icmp sle i32 %498, 0
  br i1 %499, label %506, label %500

500:                                              ; preds = %492
  %501 = load i8*, i8** %2, align 8
  %502 = icmp ne i8* %501, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %502, label %506, label %503

503:                                              ; preds = %500
  %504 = load i32, i32* %3, align 4
  %505 = icmp ne i32 %504, 3
  br i1 %505, label %506, label %507

506:                                              ; preds = %503, %500, %492
  call void @abort() #3
  unreachable

507:                                              ; preds = %503
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %508 = load i8*, i8** %2, align 8
  %509 = getelementptr inbounds i8, i8* %508, i32 1
  store i8* %509, i8** %2, align 8
  %510 = load i32, i32* %3, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %3, align 4
  %512 = sext i32 %511 to i64
  %513 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %509, i64 noundef %512)
  %514 = icmp sge i32 %513, 0
  br i1 %514, label %521, label %515

515:                                              ; preds = %507
  %516 = load i8*, i8** %2, align 8
  %517 = icmp ne i8* %516, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %517, label %521, label %518

518:                                              ; preds = %515
  %519 = load i32, i32* %3, align 4
  %520 = icmp ne i32 %519, 3
  br i1 %520, label %521, label %522

521:                                              ; preds = %518, %515, %507
  call void @abort() #3
  unreachable

522:                                              ; preds = %518
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %523 = load i8*, i8** %2, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %2, align 8
  %525 = load i32, i32* %3, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %3, align 4
  %527 = sext i32 %526 to i64
  %528 = call i32 @strncmp(i8* noundef %524, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %527)
  %529 = icmp sle i32 %528, 0
  br i1 %529, label %536, label %530

530:                                              ; preds = %522
  %531 = load i8*, i8** %2, align 8
  %532 = icmp ne i8* %531, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, i32* %3, align 4
  %535 = icmp ne i32 %534, 4
  br i1 %535, label %536, label %537

536:                                              ; preds = %533, %530, %522
  call void @abort() #3
  unreachable

537:                                              ; preds = %533
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 3, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %538 = load i8*, i8** %2, align 8
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %2, align 8
  %540 = load i32, i32* %3, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %3, align 4
  %542 = sext i32 %541 to i64
  %543 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %539, i64 noundef %542)
  %544 = icmp sge i32 %543, 0
  br i1 %544, label %551, label %545

545:                                              ; preds = %537
  %546 = load i8*, i8** %2, align 8
  %547 = icmp ne i8* %546, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %547, label %551, label %548

548:                                              ; preds = %545
  %549 = load i32, i32* %3, align 4
  %550 = icmp ne i32 %549, 4
  br i1 %550, label %551, label %552

551:                                              ; preds = %548, %545, %537
  call void @abort() #3
  unreachable

552:                                              ; preds = %548
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %553 = load i8*, i8** %2, align 8
  %554 = getelementptr inbounds i8, i8* %553, i32 1
  store i8* %554, i8** %2, align 8
  %555 = load i32, i32* %3, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %3, align 4
  %557 = sext i32 %556 to i64
  %558 = call i32 @strncmp(i8* noundef %554, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %557)
  %559 = icmp sle i32 %558, 0
  br i1 %559, label %566, label %560

560:                                              ; preds = %552
  %561 = load i8*, i8** %2, align 8
  %562 = icmp ne i8* %561, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load i32, i32* %3, align 4
  %565 = icmp ne i32 %564, 5
  br i1 %565, label %566, label %567

566:                                              ; preds = %563, %560, %552
  call void @abort() #3
  unreachable

567:                                              ; preds = %563
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %568 = load i8*, i8** %2, align 8
  %569 = getelementptr inbounds i8, i8* %568, i32 1
  store i8* %569, i8** %2, align 8
  %570 = load i32, i32* %3, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %3, align 4
  %572 = sext i32 %571 to i64
  %573 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %569, i64 noundef %572)
  %574 = icmp sge i32 %573, 0
  br i1 %574, label %581, label %575

575:                                              ; preds = %567
  %576 = load i8*, i8** %2, align 8
  %577 = icmp ne i8* %576, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %577, label %581, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* %3, align 4
  %580 = icmp ne i32 %579, 5
  br i1 %580, label %581, label %582

581:                                              ; preds = %578, %575, %567
  call void @abort() #3
  unreachable

582:                                              ; preds = %578
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %583 = load i8*, i8** %2, align 8
  %584 = getelementptr inbounds i8, i8* %583, i32 1
  store i8* %584, i8** %2, align 8
  %585 = load i32, i32* %3, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %3, align 4
  %587 = sext i32 %586 to i64
  %588 = call i32 @strncmp(i8* noundef %584, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %587)
  %589 = icmp sle i32 %588, 0
  br i1 %589, label %596, label %590

590:                                              ; preds = %582
  %591 = load i8*, i8** %2, align 8
  %592 = icmp ne i8* %591, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %592, label %596, label %593

593:                                              ; preds = %590
  %594 = load i32, i32* %3, align 4
  %595 = icmp ne i32 %594, 6
  br i1 %595, label %596, label %597

596:                                              ; preds = %593, %590, %582
  call void @abort() #3
  unreachable

597:                                              ; preds = %593
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %598 = load i8*, i8** %2, align 8
  %599 = getelementptr inbounds i8, i8* %598, i32 1
  store i8* %599, i8** %2, align 8
  %600 = load i32, i32* %3, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %3, align 4
  %602 = sext i32 %601 to i64
  %603 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %599, i64 noundef %602)
  %604 = icmp sge i32 %603, 0
  br i1 %604, label %611, label %605

605:                                              ; preds = %597
  %606 = load i8*, i8** %2, align 8
  %607 = icmp ne i8* %606, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %607, label %611, label %608

608:                                              ; preds = %605
  %609 = load i32, i32* %3, align 4
  %610 = icmp ne i32 %609, 6
  br i1 %610, label %611, label %612

611:                                              ; preds = %608, %605, %597
  call void @abort() #3
  unreachable

612:                                              ; preds = %608
  ret void
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
