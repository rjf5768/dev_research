; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpbrk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpbrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lrooo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"llo world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"bye bye world\00", align 1
@__const.main_test.foo = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn(i8* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = call i8* @strpbrk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @abort() #4
  unreachable

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strpbrk(i8* noundef %10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @abort() #4
  unreachable

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  %17 = call i8* @strpbrk(i8* noundef %16, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void @abort() #4
  unreachable

20:                                               ; preds = %14
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 -1
  store i8** %22, i8*** %4, align 8
  %23 = load i8*, i8** %21, align 8
  %24 = call i8* @strpbrk(i8* noundef %23, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @abort() #4
  unreachable

27:                                               ; preds = %20
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strpbrk(i8* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @abort() #4
  unreachable

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strpbrk(i8* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @abort() #4
  unreachable

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @strpbrk(i8* noundef %41, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 6
  %45 = icmp ne i8* %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  call void @abort() #4
  unreachable

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = call i8* @strpbrk(i8* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  %53 = icmp ne i8* %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  call void @abort() #4
  unreachable

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  %58 = call i8* @strpbrk(i8* noundef %57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 7
  %61 = icmp ne i8* %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  call void @abort() #4
  unreachable

63:                                               ; preds = %55
  ret void
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i8* @strpbrk(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([2 x i8*]* @__const.main_test.foo to i8*), i64 16, i1 false)
  %3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %4 = load i8*, i8** %3, align 16
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %6 = getelementptr inbounds i8*, i8** %5, i64 1
  call void @fn(i8* noundef %4, i8** noundef %6)
  ret void
}

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
