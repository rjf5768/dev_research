; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" 1111\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hello world 1111\00XXX\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" 2222\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"hello world 2222\00XXX\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" 3333\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"hello world 3333\00XXX\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c": this \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"is \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"hello world: this is a test.\00X\00", align 1
@inside_main = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 88, i64 64, i1 false)
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = call i8* @strcpy(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = call i8* @strcat(i8* noundef %10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %16 = call i32 @memcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  call void @abort() #4
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 88, i64 64, i1 false)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %23 = call i8* @strcpy(i8* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %26 = call i8* @strcat(i8* noundef %25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %31 = call i32 @memcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  call void @abort() #4
  unreachable

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 88, i64 64, i1 false)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %38 = call i8* @strcpy(i8* noundef %37, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = call i8* @strcat(i8* noundef %42, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
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
  %54 = call i32 @memcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %47, %39
  call void @abort() #4
  unreachable

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 88, i64 64, i1 false)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %61 = call i8* @strcpy(i8* noundef %60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = call i8* @strcat(i8* noundef %66, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
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
  %78 = call i32 @memcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %71, %62
  call void @abort() #4
  unreachable

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 88, i64 64, i1 false)
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %85 = call i8* @strcpy(i8* noundef %84, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = call i8* @strcat(i8* noundef %90, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 11))
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
  %102 = call i32 @memcmp(i8* noundef %101, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %95, %86
  call void @abort() #4
  unreachable

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %107, i8 88, i64 64, i1 false)
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %109 = call i8* @strcpy(i8* noundef %108, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %112 = call i8* @strcat(i8* noundef %111, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %114 = icmp ne i8* %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %117 = call i32 @memcmp(i8* noundef %116, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef 20)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %110
  call void @abort() #4
  unreachable

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %122, i8 88, i64 64, i1 false)
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %124 = call i8* @strcpy(i8* noundef %123, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 5
  %128 = call i8* @strcat(i8* noundef %127, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 5
  %131 = icmp ne i8* %128, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %134 = call i32 @memcmp(i8* noundef %133, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 noundef 20)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %125
  call void @abort() #4
  unreachable

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %139, i8 88, i64 64, i1 false)
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %141 = call i8* @strcpy(i8* noundef %140, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 5
  %147 = call i8* @strcat(i8* noundef %146, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 6
  %150 = icmp ne i8* %147, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %142
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = icmp ne i8* %152, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %158 = call i32 @memcmp(i8* noundef %157, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 noundef 20)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %151, %142
  call void @abort() #4
  unreachable

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %163, i8 88, i64 64, i1 false)
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %165 = call i8* @strcpy(i8* noundef %164, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %168 = call i8* @strcat(i8* noundef %167, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %169 = call i8* @strcat(i8* noundef %168, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i8* @strcat(i8* noundef %169, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %171 = call i8* @strcat(i8* noundef %170, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %172 = call i8* @strcat(i8* noundef %171, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %173 = call i8* @strcat(i8* noundef %172, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %174 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %175 = call i32 @memcmp(i8* noundef %174, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 noundef 30)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  call void @abort() #4
  unreachable

178:                                              ; preds = %166
  store i32 1, i32* @inside_main, align 4
  br label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %180, i8 88, i64 64, i1 false)
  %181 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %182 = call i8* @strcpy(i8* noundef %181, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %185 = call i8* @strcat(i8* noundef %184, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %187 = icmp ne i8* %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %190 = call i32 @memcmp(i8* noundef %189, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %183
  call void @abort() #4
  unreachable

193:                                              ; preds = %188
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
