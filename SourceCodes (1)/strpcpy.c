; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"z\0023\00\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"EFG\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@inside_main = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"abcFGH\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  %2 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %3 = icmp ne i8* %2, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5)
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %4
  %9 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 1))
  %10 = icmp ne i8* %9, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 20)
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8
  call void @abort() #3
  unreachable

15:                                               ; preds = %11
  %16 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %17 = icmp ne i8* %16, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1)
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  call void @abort() #3
  unreachable

22:                                               ; preds = %18
  %23 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %24 = icmp ne i8* %23, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 8)
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  call void @abort() #3
  unreachable

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  %32 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 21), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %33 = icmp ne i8* %32, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 23)
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 9
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 19), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %29
  call void @abort() #3
  unreachable

41:                                               ; preds = %37
  %42 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %43 = call i8* @stpcpy(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %44 = icmp ne i8* %43, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 7)
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 noundef 8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41
  call void @abort() #3
  unreachable

49:                                               ; preds = %45
  %50 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4
  %51 = icmp ne i8* %50, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5)
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  call void @abort() #3
  unreachable

56:                                               ; preds = %52
  store i32 1, i32* @inside_main, align 4
  %57 = load i8*, i8** @s3, align 8
  %58 = call i8* @stpcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef %57)
  %59 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 noundef 6)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @abort() #3
  unreachable

62:                                               ; preds = %56
  ret void
}

declare dso_local i8* @stpcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
