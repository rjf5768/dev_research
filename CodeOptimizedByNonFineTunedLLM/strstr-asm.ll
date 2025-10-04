; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rld\00", align 1
@p = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@q = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"world\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %2 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %3 = icmp ne i8* %2, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
  %6 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 4), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %7 = icmp ne i8* %6, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 4)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #4
  unreachable

9:                                                ; preds = %5
  %10 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %11 = icmp ne i8* %10, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #4
  unreachable

13:                                               ; preds = %9
  %14 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %15 = icmp ne i8* %14, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 6)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #4
  unreachable

17:                                               ; preds = %13
  %18 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 6), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %19 = icmp ne i8* %18, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 7)
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  %22 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 1), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %23 = icmp ne i8* %22, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 6)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #4
  unreachable

25:                                               ; preds = %21
  %26 = load i8*, i8** @p, align 8
  %27 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 2), i8* noundef %26)
  %28 = icmp ne i8* %27, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 8)
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @abort() #4
  unreachable

30:                                               ; preds = %25
  %31 = load i8*, i8** @q, align 8
  %32 = call i8* @my_strstr(i8* noundef %31, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i8*, i8** @q, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void @abort() #4
  unreachable

36:                                               ; preds = %30
  %37 = load i8*, i8** @q, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @my_strstr(i8* noundef %38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i8*, i8** @q, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = icmp ne i8* %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  call void @abort() #4
  unreachable

44:                                               ; preds = %36
  %45 = call i8* @strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 1), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #5
  %46 = icmp ne i8* %45, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 6)
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #4
  unreachable

48:                                               ; preds = %44
  ret void
}

declare dso_local i8* @my_strstr(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nounwind
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
