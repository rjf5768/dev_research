; ModuleID = './2008-04-18-LoopBug.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2008-04-18-LoopBug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32* nocapture noundef %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %.0 = phi i32 [ 3, %2 ], [ %13, %12 ]
  %4 = icmp ugt i32 %.0, %0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = add i32 %.0, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %1, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %5
  %13 = add i32 %.0, -1
  br label %3, !llvm.loop !4

14:                                               ; preds = %3
  %15 = load i32, i32* %1, align 4
  %16 = getelementptr inbounds i32, i32* %1, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %1, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %1, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x i32], align 16
  br label %2

2:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 5
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 5, i32* %5, align 16
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  store i32 6, i32* %6, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32 7, i32* %7, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32 8, i32* %8, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  call void @foo(i32 noundef %.0, i32* noundef nonnull %9)
  br label %10

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

12:                                               ; preds = %2
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 5, i32* %13, align 16
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  store i32 6, i32* %14, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32 7, i32* %15, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32 8, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  call void @foo(i32 noundef -1, i32* noundef nonnull %17)
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
