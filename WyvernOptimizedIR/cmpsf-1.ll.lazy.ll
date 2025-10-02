; ModuleID = './cmpsf-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cmpsf-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = dso_local global [8 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0x47EFFFFFE0000000, float 0x3810000000000000, float 0x3D3C25C260000000, float 0x419D6F3460000000, float 0xC1CD6F3460000000], align 16
@correct_results = dso_local global [384 x i32] [i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @feq(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oeq float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fne(float noundef %0, float noundef %1) #0 {
  %3 = fcmp une float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @flt(float noundef %0, float noundef %1) #0 {
  %3 = fcmp olt float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fge(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ult float %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fgt(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ogt float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fle(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ugt float %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %46, %0
  %.01 = phi i32 [ 0, %0 ], [ %47, %46 ]
  %.0 = phi i32* [ getelementptr inbounds ([384 x i32], [384 x i32]* @correct_results, i64 0, i64 0), %0 ], [ %.1, %46 ]
  %2 = icmp ult i32 %.01, 8
  br i1 %2, label %3, label %48

3:                                                ; preds = %1
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds [8 x float], [8 x float]* @args, i64 0, i64 %4
  %6 = load float, float* %5, align 4
  br label %7

7:                                                ; preds = %43, %3
  %.02 = phi i32 [ 0, %3 ], [ %44, %43 ]
  %.1 = phi i32* [ %.0, %3 ], [ %39, %43 ]
  %8 = icmp ult i32 %.02, 8
  br i1 %8, label %9, label %45

9:                                                ; preds = %7
  %10 = zext i32 %.02 to i64
  %11 = getelementptr inbounds [8 x float], [8 x float]* @args, i64 0, i64 %10
  %12 = load float, float* %11, align 4
  %13 = call i32 @feq(float noundef %6, float noundef %12)
  %14 = load i32, i32* %.1, align 4
  %.not = icmp eq i32 %13, %14
  br i1 %.not, label %16, label %15

15:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %9
  %17 = getelementptr inbounds i32, i32* %.1, i64 1
  %18 = call i32 @fne(float noundef %6, float noundef %12)
  %19 = load i32, i32* %17, align 4
  %.not9 = icmp eq i32 %18, %19
  br i1 %.not9, label %21, label %20

20:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %16
  %22 = getelementptr inbounds i32, i32* %.1, i64 2
  %23 = call i32 @flt(float noundef %6, float noundef %12)
  %24 = load i32, i32* %22, align 4
  %.not10 = icmp eq i32 %23, %24
  br i1 %.not10, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = getelementptr inbounds i32, i32* %.1, i64 3
  %28 = call i32 @fge(float noundef %6, float noundef %12)
  %29 = load i32, i32* %27, align 4
  %.not11 = icmp eq i32 %28, %29
  br i1 %.not11, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  %32 = getelementptr inbounds i32, i32* %.1, i64 4
  %33 = call i32 @fgt(float noundef %6, float noundef %12)
  %34 = load i32, i32* %32, align 4
  %.not12 = icmp eq i32 %33, %34
  br i1 %.not12, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  %37 = getelementptr inbounds i32, i32* %.1, i64 5
  %38 = call i32 @fle(float noundef %6, float noundef %12)
  %39 = getelementptr inbounds i32, i32* %.1, i64 6
  %40 = load i32, i32* %37, align 4
  %.not13 = icmp eq i32 %38, %40
  br i1 %.not13, label %42, label %41

41:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !4

45:                                               ; preds = %7
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

48:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %48, %41, %35, %30, %25, %20, %15
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
