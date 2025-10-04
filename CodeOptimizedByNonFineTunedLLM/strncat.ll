; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 123, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"hello worldfoo\00XXX\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"hello worldhello world\00XXX\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"hello world world\00XXX\00", align 1

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
  %11 = call i8* @strncat(i8* noundef %10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef 100)
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
  %26 = call i8* @strncat(i8* noundef %25, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 noundef 100)
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
  %43 = call i8* @strncat(i8* noundef %42, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 noundef 100)
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
  %67 = call i8* @strncat(i8* noundef %66, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 noundef 100)
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
  %91 = call i8* @strncat(i8* noundef %90, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 11), i64 noundef 100)
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
  store i8* %111, i8** %4, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 5
  %115 = call i8* @strncat(i8* noundef %114, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 0)
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = icmp ne i8* %115, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = icmp ne i8* %120, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %126 = call i32 @memcmp(i8* noundef %125, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %119, %110
  call void @abort() #4
  unreachable

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %131, i8 88, i64 64, i1 false)
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %133 = call i8* @strcpy(i8* noundef %132, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %135, i8** %4, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 5
  %139 = load i32, i32* @x, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @x, align 4
  %141 = sext i32 %140 to i64
  %142 = call i8* @strncat(i8* noundef %138, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef %141)
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %144 = getelementptr inbounds i8, i8* %143, i64 6
  %145 = icmp ne i8* %142, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %134
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = icmp ne i8* %147, %149
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @x, align 4
  %153 = icmp ne i32 %152, 124
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %156 = call i32 @memcmp(i8* noundef %155, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %151, %146, %134
  call void @abort() #4
  unreachable

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %161, i8 88, i64 64, i1 false)
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %163 = call i8* @strcpy(i8* noundef %162, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %166 = call i8* @strncat(i8* noundef %165, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3)
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %168 = icmp ne i8* %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %171 = call i32 @memcmp(i8* noundef %170, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 noundef 18)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %164
  call void @abort() #4
  unreachable

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %176, i8 88, i64 64, i1 false)
  %177 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %178 = call i8* @strcpy(i8* noundef %177, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %181 = call i8* @strncat(i8* noundef %180, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100)
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %183 = icmp ne i8* %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %186 = call i32 @memcmp(i8* noundef %185, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 noundef 18)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184, %179
  call void @abort() #4
  unreachable

189:                                              ; preds = %184
  br label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %191, i8 88, i64 64, i1 false)
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %193 = call i8* @strcpy(i8* noundef %192, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %196 = call i8* @strncat(i8* noundef %195, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 100)
  %197 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %198 = icmp ne i8* %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %201 = call i32 @memcmp(i8* noundef %200, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 noundef 26)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %194
  call void @abort() #4
  unreachable

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %206, i8 88, i64 64, i1 false)
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %208 = call i8* @strcpy(i8* noundef %207, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %210, i8** %4, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %4, align 8
  %213 = call i8* @strncat(i8* noundef %212, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 100)
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = icmp ne i8* %213, %215
  br i1 %216, label %226, label %217

217:                                              ; preds = %209
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = icmp ne i8* %218, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %224 = call i32 @memcmp(i8* noundef %223, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 noundef 26)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %217, %209
  call void @abort() #4
  unreachable

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %229, i8 88, i64 64, i1 false)
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %231 = call i8* @strcpy(i8* noundef %230, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %233, i8** %4, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %4, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 5
  %237 = call i8* @strncat(i8* noundef %236, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 100)
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %239 = getelementptr inbounds i8, i8* %238, i64 6
  %240 = icmp ne i8* %237, %239
  br i1 %240, label %250, label %241

241:                                              ; preds = %232
  %242 = load i8*, i8** %4, align 8
  %243 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = icmp ne i8* %242, %244
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %248 = call i32 @memcmp(i8* noundef %247, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 noundef 26)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246, %241, %232
  call void @abort() #4
  unreachable

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %253, i8 88, i64 64, i1 false)
  %254 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %255 = call i8* @strcpy(i8* noundef %254, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %257, i8** %4, align 8
  %258 = load i8*, i8** %4, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 5
  %261 = call i8* @strncat(i8* noundef %260, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5), i64 noundef 100)
  %262 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %263 = getelementptr inbounds i8, i8* %262, i64 6
  %264 = icmp ne i8* %261, %263
  br i1 %264, label %274, label %265

265:                                              ; preds = %256
  %266 = load i8*, i8** %4, align 8
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = icmp ne i8* %266, %268
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %272 = call i32 @memcmp(i8* noundef %271, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 noundef 21)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270, %265, %256
  call void @abort() #4
  unreachable

275:                                              ; preds = %270
  br label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %277, i8 88, i64 64, i1 false)
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %279 = call i8* @strcpy(i8* noundef %278, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %282 = call i8* @strncat(i8* noundef %281, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef 100) #5
  %283 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %284 = icmp ne i8* %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %287 = call i32 @memcmp(i8* noundef %286, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 noundef 15)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285, %280
  call void @abort() #4
  unreachable

290:                                              ; preds = %285
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #2

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
