; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-chk.c"
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
@strncpy_disallowed = external dso_local global i32, align 4
@chk_calls = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@i = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
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
  store volatile i32 1, i32* @strncpy_disallowed, align 4
  store volatile i32 0, i32* @chk_calls, align 4
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %7 = call i8* @__strncpy_chk(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 64) #8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %9 = icmp ne i8* %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %12 = call i32 @strncmp(i8* noundef %11, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %0
  call void @abort() #9
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 16
  %19 = call i8* @__strncpy_chk(i8* noundef %18, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 48) #8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 16
  %22 = icmp ne i8* %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 16
  %26 = call i32 @strncmp(i8* noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  call void @abort() #9
  unreachable

29:                                               ; preds = %23
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 64, i1 false)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 32
  %33 = call i8* @__strncpy_chk(i8* noundef %32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4, i64 noundef 32) #8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  %36 = icmp ne i8* %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 32
  %40 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %29
  call void @abort() #9
  unreachable

43:                                               ; preds = %37
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 64, i1 false)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = call i8* @__strncpy_chk(i8* noundef %47, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4, i64 noundef -1) #8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = icmp ne i8* %48, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strncmp(i8* noundef %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 5), i64 noundef 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = icmp ne i8* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %52, %43
  call void @abort() #9
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 64, i1 false)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %65 = call i8* @__strncpy_chk(i8* noundef %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 0, i64 noundef 64) #8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %70 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %62
  call void @abort() #9
  unreachable

73:                                               ; preds = %68
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 64, i1 false)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %75, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %2, align 8
  %80 = call i8* @__strncpy_chk(i8* noundef %77, i8* noundef %79, i64 noundef 0, i64 noundef -1) #8
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = icmp ne i8* %80, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %73
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strcmp(i8* noundef %85, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = icmp ne i8* %89, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %2, align 8
  %95 = icmp ne i8* %94, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 1)
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88, %84, %73
  call void @abort() #9
  unreachable

97:                                               ; preds = %93
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %98, i8 0, i64 64, i1 false)
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %99, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = call i8* @__strncpy_chk(i8* noundef %102, i8* noundef %105, i64 noundef 0, i64 noundef -1) #8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = icmp ne i8* %106, %108
  br i1 %109, label %123, label %110

110:                                              ; preds = %97
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = call i32 @strcmp(i8* noundef %112, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = icmp ne i8* %116, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** %2, align 8
  %122 = icmp ne i8* %121, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i64 1)
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %115, %110, %97
  call void @abort() #9
  unreachable

124:                                              ; preds = %120
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %125, i8 0, i64 64, i1 false)
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %127 = call i8* @__strncpy_chk(i8* noundef %126, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 12, i64 noundef 64) #8
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %132 = call i32 @strcmp(i8* noundef %131, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %124
  call void @abort() #9
  unreachable

135:                                              ; preds = %130
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %136, i8 0, i64 64, i1 false)
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %138 = call i8* @__strncpy_chk(i8* noundef %137, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4, i64 noundef 64) #8
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %143 = call i32 @strncmp(i8* noundef %142, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 noundef 4)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %135
  call void @abort() #9
  unreachable

146:                                              ; preds = %141
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %147, i8 0, i64 64, i1 false)
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = load i32, i32* @i, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @i, align 4
  %151 = icmp ne i32 %149, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %154 = call i8* @__strncpy_chk(i8* noundef %148, i8* noundef %153, i64 noundef 4, i64 noundef 64) #8
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %156 = icmp ne i8* %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %146
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %159 = call i32 @strcmp(i8* noundef %158, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @i, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %157, %146
  call void @abort() #9
  unreachable

165:                                              ; preds = %161
  %166 = load volatile i32, i32* @chk_calls, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @abort() #9
  unreachable

169:                                              ; preds = %165
  store volatile i32 0, i32* @strncpy_disallowed, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__strncpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  %1 = load i8*, i8** @s4, align 8
  %2 = load volatile i64, i64* @l1, align 8
  %3 = add i64 %2, 1
  %4 = load i8*, i8** @s4, align 8
  %5 = call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false, i1 true, i1 false)
  %6 = call i8* @__strncpy_chk(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %3, i64 noundef %5) #8
  %7 = load volatile i32, i32* @chk_calls, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #9
  unreachable

