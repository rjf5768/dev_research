; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hellXXX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" worXXX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@i = dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"bar\00XXX\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 88, i64 64, i1 false)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %7 = call i8* @strncpy(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 4)
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %9 = icmp ne i8* %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %12 = call i32 @memcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %0
  call void @abort() #4
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 88, i64 64, i1 false)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 16
  %19 = call i8* @strncpy(i8* noundef %18, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 4)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 16
  %22 = icmp ne i8* %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 16
  %26 = call i32 @memcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  call void @abort() #4
  unreachable

29:                                               ; preds = %23
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 88, i64 64, i1 false)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 32
  %33 = call i8* @strncpy(i8* noundef %32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5), i64 noundef 4)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  %36 = icmp ne i8* %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 32
  %40 = call i32 @memcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef 7)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %29
  call void @abort() #4
  unreachable

43:                                               ; preds = %37
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 88, i64 64, i1 false)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = call i8* @strncpy(i8* noundef %47, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5), i64 noundef 4)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = icmp ne i8* %48, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @memcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef 7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = icmp ne i8* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %52, %43
  call void @abort() #4
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 88, i64 64, i1 false)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %65 = call i8* @strncpy(i8* noundef %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 0)
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %70 = call i32 @memcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %62
  call void @abort() #4
  unreachable

73:                                               ; preds = %68
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 88, i64 64, i1 false)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %75, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %2, align 8
  %80 = call i8* @strncpy(i8* noundef %77, i8* noundef %79, i64 noundef 0)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = icmp ne i8* %80, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %73
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @memcmp(i8* noundef %85, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3)
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
  %95 = icmp ne i8* %94, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88, %84, %73
  call void @abort() #4
  unreachable

97:                                               ; preds = %93
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %98, i8 88, i64 64, i1 false)
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %99, i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = call i8* @strncpy(i8* noundef %102, i8* noundef %105, i64 noundef 0)
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = icmp ne i8* %106, %108
  br i1 %109, label %123, label %110

110:                                              ; preds = %97
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = call i32 @memcmp(i8* noundef %112, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3)
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
  %122 = icmp ne i8* %121, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %115, %110, %97
  call void @abort() #4
  unreachable

124:                                              ; preds = %120
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %125, i8 88, i64 64, i1 false)
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %127 = call i8* @strncpy(i8* noundef %126, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 12)
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %132 = call i32 @memcmp(i8* noundef %131, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 noundef 15)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %124
  call void @abort() #4
  unreachable

135:                                              ; preds = %130
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %136, i8 88, i64 64, i1 false)
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %138 = call i8* @strncpy(i8* noundef %137, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 noundef 4) #5
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %143 = call i32 @memcmp(i8* noundef %142, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 7)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %135
  call void @abort() #4
  unreachable

146:                                              ; preds = %141
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %147, i8 88, i64 64, i1 false)
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = load i32, i32* @i, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @i, align 4
  %151 = icmp ne i32 %149, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %154 = call i8* @strncpy(i8* noundef %148, i8* noundef %153, i64 noundef 4)
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %156 = icmp ne i8* %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %146
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %159 = call i32 @memcmp(i8* noundef %158, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 noundef 7)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @i, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %157, %146
  call void @abort() #4
  unreachable

165:                                              ; preds = %161
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

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
