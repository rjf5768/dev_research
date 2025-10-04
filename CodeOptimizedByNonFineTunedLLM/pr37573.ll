; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37573.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37573.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32*, i32, [624 x i32] }

@p = internal global [23 x i8] c"\C0I\172b\1E.\D5L\19(I\91\E4r\83\91=\93\83\B3a8", align 16
@q = internal global [23 x i8] c">AUTOIT UNICODE SCRIPT<", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 23, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add i32 %4, 41566
  call void @bar(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @p, i64 0, i64 0), i32 noundef %3, i32 noundef %5)
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = call i32 @memcmp(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @q, i64 0, i64 0), i64 noundef %7) #3
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #4
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @bar(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.S, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 2
  %11 = getelementptr inbounds [624 x i32], [624 x i32]* %10, i64 0, i64 0
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %39, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %15, 624
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 30
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %25, %31
  %33 = mul i32 1812433253, %32
  %34 = add i32 %18, %33
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %14, !llvm.loop !4

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %48, %42
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = call zeroext i8 @foo(%struct.S* noundef %7)
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, %50
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %51, align 1
  br label %44, !llvm.loop !6

57:                                               ; preds = %44
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %2, align 8
  %6 = load %struct.S*, %struct.S** %2, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %1
  %12 = load %struct.S*, %struct.S** %2, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 2
  %14 = getelementptr inbounds [624 x i32], [624 x i32]* %13, i64 0, i64 0
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.S*, %struct.S** %2, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %63, %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %19, 227
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %26, %32
  %34 = and i32 %33, 2147483646
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %34, %39
  %41 = lshr i32 %40, 1
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = sub i32 0, %48
  %50 = and i32 %49, -1727483681
  %51 = xor i32 %41, %50
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 397
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %51, %57
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %21
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %18, !llvm.loop !7

66:                                               ; preds = %18
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.S*, %struct.S** %2, align 8
  %69 = getelementptr inbounds %struct.S, %struct.S* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %69, align 8
  %72 = load i32, i32* %70, align 4
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = lshr i32 %73, 11
  %75 = load i32, i32* %3, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, -12953427
  %79 = shl i32 %78, 7
  %80 = load i32, i32* %3, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, -8308
  %84 = shl i32 %83, 15
  %85 = load i32, i32* %3, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = lshr i32 %87, 18
  %89 = load i32, i32* %3, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = lshr i32 %91, 1
  %93 = trunc i32 %92 to i8
  ret i8 %93
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
