; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070212-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070212-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%struct.foo* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.foo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.foo* %0, %struct.foo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.foo*, %struct.foo** %5, align 8
  %16 = getelementptr inbounds %struct.foo, %struct.foo* %15, i32 0, i32 0
  store i32* %16, i32** %9, align 8
  br label %20

17:                                               ; preds = %4
  %18 = load %struct.foo*, %struct.foo** %5, align 8
  %19 = getelementptr inbounds %struct.foo, %struct.foo* %18, i32 0, i32 1
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.foo*, %struct.foo** %5, align 8
  %24 = getelementptr inbounds %struct.foo, %struct.foo* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %10, align 8
  br label %30

29:                                               ; preds = %20
  store i32* %6, i32** %10, align 8
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %31, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.foo, %struct.foo* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.foo, %struct.foo* %2, i32 0, i32 1
  store i32 1, i32* %4, align 4
  %5 = call i32 @bar(%struct.foo* noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
