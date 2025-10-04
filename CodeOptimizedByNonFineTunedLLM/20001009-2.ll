; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001009-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001009-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 255, i32* %1, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i32, i32* @b, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  store i32 1, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #2, !srcloc !4
  %8 = load i32, i32* %1, align 4
  %9 = trunc i32 %8 to i8
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @b, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @b, align 4
  br label %3, !llvm.loop !5

14:                                               ; preds = %3
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #3
  unreachable

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo()
  ret i32 0
}

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
!4 = !{i64 87}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
