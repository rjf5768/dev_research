; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %27 [
    i32 100, label %7
    i32 107, label %20
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = shl i64 %11, 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = add i64 %12, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 9
  store i64 %19, i64* %5, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %28

27:                                               ; preds = %2
  call void @abort() #2
  unreachable

28:                                               ; preds = %20, %7
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  ret i32 %30
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 -86, i8* %3, align 1
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 5, i8* %4, align 1
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %6 = call i32 @f(i8* noundef %5, i32 noundef 100)
  %7 = icmp ne i32 %6, 85
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #2
  unreachable

9:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
