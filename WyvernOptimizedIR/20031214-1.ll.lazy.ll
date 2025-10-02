; ModuleID = './20031214-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031214-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, [2 x i32] }

@g = dso_local global %struct.anon { double 0.000000e+00, [2 x i32] [i32 1, i32 2] }, align 8
@k = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @b(i32* nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %18, %0
  %storemerge = phi i32 [ 0, %0 ], [ %20, %18 ]
  store i32 %storemerge, i32* %1, align 4
  %3 = icmp slt i32 %storemerge, 2
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = load i32, i32* @k, align 4
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.anon, %struct.anon* @g, i64 0, i32 1, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon, %struct.anon* @g, i64 0, i32 1, i64 %14
  br label %16

16:                                               ; preds = %12, %11
  %.in = phi i32* [ @k, %11 ], [ %15, %12 ]
  %17 = load i32, i32* %.in, align 4
  store i32 %17, i32* @k, align 4
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  br label %2, !llvm.loop !4

21:                                               ; preds = %2
  %22 = load i32, i32* @k, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @k, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
