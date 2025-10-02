; ModuleID = './pr89634.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89634.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [18 x i64] [i64 4, i64 2, i64 -200, i64 200, i64 2, i64 -400, i64 400, i64 3, i64 -600, i64 0, i64 600, i64 5, i64 -100, i64 -66, i64 0, i64 66, i64 100, i64 1152921504606846976], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @bar(i64* noundef readonly %0) #0 {
  %2 = load i64, i64* %0, align 8
  br label %3

3:                                                ; preds = %31, %1
  %.04.in = phi i64 [ %2, %1 ], [ %.04, %31 ]
  %.02 = phi i64 [ 1, %1 ], [ %.13, %31 ]
  %.01 = phi i64 [ 0, %1 ], [ %.2, %31 ]
  %.04 = add i64 %.04.in, -1
  %.not = icmp eq i64 %.04, 0
  br i1 %.not, label %32, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds i64, i64* %0, i64 1
  %6 = call i64* @foo(i64* noundef nonnull %5)
  br label %7

7:                                                ; preds = %10, %4
  %.05 = phi i64* [ %6, %4 ], [ %11, %10 ]
  %.0 = phi i64 [ 1, %4 ], [ %12, %10 ]
  %8 = icmp ult i64 %.0, %.04
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = call i64* @foo(i64* noundef %.05)
  %12 = add i64 %.0, 1
  br label %7, !llvm.loop !4

13:                                               ; preds = %7
  %14 = load i64, i64* %.05, align 8
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = shl i64 %.02, 1
  br label %30

18:                                               ; preds = %13
  %19 = add i64 %14, -3
  %20 = or i64 %19, 1
  %21 = add i64 %.02, 1
  %22 = mul i64 %20, %21
  %23 = shl i64 %.02, 1
  %24 = or i64 %23, 1
  %25 = add i64 %22, %24
  %26 = icmp ugt i64 %25, %.01
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %18
  %.1 = phi i64 [ %25, %27 ], [ %.01, %18 ]
  %29 = mul i64 %.02, %14
  br label %30

30:                                               ; preds = %28, %16
  %.13 = phi i64 [ %17, %16 ], [ %29, %28 ]
  %.2 = phi i64 [ %.01, %16 ], [ %.1, %28 ]
  br label %31

31:                                               ; preds = %30
  br label %3, !llvm.loop !6

32:                                               ; preds = %3
  ret i64 %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64* @foo(i64* noundef readonly %0) #1 {
  %2 = load i64, i64* %0, align 8
  %3 = add i64 %2, 1
  %4 = getelementptr inbounds i64, i64* %0, i64 %3
  ret i64* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [18 x i64], align 16
  %2 = bitcast [18 x i64]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) %2, i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__const.main.a to i8*), i64 144, i1 false)
  %3 = getelementptr inbounds [18 x i64], [18 x i64]* %1, i64 0, i64 0
  %4 = call i64 @bar(i64* noundef nonnull %3)
  %.not = icmp eq i64 %4, 17
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #5
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
