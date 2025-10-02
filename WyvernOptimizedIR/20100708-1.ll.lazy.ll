; ModuleID = './20100708-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100708-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { double, [16 x %struct.anon] }
%struct.anon = type { i32, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @f(%struct.S* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 16
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 %5, i32 0
  store i32 0, i32* %6, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 %7, i32 1
  store i32 0, i32* %8, align 4
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 %9, i32 2
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %4
  %12 = add i32 %.0, 1
  br label %2, !llvm.loop !4

13:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S, align 8
  call void @f(%struct.S* noundef nonnull %1)
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
