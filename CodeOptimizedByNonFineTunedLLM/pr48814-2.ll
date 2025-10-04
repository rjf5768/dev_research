; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48814-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48814-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@count = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @incr() #0 {
  %1 = load i32, i32* @count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @incr()
  %3 = load i32, i32* @count, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @count, align 4
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* @arr, i64 0, i64 %5
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @count, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @count, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* @arr, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %9
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
