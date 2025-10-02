; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020413-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020413-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(x86_fp80 noundef %0, i32* noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i32*, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  store i32* %1, i32** %4, align 8
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %5, align 16
  store i32 0, i32* %6, align 4
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = fcmp olt x86_fp80 %7, 0xK00000000000000000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = fneg x86_fp80 %10
  store x86_fp80 %11, x86_fp80* %3, align 16
  br label %12

12:                                               ; preds = %9, %2
  %13 = load x86_fp80, x86_fp80* %3, align 16
  %14 = load x86_fp80, x86_fp80* %5, align 16
  %15 = fcmp oge x86_fp80 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %28, %16
  %18 = load x86_fp80, x86_fp80* %5, align 16
  %19 = load x86_fp80, x86_fp80* %3, align 16
  %20 = fcmp olt x86_fp80 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = fmul x86_fp80 %22, 0xK40008000000000000000
  store x86_fp80 %23, x86_fp80* %5, align 16
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = icmp sge i32 %24, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @abort() #2
  unreachable

28:                                               ; preds = %21
  br label %17, !llvm.loop !4

29:                                               ; preds = %17
  br label %48

30:                                               ; preds = %12
  %31 = load x86_fp80, x86_fp80* %3, align 16
  %32 = fcmp une x86_fp80 %31, 0xK00000000000000000000
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %45, %33
  %35 = load x86_fp80, x86_fp80* %3, align 16
  %36 = load x86_fp80, x86_fp80* %5, align 16
  %37 = fcmp olt x86_fp80 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load x86_fp80, x86_fp80* %5, align 16
  %40 = fdiv x86_fp80 %39, 0xK40008000000000000000
  store x86_fp80 %40, x86_fp80* %5, align 16
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = icmp sge i32 %41, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  call void @abort() #2
  unreachable

45:                                               ; preds = %38
  br label %34, !llvm.loop !6

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test(x86_fp80 noundef 0xK4000C000000000000000, i32* noundef %2)
  call void @test(x86_fp80 noundef 0xK4000E000000000000000, i32* noundef %2)
  call void @test(x86_fp80 noundef 0xK40018000000000000000, i32* noundef %2)
  call void @test(x86_fp80 noundef 0xK4001A000000000000000, i32* noundef %2)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
