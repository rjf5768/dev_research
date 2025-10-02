; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000818-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000818-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temporary_obstack = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @yylex()
  store i32 %3, i32* %2, align 4
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = call i32 @input()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @ISALNUM(i32 noundef %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %1, align 4
  call void @obstack_1grow(i8** noundef @temporary_obstack, i32 noundef %8)
  br label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 95
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %7
  br label %2

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @input() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ISALNUM(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 65
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 90
  br i1 %7, label %22, label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 97
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp sle i32 %12, 122
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 48
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp sle i32 %18, 48
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br label %22

22:                                               ; preds = %20, %11, %5
  %23 = phi i1 [ true, %11 ], [ true, %5 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal void @obstack_1grow(i8** noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  ret void
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
