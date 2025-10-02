; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001111-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u = internal global i32 0, align 4
@next_buffer = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @u, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = mul i32 %12, 52783
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @next_buffer, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %17, 52783
  %19 = zext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %25, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  call void @bar()
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %21, !llvm.loop !4

28:                                               ; preds = %21
  %29 = load i32, i32* @next_buffer, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 %30, 52783
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %28, %11
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @foo(i32 noundef 3)
  %3 = icmp ne i64 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  store i32 1, i32* @next_buffer, align 4
  %6 = call i64 @foo(i32 noundef 2)
  %7 = icmp ne i64 %6, 52785
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
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
