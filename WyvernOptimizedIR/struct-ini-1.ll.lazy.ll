; ModuleID = './struct-ini-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/struct-ini-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [2 x i32] }

@object = dso_local global %struct.S { i8 88, [2 x i32] [i32 8, i32 9] }, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @object, i64 0, i32 0), align 4
  %.not = icmp eq i8 %1, 88
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @object, i64 0, i32 1, i64 0), align 4
  %.not1 = icmp eq i32 %3, 8
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @object, i64 0, i32 1, i64 1), align 4
  %.not2 = icmp eq i32 %5, 9
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
