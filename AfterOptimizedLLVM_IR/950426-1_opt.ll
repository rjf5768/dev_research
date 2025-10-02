; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950426-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950426-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, [5 x i8*] }

@s1 = dso_local global %struct.tag zeroinitializer, align 8
@p1 = dso_local global %struct.tag* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@i = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"123\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.tag, %struct.tag* @s1, i32 0, i32 0), align 8
  store %struct.tag* @s1, %struct.tag** @p1, align 8
  %2 = load %struct.tag*, %struct.tag** @p1, align 8
  %3 = getelementptr inbounds %struct.tag, %struct.tag* %2, i32 0, i32 0
  %4 = call i32 @func1(i32* noundef %3)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @foo(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %6
  store i32 3, i32* @i, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.tag, %struct.tag* @s1, i32 0, i32 1, i64 3), align 8
  %10 = load %struct.tag*, %struct.tag** @p1, align 8
  %11 = getelementptr inbounds %struct.tag, %struct.tag* %10, i32 0, i32 1
  %12 = load i32, i32* @i, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %14, align 8
  %17 = call i64 @strlen(i8* noundef %15)
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = call i32 @foo(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %22

21:                                               ; preds = %9
  call void @abort() #3
  unreachable

22:                                               ; preds = %19
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
