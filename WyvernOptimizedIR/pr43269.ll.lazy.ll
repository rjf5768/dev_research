; ModuleID = './pr43269.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43269.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_261 = dso_local global i32 0, align 4
@g_21 = dso_local global i32 0, align 4
@g_211 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @func_32(i32 noundef 0)
  %1 = load i32, i32* @g_261, align 4
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @func_32(i32 noundef %0) #1 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %11, %2
  store i32 1, i32* @g_21, align 4
  br label %4

4:                                                ; preds = %3, %1
  store i32 -1, i32* @g_261, align 4
  br label %5

5:                                                ; preds = %12, %4
  %6 = load i32, i32* @g_261, align 4
  %7 = icmp sgt i32 %6, -2
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i32, i32* @g_211, align 4
  %.not1 = icmp eq i32 %9, -1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %8
  br label %13

11:                                               ; preds = %8
  store i32 1, i32* @g_21, align 4
  br label %3

12:                                               ; No predecessors!
  br label %5, !llvm.loop !4

13:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
