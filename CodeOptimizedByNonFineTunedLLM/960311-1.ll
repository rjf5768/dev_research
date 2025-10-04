; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960311-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960311-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @a1() #0 {
  %1 = load i32, i32* @count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @b(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @a1()
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 1
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  call void @a1()
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 1
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  call void @a1()
  br label %28

28:                                               ; preds = %27, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 0)
  %2 = load i32, i32* @count, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -128)
  %6 = load i32, i32* @count, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 64)
  %10 = load i32, i32* @count, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 32)
  %14 = load i32, i32* @count, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -64)
  %18 = load i32, i32* @count, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -96)
  %22 = load i32, i32* @count, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 96)
  %26 = load i32, i32* @count, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -32)
  %30 = load i32, i32* @count, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
