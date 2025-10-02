; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031011-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031011-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 32, i32* %3, align 4
  store i32 32, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %15, %16
  br label %22

18:                                               ; preds = %0
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 64
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #2
  unreachable

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %36, %37
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #2
  unreachable

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %57, %58
  br label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %59, %56 ], [ %63, %60 ]
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 32
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #2
  unreachable

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  br label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %80, %77 ], [ %84, %81 ]
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 32
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @abort() #2
  unreachable

90:                                               ; preds = %85
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
