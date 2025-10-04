; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050502-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050502-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"abcde'fgh\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ABCDEFG\22HI\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"abcd\22e'fgh\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"e'fgh\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ABCDEF'G\22HI\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"G\22HI\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"abcdef@gh\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 64
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8** noundef %0, i8* noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  %11 = zext i1 %2 to i8
  store i8 %11, i8* %7, align 1
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @bar(i8** noundef %13)
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %4, %53
  %17 = load i8, i8* %9, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 %17, i8* %22, align 1
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @bar(i8** noundef %23)
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* %7, align 1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 39
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %54

33:                                               ; preds = %28, %16
  %34 = load i8, i8* %8, align 1
  %35 = trunc i8 %34 to i1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %54

41:                                               ; preds = %36, %33
  %42 = load i8, i8* %7, align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i8, i8* %8, align 1
  %46 = trunc i8 %45 to i1
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @baz(i32 noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %54

53:                                               ; preds = %47, %44, %41
  br label %16

54:                                               ; preds = %52, %40, %32
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @foo(i8** noundef %3, i8* noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %10 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %0
  call void @abort() #3
  unreachable

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @foo(i8** noundef %3, i8* noundef %14, i1 noundef zeroext false, i1 noundef zeroext true)
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %20 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %13
  call void @abort() #3
  unreachable

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @foo(i8** noundef %3, i8* noundef %24, i1 noundef zeroext true, i1 noundef zeroext true)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %23
  call void @abort() #3
  unreachable

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @foo(i8** noundef %3, i8* noundef %34, i1 noundef zeroext true, i1 noundef zeroext true)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %40 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %33
  call void @abort() #3
  unreachable

43:                                               ; preds = %38
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @foo(i8** noundef %3, i8* noundef %44, i1 noundef zeroext false, i1 noundef zeroext false)
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %50 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %43
  call void @abort() #3
  unreachable

53:                                               ; preds = %48
  ret i32 0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

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
