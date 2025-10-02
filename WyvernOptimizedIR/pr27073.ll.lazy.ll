; ModuleID = './pr27073.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @foo(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = sext i16 %4 to i32
  br label %12

12:                                               ; preds = %13, %10
  %.01 = phi i32 [ %11, %10 ], [ %14, %13 ]
  %.0 = phi i32* [ %0, %10 ], [ %19, %13 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.01, -1
  %15 = getelementptr inbounds i32, i32* %.0, i64 1
  store i32 %5, i32* %.0, align 4
  %16 = getelementptr inbounds i32, i32* %.0, i64 2
  store i32 %6, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %.0, i64 3
  store i32 %7, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %.0, i64 4
  store i32 %8, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %.0, i64 5
  store i32 %9, i32* %18, align 4
  br label %12, !llvm.loop !4

20:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [10 x i32], align 16
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  call void @foo(i32* noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef signext 2, i32 noundef 100, i32 noundef 200, i32 noundef 300, i32 noundef 400, i32 noundef 500)
  br label %3

3:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = urem i32 %.0, 5
  %10 = mul nuw nsw i32 %9, 100
  %11 = add nuw nsw i32 %10, 100
  %.not = icmp eq i32 %8, %11
  br i1 %.not, label %13, label %12

12:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

16:                                               ; preds = %3
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %16, %12
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
