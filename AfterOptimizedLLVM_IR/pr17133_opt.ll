; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr17133.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr17133.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo = dso_local global i32 0, align 4
@bar = dso_local global i8* null, align 8
@baz = dso_local global i32 100, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @pure_alloc() #0 {
  %1 = alloca i8*, align 8
  br label %2

2:                                                ; preds = %0, %18
  %3 = load i32, i32* @foo, align 4
  %4 = load i8*, i8** @bar, align 8
  %5 = sext i32 %3 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  %7 = ptrtoint i8* %6 to i32
  %8 = and i32 %7, -2
  %9 = zext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %1, align 8
  %11 = load i32, i32* @foo, align 4
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* @foo, align 4
  %13 = load i32, i32* @foo, align 4
  %14 = load i32, i32* @baz, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %1, align 8
  ret i8* %17

18:                                               ; preds = %2
  store i32 0, i32* @foo, align 4
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i8* @pure_alloc()
  %3 = load i32, i32* @foo, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
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
