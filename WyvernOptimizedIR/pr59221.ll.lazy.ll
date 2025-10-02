; ModuleID = './pr59221.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i16 0, align 2
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @b, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @b, align 4
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  %8 = load i32, i32* @a, align 4
  %sext.mask = and i32 %8, 65535
  %.not1 = icmp eq i32 %sext.mask, 0
  br i1 %.not1, label %11, label %9

9:                                                ; preds = %7
  %10 = trunc i32 %8 to i16
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i16 [ %10, %9 ], [ -32768, %11 ]
  store i16 %13, i16* @e, align 2
  br i1 false, label %14, label %15

14:                                               ; preds = %12
  br label %17

15:                                               ; preds = %12
  %16 = sext i16 %13 to i32
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %14 ], [ %16, %15 ]
  store i32 %18, i32* @d, align 4
  %.not2 = icmp eq i32 %18, 1
  br i1 %.not2, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #2
  unreachable

20:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
