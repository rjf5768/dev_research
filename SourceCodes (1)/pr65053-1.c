; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = call i32 @foo()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ugt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %6
  br label %14

14:                                               ; preds = %13, %0
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  call void asm "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* elementtype(i32) %2, i32 %19) #2, !srcloc !4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* @i, align 4
  br label %15, !llvm.loop !5

20:                                               ; preds = %15
  %21 = load i32, i32* @i, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #3
  unreachable

24:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 281}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
