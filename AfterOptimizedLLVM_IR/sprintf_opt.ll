; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/sprintf.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"barf\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test1()
  %1 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 4)
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 65
  br i1 %6, label %7, label %8

7:                                                ; preds = %3, %0
  call void @abort() #4
  unreachable

8:                                                ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %9 = call i32 @test2()
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #4
  unreachable

12:                                               ; preds = %8
  %13 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 65
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12
  call void @abort() #4
  unreachable

20:                                               ; preds = %15
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test3()
  %21 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 65
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  call void @abort() #4
  unreachable

28:                                               ; preds = %23
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %29 = call i32 @test4()
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #4
  unreachable

32:                                               ; preds = %28
  %33 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 65
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  call void @abort() #4
  unreachable

40:                                               ; preds = %35
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test5(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 65
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %40
  call void @abort() #4
  unreachable

48:                                               ; preds = %43
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
