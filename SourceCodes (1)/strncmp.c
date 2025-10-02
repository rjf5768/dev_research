; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ozz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rzz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 4), i8** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 8
  %8 = call i32 @strncmp(i8* noundef %5, i8* noundef %7, i64 noundef 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %0
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  %20 = call i32 @strncmp(i8* noundef %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1)
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %17
  call void @abort() #3
  unreachable

26:                                               ; preds = %22
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  %29 = call i32 @strncmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %28, i64 noundef 1)
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = icmp ne i8* %32, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 2)
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %26
  call void @abort() #3
  unreachable

35:                                               ; preds = %31
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  %38 = call i32 @strncmp(i8* noundef %37, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef 100)
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %2, align 8
  %42 = icmp ne i8* %41, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 3)
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %35
  call void @abort() #3
  unreachable

44:                                               ; preds = %40
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %2, align 8
  %47 = call i32 @strncmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %46, i64 noundef 100)
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %2, align 8
  %51 = icmp ne i8* %50, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 4)
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %44
  call void @abort() #3
  unreachable

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = call i32 @strncmp(i8* noundef %56, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef 100)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %2, align 8
  %61 = icmp ne i8* %60, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5)
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %53
  call void @abort() #3
  unreachable

63:                                               ; preds = %59
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = call i32 @strncmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %66, i64 noundef 100)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %2, align 8
  %71 = icmp ne i8* %70, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 6)
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %63
  call void @abort() #3
  unreachable

73:                                               ; preds = %69
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %2, align 8
  %76 = call i32 @strncmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %75, i64 noundef 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %2, align 8
  %80 = icmp ne i8* %79, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 7)
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %73
  call void @abort() #3
  unreachable

82:                                               ; preds = %78
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %2, align 8
  %85 = call i32 @strncmp(i8* noundef %84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %2, align 8
  %89 = icmp ne i8* %88, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 8)
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %82
  call void @abort() #3
  unreachable

91:                                               ; preds = %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 4), i8** %3, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %2, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = call i32 @strncmp(i8* noundef %93, i8* noundef %96, i64 noundef 1)
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %91
  %100 = load i8*, i8** %2, align 8
  %101 = icmp ne i8* %100, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 1)
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8
  %104 = icmp ne i8* %103, getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 5)
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99, %91
  call void @abort() #3
  unreachable

106:                                              ; preds = %102
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
