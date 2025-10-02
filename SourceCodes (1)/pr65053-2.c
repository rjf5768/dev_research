; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @x, align 4
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* elementtype(i32) @x, i32 %4) #2, !srcloc !4
  %5 = load i32, i32* @x, align 4
  store i32 %5, i32* %2, align 4
  store i32 32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp uge i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = add i32 %13, 32
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %9
  br label %16

16:                                               ; preds = %19, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  call void asm sideeffect "", "imr,~{dirflag},~{fpsr},~{flags}"(i32 %20) #2, !srcloc !5
  store i32 32, i32* %3, align 4
  store i32 1, i32* @i, align 4
  br label %16, !llvm.loop !6

21:                                               ; preds = %16
  %22 = load i32, i32* @i, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #3
  unreachable

25:                                               ; preds = %21
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
!4 = !{i64 90}
!5 = !{i64 256}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
