; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42231.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @CallFunction(i32 (i32)* noundef @callback)
  %3 = load i32, i32* @max, align 4
  %4 = icmp ne i32 %3, 10
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CallFunction(i32 (i32)* noundef %0) #0 {
  %2 = alloca i32 (i32)*, align 8
  store i32 (i32)* %0, i32 (i32)** %2, align 8
  %3 = load i32 (i32)*, i32 (i32)** %2, align 8
  %4 = call i32 @CallFunctionRec(i32 (i32)* noundef %3, i32 noundef 1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32 (i32)*, i32 (i32)** %2, align 8
  %8 = call i32 %7(i32 noundef 0)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @callback(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @storemax(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @CallFunctionRec(i32 (i32)* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i32)*, align 8
  %5 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32 (i32)*, i32 (i32)** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 %6(i32 noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32 (i32)*, i32 (i32)** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @CallFunctionRec(i32 (i32)* noundef %15, i32 noundef %17)
  br label %19

19:                                               ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define internal void @storemax(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @max, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @max, align 4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
