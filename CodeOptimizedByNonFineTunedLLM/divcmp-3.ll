; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp eq i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp eq i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp ne i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp ne i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp slt i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp slt i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sle i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sle i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sgt i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sgt i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sge i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6u(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = sdiv i32 %4, 100
  %6 = icmp sge i32 %5, 3
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -128, i32* %2, align 4
  br label %3

3:                                                ; preds = %79, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %82

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = trunc i32 %7 to i8
  %9 = call i32 @test1(i8 noundef signext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @abort() #2
  unreachable

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = trunc i32 %13 to i8
  %15 = call i32 @test1u(i8 noundef zeroext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @abort() #2
  unreachable

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i32 @test2(i8 noundef signext %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void @abort() #2
  unreachable

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i32 @test2u(i8 noundef zeroext %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  call void @abort() #2
  unreachable

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = trunc i32 %31 to i8
  %33 = call i32 @test3(i8 noundef signext %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void @abort() #2
  unreachable

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 @test3u(i8 noundef zeroext %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #2
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @test4(i8 noundef signext %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @abort() #2
  unreachable

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = trunc i32 %49 to i8
  %51 = call i32 @test4u(i8 noundef zeroext %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #2
  unreachable

54:                                               ; preds = %48
  %55 = load i32, i32* %2, align 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @test5(i8 noundef signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void @abort() #2
  unreachable

60:                                               ; preds = %54
  %61 = load i32, i32* %2, align 4
  %62 = trunc i32 %61 to i8
  %63 = call i32 @test5u(i8 noundef zeroext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @abort() #2
  unreachable

66:                                               ; preds = %60
  %67 = load i32, i32* %2, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @test6(i8 noundef signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @abort() #2
  unreachable

72:                                               ; preds = %66
  %73 = load i32, i32* %2, align 4
  %74 = trunc i32 %73 to i8
  %75 = call i32 @test6u(i8 noundef zeroext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @abort() #2
  unreachable

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %3, !llvm.loop !4

82:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
