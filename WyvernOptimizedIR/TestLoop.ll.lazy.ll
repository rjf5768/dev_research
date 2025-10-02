; ModuleID = './TestLoop.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/TestLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef returned %1) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %1) #2
  ret i32 %1
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  br label %3

3:                                                ; preds = %13, %1
  %.0 = phi i32 [ 3, %1 ], [ %14, %13 ]
  %4 = icmp sgt i32 %.0, -1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = add nsw i32 %0, -1
  %7 = shl nsw i32 %0, 2
  %8 = add nsw i32 %7, %.0
  %9 = add nsw i32 %8, 1
  %10 = call i32 @foo(i32 noundef %6, i32 noundef %9)
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %11
  store i32 %9, i32* %12, align 4
  br label %13

13:                                               ; preds = %5
  %14 = add nsw i32 %.0, -1
  br label %3, !llvm.loop !4

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %23, %15
  %.1 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %17 = icmp ult i32 %.1, 4
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @foo(i32 noundef 0, i32 noundef %21)
  br label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !6

25:                                               ; preds = %16
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
