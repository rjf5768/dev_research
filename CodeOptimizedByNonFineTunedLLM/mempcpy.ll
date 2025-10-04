; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VWX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WX\00\00\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"A\00CDE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"FGHI\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"A\00CFGHI\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"qrstu\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"QRSTU\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Q123U\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"abcdEFG\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"efg\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@inside_main = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"ABCDEFg\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ABCDEF2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i32, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %5, label %2

2:                                                ; preds = %0
  %3 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2, %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 1), i64 2, i1 false)
  br i1 false, label %10, label %7

7:                                                ; preds = %6
  %8 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %6
  call void @abort() #4
  unreachable

11:                                               ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 1, i1 false)
  br i1 false, label %15, label %12

12:                                               ; preds = %11
  %13 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %11
  call void @abort() #4
  unreachable

16:                                               ; preds = %12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4, i1 false)
  br i1 false, label %20, label %17

17:                                               ; preds = %16
  %18 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %16
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  store i32 8, i32* %1, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 20), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 25), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 26), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 0), i64 3, i1 false)
  br i1 false, label %25, label %22

22:                                               ; preds = %21
  %23 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 25), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 noundef 6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %21
  call void @abort() #4
  unreachable

26:                                               ; preds = %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 4, i1 false)
  br i1 false, label %30, label %27

27:                                               ; preds = %26
  %28 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 noundef 8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %26
  call void @abort() #4
  unreachable

31:                                               ; preds = %27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %35, label %32

32:                                               ; preds = %31
  %33 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %31
  call void @abort() #4
  unreachable

36:                                               ; preds = %32
  store i32 1, i32* @inside_main, align 4
  %37 = load i8*, i8** @s3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5), i8* align 1 %37, i64 1, i1 false)
  %38 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 noundef 8)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @abort() #4
  unreachable

41:                                               ; preds = %36
  %42 = load i64, i64* @l1, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 6), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 %42, i1 false)
  %43 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 6), i64 %42
  %44 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i64 noundef 8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @abort() #4
  unreachable

47:                                               ; preds = %41
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
