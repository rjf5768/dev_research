; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat-chk.c"
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
@.str.2 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@chk_calls = external dso_local global i32, align 4
@strcat_disallowed = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" 1111\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"hello world 1111\00XXX\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" 2222\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"hello world 2222\00XXX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" 3333\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hello world 3333\00XXX\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c": this \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"is \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"hello world: this is a test.\00X\00", align 1
@s5 = dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  br label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 88, i64 64, i1 false)
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = call i8* @__strcpy_chk(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = call i8* @__strcat_chk(i8* noundef %10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 64) #8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  call void @abort() #9
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 88, i64 64, i1 false)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %23 = call i8* @__strcpy_chk(i8* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %26 = call i8* @__strcat_chk(i8* noundef %25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef 64) #8
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %31 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  call void @abort() #9
  unreachable

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 88, i64 64, i1 false)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %38 = call i8* @__strcpy_chk(i8* noundef %37, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = call i8* @__strcat_chk(i8* noundef %42, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef -1) #8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = icmp ne i8* %43, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = icmp ne i8* %48, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %54 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %47, %39
  call void @abort() #9
  unreachable

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 88, i64 64, i1 false)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %61 = call i8* @__strcpy_chk(i8* noundef %60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = call i8* @__strcat_chk(i8* noundef %66, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 noundef -1) #8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  %70 = icmp ne i8* %67, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = icmp ne i8* %72, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %78 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %71, %62
  call void @abort() #9
  unreachable

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 88, i64 64, i1 false)
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %85 = call i8* @__strcpy_chk(i8* noundef %84, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = call i8* @__strcat_chk(i8* noundef %90, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 11), i64 noundef -1) #8
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = icmp ne i8* %91, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = icmp ne i8* %96, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %102 = call i32 @strcmp(i8* noundef %101, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %95, %86
  call void @abort() #9
  unreachable

105:                                              ; preds = %100
  %106 = load volatile i32, i32* @chk_calls, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #9
  unreachable

109:                                              ; preds = %105
  store volatile i32 0, i32* @strcat_disallowed, align 4
  br label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %111, i8 88, i64 64, i1 false)
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %113 = call i8* @__strcpy_chk(i8* noundef %112, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %116 = call i8* @__strcat_chk(i8* noundef %115, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 noundef 64) #8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %118 = icmp ne i8* %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %121 = call i32 @memcmp(i8* noundef %120, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 noundef 20)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %114
  call void @abort() #9
  unreachable

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %126, i8 88, i64 64, i1 false)
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %128 = call i8* @__strcpy_chk(i8* noundef %127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %131 = getelementptr inbounds i8, i8* %130, i64 5
  %132 = call i8* @__strcat_chk(i8* noundef %131, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 59) #8
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %134 = getelementptr inbounds i8, i8* %133, i64 5
  %135 = icmp ne i8* %132, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %138 = call i32 @memcmp(i8* noundef %137, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 noundef 20)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %129
  call void @abort() #9
  unreachable

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %143, i8 88, i64 64, i1 false)
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %145 = call i8* @__strcpy_chk(i8* noundef %144, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %147, i8** %4, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  %151 = call i8* @__strcat_chk(i8* noundef %150, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef -1) #8
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  %154 = icmp ne i8* %151, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %146
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = icmp ne i8* %156, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %162 = call i32 @memcmp(i8* noundef %161, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 noundef 20)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %155, %146
  call void @abort() #9
  unreachable

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %167, i8 88, i64 64, i1 false)
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %169 = call i8* @__strcpy_chk(i8* noundef %168, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %172 = call i8* @__strcat_chk(i8* noundef %171, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 noundef 64) #8
  %173 = call i8* @__strcat_chk(i8* noundef %172, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef -1) #8
  %174 = call i8* @__strcat_chk(i8* noundef %173, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 noundef -1) #8
  %175 = call i8* @__strcat_chk(i8* noundef %174, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 noundef -1) #8
  %176 = call i8* @__strcat_chk(i8* noundef %175, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #8
  %177 = call i8* @__strcat_chk(i8* noundef %176, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef -1) #8
  %178 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %179 = call i32 @memcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i64 noundef 30)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  call void @abort() #9
  unreachable

182:                                              ; preds = %170
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  br label %183

183:                                              ; preds = %182
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %184, i8 88, i64 64, i1 false)
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %186 = call i8* @__strcpy_chk(i8* noundef %185, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 64) #8
  br label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %189 = call i8* @__strcat_chk(i8* noundef %188, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 64) #8
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %191 = icmp ne i8* %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %194 = call i32 @strcmp(i8* noundef %193, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192, %187
  call void @abort() #9
  unreachable

197:                                              ; preds = %192
  %198 = load volatile i32, i32* @chk_calls, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void @abort() #9
  unreachable

201:                                              ; preds = %197
  store volatile i32 0, i32* @strcat_disallowed, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__strcat_chk(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

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
  %23 = call i8* @__strcat_chk(i8* noundef %20, i8* noundef %22, i64 noundef 18) #8
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** @s3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false, i1 true, i1 false)
  %29 = call i8* @__strcat_chk(i8* noundef %24, i8* noundef %26, i64 noundef %28) #8
  %30 = load i64, i64* @l1, align 8
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %13
  %33 = alloca i8, i64 4, align 16
  br label %37

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %35, i64 0, i64 7
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i8* [ %33, %32 ], [ %36, %34 ]
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false, i1 true, i1 false)
  %42 = call i8* @__memset_chk(i8* noundef %39, i32 noundef 0, i64 noundef 3, i64 noundef %41) #8
  %43 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %43) #8, !srcloc !5
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** @s2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @llvm.objectsize.i64.p0i8(i8* %47, i1 false, i1 true, i1 false)
  %49 = call i8* @__strcat_chk(i8* noundef %44, i8* noundef %46, i64 noundef %48) #8
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8*, i8** @s3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i64 @llvm.objectsize.i64.p0i8(i8* %55, i1 false, i1 true, i1 false)
  %57 = call i8* @__strcat_chk(i8* noundef %51, i8* noundef %53, i64 noundef %56) #8
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %58, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %100, %37
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @l1, align 8
  %66 = sub i64 %65, 1
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %69, i64 0, i64 1
  store i8* %70, i8** %2, align 8
  br label %99

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @l1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %77, i64 0, i64 7
  store i8* %78, i8** %2, align 8
  br label %98

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @l1, align 8
  %83 = add i64 %82, 1
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %86, i8** %2, align 8
  br label %97

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @l1, align 8
  %91 = add i64 %90, 2
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %94, i64 0, i64 9
  store i8* %95, i8** %2, align 8
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %59, !llvm.loop !6

