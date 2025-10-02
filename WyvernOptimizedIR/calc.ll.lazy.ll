; ModuleID = './calc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookupTable5B = dso_local global [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16
@lookupTable3B = dso_local global [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16
@disparity0 = dso_local global i32 0, align 4
@disparity1 = dso_local global i32 1, align 4
@bigTable = dso_local global [1024 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @calcSetup() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @calc(i32 noundef %0, i32 noundef %1) #1 {
  %3 = lshr i32 %0, 3
  %4 = and i32 %3, 31
  %5 = shl i32 %1, 5
  %6 = or i32 %4, %5
  %7 = and i32 %0, 7
  %8 = shl i32 %1, 3
  %9 = or i32 %7, %8
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds [64 x i32], [64 x i32]* @lookupTable5B, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %9 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* @lookupTable3B, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, 65536
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %20, label %17

17:                                               ; preds = %2
  %18 = and i32 %12, 994
  %19 = load i32, i32* @disparity0, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @disparity0, align 4
  %22 = lshr i32 %12, 18
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = and i32 %12, 994
  br label %30

27:                                               ; preds = %20
  %28 = and i32 %12, 994
  %29 = xor i32 %28, 994
  br label %30

30:                                               ; preds = %27, %25
  %.0 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %31 = and i32 %12, 524288
  %.not1 = icmp eq i32 %31, 0
  br i1 %.not1, label %35, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* @disparity0, align 4
  %34 = xor i32 %33, 1
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @disparity0, align 4
  br label %37

37:                                               ; preds = %35, %32
  %storemerge = phi i32 [ %36, %35 ], [ %34, %32 ]
  br label %38

38:                                               ; preds = %37, %17
  %storemerge2 = phi i32 [ %storemerge, %37 ], [ %19, %17 ]
  %.1 = phi i32 [ %.0, %37 ], [ %18, %17 ]
  store i32 %storemerge2, i32* @disparity1, align 4
  %39 = and i32 %15, 65536
  %.not3 = icmp eq i32 %39, 0
  br i1 %.not3, label %43, label %40

40:                                               ; preds = %38
  %41 = and i32 %15, 29
  %42 = load i32, i32* @disparity1, align 4
  br label %61

43:                                               ; preds = %38
  %44 = load i32, i32* @disparity1, align 4
  %45 = lshr i32 %15, 18
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = and i32 %15, 29
  br label %53

50:                                               ; preds = %43
  %51 = and i32 %15, 29
  %52 = xor i32 %51, 29
  br label %53

53:                                               ; preds = %50, %48
  %.pn = phi i32 [ %49, %48 ], [ %52, %50 ]
  %54 = and i32 %15, 524288
  %.not4 = icmp eq i32 %54, 0
  br i1 %.not4, label %58, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* @disparity1, align 4
  %57 = xor i32 %56, 1
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @disparity1, align 4
  br label %60

60:                                               ; preds = %58, %55
  %storemerge5 = phi i32 [ %59, %58 ], [ %57, %55 ]
  br label %61

61:                                               ; preds = %60, %40
  %storemerge6 = phi i32 [ %storemerge5, %60 ], [ %42, %40 ]
  %.pn7 = phi i32 [ %.pn, %60 ], [ %41, %40 ]
  %.3 = or i32 %.1, %.pn7
  store i32 %storemerge6, i32* @disparity0, align 4
  ret i32 %.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bigTableCalc(i32 noundef %0) #1 {
  %2 = load i32, i32* @disparity0, align 4
  %3 = shl i32 %2, 9
  %4 = or i32 %3, %0
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = lshr i32 %7, 16
  store i32 %8, i32* @disparity0, align 4
  %9 = and i32 %7, 1023
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @resetDisparity() #2 {
  store i32 0, i32* @disparity0, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @bigTableSetup() #3 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 1024
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = lshr i32 %.0, 9
  store i32 %4, i32* @disparity0, align 4
  %5 = and i32 %.0, 255
  %6 = lshr i32 %.0, 8
  %7 = and i32 %6, 1
  %8 = call i32 @calc(i32 noundef %5, i32 noundef %7)
  %9 = load i32, i32* @disparity0, align 4
  %10 = shl i32 %9, 16
  %11 = or i32 %8, %10
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i64 0, i64 %12
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

16:                                               ; preds = %1
  call void @resetDisparity()
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
