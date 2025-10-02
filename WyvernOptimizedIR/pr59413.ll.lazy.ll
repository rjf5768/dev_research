; ModuleID = './pr59413.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %storemerge = phi i32 [ 7, %0 ], [ %10, %8 ]
  store i32 %storemerge, i32* @a, align 4
  %2 = icmp ult i32 %storemerge, 2
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load i32, i32* @a, align 4
  %5 = add i32 %4, 128
  %6 = icmp ult i32 %5, 256
  %7 = zext i1 %6 to i32
  store i32 %7, i32* @b, align 4
  br label %8

8:                                                ; preds = %3
  %9 = load i32, i32* @a, align 4
  %10 = add i32 %9, 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  %12 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %12, 7
  br i1 %.not, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #2
  unreachable

14:                                               ; preds = %11
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
