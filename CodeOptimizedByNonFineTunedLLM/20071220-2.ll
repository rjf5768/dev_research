; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071220-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071220-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar.b = internal global [1 x i8*] [i8* blockaddress(@bar, %2)], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @baz(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = call i8** asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8** %3) #2, !srcloc !4
  store i8** %4, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
  %1 = call i32 @bar()
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar() #0 {
  %1 = call i8* @baz(i8** noundef getelementptr inbounds ([1 x i8*], [1 x i8*]* @bar.b, i64 0, i64 0))
  br label %2

2:                                                ; preds = %0, %3
  ret i32 17

3:                                                ; No predecessors!
  indirectbr i8* undef, [label %2]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  %1 = call i32 @bar()
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f1()
  %3 = icmp ne i32 %2, 17
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = call i32 @f1()
  %6 = icmp ne i32 %5, 17
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = call i32 @f2()
  %9 = icmp ne i32 %8, 17
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @f2()
  %12 = icmp ne i32 %11, 17
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7, %4, %0
  call void @abort() #3
  unreachable

14:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 181}
