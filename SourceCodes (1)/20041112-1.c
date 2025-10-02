; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041112-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @global, align 4
  %4 = call i8* @foo(i32 noundef %3)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, inttoptr (i64 -1 to i8*)
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @global, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @global, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @foo(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @global, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @global, align 4
  store i8* bitcast (i32* @global to i8*), i8** %2, align 8
  br label %10

9:                                                ; preds = %1
  store i8* inttoptr (i64 -1 to i8*), i8** %2, align 8
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @global, align 4
  %2 = call i32 @bar()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
