; ModuleID = './loop-2b.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @f(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ %0, %1 ], [ %10, %9 ]
  %.not = icmp eq i32 %.0, 2147483647
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %2
  %4 = sext i32 %.0 to i64
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %4
  store i32 -2, i32* %5, align 4
  %6 = icmp eq i32 %.0, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %11

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !4

.loopexit:                                        ; preds = %2
  br label %11

11:                                               ; preds = %.loopexit, %7
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %1 = call i32 @f(i32 noundef 0)
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %.not = icmp eq i32 %2, -2
  br i1 %.not, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  %.not1 = icmp eq i32 %4, -2
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
