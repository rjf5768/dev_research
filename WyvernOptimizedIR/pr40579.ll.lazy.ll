; ModuleID = './pr40579.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40579.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.01 = phi i32 [ -2147483644, %0 ], [ %4, %6 ]
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = add nsw i32 %.01, -1
  %5 = call i8* @itos(i32 noundef %4)
  call void @foo(i32 noundef %.0, i8* noundef %5)
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias i8* @itos(i32 noundef %0) #1 {
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32 noundef %0, i8* nocapture noundef readnone %1) #0 {
  %3 = icmp sgt i32 %0, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
