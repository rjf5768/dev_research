; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pure-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pure-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 2, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  store i32 0, i32* %4, align 16
  %5 = call i32 @func0(i32 noundef 0) #3
  store i32 %5, i32* %3, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @link_error0()
  br label %10

10:                                               ; preds = %9, %0
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %11, align 4
  %12 = call i32 @func1(i32 noundef 0) #4
  store i32 %12, i32* %3, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  call void @link_error1()
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 2
  store i32 0, i32* %18, align 8
  %19 = call i32 @func2(i32 noundef 0)
  store i32 %19, i32* %3, align 4
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void @link_error2()
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 3
  store i32 0, i32* %25, align 4
  %26 = call i32 @func3(i32 noundef 0)
  store i32 %26, i32* %3, align 4
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  call void @link_error3()
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 4
  store i32 0, i32* %32, align 16
  %33 = call i32 @func4(i32 noundef 0)
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 4
  %35 = load i32, i32* %34, align 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  call void @link_error4()
  br label %38

38:                                               ; preds = %37, %31
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 5
  store i32 0, i32* %39, align 4
  %40 = call i32 @func5(i32 noundef 0)
  store i32 %40, i32* %3, align 4
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  call void @link_error5()
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 6
  store i32 0, i32* %46, align 8
  %47 = call i32 @func6(i32 noundef 0)
  store i32 %47, i32* %3, align 4
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  call void @link_error6()
  br label %52

52:                                               ; preds = %51, %45
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 7
  store i32 0, i32* %53, align 4
  %54 = call i32 @func7(i32 noundef 0)
  store i32 %54, i32* %3, align 4
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void @link_error7()
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i32 @func0(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @i, align 4
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error0() #0 {
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable willreturn
define dso_local i32 @func1(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error1() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @i, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error2() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 %3, 3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error3() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @func0(i32 noundef %3) #3
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error4() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @func1(i32 noundef %4) #4
  %6 = add nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error5() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @func2(i32 noundef %3)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error6() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func7(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @func3(i32 noundef %4)
  %6 = add nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error7() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
