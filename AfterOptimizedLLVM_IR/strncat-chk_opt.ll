; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [10 x i8], [10 x i8] }
%struct.A.0 = type { [10 x i8], [10 x i8] }

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@x = dso_local global i32 123, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@chk_calls = external dso_local global i32, align 4
@strncat_disallowed = external dso_local global i32, align 4
@strcat_disallowed = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hello worldfoo\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hello worldhello world\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"hello world world\00", align 1
@s5 = dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strncat_disallowed, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %7 = call i8* @__strcpy_chk(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %9 = call i8* @__strncat_chk(i8* noundef %8, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %11 = icmp ne i8* %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %0
  call void @abort() #9
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %19 = call i8* @__strcpy_chk(i8* noundef %18, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %21 = call i8* @__strncat_chk(i8* noundef %20, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef 100, i64 noundef 64) #8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %17
  call void @abort() #9
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %31 = call i8* @__strcpy_chk(i8* noundef %30, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  %35 = call i8* @__strncat_chk(i8* noundef %34, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef 100, i64 noundef -1) #8
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = icmp ne i8* %35, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = icmp ne i8* %40, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %46 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %39, %29
  call void @abort() #9
  unreachable

49:                                               ; preds = %44
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %51 = call i8* @__strcpy_chk(i8* noundef %50, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  %56 = call i8* @__strncat_chk(i8* noundef %55, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef 100, i64 noundef -1) #8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = icmp ne i8* %56, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %49
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = icmp ne i8* %61, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %67 = call i32 @strcmp(i8* noundef %66, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %60, %49
  call void @abort() #9
  unreachable

70:                                               ; preds = %65
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %72 = call i8* @__strcpy_chk(i8* noundef %71, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = call i8* @__strncat_chk(i8* noundef %76, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 11), i64 noundef 100, i64 noundef -1) #8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %78, i64 6
  %80 = icmp ne i8* %77, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %70
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = icmp ne i8* %82, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %88 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %81, %70
  call void @abort() #9
  unreachable

91:                                               ; preds = %86
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %93 = call i8* @__strcpy_chk(i8* noundef %92, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 5
  %98 = call i8* @__strncat_chk(i8* noundef %97, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 0, i64 noundef -1) #8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 6
  %101 = icmp ne i8* %98, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %91
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = icmp ne i8* %103, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %109 = call i32 @strcmp(i8* noundef %108, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %102, %91
  call void @abort() #9
  unreachable

112:                                              ; preds = %107
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %114 = call i8* @__strcpy_chk(i8* noundef %113, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %115, i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 5
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %3, align 8
  %121 = call i8* @__strncat_chk(i8* noundef %118, i8* noundef %120, i64 noundef 0, i64 noundef -1) #8
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  %124 = icmp ne i8* %121, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %112
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = icmp ne i8* %126, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %132 = call i32 @strcmp(i8* noundef %131, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %3, align 8
  %136 = icmp ne i8* %135, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 1)
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %130, %125, %112
  call void @abort() #9
  unreachable

138:                                              ; preds = %134
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %140 = call i8* @__strcpy_chk(i8* noundef %139, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %141, i8** %5, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 5
  %145 = load i32, i32* @x, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @x, align 4
  %147 = sext i32 %146 to i64
  %148 = call i8* @__strncat_chk(i8* noundef %144, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %147, i64 noundef -1) #8
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 6
  %151 = icmp ne i8* %148, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %138
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = icmp ne i8* %153, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @x, align 4
  %159 = icmp ne i32 %158, 124
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %162 = call i32 @strcmp(i8* noundef %161, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %157, %152, %138
  call void @abort() #9
  unreachable

165:                                              ; preds = %160
  %166 = load volatile i32, i32* @chk_calls, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @abort() #9
  unreachable

169:                                              ; preds = %165
  store volatile i32 0, i32* @strcat_disallowed, align 4
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %171 = call i8* @__strcpy_chk(i8* noundef %170, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %173 = call i8* @__strncat_chk(i8* noundef %172, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3, i64 noundef 64) #8
  %174 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %175 = icmp ne i8* %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %178 = call i32 @strcmp(i8* noundef %177, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176, %169
  call void @abort() #9
  unreachable

181:                                              ; preds = %176
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %183 = call i8* @__strcpy_chk(i8* noundef %182, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %185 = call i8* @__strncat_chk(i8* noundef %184, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %187 = icmp ne i8* %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %190 = call i32 @strcmp(i8* noundef %189, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %181
  call void @abort() #9
  unreachable

193:                                              ; preds = %188
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %195 = call i8* @__strcpy_chk(i8* noundef %194, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %197 = call i8* @__strncat_chk(i8* noundef %196, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 100, i64 noundef 64) #8
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %199 = icmp ne i8* %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %202 = call i32 @strcmp(i8* noundef %201, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %193
  call void @abort() #9
  unreachable

205:                                              ; preds = %200
  %206 = load volatile i32, i32* @chk_calls, align 4
  %207 = icmp ne i32 %206, 3
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  call void @abort() #9
  unreachable

209:                                              ; preds = %205
  store volatile i32 0, i32* @chk_calls, align 4
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %211 = call i8* @__strcpy_chk(i8* noundef %210, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %212 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %212, i8** %5, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %5, align 8
  %215 = call i8* @__strncat_chk(i8* noundef %214, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 100, i64 noundef -1) #8
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = icmp ne i8* %215, %217
  br i1 %218, label %228, label %219

219:                                              ; preds = %209
  %220 = load i8*, i8** %5, align 8
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = icmp ne i8* %220, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %226 = call i32 @strcmp(i8* noundef %225, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %219, %209
  call void @abort() #9
  unreachable

229:                                              ; preds = %224
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %231 = call i8* @__strcpy_chk(i8* noundef %230, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %232 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %232, i8** %5, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 5
  %236 = call i8* @__strncat_chk(i8* noundef %235, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 100, i64 noundef -1) #8
  %237 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %238 = getelementptr inbounds i8, i8* %237, i64 6
  %239 = icmp ne i8* %236, %238
  br i1 %239, label %249, label %240

240:                                              ; preds = %229
  %241 = load i8*, i8** %5, align 8
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = icmp ne i8* %241, %243
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %247 = call i32 @strcmp(i8* noundef %246, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245, %240, %229
  call void @abort() #9
  unreachable

250:                                              ; preds = %245
  %251 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %252 = call i8* @__strcpy_chk(i8* noundef %251, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %253, i8** %5, align 8
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %5, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 5
  %257 = call i8* @__strncat_chk(i8* noundef %256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 100, i64 noundef -1) #8
  %258 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %259 = getelementptr inbounds i8, i8* %258, i64 6
  %260 = icmp ne i8* %257, %259
  br i1 %260, label %270, label %261

261:                                              ; preds = %250
  %262 = load i8*, i8** %5, align 8
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = icmp ne i8* %262, %264
  br i1 %265, label %270, label %266

266:                                              ; preds = %261
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %268 = call i32 @strcmp(i8* noundef %267, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266, %261, %250
  call void @abort() #9
  unreachable

271:                                              ; preds = %266
  %272 = load volatile i32, i32* @chk_calls, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  call void @abort() #9
  unreachable

275:                                              ; preds = %271
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %276 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %277 = call i8* @__strcpy_chk(i8* noundef %276, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %279 = call i8* @__strncat_chk(i8* noundef %278, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %280 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %281 = icmp ne i8* %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %275
  %283 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %284 = call i32 @strcmp(i8* noundef %283, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %282, %275
  call void @abort() #9
  unreachable

287:                                              ; preds = %282
  %288 = load volatile i32, i32* @chk_calls, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  call void @abort() #9
  unreachable

291:                                              ; preds = %287
  store volatile i32 0, i32* @strncat_disallowed, align 4
  store volatile i32 0, i32* @strcat_disallowed, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @__strncat_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* @l1, align 8
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 5
  br label %13

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i8* [ %9, %7 ], [ %12, %10 ]
  store i8* %14, i8** %2, align 8
  %15 = bitcast %struct.A* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 20, i1 false)
  %16 = bitcast %struct.A* %1 to i8*
  store i8* %16, i8** @s5, align 8
  %17 = load i8*, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %17) #8, !srcloc !4
  store volatile i32 0, i32* @chk_calls, align 4
  %18 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8*, i8** @s3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i64, i64* @l1, align 8
  %24 = sub i64 %23, 1
  %25 = call i8* @__strncat_chk(i8* noundef %20, i8* noundef %22, i64 noundef %24, i64 noundef 18) #8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** @s3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i64, i64* @l1, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %30, i1 false, i1 true, i1 false)
  %32 = call i8* @__strncat_chk(i8* noundef %26, i8* noundef %28, i64 noundef %29, i64 noundef %31) #8
  %33 = load i64, i64* @l1, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = alloca i8, i64 4, align 16
  br label %40

37:                                               ; preds = %13
  %38 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %38, i64 0, i64 7
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i8* [ %36, %35 ], [ %39, %37 ]
  store i8* %41, i8** %2, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false, i1 true, i1 false)
  %45 = call i8* @__memset_chk(i8* noundef %42, i32 noundef 0, i64 noundef 3, i64 noundef %44) #8
  %46 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %46) #8, !srcloc !5
  %47 = load i8*, i8** %2, align 8
  %48 = load i8*, i8** @s2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i64, i64* @l1, align 8
  %51 = add i64 %50, 1
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @llvm.objectsize.i64.p0i8(i8* %52, i1 false, i1 true, i1 false)
  %54 = call i8* @__strncat_chk(i8* noundef %47, i8* noundef %49, i64 noundef %51, i64 noundef %53) #8
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8*, i8** @s3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i64, i64* @l1, align 8
  %60 = sub i64 %59, 1
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = call i64 @llvm.objectsize.i64.p0i8(i8* %62, i1 false, i1 true, i1 false)
  %64 = call i8* @__strncat_chk(i8* noundef %56, i8* noundef %58, i64 noundef %60, i64 noundef %63) #8
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %65, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %107, %40
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %110

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @l1, align 8
  %73 = sub i64 %72, 1
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %76, i64 0, i64 1
  store i8* %77, i8** %2, align 8
  br label %106

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @l1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %84, i64 0, i64 7
  store i8* %85, i8** %2, align 8
  br label %105

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @l1, align 8
  %90 = add i64 %89, 1
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %93, i8** %2, align 8
  br label %104

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @l1, align 8
  %98 = add i64 %97, 2
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %101, i64 0, i64 9
  store i8* %102, i8** %2, align 8
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %92
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %66, !llvm.loop !6

110:                                              ; preds = %66
  %111 = load i8*, i8** %2, align 8
  %112 = load i8*, i8** @s2, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i64, i64* @l1, align 8
  %115 = load i8*, i8** %2, align 8
  %116 = call i64 @llvm.objectsize.i64.p0i8(i8* %115, i1 false, i1 true, i1 false)
  %117 = call i8* @__strncat_chk(i8* noundef %111, i8* noundef %113, i64 noundef %114, i64 noundef %116) #8
  %118 = load volatile i32, i32* @chk_calls, align 4
  %119 = icmp ne i32 %118, 5
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  call void @abort() #9
  unreachable

121:                                              ; preds = %110
  %122 = bitcast %struct.A* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %122, i8 0, i64 20, i1 false)
  store volatile i32 0, i32* @chk_calls, align 4
  %123 = bitcast %struct.A* %1 to i8*
  store i8* %123, i8** @s5, align 8
  %124 = load i8*, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %124) #8, !srcloc !8
  %125 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %126 = getelementptr inbounds [10 x i8], [10 x i8]* %125, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = call i8* @__strncat_chk(i8* noundef %127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 5, i64 noundef 18) #8
  %129 = load i8*, i8** %2, align 8
  %130 = load i8*, i8** %2, align 8
  %131 = call i64 @llvm.objectsize.i64.p0i8(i8* %130, i1 false, i1 true, i1 false)
  %132 = call i8* @__strncat_chk(i8* noundef %129, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 noundef 0, i64 noundef %131) #8
  %133 = load i64, i64* @l1, align 8
  %134 = icmp eq i64 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = alloca i8, i64 4, align 16
  br label %140

137:                                              ; preds = %121
  %138 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %138, i64 0, i64 7
  br label %140

140:                                              ; preds = %137, %135
  %141 = phi i8* [ %136, %135 ], [ %139, %137 ]
  store i8* %141, i8** %2, align 8
  %142 = load i8*, i8** %2, align 8
  %143 = load i8*, i8** %2, align 8
  %144 = call i64 @llvm.objectsize.i64.p0i8(i8* %143, i1 false, i1 true, i1 false)
  %145 = call i8* @__memset_chk(i8* noundef %142, i32 noundef 0, i64 noundef 3, i64 noundef %144) #8
  %146 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %146) #8, !srcloc !9
  %147 = load i8*, i8** %2, align 8
  %148 = load i8*, i8** %2, align 8
  %149 = call i64 @llvm.objectsize.i64.p0i8(i8* %148, i1 false, i1 true, i1 false)
  %150 = call i8* @__strncat_chk(i8* noundef %147, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %149) #8
  %151 = load volatile i32, i32* @chk_calls, align 4
  %152 = icmp ne i32 %151, 2
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  call void @abort() #9
  unreachable

154:                                              ; preds = %140
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %155 = load i8*, i8** @s4, align 8
  %156 = load i8*, i8** @s3, align 8
  %157 = load i64, i64* @l1, align 8
  %158 = add i64 %157, 1
  %159 = load i8*, i8** @s4, align 8
  %160 = call i64 @llvm.objectsize.i64.p0i8(i8* %159, i1 false, i1 true, i1 false)
  %161 = call i8* @__strncat_chk(i8* noundef %155, i8* noundef %156, i64 noundef %158, i64 noundef %160) #8
  store volatile i32 0, i32* @strcat_disallowed, align 4
  %162 = load volatile i32, i32* @chk_calls, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  call void @abort() #9
  unreachable

165:                                              ; preds = %154
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  %3 = bitcast %struct.A.0* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 20, i1 false)
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 20, i1 false)
  %5 = bitcast %struct.A.0* %1 to i8*
  store i8* %5, i8** @s5, align 8
  %6 = load i8*, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %6) #8, !srcloc !10
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** @s5, align 8
  %8 = load i8*, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %8) #8, !srcloc !11
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %9 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %9, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %11 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 9
  %16 = load i8*, i8** @s2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = call i8* @__strncat_chk(i8* noundef %15, i8* noundef %17, i64 noundef 4, i64 noundef 1) #8
  call void @abort() #9
  unreachable

19:                                               ; preds = %0
  %20 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %20, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %22 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 7
  %27 = load i8*, i8** @s3, align 8
  %28 = load i8*, i8** @s3, align 8
  %29 = call i64 @strlen(i8* noundef %28)
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -3
  %32 = call i8* @__strncat_chk(i8* noundef %26, i8* noundef %31, i64 noundef 3, i64 noundef 3) #8
  call void @abort() #9
  unreachable

33:                                               ; preds = %19
  %34 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %34, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %36 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %40 = call i8* @__strncat_chk(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #8
  call void @abort() #9
  unreachable

41:                                               ; preds = %33
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 3886}
!5 = !{i64 4093}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 4717}
!9 = !{i64 4897}
!10 = !{i64 5479}
!11 = !{i64 5541}
