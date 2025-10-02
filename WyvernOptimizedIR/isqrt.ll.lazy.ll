; ModuleID = './isqrt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/isqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @usqrt(i32 noundef %0, %struct.int_sqrt* nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %2
  %.02 = phi i32 [ 0, %2 ], [ %.1, %18 ]
  %.01 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %.0 = phi i32 [ %0, %2 ], [ %8, %18 ]
  %5 = icmp ult i32 %.01, 32
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = call i32 @llvm.fshl.i32(i32 %.02, i32 %.0, i32 2)
  %8 = shl i32 %.0, 2
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = shl i32 %9, 2
  %12 = or i32 %11, 1
  %.not = icmp ult i32 %7, %12
  br i1 %.not, label %17, label %13

13:                                               ; preds = %6
  %14 = sub i32 %7, %12
  %15 = load i32, i32* %3, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %6
  %.1 = phi i32 [ %14, %13 ], [ %7, %6 ]
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  %21 = getelementptr %struct.int_sqrt, %struct.int_sqrt* %1, i64 0, i32 0
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* %21, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
