; ModuleID = './930603-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@w = dso_local global [2 x [2 x i32]] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @f() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.01 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.01, 2
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %13, %3
  %.0 = phi i32 [ 0, %3 ], [ %14, %13 ]
  %5 = icmp ult i32 %.0, 2
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = icmp eq i32 %.01, %.0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @w, i64 0, i64 %9, i64 %10
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %8, %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

18:                                               ; preds = %1
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f()
  %2 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @w, i64 0, i64 0, i64 0), align 16
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @w, i64 0, i64 1, i64 1), align 4
  %.not1 = icmp eq i32 %4, 1
  br i1 %.not1, label %5, label %9

5:                                                ; preds = %3
  %6 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @w, i64 0, i64 1, i64 0), align 8
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %7, label %9

7:                                                ; preds = %5
  %8 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @w, i64 0, i64 0, i64 1), align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %7, %5, %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9
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
!6 = distinct !{!6, !5}
