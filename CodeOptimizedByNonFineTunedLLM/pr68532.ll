; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68532.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68532.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in = dso_local global [128 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i16 noundef zeroext %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 128
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i16*, i16** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %21, %19
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %4, align 2
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 8
  store i32 %26, i32* %7, align 4
  br label %8, !llvm.loop !4

27:                                               ; preds = %8
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 128
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = trunc i32 %7 to i16
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [128 x i16], [128 x i16]* @in, i64 0, i64 %10
  store i16 %8, i16* %11, align 2
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %3, !llvm.loop !6

15:                                               ; preds = %3
  %16 = call i32 @test(i16 noundef zeroext 0, i16* noundef getelementptr inbounds ([128 x i16], [128 x i16]* @in, i64 0, i64 0), i32 noundef 1)
  %17 = icmp ne i32 %16, 960
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
