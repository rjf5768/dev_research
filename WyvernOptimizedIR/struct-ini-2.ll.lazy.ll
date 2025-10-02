; ModuleID = './struct-ini-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/struct-ini-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global { i8, i8, [2 x i8] } { i8 2, i8 67, [2 x i8] undef }, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @x to i16*), align 4
  %.mask = and i16 %1, 15
  %.not = icmp eq i16 %.mask, 2
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @x to i16*), align 4
  %5 = and i16 %4, 3840
  %.not1 = icmp eq i16 %5, 768
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @x to i16*), align 4
  %.mask4 = and i16 %8, -4096
  %.not3 = icmp eq i16 %.mask4, 16384
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9, %6, %2
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
