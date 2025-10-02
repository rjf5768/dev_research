; ModuleID = './getij.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getij.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @getij(i8* nocapture noundef readonly %0, i32* nocapture noundef %1, i32* nocapture noundef writeonly %2) #0 {
  %4 = load i8, i8* %0, align 1
  %5 = icmp sgt i8 %4, 64
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i8, i8* %0, align 1
  %8 = icmp slt i8 %7, 73
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i8, i8* %0, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %11, -65
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %6, %3
  %14 = load i8, i8* %0, align 1
  %15 = icmp sgt i8 %14, 73
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i8, i8* %0, align 1
  %18 = icmp slt i8 %17, 85
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8, i8* %0, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, -66
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %16, %13
  %24 = load i8, i8* %0, align 1
  %25 = icmp sgt i8 %24, 96
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8, i8* %0, align 1
  %28 = icmp slt i8 %27, 105
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8, i8* %0, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -97
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %26, %23
  %34 = load i8, i8* %0, align 1
  %35 = icmp sgt i8 %34, 105
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8, i8* %0, align 1
  %38 = icmp slt i8 %37, 117
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8, i8* %0, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -98
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %36, %33
  br label %69

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %9
  %48 = getelementptr inbounds i8, i8* %0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, -48
  %52 = getelementptr inbounds i8, i8* %0, i64 2
  %53 = load i8, i8* %52, align 1
  %.not = icmp eq i8 %53, 0
  br i1 %.not, label %61, label %54

54:                                               ; preds = %47
  %55 = mul nsw i32 %51, 10
  %56 = getelementptr inbounds i8, i8* %0, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %55, %58
  %60 = add nsw i32 %59, -48
  br label %61

61:                                               ; preds = %54, %47
  %.01 = phi i32 [ %60, %54 ], [ %51, %47 ]
  %62 = sub nsw i32 19, %.01
  store i32 %62, i32* %1, align 4
  %63 = icmp slt i32 %.01, 20
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %1, align 4
  %66 = icmp slt i32 %65, 19
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %69

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %67, %43
  %.0 = phi i32 [ 1, %67 ], [ 0, %68 ], [ 0, %43 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
