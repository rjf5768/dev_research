; ModuleID = './fp-cmp-4f.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-4f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { float, float, i8 }

@main.data = internal constant [6 x %struct.try] [%struct.try { float 0x7FF8000000000000, float 0x7FF8000000000000, i8 1 }, %struct.try { float 0.000000e+00, float 0x7FF8000000000000, i8 1 }, %struct.try { float 0x7FF8000000000000, float 0.000000e+00, i8 1 }, %struct.try { float 0.000000e+00, float 0.000000e+00, i8 20 }, %struct.try { float 1.000000e+00, float 2.000000e+00, i8 38 }, %struct.try { float 2.000000e+00, float 1.000000e+00, i8 56 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isunordered(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isless(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp olt float %0, %1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_islessequal(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp ugt float %0, %1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isgreater(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp ogt float %0, %1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isgreaterequal(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp ult float %0, %1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_islessgreater(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp ueq float %0, %1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  br label %1

1:                                                ; preds = %75, %0
  %.0 = phi i32 [ 0, %0 ], [ %76, %75 ]
  %2 = icmp ult i32 %.0, 6
  br i1 %2, label %3, label %77

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %4, i32 0
  %6 = load float, float* %5, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %7, i32 1
  %9 = load float, float* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %10, i32 2
  %12 = load i8, i8* %11, align 4
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  call void @test_isunordered(float noundef %6, float noundef %9, i32 noundef %14)
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %15, i32 0
  %17 = load float, float* %16, align 4
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %18, i32 1
  %20 = load float, float* %19, align 4
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %21, i32 2
  %23 = load i8, i8* %22, align 4
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  call void @test_isless(float noundef %17, float noundef %20, i32 noundef %26)
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %27, i32 0
  %29 = load float, float* %28, align 4
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %30, i32 1
  %32 = load float, float* %31, align 4
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %33, i32 2
  %35 = load i8, i8* %34, align 4
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 1
  %38 = zext i8 %37 to i32
  call void @test_islessequal(float noundef %29, float noundef %32, i32 noundef %38)
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %39, i32 0
  %41 = load float, float* %40, align 4
  %42 = zext i32 %.0 to i64
  %43 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %42, i32 1
  %44 = load float, float* %43, align 4
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %45, i32 2
  %47 = load i8, i8* %46, align 4
  %48 = lshr i8 %47, 3
  %49 = and i8 %48, 1
  %50 = zext i8 %49 to i32
  call void @test_isgreater(float noundef %41, float noundef %44, i32 noundef %50)
  %51 = zext i32 %.0 to i64
  %52 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %51, i32 0
  %53 = load float, float* %52, align 4
  %54 = zext i32 %.0 to i64
  %55 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %54, i32 1
  %56 = load float, float* %55, align 4
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %57, i32 2
  %59 = load i8, i8* %58, align 4
  %60 = lshr i8 %59, 4
  %61 = and i8 %60, 1
  %62 = zext i8 %61 to i32
  call void @test_isgreaterequal(float noundef %53, float noundef %56, i32 noundef %62)
  %63 = zext i32 %.0 to i64
  %64 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %63, i32 0
  %65 = load float, float* %64, align 4
  %66 = zext i32 %.0 to i64
  %67 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %66, i32 1
  %68 = load float, float* %67, align 4
  %69 = zext i32 %.0 to i64
  %70 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %69, i32 2
  %71 = load i8, i8* %70, align 4
  %72 = lshr i8 %71, 5
  %73 = and i8 %72, 1
  %74 = zext i8 %73 to i32
  call void @test_islessgreater(float noundef %65, float noundef %68, i32 noundef %74)
  br label %75

75:                                               ; preds = %3
  %76 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

77:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
