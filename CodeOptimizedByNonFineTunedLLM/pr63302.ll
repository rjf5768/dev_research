; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63302.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63302.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %3, align 16
  store i128 %9, i128* %4, align 16
  %10 = load i128, i128* %4, align 16
  %11 = and i128 %10, -9223372036854773761
  store i128 %11, i128* %5, align 16
  %12 = load i128, i128* %5, align 16
  %13 = icmp eq i128 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i128, i128* %5, align 16
  %16 = icmp eq i128 %15, -9223372036854775808
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ true, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, -2147481601
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, -2147483648
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ true, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 0, i128* %2, align 16
  %11 = bitcast i128* %2 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 16
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @foo(i64 noundef %13, i64 noundef %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %82, label %18

18:                                               ; preds = %0
  store i128 1, i128* %3, align 16
  %19 = bitcast i128* %3 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 16
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @foo(i64 noundef %21, i64 noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %82, label %26

26:                                               ; preds = %18
  store i128 2048, i128* %4, align 16
  %27 = bitcast i128* %4 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 16
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @foo(i64 noundef %29, i64 noundef %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %82, label %34

34:                                               ; preds = %26
  store i128 2049, i128* %5, align 16
  %35 = bitcast i128* %5 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 16
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @foo(i64 noundef %37, i64 noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %82, label %42

42:                                               ; preds = %34
  store i128 9223372036854775808, i128* %6, align 16
  %43 = bitcast i128* %6 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 16
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @foo(i64 noundef %45, i64 noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %42
  store i128 -9223372036854775808, i128* %7, align 16
  %51 = bitcast i128* %7 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @foo(i64 noundef %53, i64 noundef %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %82, label %58

58:                                               ; preds = %50
  store i128 -9223372036854775807, i128* %8, align 16
  %59 = bitcast i128* %8 to { i64, i64 }*
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 16
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @foo(i64 noundef %61, i64 noundef %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %58
  store i128 -9223372036854773760, i128* %9, align 16
  %67 = bitcast i128* %9 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 16
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @foo(i64 noundef %69, i64 noundef %71)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  store i128 -9223372036854773759, i128* %10, align 16
  %75 = bitcast i128* %10 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @foo(i64 noundef %77, i64 noundef %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %66, %58, %50, %42, %34, %26, %18, %0
  call void @abort() #2
  unreachable

83:                                               ; preds = %74
  %84 = call i32 @bar(i64 noundef 0)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %110, label %86

86:                                               ; preds = %83
  %87 = call i32 @bar(i64 noundef 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %86
  %90 = call i32 @bar(i64 noundef 2048)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = call i32 @bar(i64 noundef 2049)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %92
  %96 = call i32 @bar(i64 noundef 2147483648)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = call i32 @bar(i64 noundef -2147483648)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = call i32 @bar(i64 noundef -2147483647)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = call i32 @bar(i64 noundef -2147481600)
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = call i32 @bar(i64 noundef -2147481599)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %104, %101, %98, %95, %92, %89, %86, %83
  call void @abort() #2
  unreachable

111:                                              ; preds = %107
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
