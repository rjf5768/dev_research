; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcpy.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"VWX\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"WXyz\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"A\00CDE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"FGHI\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"A\00CFGHIj\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = call i8* @strcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i8* %1, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef 6)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %3
  %8 = call i8* @strcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 1))
  %9 = icmp ne i8* %8, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  call void @abort() #4
  unreachable

14:                                               ; preds = %10
  %15 = call i8* @strcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %16 = icmp ne i8* %15, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1)
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 noundef 6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  %22 = call i8* @strcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %23 = icmp ne i8* %22, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3)
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 noundef 9)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  call void @abort() #4
  unreachable

28:                                               ; preds = %24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %32, label %29

29:                                               ; preds = %28
  %30 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %28
  call void @abort() #4
  unreachable

33:                                               ; preds = %29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 1), i64 2, i1 false)
  br i1 false, label %37, label %34

34:                                               ; preds = %33
  %35 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %33
  call void @abort() #4
  unreachable

38:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 1, i1 false)
  br i1 false, label %42, label %39

39:                                               ; preds = %38
  %40 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %38
  call void @abort() #4
  unreachable

43:                                               ; preds = %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4, i1 false)
  br i1 false, label %47, label %44

44:                                               ; preds = %43
  %45 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 noundef 9)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %43
  call void @abort() #4
  unreachable

48:                                               ; preds = %44
  %49 = call i8* @strcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #5
  %50 = icmp ne i8* %49, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0)
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef 6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  call void @abort() #4
  unreachable

55:                                               ; preds = %51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %59, label %56

56:                                               ; preds = %55
  %57 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 6)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %55
  call void @abort() #4
  unreachable

60:                                               ; preds = %56
  ret void
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
