; ModuleID = './loop-2d.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %2
  br label %4

4:                                                ; preds = %6, %1
  %.01 = phi i32 [ %0, %1 ], [ %5, %6 ]
  %.0 = phi i32* [ %3, %1 ], [ %9, %6 ]
  %5 = add i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = mul i32 %5, 3
  %8 = add i32 %7, ptrtoint ([2 x i32]* @a to i32)
  %9 = getelementptr inbounds i32, i32* %.0, i64 -1
  store i32 %8, i32* %9, align 4
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %1 = call i32 @f(i32 noundef 2)
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %.not = icmp eq i32 %2, ptrtoint ([2 x i32]* @a to i32)
  br i1 %.not, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  %.not1 = icmp eq i32 %4, add (i32 ptrtoint ([2 x i32]* @a to i32), i32 3)
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
