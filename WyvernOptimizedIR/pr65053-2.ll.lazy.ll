; ModuleID = './pr65053-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @x, align 4
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* nonnull elementtype(i32) @x, i32 %1) #2, !srcloc !4
  %2 = load i32, i32* @x, align 4
  %3 = icmp ugt i32 %2, 31
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %5
  %7 = add i32 %2, 32
  br label %8

8:                                                ; preds = %6, %5
  %.0 = phi i32 [ %7, %6 ], [ 32, %5 ]
  br label %9

9:                                                ; preds = %10, %8
  %.1 = phi i32 [ %.0, %8 ], [ 32, %10 ]
  %.not1 = icmp eq i32 %.1, 32
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %9
  call void asm sideeffect "", "imr,~{dirflag},~{fpsr},~{flags}"(i32 %.1) #2, !srcloc !5
  store i32 1, i32* @i, align 4
  br label %9, !llvm.loop !6

11:                                               ; preds = %9
  %12 = load i32, i32* @i, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %13, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 90}
!5 = !{i64 256}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
