; ModuleID = './pr68532.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68532.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in = dso_local global [128 x i16] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @test(i16 noundef zeroext %0, i16* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %.01 = phi i32 [ 0, %3 ], [ %14, %7 ]
  %.0 = phi i16 [ %0, %3 ], [ %13, %7 ]
  %5 = icmp ult i32 %.01, 128
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i16, i16* %1, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = trunc i32 %2 to i16
  %12 = mul i16 %10, %11
  %13 = add i16 %12, %.0
  %14 = add nuw nsw i32 %.01, 8
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  %16 = zext i16 %.0 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 128
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i16
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [128 x i16], [128 x i16]* @in, i64 0, i64 %5
  store i16 %4, i16* %6, align 2
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

9:                                                ; preds = %1
  %10 = call i32 @test(i16 noundef zeroext 0, i16* noundef getelementptr inbounds ([128 x i16], [128 x i16]* @in, i64 0, i64 0), i32 noundef 1)
  %.not = icmp eq i32 %10, 960
  br i1 %.not, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  unreachable

12:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
