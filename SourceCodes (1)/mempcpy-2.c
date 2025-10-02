; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf1 = dso_local global [64 x i64] zeroinitializer, align 16
@buf2 = dso_local global i8* getelementptr (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 256), align 8
@.str = private unnamed_addr constant [10 x i8] c"ABCDEFGHI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ABCDEFGHI\00\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"abcdefghijklmnopq\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"abcdefghijklmnopq\00\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ABCDEFghijklmnopq\00\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"aBCDEFghijklmnopq\00\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"aBcdEFghijklmnopq\00\00", align 1
@buf5 = dso_local global [20 x i64] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWklmnopq\00\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWSlmnopq\00\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWSlmnrsq\00\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"RSTUVWXYVWSlmnrsq\00\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"RSTUVWXYZ01234567\00\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWkSmnopq\00\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWkSmnrsq\00\00", align 1
@buf7 = dso_local global [20 x i8] zeroinitializer, align 16
@inside_main = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"RSTUVWXYZ0123456789\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"rstuvwxyz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([64 x i64]* @buf1 to i8*), i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  br i1 false, label %13, label %10

10:                                               ; preds = %4
  %11 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 noundef 11)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %4
  call void @abort() #4
  unreachable

14:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([64 x i64]* @buf1 to i8*), i8* align 1 getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i1 false)
  br i1 false, label %18, label %15

15:                                               ; preds = %14
  %16 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 noundef 19)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %14
  call void @abort() #4
  unreachable

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  %21 = bitcast i64* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6, i1 false)
  %22 = getelementptr inbounds i8, i8* %21, i64 6
  %23 = icmp ne i8* %22, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 6)
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 noundef 19)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  call void @abort() #4
  unreachable

28:                                               ; preds = %24
  %29 = load i64*, i64** %5, align 8
  %30 = bitcast i64* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1, i1 false)
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = icmp ne i8* %31, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 1)
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 noundef 19)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %28
  call void @abort() #4
  unreachable

37:                                               ; preds = %33
  %38 = load i64*, i64** %5, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %44, i64 2, i1 false)
  %45 = getelementptr inbounds i8, i8* %40, i64 2
  %46 = icmp ne i8* %45, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 4)
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 noundef 19)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %37
  call void @abort() #4
  unreachable

54:                                               ; preds = %50
  %55 = load i64*, i64** %5, align 8
  %56 = bitcast i64* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %57, i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i64 6, i1 false)
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = icmp ne i8* %58, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 10)
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 noundef 19)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %54
  call void @abort() #4
  unreachable

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 getelementptr inbounds (i8, i8* bitcast ([20 x i64]* @buf5 to i8*), i64 1), i64 1, i1 false)
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = icmp ne i8* %70, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 11)
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 noundef 19)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72, %64
  call void @abort() #4
  unreachable

79:                                               ; preds = %75
  %80 = load i64*, i64** %5, align 8
  %81 = bitcast i64* %80 to i8*
  %82 = getelementptr inbounds i8, i8* %81, i64 14
  %83 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 %83, i64 2, i1 false)
  %84 = getelementptr inbounds i8, i8* %82, i64 2
  %85 = icmp ne i8* %84, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 16)
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef 19)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %79
  call void @abort() #4
  unreachable

90:                                               ; preds = %86
  %91 = load i64*, i64** %5, align 8
  %92 = bitcast i64* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i64 8, i1 false)
  %93 = getelementptr inbounds i8, i8* %92, i64 8
  %94 = icmp ne i8* %93, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 8)
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 noundef 19)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %90
  call void @abort() #4
  unreachable

99:                                               ; preds = %95
  %100 = load i64*, i64** %5, align 8
  %101 = bitcast i64* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i64 17, i1 false)
  %102 = getelementptr inbounds i8, i8* %101, i64 17
  %103 = icmp ne i8* %102, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 17)
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 noundef 19)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %99
  call void @abort() #4
  unreachable

108:                                              ; preds = %104
  %109 = load i64*, i64** %5, align 8
  %110 = bitcast i64* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 1 getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19, i1 false)
  %111 = load i64*, i64** %5, align 8
  %112 = bitcast i64* %111 to i8*
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 6
  %116 = sext i32 %115 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %113, i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i64 %116, i1 false)
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = icmp ne i8* %117, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 10)
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 noundef 19)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %108
  call void @abort() #4
  unreachable

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 getelementptr inbounds (i8, i8* bitcast ([20 x i64]* @buf5 to i8*), i64 1), i64 %131, i1 false)
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = icmp ne i8* %132, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 12)
  br i1 %133, label %140, label %134

134:                                              ; preds = %123
  %135 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 noundef 19)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 3
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %134, %123
  call void @abort() #4
  unreachable

141:                                              ; preds = %137
  %142 = load i64*, i64** %5, align 8
  %143 = bitcast i64* %142 to i8*
  %144 = getelementptr inbounds i8, i8* %143, i64 14
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %144, i8* align 1 %145, i64 %148, i1 false)
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = icmp ne i8* %149, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 16)
  br i1 %150, label %154, label %151

151:                                              ; preds = %141
  %152 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 noundef 19)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %141
  call void @abort() #4
  unreachable

155:                                              ; preds = %151
  store i32 1, i32* %9, align 4
  %156 = load i8*, i8** @buf2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %156, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  %157 = getelementptr inbounds i8, i8* %156, i64 9
  %158 = load i8*, i8** @buf2, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 9
  %160 = icmp ne i8* %157, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load i8*, i8** @buf2, align 8
  %163 = call i32 @memcmp(i8* noundef %162, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 noundef 11)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %155
  call void @abort() #4
  unreachable

