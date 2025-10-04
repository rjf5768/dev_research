; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33142.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lisp_atan2(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @abs(i32 noundef %13) #3
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @abs(i32 noundef %16) #3
  %18 = icmp sle i32 %14, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store volatile i64 63, i64* %2, align 8
  store volatile i64 -77, i64* %3, align 8
  %4 = load volatile i64, i64* %2, align 8
  %5 = load volatile i64, i64* %3, align 8
  %6 = call i32 @lisp_atan2(i64 noundef %4, i64 noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
