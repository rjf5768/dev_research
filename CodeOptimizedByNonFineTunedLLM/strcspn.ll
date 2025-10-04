; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcspn.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  %8 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %9 = icmp ne i64 %8, 11
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #3
  unreachable

11:                                               ; preds = %7
  %12 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i64 4), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp ne i64 %12, 7
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #3
  unreachable

15:                                               ; preds = %11
  %16 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #3
  unreachable

19:                                               ; preds = %15
  %20 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 11
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #3
  unreachable

23:                                               ; preds = %19
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %25 = call i8* @strcpy(i8* noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %27 = call i64 @strcspn(i8* noundef %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i64 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void @abort() #3
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %32 = call i8* @strcpy(i8* noundef %31, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = call i64 @strcspn(i8* noundef %35, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 10
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = icmp ne i8* %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %30
  call void @abort() #3
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %46 = call i8* @strcpy(i8* noundef %45, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  %51 = call i64 @strcspn(i8* noundef %50, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 5
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = icmp ne i8* %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %44
  call void @abort() #3
  unreachable

59:                                               ; preds = %53
  %60 = call i64 @strcspn(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @abort() #3
  unreachable

63:                                               ; preds = %59
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %65 = call i8* @strcpy(i8* noundef %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %67 = call i64 @strcspn(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  call void @abort() #3
  unreachable

70:                                               ; preds = %63
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %72 = call i8* @strcpy(i8* noundef %71, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8* %73, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  %76 = call i64 @strcspn(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = icmp ne i8* %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %70
  call void @abort() #3
  unreachable

84:                                               ; preds = %78
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %86 = call i8* @strcpy(i8* noundef %85, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8* %87, i8** %3, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = call i64 @strcspn(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = icmp ne i8* %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %84
  call void @abort() #3
  unreachable

99:                                               ; preds = %93
  %100 = call i64 @strcspn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #4
  %101 = icmp ne i64 %100, 11
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call void @abort() #3
  unreachable

103:                                              ; preds = %99
  ret void
}

declare dso_local i64 @strcspn(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
