; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-ExprConstant-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-ExprConstant-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [66 x i32], align 16
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [66 x i32], [66 x i32]* %2, i64 0, i64 2
  store i32 5, i32* %4, align 8
  %5 = getelementptr inbounds [66 x i32], [66 x i32]* %2, i64 0, i64 5
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds [66 x i32], [66 x i32]* %2, i64 0, i64 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %7)
  ret i32 1
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
