; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040805-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040805-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] [i32 2, i32 3], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32 noundef 100)
  %3 = icmp ne i32 %2, 102
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [65536 x i8], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0
  %9 = call i32 @bar(i32 noundef %7, i8* noundef %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0
  %12 = call i32 @bar(i32 noundef %10, i8* noundef %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  ret i32 %15
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
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
