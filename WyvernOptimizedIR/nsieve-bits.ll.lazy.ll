; ModuleID = './nsieve-bits.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call noalias dereferenceable_or_null(5120004) i8* @malloc(i64 noundef 5120004) #4
  %4 = bitcast i8* %3 to i32*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  br label %54

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %51, %6
  %.03 = phi i32 [ 0, %6 ], [ %52, %51 ]
  %8 = icmp ult i32 %.03, 3
  br i1 %8, label %9, label %53

9:                                                ; preds = %7
  %10 = lshr i32 40960000, %.03
  %11 = lshr i32 %10, 3
  %narrow = add nuw nsw i32 %11, 4
  %12 = zext i32 %narrow to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 %3, i8 -1, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %47, %9
  %.04 = phi i32 [ 2, %9 ], [ %48, %47 ]
  %.01 = phi i32 [ 0, %9 ], [ %.1, %47 ]
  %.not5 = icmp ugt i32 %.04, %10
  br i1 %.not5, label %49, label %14

14:                                               ; preds = %13
  %15 = lshr i32 %.04, 5
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %4, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %.04, 31
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %46, label %22

22:                                               ; preds = %14
  %23 = add i32 %.01, 1
  %24 = shl i32 %.04, 1
  br label %25

25:                                               ; preds = %43, %22
  %.02 = phi i32 [ %24, %22 ], [ %44, %43 ]
  %.not7 = icmp ugt i32 %.02, %10
  br i1 %.not7, label %45, label %26

26:                                               ; preds = %25
  %27 = lshr i32 %.02, 5
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %4, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %.02, 31
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %.not8 = icmp eq i32 %33, 0
  br i1 %.not8, label %42, label %34

34:                                               ; preds = %26
  %35 = and i32 %.02, 31
  %36 = shl i32 1, %35
  %37 = lshr i32 %.02, 5
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %4, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42
  %44 = add i32 %.02, %.04
  br label %25, !llvm.loop !4

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %14
  %.1 = phi i32 [ %23, %45 ], [ %.01, %14 ]
  br label %47

47:                                               ; preds = %46
  %48 = add i32 %.04, 1
  br label %13, !llvm.loop !6

49:                                               ; preds = %13
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %10, i32 noundef %.01) #4
  br label %51

51:                                               ; preds = %49
  %52 = add i32 %.03, 1
  br label %7, !llvm.loop !7

53:                                               ; preds = %7
  call void @free(i8* noundef %3) #4
  br label %54

54:                                               ; preds = %53, %5
  %.0 = phi i32 [ 0, %53 ], [ 1, %5 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
