; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-CGExprConstant.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-CGExprConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, i32 }
%struct.S2 = type { %struct.S1, %struct.S1*, [2 x i32] }

@gs1 = dso_local global %struct.S1 { i32 1, i32 2 }, align 4
@.compoundliteral = internal global %struct.S2 { %struct.S1 { i32 1, i32 2 }, %struct.S1* @gs1, [2 x i32] [i32 1, i32 2] }, align 8
@s = dso_local global %struct.S2* @.compoundliteral, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.S2*, %struct.S2** @s, align 8
  %3 = getelementptr inbounds %struct.S2, %struct.S2* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.S1, %struct.S1* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 2, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.S2*, %struct.S2** @s, align 8
  %10 = getelementptr inbounds %struct.S2, %struct.S2* %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 6, i32* %1, align 4
  br label %21

15:                                               ; preds = %8
  %16 = load %struct.S2*, %struct.S2** @s, align 8
  %17 = getelementptr inbounds %struct.S2, %struct.S2* %16, i32 0, i32 2
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %15, %14, %7
  %22 = load i32, i32* %1, align 4
  ret i32 %22
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
