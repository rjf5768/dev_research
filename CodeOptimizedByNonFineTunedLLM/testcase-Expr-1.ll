; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-Expr-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-Expr-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @arr, i64 0, i64 1), align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %2)
  %4 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @arr, i64 0, i64 1), align 4
  %5 = icmp ne i32 %4, -5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 2, i32* %1, align 4
  br label %12

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @arr, i64 0, i64 2), align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 3, i32* %1, align 4
  br label %12

11:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
