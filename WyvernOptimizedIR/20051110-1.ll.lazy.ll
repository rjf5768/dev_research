; ModuleID = './20051110-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051110-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes = dso_local global [5 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @add_unwind_adjustsp(i64 noundef %0) #0 {
  %2 = add nsw i64 %0, -516
  %3 = ashr i64 %2, 2
  br label %4

4:                                                ; preds = %16, %1
  %.01 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %.0 = phi i64 [ %3, %1 ], [ %10, %16 ]
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %18, label %5

5:                                                ; preds = %4
  %6 = trunc i64 %.0 to i8
  %7 = and i8 %6, 127
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* @bytes, i64 0, i64 %8
  store i8 %7, i8* %9, align 1
  %10 = lshr i64 %.0, 7
  %.not2 = icmp ult i64 %.0, 128
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %5
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* @bytes, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = or i8 %14, -128
  store i8 %15, i8* %13, align 1
  br label %16

16:                                               ; preds = %11, %5
  %17 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @add_unwind_adjustsp(i64 noundef 4132)
  %1 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0), align 1
  %.not = icmp eq i8 %1, -120
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 1), align 1
  %.not1 = icmp eq i8 %3, 7
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
