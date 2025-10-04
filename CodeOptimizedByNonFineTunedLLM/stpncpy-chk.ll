; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/stpncpy-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/stpncpy-chk.c"
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
@chk_calls = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@i = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@stpncpy_disallowed = external dso_local global i32, align 4
@s4 = dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"jkl\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %7 = call i8* @__stpncpy_chk(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 64) #8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = icmp ne i8* %7, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = call i32 @strncmp(i8* noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %0
  call void @abort() #9
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 64, i1 false)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 16
  %20 = call i8* @__stpncpy_chk(i8* noundef %19, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 48) #8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 20
  %23 = icmp ne i8* %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 16
  %27 = call i32 @strncmp(i8* noundef %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %16
  call void @abort() #9
  unreachable

30:                                               ; preds = %24
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 64, i1 false)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 32
  %34 = call i8* @__stpncpy_chk(i8* noundef %33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4, i64 noundef 32) #8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 36
  %37 = icmp ne i8* %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 32
  %41 = call i32 @strncmp(i8* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %30
  call void @abort() #9
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 64, i1 false)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = call i8* @__stpncpy_chk(i8* noundef %48, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4, i64 noundef -1) #8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  %52 = icmp ne i8* %49, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strncmp(i8* noundef %54, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = icmp ne i8* %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %53, %44
  call void @abort() #9
  unreachable

63:                                               ; preds = %57
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 64, i1 false)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %66 = call i8* @__stpncpy_chk(i8* noundef %65, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 0, i64 noundef 64) #8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %71 = call i32 @strcmp(i8* noundef %70, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %63
  call void @abort() #9
  unreachable

74:                                               ; preds = %69
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 64, i1 false)
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %76, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  %81 = call i8* @__stpncpy_chk(i8* noundef %78, i8* noundef %80, i64 noundef 0, i64 noundef -1) #8
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = icmp ne i8* %81, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %74
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strcmp(i8* noundef %86, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = icmp ne i8* %90, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %2, align 8
  %96 = icmp ne i8* %95, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 1)
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %89, %85, %74
  call void @abort() #9
  unreachable

98:                                               ; preds = %94
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %99, i8 0, i64 64, i1 false)
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %100, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 5
  %104 = load i8*, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 5
  %107 = call i8* @__stpncpy_chk(i8* noundef %103, i8* noundef %106, i64 noundef 0, i64 noundef -1) #8
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 6
  %110 = icmp ne i8* %107, %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %98
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 5
  %114 = call i32 @strcmp(i8* noundef %113, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = icmp ne i8* %117, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %2, align 8
  %123 = icmp ne i8* %122, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 1)
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %116, %111, %98
  call void @abort() #9
  unreachable

125:                                              ; preds = %121
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %126, i8 0, i64 64, i1 false)
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %128 = call i8* @__stpncpy_chk(i8* noundef %127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 12, i64 noundef 64) #8
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 11
  %131 = icmp ne i8* %128, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %134 = call i32 @strcmp(i8* noundef %133, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %125
  call void @abort() #9
  unreachable

137:                                              ; preds = %132
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %138, i8 0, i64 64, i1 false)
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %140 = call i8* @stpncpy(i8* noundef %139, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4) #8
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = icmp ne i8* %140, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %146 = call i32 @strncmp(i8* noundef %145, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %137
  call void @abort() #9
  unreachable

149:                                              ; preds = %144
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %150, i8 0, i64 64, i1 false)
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %152 = load i32, i32* @i, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @i, align 4
  %154 = icmp ne i32 %152, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %157 = call i8* @__stpncpy_chk(i8* noundef %151, i8* noundef %156, i64 noundef 4, i64 noundef 64) #8
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = icmp ne i8* %157, %159
  br i1 %160, label %168, label %161

