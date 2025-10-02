; ModuleID = './20001009-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001009-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !4
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @b, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @b, align 4
  br label %1, !llvm.loop !5

7:                                                ; preds = %1
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  unreachable

9:                                                ; preds = %7
  ret i32 -1
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 87}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
