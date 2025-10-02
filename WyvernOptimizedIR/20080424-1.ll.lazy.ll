; ModuleID = './20080424-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080424-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar.i = internal global i32 0, align 4
@g = dso_local global [48 x [3 x [3 x i32]]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar([3 x i32]* noundef readnone %0, [3 x i32]* noundef readnone %1) #0 {
  %3 = load i32, i32* @bar.i, align 4
  %4 = add nsw i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %5, i64 0
  %.not = icmp eq [3 x i32]* %6, %0
  br i1 %.not, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @bar.i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @bar.i, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %10, i64 0
  %.not1 = icmp eq [3 x i32]* %11, %1
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %7, %2
  call void @abort() #2
  unreachable

13:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %3 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %.0, 8
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %5, i64 0
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %7, i64 0
  call void @bar([3 x i32]* noundef nonnull %6, [3 x i32]* noundef nonnull %8) #3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
