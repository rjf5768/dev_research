; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020118-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global i8* null, align 8
@n = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i8*, align 8
  br label %2

2:                                                ; preds = %2, %0
  %3 = load i8*, i8** @q, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 2
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  store volatile i32 %7, i32* @n, align 4
  %8 = load i8*, i8** @q, align 8
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  store volatile i32 %12, i32* @n, align 4
  %13 = load i8*, i8** @q, align 8
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store volatile i32 %17, i32* @n, align 4
  %18 = load i8*, i8** @q, align 8
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store volatile i32 %22, i32* @n, align 4
  %23 = load i8*, i8** @q, align 8
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store volatile i32 %27, i32* @n, align 4
  %28 = load i8*, i8** @q, align 8
  store i8* %28, i8** %1, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store volatile i32 %32, i32* @n, align 4
  %33 = load i8*, i8** @q, align 8
  store i8* %33, i8** %1, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store volatile i32 %37, i32* @n, align 4
  %38 = load i8*, i8** @q, align 8
  store i8* %38, i8** %1, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store volatile i32 %42, i32* @n, align 4
  %43 = load i8*, i8** @q, align 8
  store i8* %43, i8** %1, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  store volatile i32 %47, i32* @n, align 4
  %48 = load i8*, i8** @q, align 8
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  store volatile i32 %52, i32* @n, align 4
  %53 = load i8*, i8** @q, align 8
  store i8* %53, i8** %1, align 8
  %54 = load i8*, i8** %1, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  store volatile i32 %57, i32* @n, align 4
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
