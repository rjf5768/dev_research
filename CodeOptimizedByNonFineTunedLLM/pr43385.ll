; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43385.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43385.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @e, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @e, align 4
  br label %14

14:                                               ; preds = %11, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #2, !srcloc !4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 2
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  call void @foo(i32 noundef %6, i32 noundef %8)
  %9 = load i32, i32* @e, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 2
  %15 = load i32, i32* %2, align 4
  call void @foo(i32 noundef %14, i32 noundef %15)
  %16 = load i32, i32* @e, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @abort() #3
  unreachable

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  call void @foo(i32 noundef %21, i32 noundef %23)
  %24 = load i32, i32* @e, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call void @abort() #3
  unreachable

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %2, align 4
  call void @foo(i32 noundef %29, i32 noundef %30)
  %31 = load i32, i32* @e, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @abort() #3
  unreachable

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  call void @foo(i32 noundef %35, i32 noundef %37)
  %38 = load i32, i32* @e, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  call void @abort() #3
  unreachable

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  call void @foo(i32 noundef %42, i32 noundef %43)
  %44 = load i32, i32* @e, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @abort() #3
  unreachable

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @bar(i32 noundef %49, i32 noundef %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  call void @abort() #3
  unreachable

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @bar(i32 noundef %57, i32 noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void @abort() #3
  unreachable

62:                                               ; preds = %55
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @bar(i32 noundef %64, i32 noundef %66)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  call void @abort() #3
  unreachable

70:                                               ; preds = %62
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @bar(i32 noundef %72, i32 noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  call void @abort() #3
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @bar(i32 noundef %78, i32 noundef %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  call void @abort() #3
  unreachable

84:                                               ; preds = %77
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @bar(i32 noundef %85, i32 noundef %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  call void @abort() #3
  unreachable

90:                                               ; preds = %84
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 328}