103:                                              ; preds = %59
  %104 = load i8*, i8** %2, align 8
  %105 = load i8*, i8** @s2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i8*, i8** %2, align 8
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* %107, i1 false, i1 true, i1 false)
  %109 = call i8* @__strcat_chk(i8* noundef %104, i8* noundef %106, i64 noundef %108) #8
  %110 = load volatile i32, i32* @chk_calls, align 4
  %111 = icmp ne i32 %110, 5
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  call void @abort() #9
  unreachable

113:                                              ; preds = %103
  %114 = bitcast %struct.A* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %114, i8 0, i64 20, i1 false)
  store volatile i32 0, i32* @chk_calls, align 4
  %115 = bitcast %struct.A* %1 to i8*
  store i8* %115, i8** @s5, align 8
  %116 = load i8*, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %116) #8, !srcloc !8
  %117 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %118 = getelementptr inbounds [10 x i8], [10 x i8]* %117, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = call i8* @__strcat_chk(i8* noundef %119, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef 18) #8
  %121 = load i8*, i8** %2, align 8
  %122 = load i8*, i8** %2, align 8
  %123 = call i64 @llvm.objectsize.i64.p0i8(i8* %122, i1 false, i1 true, i1 false)
  %124 = call i8* @__strcat_chk(i8* noundef %121, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %123) #8
  %125 = load i64, i64* @l1, align 8
  %126 = icmp eq i64 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = alloca i8, i64 4, align 16
  br label %132

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %130, i64 0, i64 7
  br label %132

132:                                              ; preds = %129, %127
  %133 = phi i8* [ %128, %127 ], [ %131, %129 ]
  store i8* %133, i8** %2, align 8
  %134 = load i8*, i8** %2, align 8
  %135 = load i8*, i8** %2, align 8
  %136 = call i64 @llvm.objectsize.i64.p0i8(i8* %135, i1 false, i1 true, i1 false)
  %137 = call i8* @__memset_chk(i8* noundef %134, i32 noundef 0, i64 noundef 3, i64 noundef %136) #8
  %138 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %138) #8, !srcloc !9
  %139 = load i8*, i8** %2, align 8
  %140 = load i8*, i8** %2, align 8
  %141 = call i64 @llvm.objectsize.i64.p0i8(i8* %140, i1 false, i1 true, i1 false)
  %142 = call i8* @__strcat_chk(i8* noundef %139, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef %141) #8
  %143 = load volatile i32, i32* @chk_calls, align 4
  %144 = icmp ne i32 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  call void @abort() #9
  unreachable

146:                                              ; preds = %132
  store volatile i32 0, i32* @chk_calls, align 4
  %147 = load i8*, i8** @s4, align 8
  %148 = load i8*, i8** @s3, align 8
  %149 = load i8*, i8** @s4, align 8
  %150 = call i64 @llvm.objectsize.i64.p0i8(i8* %149, i1 false, i1 true, i1 false)
  %151 = call i8* @__strcat_chk(i8* noundef %147, i8* noundef %148, i64 noundef %150) #8
  %152 = load volatile i32, i32* @chk_calls, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  call void @abort() #9
  unreachable

155:                                              ; preds = %146
  store volatile i32 0, i32* @chk_calls, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #2

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
  %18 = call i8* @__strcat_chk(i8* noundef %15, i8* noundef %17, i64 noundef 1) #8
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
  %32 = call i8* @__strcat_chk(i8* noundef %26, i8* noundef %31, i64 noundef 3) #8
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
  %40 = call i8* @__strcat_chk(i8* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef 1) #8
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

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{i64 2988}
!5 = !{i64 3181}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 3782}
!9 = !{i64 3951}
!10 = !{i64 4487}
!11 = !{i64 4549}
