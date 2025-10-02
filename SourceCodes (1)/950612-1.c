; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950612-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950612-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sub i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = sub nsw i64 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i64 [ %7, %5 ], [ %9, %8 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f4(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = sub i64 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i64 [ %7, %5 ], [ %9, %8 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %67, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 10
  br i1 %5, label %6, label %70

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @f1(i32 noundef %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @abort() #2
  unreachable

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @f1(i32 noundef %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @abort() #2
  unreachable

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @f2(i32 noundef %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @abort() #2
  unreachable

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @f2(i32 noundef %27)
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @abort() #2
  unreachable

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = call i64 @f3(i64 noundef %34)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @abort() #2
  unreachable

40:                                               ; preds = %32
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 0, %41
  %43 = sext i32 %42 to i64
  %44 = call i64 @f3(i64 noundef %43)
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void @abort() #2
  unreachable

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = call i64 @f4(i64 noundef %51)
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @abort() #2
  unreachable

57:                                               ; preds = %49
  %58 = load i32, i32* %2, align 4
  %59 = sub nsw i32 0, %58
  %60 = sext i32 %59 to i64
  %61 = call i64 @f4(i64 noundef %60)
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  call void @abort() #2
  unreachable

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %3, !llvm.loop !4

70:                                               ; preds = %3
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
