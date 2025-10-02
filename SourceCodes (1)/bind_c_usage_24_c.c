; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_24_c.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_24_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_proc(i1 noundef zeroext %0, i32* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = zext i1 %0 to i8
  store i8 %6, i8* %3, align 1
  store i32* %1, i32** %4, align 8
  %7 = load i8, i8* %3, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9, %2
  %14 = load i8, i8* %3, align 1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  unreachable

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @abort() #3
  unreachable

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  store i32 7, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %13
  br label %28

28:                                               ; preds = %27
  store i32 43, i32* %5, align 4
  call void @subtest(i1 noundef zeroext true, i32* noundef %5)
  call void @subtest(i1 noundef zeroext false, i32* noundef null)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, -45
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #3
  unreachable

32:                                               ; preds = %28
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

declare dso_local void @subtest(i1 noundef zeroext, i32* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
