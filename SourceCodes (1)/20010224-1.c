; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010224-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010224-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masktab = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@psd = dso_local global [6 x i16] [i16 50, i16 40, i16 30, i16 20, i16 10, i16 0], align 2
@bndpsd = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ba_compute_psd(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  store i16 4, i16* %6, align 2
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i16, i16* %2, align 2
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds [6 x i16], [6 x i16]* @masktab, i64 0, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i16], [6 x i16]* @psd, i64 0, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %19
  store i16 %17, i16* %20, align 2
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %42, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i16, i16* %6, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %31
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i16], [6 x i16]* @psd, i64 0, i64 %34
  %36 = call signext i16 @logadd(i16* noundef %32, i16* noundef %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x i16], [6 x i16]* @bndpsd, i64 0, i64 %38
  store i16 %36, i16* %39, align 2
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %24, !llvm.loop !4

45:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @logadd(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %5 = load i16*, i16** %3, align 8
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = load i16*, i16** %4, align 8
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %7, %10
  %12 = trunc i32 %11 to i16
  ret i16 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @ba_compute_psd(i16 noundef signext 0)
  %3 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @bndpsd, i64 0, i64 1), align 2
  %4 = sext i16 %3 to i32
  %5 = icmp ne i32 %4, 140
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