10:                                               ; preds = %0
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
  %23 = call i8* @__strncpy_chk(i8* noundef %19, i8* noundef %21, i64 noundef %22, i64 noundef 18) #8
  %24 = load i8*, i8** %2, align 8
  %25 = load volatile i8*, i8** @s3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load volatile i64, i64* @l1, align 8
  %28 = add i64 %27, 2
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false, i1 true, i1 false)
  %31 = call i8* @__strncpy_chk(i8* noundef %24, i8* noundef %26, i64 noundef %28, i64 noundef %30) #8
  %32 = load volatile i64, i64* @l1, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = alloca i8, i64 4, align 16
  br label %39

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %37, i64 0, i64 7
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i8* [ %35, %34 ], [ %38, %36 ]
  store i8* %40, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = load volatile i8*, i8** @s2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load volatile i64, i64* @l1, align 8
  %45 = add i64 %44, 2
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @llvm.objectsize.i64.p0i8(i8* %46, i1 false, i1 true, i1 false)
  %48 = call i8* @__strncpy_chk(i8* noundef %41, i8* noundef %43, i64 noundef %45, i64 noundef %47) #8
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load volatile i8*, i8** @s3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load volatile i64, i64* @l1, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i64 @llvm.objectsize.i64.p0i8(i8* %55, i1 false, i1 true, i1 false)
  %57 = call i8* @__strncpy_chk(i8* noundef %50, i8* noundef %52, i64 noundef %53, i64 noundef %56) #8
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %58, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %100, %39
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load volatile i64, i64* @l1, align 8
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
  %74 = load volatile i64, i64* @l1, align 8
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
  %82 = load volatile i64, i64* @l1, align 8
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
  %90 = load volatile i64, i64* @l1, align 8
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
  br label %59, !llvm.loop !4

103:                                              ; preds = %59
  %104 = load i8*, i8** %2, align 8
  %105 = load volatile i8*, i8** @s2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load volatile i64, i64* @l1, align 8
  %108 = load i8*, i8** %2, align 8
  %109 = call i64 @llvm.objectsize.i64.p0i8(i8* %108, i1 false, i1 true, i1 false)
  %110 = call i8* @__strncpy_chk(i8* noundef %104, i8* noundef %106, i64 noundef %107, i64 noundef %109) #8
  %111 = load volatile i32, i32* @chk_calls, align 4
  %112 = icmp ne i32 %111, 5
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  call void @abort() #9
  unreachable

114:                                              ; preds = %103
  store volatile i32 0, i32* @chk_calls, align 4
  %115 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %116 = getelementptr inbounds [10 x i8], [10 x i8]* %115, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = call i8* @__strncpy_chk(i8* noundef %117, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 18) #8
  %119 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %119, i64 0, i64 0
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = call i8* @__strncpy_chk(i8* noundef %121, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 0, i64 noundef 18) #8
  %123 = load i8*, i8** %2, align 8
  %124 = load i8*, i8** %2, align 8
  %125 = call i64 @llvm.objectsize.i64.p0i8(i8* %124, i1 false, i1 true, i1 false)
  %126 = call i8* @__strncpy_chk(i8* noundef %123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 1, i64 noundef %125) #8
  %127 = load i8*, i8** %2, align 8
  %128 = load i8*, i8** %2, align 8
  %129 = call i64 @llvm.objectsize.i64.p0i8(i8* %128, i1 false, i1 true, i1 false)
  %130 = call i8* @__strncpy_chk(i8* noundef %127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 3, i64 noundef %129) #8
  %131 = load volatile i64, i64* @l1, align 8
  %132 = icmp eq i64 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %114
  %134 = alloca i8, i64 4, align 16
  br label %138