161:                                              ; preds = %149
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %163 = call i32 @strcmp(i8* noundef %162, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @i, align 4
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %165, %161, %149
  call void @abort() #9
  unreachable

169:                                              ; preds = %165
  store volatile i32 1, i32* @stpncpy_disallowed, align 4
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = call i8* @__stpncpy_chk(i8* noundef %171, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 63) #8
  store volatile i32 0, i32* @stpncpy_disallowed, align 4
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = call i32 @strncmp(i8* noundef %174, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  call void @abort() #9
  unreachable

178:                                              ; preds = %169
  %179 = load volatile i32, i32* @chk_calls, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  call void @abort() #9
  unreachable

182:                                              ; preds = %178
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__stpncpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @stpncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca i64, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  %2 = load volatile i64, i64* @l1, align 8
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load volatile i64, i64* @l1, align 8
  %6 = add i64 %5, 1
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi i64 [ %6, %4 ], [ 4, %7 ]
  store i64 %9, i64* %1, align 8
  %10 = load i8*, i8** @s4, align 8
  %11 = load volatile i64, i64* @l1, align 8
  %12 = add i64 %11, 1
  %13 = load i8*, i8** @s4, align 8
  %14 = call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false, i1 true, i1 false)
  %15 = call i8* @__stpncpy_chk(i8* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %12, i64 noundef %14) #8
  %16 = load i8*, i8** @s4, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = icmp ne i8* %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %8
  %21 = load i8*, i8** @s4, align 8
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @strncmp(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %8
  call void @abort() #9
  unreachable

26:                                               ; preds = %20
  %27 = load volatile i32, i32* @chk_calls, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @abort() #9
  unreachable

30:                                               ; preds = %26
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = load volatile i64, i64* @l1, align 8
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 5
  br label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i8* [ %11, %9 ], [ %14, %12 ]
  store i8* %16, i8** %2, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  %17 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load volatile i8*, i8** @s3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load volatile i64, i64* @l1, align 8
  %23 = call i8* @__stpncpy_chk(i8* noundef %19, i8* noundef %21, i64 noundef %22, i64 noundef 18) #8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  call void @abort() #9
  unreachable

26:                                               ; preds = %15
  %27 = load i8*, i8** %2, align 8
  %28 = load volatile i8*, i8** @s3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load volatile i64, i64* @l1, align 8
  %31 = add i64 %30, 2
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false, i1 true, i1 false)
  %34 = call i8* @__stpncpy_chk(i8* noundef %27, i8* noundef %29, i64 noundef %31, i64 noundef %33) #8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  call void @abort() #9
  unreachable

37:                                               ; preds = %26
  %38 = load volatile i64, i64* @l1, align 8
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = alloca i8, i64 4, align 16
  br label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %43, i64 0, i64 7
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i8* [ %41, %40 ], [ %44, %42 ]
  store i8* %46, i8** %2, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = load volatile i8*, i8** @s2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load volatile i64, i64* @l1, align 8
  %51 = add i64 %50, 2
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @llvm.objectsize.i64.p0i8(i8* %52, i1 false, i1 true, i1 false)
  %54 = call i8* @__stpncpy_chk(i8* noundef %47, i8* noundef %49, i64 noundef %51, i64 noundef %53) #8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  call void @abort() #9
  unreachable

57:                                               ; preds = %45
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load volatile i8*, i8** @s3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load volatile i64, i64* @l1, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = call i64 @llvm.objectsize.i64.p0i8(i8* %64, i1 false, i1 true, i1 false)
  %66 = call i8* @__stpncpy_chk(i8* noundef %59, i8* noundef %61, i64 noundef %62, i64 noundef %65) #8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  call void @abort() #9
  unreachable

69:                                               ; preds = %57
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %70, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %112, %69
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %115

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = load volatile i64, i64* @l1, align 8
  %78 = sub i64 %77, 1
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %81, i64 0, i64 1
  store i8* %82, i8** %2, align 8
  br label %111

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = load volatile i64, i64* @l1, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %89, i64 0, i64 7
  store i8* %90, i8** %2, align 8
  br label %110

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = load volatile i64, i64* @l1, align 8
  %95 = add i64 %94, 1
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %98, i8** %2, align 8
  br label %109

99:                                               ; preds = %91
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = load volatile i64, i64* @l1, align 8
  %103 = add i64 %102, 2
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %106, i64 0, i64 9
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %71, !llvm.loop !4

115:                                              ; preds = %71
  %116 = load i8*, i8** %2, align 8
  %117 = load volatile i8*, i8** @s2, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = load volatile i64, i64* @l1, align 8
  %120 = load i8*, i8** %2, align 8
  %121 = call i64 @llvm.objectsize.i64.p0i8(i8* %120, i1 false, i1 true, i1 false)
  %122 = call i8* @__stpncpy_chk(i8* noundef %116, i8* noundef %118, i64 noundef %119, i64 noundef %121) #8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  call void @abort() #9
  unreachable

125:                                              ; preds = %115
  %126 = load volatile i32, i32* @chk_calls, align 4
  %127 = icmp ne i32 %126, 5
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #9
  unreachable

129:                                              ; preds = %125
  store volatile i32 0, i32* @chk_calls, align 4
  %130 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %130, i64 0, i64 0
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = call i8* @__stpncpy_chk(i8* noundef %132, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 18) #8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  call void @abort() #9
  unreachable

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %138 = getelementptr inbounds [10 x i8], [10 x i8]* %137, i64 0, i64 0
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = call i8* @__stpncpy_chk(i8* noundef %139, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 0, i64 noundef 18) #8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  call void @abort() #9
  unreachable

143:                                              ; preds = %136
  %144 = load i8*, i8** %2, align 8
  %145 = load i8*, i8** %2, align 8
  %146 = call i64 @llvm.objectsize.i64.p0i8(i8* %145, i1 false, i1 true, i1 false)
  %147 = call i8* @__stpncpy_chk(i8* noundef %144, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 1, i64 noundef %146) #8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  call void @abort() #9
  unreachable

150:                                              ; preds = %143
  %151 = load i8*, i8** %2, align 8
  %152 = load i8*, i8** %2, align 8
  %153 = call i64 @llvm.objectsize.i64.p0i8(i8* %152, i1 false, i1 true, i1 false)
  %154 = call i8* @__stpncpy_chk(i8* noundef %151, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 3, i64 noundef %153) #8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  call void @abort() #9
  unreachable

157:                                              ; preds = %150
  %158 = load volatile i64, i64* @l1, align 8
  %159 = icmp eq i64 %158, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = alloca i8, i64 4, align 16
  br label %165

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %163, i64 0, i64 7
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi i8* [ %161, %160 ], [ %164, %162 ]
  store i8* %166, i8** %2, align 8
  %167 = load i8*, i8** %2, align 8
  %168 = load i8*, i8** %2, align 8
  %169 = call i64 @llvm.objectsize.i64.p0i8(i8* %168, i1 false, i1 true, i1 false)
  %170 = call i8* @__stpncpy_chk(i8* noundef %167, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 3, i64 noundef %169) #8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  call void @abort() #9
  unreachable

173:                                              ; preds = %165
  %174 = load i8*, i8** %2, align 8
  %175 = load i8*, i8** %2, align 8
  %176 = call i64 @llvm.objectsize.i64.p0i8(i8* %175, i1 false, i1 true, i1 false)
  %177 = call i8* @__stpncpy_chk(i8* noundef %174, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %176) #8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  call void @abort() #9
  unreachable

180:                                              ; preds = %173
  %181 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %181, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  store i64 4, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %223, %180
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %226

185:                                              ; preds = %182
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = load volatile i64, i64* @l1, align 8
  %189 = sub i64 %188, 1
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %192, i64 0, i64 1
  store i8* %193, i8** %2, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  store i64 2, i64* %6, align 8
  br label %222

194:                                              ; preds = %185
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = load volatile i64, i64* @l1, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %201 = getelementptr inbounds [10 x i8], [10 x i8]* %200, i64 0, i64 7
  store i8* %201, i8** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  store i64 3, i64* %6, align 8
  br label %221

202:                                              ; preds = %194
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = load volatile i64, i64* @l1, align 8
  %206 = add i64 %205, 1
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %209, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  store i64 4, i64* %6, align 8
  br label %220

210:                                              ; preds = %202
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = load volatile i64, i64* @l1, align 8
  %214 = add i64 %213, 2
  %215 = icmp eq i64 %212, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %218 = getelementptr inbounds [10 x i8], [10 x i8]* %217, i64 0, i64 9
  store i8* %218, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  store i64 1, i64* %6, align 8
  br label %219

219:                                              ; preds = %216, %210
  br label %220

220:                                              ; preds = %219, %208
  br label %221

221:                                              ; preds = %220, %199
  br label %222

222:                                              ; preds = %221, %191
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %4, align 4
  br label %182, !llvm.loop !6

226:                                              ; preds = %182
  %227 = load i8*, i8** %2, align 8
  %228 = load i8*, i8** %2, align 8
  %229 = call i64 @llvm.objectsize.i64.p0i8(i8* %228, i1 false, i1 true, i1 false)
  %230 = call i8* @__stpncpy_chk(i8* noundef %227, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1, i64 noundef %229) #8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %226
  call void @abort() #9
  unreachable

233:                                              ; preds = %226
  %234 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 16
  %235 = load i8*, i8** %5, align 8
  %236 = load i64, i64* %6, align 8
  %237 = call i8* @__stpncpy_chk(i8* noundef %234, i8* noundef %235, i64 noundef %236, i64 noundef 4) #8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %233
  call void @abort() #9
  unreachable

240:                                              ; preds = %233
  %241 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 15
  %242 = load i64, i64* %6, align 8
  %243 = call i8* @__stpncpy_chk(i8* noundef %241, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef %242, i64 noundef 5) #8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  call void @abort() #9
  unreachable

246:                                              ; preds = %240
  %247 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 10
  %248 = load i64, i64* %6, align 8
  %249 = call i8* @__stpncpy_chk(i8* noundef %247, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 noundef %248, i64 noundef 10) #8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  call void @abort() #9
  unreachable

252:                                              ; preds = %246
  %253 = load volatile i32, i32* @chk_calls, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  call void @abort() #9
  unreachable

256:                                              ; preds = %252
  store volatile i32 0, i32* @chk_calls, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %3 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %3, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %5 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %10 = load volatile i8*, i8** @s2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = load volatile i64, i64* @l1, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @__stpncpy_chk(i8* noundef %9, i8* noundef %11, i64 noundef %13, i64 noundef 1) #8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @i, align 4
  br label %19

19:                                               ; preds = %16, %7
  call void @abort() #9
  unreachable

20:                                               ; preds = %0
  %21 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %21, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %23 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %26, i64 0, i64 7
  %28 = load volatile i8*, i8** @s3, align 8
  %29 = load volatile i64, i64* @l1, align 8
  %30 = add i64 %29, 4
  %31 = call i8* @__stpncpy_chk(i8* noundef %27, i8* noundef %28, i64 noundef %30, i64 noundef 3) #8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @i, align 4
  br label %36

36:                                               ; preds = %33, %25
  call void @abort() #9
  unreachable

37:                                               ; preds = %20
  %38 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %38, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %40 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %44 = call i8* @__stpncpy_chk(i8* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2, i64 noundef 1) #8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @i, align 4
  br label %49

49:                                               ; preds = %46, %42
  call void @abort() #9
  unreachable

50:                                               ; preds = %37
  %51 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %51, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %53 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 18
  %57 = call i8* @__stpncpy_chk(i8* noundef %56, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 2) #8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @i, align 4
  br label %62

62:                                               ; preds = %59, %55
  call void @abort() #9
  unreachable

63:                                               ; preds = %50
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
