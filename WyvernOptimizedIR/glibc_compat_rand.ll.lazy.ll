; ModuleID = './glibc_compat_rand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/Common/glibc_compat_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal global i32 0, align 4
@table = internal global [344 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @glibc_compat_rand() #0 {
  %1 = load i32, i32* @next, align 4
  %2 = icmp slt i32 %1, 3
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @next, align 4
  %5 = add nsw i32 %4, 341
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @next, align 4
  %8 = add nsw i32 %7, -3
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %6 ]
  %11 = load i32, i32* @next, align 4
  %12 = icmp slt i32 %11, 31
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @next, align 4
  %15 = add nsw i32 %14, 313
  br label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @next, align 4
  %18 = add nsw i32 %17, -31
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = load i32, i32* @next, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @next, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp sgt i32 %34, 342
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %19
  %storemerge = phi i32 [ 0, %37 ], [ %35, %19 ]
  store i32 %storemerge, i32* @next, align 4
  %39 = lshr i32 %33, 1
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @glibc_compat_srand(i32 noundef %0) #1 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %.0 = phi i32 [ 1, %3 ], [ %0, %1 ]
  store i32 %.0, i32* getelementptr inbounds ([344 x i32], [344 x i32]* @table, i64 0, i64 0), align 16
  br label %5

5:                                                ; preds = %20, %4
  %.01 = phi i32 [ 1, %4 ], [ %21, %20 ]
  %6 = icmp ult i32 %.01, 31
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = add nsw i32 %.01, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 16807
  %14 = urem i64 %13, 2147483647
  %15 = trunc i64 %14 to i32
  br i1 false, label %16, label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %7
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %18
  store i32 %15, i32* %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %32, %22
  %.03 = phi i32 [ 31, %22 ], [ %33, %32 ]
  %24 = icmp ult i32 %.03, 34
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = add nsw i32 %.03, -31
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %.03 to i64
  %31 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %30
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = add nuw nsw i32 %.03, 1
  br label %23, !llvm.loop !6

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %49, %34
  %.04 = phi i32 [ 34, %34 ], [ %50, %49 ]
  %36 = icmp ult i32 %.04, 344
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = add nsw i32 %.04, -31
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %.04, -3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %41, %45
  %47 = zext i32 %.04 to i64
  %48 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %47
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %37
  %50 = add nuw nsw i32 %.04, 1
  br label %35, !llvm.loop !7

51:                                               ; preds = %35
  store i32 0, i32* @next, align 4
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
