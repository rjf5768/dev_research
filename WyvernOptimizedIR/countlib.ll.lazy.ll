; ModuleID = './countlib.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/countlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ml = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @countlib(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.01 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = icmp ult i32 %.01, 19
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %13, %6
  %.0 = phi i32 [ 0, %6 ], [ %14, %13 ]
  %8 = icmp ult i32 %.0, 19
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = zext i32 %.01 to i64
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %10, i64 %11
  store i8 1, i8* %12, align 1
  br label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

18:                                               ; preds = %4
  call void @count(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2
  ret void
}

declare dso_local void @count(i32 noundef, i32 noundef, i32 noundef) #1

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
