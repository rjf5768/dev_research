; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@x = dso_local global i32 7, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %2 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 120)
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  %6 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 111)
  %7 = icmp ne i8* %6, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 7)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5
  %10 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 101)
  %11 = icmp ne i8* %10, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 1)
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  %14 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 3), i32 noundef 101)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  %18 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 0)
  %19 = icmp ne i8* %18, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 11)
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #3
  unreachable

21:                                               ; preds = %17
  %22 = load i8*, i8** @bar, align 8
  %23 = call i8* @strrchr(i8* noundef %22, i32 noundef 0)
  %24 = load i8*, i8** @bar, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = icmp ne i8* %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @abort() #3
  unreachable

28:                                               ; preds = %21
  %29 = load i8*, i8** @bar, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = call i8* @strrchr(i8* noundef %30, i32 noundef 0)
  %32 = load i8*, i8** @bar, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = icmp ne i8* %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @abort() #3
  unreachable

36:                                               ; preds = %28
  %37 = load i8*, i8** @bar, align 8
  %38 = load i32, i32* @x, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @x, align 4
  %40 = and i32 %38, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = call i8* @strrchr(i8* noundef %42, i32 noundef 0)
  %44 = load i8*, i8** @bar, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  %46 = icmp ne i8* %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  call void @abort() #3
  unreachable

48:                                               ; preds = %36
  %49 = load i32, i32* @x, align 4
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #3
  unreachable

52:                                               ; preds = %48
  %53 = call i8* @rindex(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 122)
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #3
  unreachable

56:                                               ; preds = %52
  %57 = call i8* @strrchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 111) #4
  %58 = icmp ne i8* %57, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 7)
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #3
  unreachable

60:                                               ; preds = %56
  %61 = call i8* @rindex(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 noundef 111) #4
  %62 = icmp ne i8* %61, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 7)
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #3
  unreachable

64:                                               ; preds = %60
  ret void
}

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i8* @rindex(i8* noundef, i32 noundef) #1

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
