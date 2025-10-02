; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020510-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020510-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @testc(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sle i32 %10, 127
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  br label %22

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tests(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp sle i32 %10, 32767
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  br label %22

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testi(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp uge i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp ule i32 %8, 2147483647
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp uge i64 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp ule i64 %8, 9223372036854775807
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @testc(i8 noundef zeroext 0, i32 noundef 0)
  call void @testc(i8 noundef zeroext 1, i32 noundef 1)
  call void @testc(i8 noundef zeroext 127, i32 noundef 1)
  call void @testc(i8 noundef zeroext -128, i32 noundef 0)
  call void @testc(i8 noundef zeroext -1, i32 noundef 0)
  call void @tests(i16 noundef zeroext 0, i32 noundef 0)
  call void @tests(i16 noundef zeroext 1, i32 noundef 1)
  call void @tests(i16 noundef zeroext 32767, i32 noundef 1)
  call void @tests(i16 noundef zeroext -32768, i32 noundef 0)
  call void @tests(i16 noundef zeroext -1, i32 noundef 0)
  call void @testi(i32 noundef 0, i32 noundef 0)
  call void @testi(i32 noundef 1, i32 noundef 1)
  call void @testi(i32 noundef 2147483647, i32 noundef 1)
  call void @testi(i32 noundef -2147483648, i32 noundef 0)
  call void @testi(i32 noundef -1, i32 noundef 0)
  call void @testl(i64 noundef 0, i32 noundef 0)
  call void @testl(i64 noundef 1, i32 noundef 1)
  call void @testl(i64 noundef 9223372036854775807, i32 noundef 1)
  call void @testl(i64 noundef -9223372036854775808, i32 noundef 0)
  call void @testl(i64 noundef -1, i32 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
