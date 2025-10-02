; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/Common/glibc_compat_rand.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/Common/glibc_compat_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal global i32 0, align 4
@table = internal global [344 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @glibc_compat_rand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @next, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @next, align 4
  %8 = add nsw i32 344, %7
  %9 = sub nsw i32 %8, 3
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @next, align 4
  %12 = sub nsw i32 %11, 3
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %9, %6 ], [ %12, %10 ]
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @next, align 4
  %16 = icmp slt i32 %15, 31
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @next, align 4
  %19 = add nsw i32 344, %18
  %20 = sub nsw i32 %19, 31
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @next, align 4
  %23 = sub nsw i32 %22, 31
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %29, %33
  %35 = load i32, i32* @next, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @next, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @next, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @next, align 4
  %45 = load i32, i32* @next, align 4
  %46 = icmp sge i32 %45, 344
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  store i32 0, i32* @next, align 4
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @glibc_compat_srand(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* getelementptr inbounds ([344 x i32], [344 x i32]* @table, i64 0, i64 0), align 16
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %35, %10
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 31
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = mul nsw i64 16807, %21
  %23 = srem i64 %22, 2147483647
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 2147483647
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %12, !llvm.loop !4

38:                                               ; preds = %12
  store i32 31, i32* %5, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 34
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 31
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %39, !llvm.loop !6

54:                                               ; preds = %39
  store i32 34, i32* %6, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 344
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 31
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %63, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %55, !llvm.loop !7

76:                                               ; preds = %55
  store i32 0, i32* @next, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
