; ModuleID = './memmove-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memmove-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memmove(i8* noundef returned writeonly %0, i8* noundef readonly %1, i64 noundef %2) #0 {
  %4 = icmp ult i8* %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %8, %5
  %.02 = phi i64 [ %2, %5 ], [ %7, %8 ]
  %7 = add i64 %.02, -1
  %.not3 = icmp eq i64 %.02, 0
  br i1 %.not3, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %1, i64 %7
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds i8, i8* %0, i64 %7
  store i8 %10, i8* %11, align 1
  br label %6, !llvm.loop !4

12:                                               ; preds = %6
  br label %21

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %15, %13
  %.1 = phi i64 [ %2, %13 ], [ %16, %15 ]
  %.01 = phi i8* [ %0, %13 ], [ %19, %15 ]
  %.0 = phi i8* [ %1, %13 ], [ %17, %15 ]
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %20, label %15

15:                                               ; preds = %14
  %16 = add i64 %.1, -1
  %17 = getelementptr inbounds i8, i8* %.0, i64 1
  %18 = load i8, i8* %.0, align 1
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %18, i8* %.01, align 1
  br label %14, !llvm.loop !6

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %12
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @bcopy(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64 noundef %2) #1 {
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %0, i64 %2, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
