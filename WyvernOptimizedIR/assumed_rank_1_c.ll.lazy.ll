; ModuleID = './assumed_rank_1_c.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/assumed_rank_1_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_value_(%struct.array* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.array, %struct.array* %0, i64 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %2, i64 %12
  %14 = load i32, i32* %13, align 4
  %.not = icmp eq i32 %11, %14
  br i1 %.not, label %16, label %15

15:                                               ; preds = %6
  call void @abort() #2
  unreachable

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