166:                                              ; preds = %161
  %167 = load i8*, i8** @buf2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %167, i8* align 1 getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i1 false)
  %168 = getelementptr inbounds i8, i8* %167, i64 17
  %169 = load i8*, i8** @buf2, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 17
  %171 = icmp ne i8* %168, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i8*, i8** @buf2, align 8
  %174 = call i32 @memcmp(i8* noundef %173, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 noundef 19)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %166
  call void @abort() #4
  unreachable

177:                                              ; preds = %172
  %178 = load i8*, i8** %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %178, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6, i1 false)
  %179 = getelementptr inbounds i8, i8* %178, i64 6
  %180 = load i8*, i8** @buf2, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 6
  %182 = icmp ne i8* %179, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i8*, i8** @buf2, align 8
  %185 = call i32 @memcmp(i8* noundef %184, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 noundef 19)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %177
  call void @abort() #4
  unreachable

188:                                              ; preds = %183
  %189 = load i8*, i8** %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %189, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1, i1 false)
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8*, i8** @buf2, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = icmp ne i8* %190, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %188
  %195 = load i8*, i8** @buf2, align 8
  %196 = call i32 @memcmp(i8* noundef %195, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 noundef 19)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %188
  call void @abort() #4
  unreachable

199:                                              ; preds = %194
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %201, i8* align 1 %205, i64 2, i1 false)
  %206 = getelementptr inbounds i8, i8* %201, i64 2
  %207 = load i8*, i8** @buf2, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 4
  %209 = icmp ne i8* %206, %208
  br i1 %209, label %217, label %210

210:                                              ; preds = %199
  %211 = load i8*, i8** @buf2, align 8
  %212 = call i32 @memcmp(i8* noundef %211, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 noundef 19)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %214, %210, %199
  call void @abort() #4
  unreachable

218:                                              ; preds = %214
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %220, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i64 6, i1 false)
  %221 = getelementptr inbounds i8, i8* %220, i64 6
  %222 = load i8*, i8** @buf2, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 10
  %224 = icmp ne i8* %221, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %218
  %226 = load i8*, i8** @buf2, align 8
  %227 = call i32 @memcmp(i8* noundef %226, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 noundef 19)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %218
  call void @abort() #4
  unreachable

230:                                              ; preds = %225
  %231 = load i8*, i8** @buf2, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = getelementptr inbounds i8, i8* %235, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %236, i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 1), i64 1, i1 false)
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load i8*, i8** @buf2, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 11
  %240 = icmp ne i8* %237, %239
  br i1 %240, label %248, label %241

241:                                              ; preds = %230
  %242 = load i8*, i8** @buf2, align 8
  %243 = call i32 @memcmp(i8* noundef %242, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 noundef 19)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 3
  br i1 %247, label %248, label %249

248:                                              ; preds = %245, %241, %230
  call void @abort() #4
  unreachable

249:                                              ; preds = %245
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 14
  %252 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %251, i8* align 1 %252, i64 2, i1 false)
  %253 = getelementptr inbounds i8, i8* %251, i64 2
  %254 = load i8*, i8** @buf2, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 16
  %256 = icmp ne i8* %253, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %249
  %258 = load i8*, i8** @buf2, align 8
  %259 = call i32 @memcmp(i8* noundef %258, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 noundef 19)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257, %249
  call void @abort() #4
  unreachable

262:                                              ; preds = %257
  %263 = load i8*, i8** %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %263, i8* align 1 getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19, i1 false)
  %264 = load i8*, i8** %6, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 4
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 6
  %268 = sext i32 %267 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %265, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i64 %268, i1 false)
  %269 = getelementptr inbounds i8, i8* %265, i64 %268
  %270 = load i8*, i8** @buf2, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 10
  %272 = icmp ne i8* %269, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %262
  %274 = load i8*, i8** @buf2, align 8
  %275 = call i32 @memcmp(i8* noundef %274, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 noundef 19)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273, %262
  call void @abort() #4
  unreachable

278:                                              ; preds = %273
  %279 = load i8*, i8** @buf2, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  %284 = getelementptr inbounds i8, i8* %283, i64 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %284, i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 1), i64 %287, i1 false)
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  %289 = load i8*, i8** @buf2, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 12
  %291 = icmp ne i8* %288, %290
  br i1 %291, label %299, label %292

292:                                              ; preds = %278
  %293 = load i8*, i8** @buf2, align 8
  %294 = call i32 @memcmp(i8* noundef %293, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 noundef 19)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 4
  br i1 %298, label %299, label %300

299:                                              ; preds = %296, %292, %278
  call void @abort() #4
  unreachable

300:                                              ; preds = %296
  %301 = load i8*, i8** %6, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 14
  %303 = load i8*, i8** %7, align 8
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, 2
  %306 = sext i32 %305 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %302, i8* align 1 %303, i64 %306, i1 false)
  %307 = getelementptr inbounds i8, i8* %302, i64 %306
  %308 = load i8*, i8** @buf2, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 16
  %310 = icmp ne i8* %307, %309
  br i1 %310, label %315, label %311

311:                                              ; preds = %300
  %312 = load i8*, i8** @buf2, align 8
  %313 = call i32 @memcmp(i8* noundef %312, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 noundef 19)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %300
  call void @abort() #4
  unreachable

316:                                              ; preds = %311
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  store i32 0, i32* @inside_main, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 20, i1 false)
  %1 = load i8*, i8** @buf2, align 8
  call void @test(i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 noundef 0)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
