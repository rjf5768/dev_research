; ModuleID = './testcase-CGExprConstant.ll'
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
  %1 = load %struct.S2*, %struct.S2** @s, align 8
  %2 = getelementptr inbounds %struct.S2, %struct.S2* %1, i64 0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  br label %15

5:                                                ; preds = %0
  %6 = load %struct.S2*, %struct.S2** @s, align 8
  %7 = getelementptr inbounds %struct.S2, %struct.S2* %6, i64 0, i32 2, i64 1
  %8 = load i32, i32* %7, align 4
  %.not1 = icmp eq i32 %8, 2
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %5
  %11 = load %struct.S2*, %struct.S2** @s, align 8
  %12 = getelementptr inbounds %struct.S2, %struct.S2* %11, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %13) #2
  br label %15

15:                                               ; preds = %10, %9, %4
  %.0 = phi i32 [ 2, %4 ], [ 6, %9 ], [ 0, %10 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
