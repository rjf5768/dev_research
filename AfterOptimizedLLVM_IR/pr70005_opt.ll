; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70005.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 6, align 1
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @fn1()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = load i8, i8* @a, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %15

12:                                               ; preds = %0
  %13 = load i8, i8* @a, align 1
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 1, %11 ], [ %14, %12 ]
  store i32 %16, i32* %1, align 4
  %17 = load i8, i8* @a, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8, i8* @a, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* @b, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* @c, align 4
  %27 = and i32 6, %26
  store i32 %27, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %28 = load i8, i8* @a, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @c, align 4
  %31 = xor i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @b, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i8, i8* @a, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %24
  %39 = phi i1 [ true, %24 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i8, i8* @a, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, -1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  %45 = load i8, i8* @a, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8, i8* @a, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53, %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %62, %64
  %66 = xor i32 %65, -1
  %67 = sub nsw i32 0, %66
  %68 = load i32, i32* @c, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %1, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ true, %71 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = xor i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %77, %59
  %84 = phi i1 [ false, %59 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void @abort() #2
  unreachable

89:                                               ; preds = %83
  ret void
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
