; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr46309.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr46309.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32*, i32** @q, align 8
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 263
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @abort() #2
  unreachable

20:                                               ; No predecessors!
  br label %22

21:                                               ; preds = %15, %10
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %6, %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  store i32 2, i32* %2, align 4
  call void @bar(i32* noundef %2)
  store i32 3, i32* %2, align 4
  call void @bar(i32* noundef %2)
  store i32 1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  store i32* %3, i32** @q, align 8
  call void @bar(i32* noundef %2)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %2, align 4
  call void @bar(i32* noundef %2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 273}
