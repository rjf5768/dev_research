; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-4f.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-4f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { float, float, i8 }

@main.data = internal constant [6 x %struct.try] [%struct.try { float 0x7FF8000000000000, float 0x7FF8000000000000, i8 1 }, %struct.try { float 0.000000e+00, float 0x7FF8000000000000, i8 1 }, %struct.try { float 0x7FF8000000000000, float 0.000000e+00, i8 1 }, %struct.try { float 0.000000e+00, float 0.000000e+00, i8 20 }, %struct.try { float 1.000000e+00, float 2.000000e+00, i8 38 }, %struct.try { float 2.000000e+00, float 1.000000e+00, i8 56 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isunordered(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp uno float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isless(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp olt float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_islessequal(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp ole float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isgreater(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp ogt float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_isgreaterequal(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp oge float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_islessgreater(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp one float %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 6, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %115, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %7, label %118

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.try, %struct.try* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.try, %struct.try* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.try, %struct.try* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 4
  %23 = and i8 %22, 1
  %24 = zext i8 %23 to i32
  call void @test_isunordered(float noundef %12, float noundef %17, i32 noundef %24)
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.try, %struct.try* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.try, %struct.try* %32, i32 0, i32 1
  %34 = load float, float* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.try, %struct.try* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 4
  %40 = lshr i8 %39, 1
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  call void @test_isless(float noundef %29, float noundef %34, i32 noundef %42)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.try, %struct.try* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.try, %struct.try* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.try, %struct.try* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 4
  %58 = lshr i8 %57, 2
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i32
  call void @test_islessequal(float noundef %47, float noundef %52, i32 noundef %60)
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.try, %struct.try* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.try, %struct.try* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.try, %struct.try* %73, i32 0, i32 2
  %75 = load i8, i8* %74, align 4
  %76 = lshr i8 %75, 3
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  call void @test_isgreater(float noundef %65, float noundef %70, i32 noundef %78)
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.try, %struct.try* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.try, %struct.try* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.try, %struct.try* %91, i32 0, i32 2
  %93 = load i8, i8* %92, align 4
  %94 = lshr i8 %93, 4
  %95 = and i8 %94, 1
  %96 = zext i8 %95 to i32
  call void @test_isgreaterequal(float noundef %83, float noundef %88, i32 noundef %96)
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.try, %struct.try* %99, i32 0, i32 0
  %101 = load float, float* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.try, %struct.try* %104, i32 0, i32 1
  %106 = load float, float* %105, align 4
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.try, %struct.try* %109, i32 0, i32 2
  %111 = load i8, i8* %110, align 4
  %112 = lshr i8 %111, 5
  %113 = and i8 %112, 1
  %114 = zext i8 %113 to i32
  call void @test_islessgreater(float noundef %101, float noundef %106, i32 noundef %114)
  br label %115

115:                                              ; preds = %7
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %4, !llvm.loop !4

118:                                              ; preds = %4
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
