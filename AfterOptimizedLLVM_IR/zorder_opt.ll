; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/zorder.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/zorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_to_bit.B = internal constant [5 x i64] [i64 1431655765, i64 858993459, i64 252645135, i64 16711935, i64 65535], align 16
@index_to_bit.S = internal constant [5 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16], align 16
@.str = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_zorder(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i32* noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %74, %8
  %21 = load i32, i32* %19, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %19, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %74

32:                                               ; preds = %24
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @index_to_bit(i64 noundef %38, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  store i64 %46, i64* %17, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @index_to_bit(i64 noundef %52, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i64 @twobit_to_index(i64 noundef %61, i64 noundef %62)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %32, %31
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  br label %20, !llvm.loop !4

77:                                               ; preds = %20
  %78 = load i32*, i32** %15, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %16, align 8
  call void @S7_Index_Sort(i8* noundef %79, i32 noundef %80, i32 noundef 4, i32* noundef %81)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @index_to_bit(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %11, %13
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = uitofp i64 %19 to double
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sitofp i32 %23 to double
  %25 = call double @pow(double noundef 2.000000e+00, double noundef %24) #3
  %26 = fmul double %20, %25
  %27 = fptoui double %26 to i64
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %18, %4
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.S, i64 0, i64 3), align 8
  %33 = shl i64 %31, %32
  %34 = or i64 %30, %33
  %35 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.B, i64 0, i64 3), align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.S, i64 0, i64 2), align 16
  %40 = shl i64 %38, %39
  %41 = or i64 %37, %40
  %42 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.B, i64 0, i64 2), align 16
  %43 = and i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.S, i64 0, i64 1), align 8
  %47 = shl i64 %45, %46
  %48 = or i64 %44, %47
  %49 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.B, i64 0, i64 1), align 8
  %50 = and i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.S, i64 0, i64 0), align 16
  %54 = shl i64 %52, %53
  %55 = or i64 %51, %54
  %56 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @index_to_bit.B, i64 0, i64 0), align 16
  %57 = and i64 %55, %56
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  ret i64 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @twobit_to_index(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = shl i64 %7, 1
  %9 = or i64 %6, %8
  store i64 %9, i64* %5, align 8
  ret i64 %9
}

declare dso_local void @S7_Index_Sort(i8* noundef, i32 noundef, i32 noundef, i32* noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printbits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 0, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

9:                                                ; preds = %1
  store i32 -2147483648, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 8
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %16, %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %4, align 4
  br label %12, !llvm.loop !6

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %22, !llvm.loop !7

37:                                               ; preds = %7, %22
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
