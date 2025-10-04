; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vrp-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vrp-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test01(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub i32 %13, %14
  %16 = icmp ne i32 %15, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @abort() #2
  unreachable

18:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test02(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp uge i32 %5, 12
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 %11, %12
  %14 = icmp ult i32 %13, -16
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @abort() #2
  unreachable

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %7
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -2147483648, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add i32 %7, 5
  %9 = load i32, i32* %6, align 4
  call void @test01(i32 noundef %8, i32 noundef %9)
  call void @test02(i32 noundef 14, i32 noundef 16)
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
