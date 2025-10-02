; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local global [10 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gcd_ll(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %3, align 8
  br label %23

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %3, align 8
  br label %23

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %6

23:                                               ; preds = %17, %9
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @powmod_ll(i64 noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 1, i64* %4, align 8
  br label %55

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %22, %14
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = lshr i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %16, !llvm.loop !4

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %50, %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = urem i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %5, align 8
  %46 = mul i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = urem i64 %46, %47
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %43, %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %29, !llvm.loop !6

53:                                               ; preds = %29
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %13
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @facts(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 0), i64** %9, align 8
  store i64 1, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %13, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %11, align 8
  store i32 1, i32* %14, align 4
  br label %25

25:                                               ; preds = %91, %4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 10000
  br i1 %27, label %28, label %94

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @powmod_ll(i64 noundef %29, i32 noundef %30, i64 noundef %31)
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @powmod_ll(i64 noundef %35, i32 noundef %36, i64 noundef %37)
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @powmod_ll(i64 noundef %41, i32 noundef %42, i64 noundef %43)
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %17, align 8
  br label %58

54:                                               ; preds = %28
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %17, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* %5, align 8
  %63 = urem i64 %61, %62
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %58
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @gcd_ll(i64 noundef %73, i64 noundef %74)
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp ne i64 %76, 1
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load i64, i64* %15, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %5, align 8
  %84 = udiv i64 %83, %82
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp eq i64 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %94

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %25, !llvm.loop !7

94:                                               ; preds = %87, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 27, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 1, %7
  %9 = sub i64 %8, 1
  store i64 %9, i64* %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 3, i32* %3, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  call void @facts(i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %14 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 0), align 16
  %15 = icmp ne i64 %14, 7
  br i1 %15, label %22, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 1), align 8
  %18 = icmp ne i64 %17, 73
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 2), align 16
  %21 = icmp ne i64 %20, 262657
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %0
  call void @abort() #2
  unreachable

23:                                               ; preds = %19
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
