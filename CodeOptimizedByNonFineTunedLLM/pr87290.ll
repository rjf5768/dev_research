; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87290.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0() #0 {
  %1 = load i32, i32* @c, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @c, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = srem i32 %3, 16
  %5 = icmp eq i32 %4, 13
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = srem i32 %3, 16
  %5 = icmp eq i32 %4, -13
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = srem i32 %3, 16
  %5 = icmp eq i32 %4, 13
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @f0()
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = srem i32 %3, 16
  %5 = icmp eq i32 %4, -13
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @f0()
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -30, i32* %2, align 4
  br label %4

4:                                                ; preds = %91, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 30
  br i1 %6, label %7, label %94

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %8, 16
  %10 = add nsw i32 13, %9
  %11 = call i32 @f1(i32 noundef %10)
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %7
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %17, 16
  %19 = add nsw i32 -13, %18
  %20 = call i32 @f2(i32 noundef %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %7
  call void @abort() #2
  unreachable

26:                                               ; preds = %16
  %27 = load i32, i32* %2, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 13, %28
  call void @f3(i32 noundef %29)
  %30 = load i32, i32* @c, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  call void @abort() #2
  unreachable

36:                                               ; preds = %26
  %37 = load i32, i32* %2, align 4
  %38 = mul nsw i32 %37, 16
  %39 = add nsw i32 -13, %38
  call void @f4(i32 noundef %39)
  %40 = load i32, i32* @c, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 1, %43
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  call void @abort() #2
  unreachable

47:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = mul nsw i32 %52, 16
  %54 = add nsw i32 13, %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @f1(i32 noundef %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %2, align 4
  %61 = mul nsw i32 %60, 16
  %62 = add nsw i32 -13, %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @f2(i32 noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51
  call void @abort() #2
  unreachable

68:                                               ; preds = %59
  %69 = load i32, i32* %2, align 4
  %70 = mul nsw i32 %69, 16
  %71 = add nsw i32 13, %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %71, %72
  call void @f3(i32 noundef %73)
  %74 = load i32, i32* %2, align 4
  %75 = mul nsw i32 %74, 16
  %76 = add nsw i32 -13, %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %76, %77
  call void @f4(i32 noundef %78)
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %48, !llvm.loop !4

82:                                               ; preds = %48
  %83 = load i32, i32* @c, align 4
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 1, %86
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  call void @abort() #2
  unreachable

90:                                               ; preds = %82
  store i32 0, i32* @c, align 4
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %4, !llvm.loop !6

94:                                               ; preds = %4
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
