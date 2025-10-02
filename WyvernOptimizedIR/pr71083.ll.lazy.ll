; ModuleID = './pr71083.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71083.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_chain = type { i32 }
%struct.lock_chain1 = type <{ i8, i16 }>

@test = dso_local global [101 x %struct.lock_chain] zeroinitializer, align 16
@test1 = dso_local global [101 x %struct.lock_chain1] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local %struct.lock_chain* @foo(%struct.lock_chain* noundef returned %0) #0 {
  br label %2

2:                                                ; preds = %15, %1
  %.0 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %3 = icmp ult i32 %.0, 100
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.lock_chain, %struct.lock_chain* %0, i64 %5, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -256
  %9 = add nuw nsw i32 %.0, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lock_chain, %struct.lock_chain* %0, i64 %10, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 255
  %14 = or i32 %13, %8
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

17:                                               ; preds = %2
  ret %struct.lock_chain* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local %struct.lock_chain1* @bar(%struct.lock_chain1* noundef returned %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 100
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %0, i64 %5, i32 1
  %7 = load i16, i16* %6, align 1
  %8 = add nuw nsw i32 %.0, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %0, i64 %9, i32 1
  store i16 %7, i16* %10, align 1
  br label %11

11:                                               ; preds = %4
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  ret %struct.lock_chain1* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call %struct.lock_chain* @foo(%struct.lock_chain* noundef getelementptr inbounds ([101 x %struct.lock_chain], [101 x %struct.lock_chain]* @test, i64 0, i64 0))
  %2 = call %struct.lock_chain1* @bar(%struct.lock_chain1* noundef getelementptr inbounds ([101 x %struct.lock_chain1], [101 x %struct.lock_chain1]* @test1, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
