; ModuleID = './pr36038.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36038.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expect = dso_local global [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 4, i64 5, i64 6, i64 7, i64 9], align 16
@stack_base = dso_local global i64* null, align 8
@markstack_ptr = dso_local global i32* null, align 8
@list = dso_local global [10 x i64] zeroinitializer, align 16
@indices = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @doit() #0 {
  %1 = load i64*, i64** @stack_base, align 8
  %2 = getelementptr inbounds i64, i64* %1, i64 5
  %3 = load i32*, i32** @markstack_ptr, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 -1
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %3, i64 -2
  %7 = load i32, i32* %6, align 4
  %.neg = sub i32 %7, %5
  %8 = add i32 %.neg, 2
  %9 = load i64*, i64** @stack_base, align 8
  %10 = ptrtoint i64* %2 to i64
  %11 = ptrtoint i64* %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = load i32*, i32** @markstack_ptr, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 -1
  %16 = load i32, i32* %15, align 4
  %17 = trunc i64 %13 to i32
  %18 = sub i32 %17, %16
  %19 = add i32 %18, 2
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i64, i64* %2, i64 %20
  br label %22

22:                                               ; preds = %24, %0
  %.02 = phi i32 [ %19, %0 ], [ %23, %24 ]
  %.01 = phi i64* [ %21, %0 ], [ %27, %24 ]
  %.0 = phi i64* [ %2, %0 ], [ %25, %24 ]
  %23 = add nsw i32 %.02, -1
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i64, i64* %.0, i64 -1
  %26 = load i64, i64* %.0, align 8
  %27 = getelementptr inbounds i64, i64* %.01, i64 -1
  store i64 %26, i64* %.01, align 8
  br label %22, !llvm.loop !4

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 10
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [10 x i64], [10 x i64]* @list, i64 0, i64 %5
  store i64 %4, i64* %6, align 8
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

9:                                                ; preds = %1
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @indices, i64 0, i64 9), i32** @markstack_ptr, align 8
  store i32 2, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @indices, i64 0, i64 8), align 16
  store i32 1, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @indices, i64 0, i64 7), align 4
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @list, i64 0, i64 2), i64** @stack_base, align 8
  call void @doit()
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(80) bitcast ([10 x i64]* @expect to i8*), i8* noundef nonnull dereferenceable(80) bitcast ([10 x i64]* @list to i8*), i64 80)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %9
  call void @abort() #5
  unreachable

11:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
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
