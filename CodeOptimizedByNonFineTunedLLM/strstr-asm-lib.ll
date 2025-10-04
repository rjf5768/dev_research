; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inside_main = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @my_strstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @my_strstr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* noundef %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %3, align 8
  br label %39

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i8* @strchr(i8* noundef %14, i32 noundef %17)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %31, %13
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @strncmp(i8* noundef %23, i8* noundef %24, i64 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %3, align 8
  br label %39

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i8* @strchr(i8* noundef %33, i32 noundef %36)
  store i8* %37, i8** %4, align 8
  br label %19, !llvm.loop !4

38:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %28, %11
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strstr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @inside_main, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #3
  unreachable

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @my_strstr(i8* noundef %9, i8* noundef %10)
  ret i8* %11
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