135:                                              ; preds = %114
  %136 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %136, i64 0, i64 7
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i8* [ %134, %133 ], [ %137, %135 ]
  store i8* %139, i8** %2, align 8
  %140 = load i8*, i8** %2, align 8
  %141 = load i8*, i8** %2, align 8
  %142 = call i64 @llvm.objectsize.i64.p0i8(i8* %141, i1 false, i1 true, i1 false)
  %143 = call i8* @__strncpy_chk(i8* noundef %140, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 3, i64 noundef %142) #8
  %144 = load i8*, i8** %2, align 8
  %145 = load i8*, i8** %2, align 8
  %146 = call i64 @llvm.objectsize.i64.p0i8(i8* %145, i1 false, i1 true, i1 false)
  %147 = call i8* @__strncpy_chk(i8* noundef %144, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %146) #8
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %148, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  store i64 4, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %190, %138
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %193

152:                                              ; preds = %149
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = load volatile i64, i64* @l1, align 8
  %156 = sub i64 %155, 1
  %157 = icmp eq i64 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %159, i64 0, i64 1
  store i8* %160, i8** %2, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  store i64 2, i64* %6, align 8
  br label %189

161:                                              ; preds = %152
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = load volatile i64, i64* @l1, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %167, i64 0, i64 7
  store i8* %168, i8** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  store i64 3, i64* %6, align 8
  br label %188

169:                                              ; preds = %161
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = load volatile i64, i64* @l1, align 8
  %173 = add i64 %172, 1
  %174 = icmp eq i64 %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %176, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  store i64 4, i64* %6, align 8
  br label %187

177:                                              ; preds = %169
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = load volatile i64, i64* @l1, align 8
  %181 = add i64 %180, 2
  %182 = icmp eq i64 %179, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %185 = getelementptr inbounds [10 x i8], [10 x i8]* %184, i64 0, i64 9
  store i8* %185, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  store i64 1, i64* %6, align 8
  br label %186

186:                                              ; preds = %183, %177
  br label %187

187:                                              ; preds = %186, %175
  br label %188

188:                                              ; preds = %187, %166
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %149, !llvm.loop !6

193:                                              ; preds = %149
  %194 = load i8*, i8** %2, align 8
  %195 = load i8*, i8** %2, align 8
  %196 = call i64 @llvm.objectsize.i64.p0i8(i8* %195, i1 false, i1 true, i1 false)
  %197 = call i8* @__strncpy_chk(i8* noundef %194, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1, i64 noundef %196) #8
  %198 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 16
  %199 = load i8*, i8** %5, align 8
  %200 = load i64, i64* %6, align 8
  %201 = call i8* @__strncpy_chk(i8* noundef %198, i8* noundef %199, i64 noundef %200, i64 noundef 4) #8
  %202 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 15
  %203 = load i64, i64* %6, align 8
  %204 = call i8* @__strncpy_chk(i8* noundef %202, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef %203, i64 noundef 5) #8
  %205 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 10
  %206 = load i64, i64* %6, align 8
  %207 = call i8* @__strncpy_chk(i8* noundef %205, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 noundef %206, i64 noundef 10) #8
  %208 = load volatile i32, i32* @chk_calls, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %193
  call void @abort() #9
  unreachable

211:                                              ; preds = %193
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
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %10 = load volatile i8*, i8** @s2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = load volatile i64, i64* @l1, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @__strncpy_chk(i8* noundef %9, i8* noundef %11, i64 noundef %13, i64 noundef 1) #8
  call void @abort() #9
  unreachable

15:                                               ; preds = %0
  %16 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %16, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %18 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %21, i64 0, i64 7
  %23 = load volatile i8*, i8** @s3, align 8
  %24 = load volatile i64, i64* @l1, align 8
  %25 = add i64 %24, 4
  %26 = call i8* @__strncpy_chk(i8* noundef %22, i8* noundef %23, i64 noundef %25, i64 noundef 3) #8
  call void @abort() #9
  unreachable

27:                                               ; preds = %15
  %28 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %28, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %30 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %34 = call i8* @__strncpy_chk(i8* noundef %33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2, i64 noundef 1) #8
  call void @abort() #9
  unreachable

35:                                               ; preds = %27
  %36 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %36, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %38 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 18
  %42 = call i8* @__strncpy_chk(i8* noundef %41, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 2) #8
  call void @abort() #9
  unreachable

43:                                               ; preds = %35
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
