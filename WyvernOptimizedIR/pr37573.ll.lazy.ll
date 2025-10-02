; ModuleID = './pr37573.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37573.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32*, i32, [624 x i32] }

@p = internal global [23 x i8] c"\C0I\172b\1E.\D5L\19(I\91\E4r\83\91=\93\83\B3a8", align 16
@q = internal global [23 x i8] c">AUTOIT UNICODE SCRIPT<", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @bar(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @p, i64 0, i64 0), i32 noundef 23, i32 noundef 41589)
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @q, i64 0, i64 0), i64 23)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %2, label %1

1:                                                ; preds = %0
  call void @abort() #5
  unreachable

2:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @bar(i8* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.S, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 2, i64 0
  store i32 %2, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %3
  %.02 = phi i32 [ 1, %3 ], [ %24, %23 ]
  %7 = icmp ult i32 %.02, 624
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = add i32 %.02, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 2, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = lshr i32 %12, 30
  %14 = add i32 %.02, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 2, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %13, %17
  %19 = mul i32 %18, 1812433253
  %20 = add i32 %.02, %19
  %21 = zext i32 %.02 to i64
  %22 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 2, i64 %21
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %8
  %24 = add i32 %.02, 1
  br label %6, !llvm.loop !4

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 1
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %28, %25
  %.01 = phi i32 [ %1, %25 ], [ %29, %28 ]
  %.0 = phi i8* [ %0, %25 ], [ %31, %28 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %34, label %28

28:                                               ; preds = %27
  %29 = add i32 %.01, -1
  %30 = call zeroext i8 @foo(%struct.S* noundef nonnull %4)
  %31 = getelementptr inbounds i8, i8* %.0, i64 1
  %32 = load i8, i8* %.0, align 1
  %33 = xor i8 %32, %30
  store i8 %33, i8* %.0, align 1
  br label %27, !llvm.loop !6

34:                                               ; preds = %27
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i8 @foo(%struct.S* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = add i32 %3, -1
  store i32 %4, i32* %2, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 0
  %7 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  store i32* %6, i32** %7, align 8
  br label %8

8:                                                ; preds = %40, %5
  %.0 = phi i32 [ 0, %5 ], [ %41, %40 ]
  %9 = icmp ult i32 %.0, 227
  br i1 %9, label %10, label %42

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %.0, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %13, %17
  %19 = and i32 %18, 2147483646
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %19, %22
  %24 = lshr i32 %23, 1
  %25 = add i32 %.0, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = sub nsw i32 0, %29
  %31 = and i32 %30, -1727483681
  %32 = xor i32 %24, %31
  %33 = add i32 %.0, 397
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %32, %36
  %38 = zext i32 %.0 to i64
  %39 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %38
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %10
  %41 = add i32 %.0, 1
  br label %8, !llvm.loop !7

42:                                               ; preds = %8
  br label %43

43:                                               ; preds = %42, %1
  %44 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32* %46, i32** %44, align 8
  %47 = load i32, i32* %45, align 4
  %48 = lshr i32 %47, 11
  %49 = xor i32 %47, %48
  %50 = shl i32 %49, 7
  %51 = and i32 %50, -1658038656
  %52 = xor i32 %49, %51
  %53 = shl i32 %52, 15
  %54 = and i32 %53, 130023424
  %55 = xor i32 %52, %54
  %56 = lshr i32 %55, 19
  %57 = lshr i32 %52, 1
  %58 = xor i32 %56, %57
  %59 = trunc i32 %58 to i8
  ret i8 %59
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
