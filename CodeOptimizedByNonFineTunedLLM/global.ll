; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/global.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [4 x i32] [i32 127, i32 -1, i32 100, i32 -28], align 16
@array2 = dso_local global [4 x [4 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"error: i=%d, j=%d, result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"a=%d b=%d a*a=%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %50, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4
  br i1 %5, label %6, label %53

6:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %46, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @array, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* @array, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %14, %18
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %21
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %27
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %10
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %38
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %35, i32 noundef %36, i32 noundef %43)
  br label %45

45:                                               ; preds = %34, %10
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %7, !llvm.loop !4

49:                                               ; preds = %7
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %3, !llvm.loop !6

53:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 127, i32* %2, align 4
  store i32 100, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = mul nsw i32 %6, %7
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %8)
  call void @test()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
