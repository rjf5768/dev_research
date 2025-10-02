; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84524.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84524.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  store i16* %0, i16** %2, align 8
  store i16 0, i16* %3, align 2
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 8
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %4, align 2
  store i8 0, i8* %5, align 1
  br label %15

15:                                               ; preds = %36, %10
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 1
  %28 = xor i32 %27, 4129
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  br label %35

30:                                               ; preds = %19
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 1
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %4, align 2
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35
  %37 = load i8, i8* %5, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %5, align 1
  br label %15, !llvm.loop !4

39:                                               ; preds = %15
  %40 = load i16, i16* %4, align 2
  %41 = load i16*, i16** %2, align 8
  %42 = load i16, i16* %3, align 2
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  store i16 %40, i16* %44, align 2
  br label %45

45:                                               ; preds = %39
  %46 = load i16, i16* %3, align 2
  %47 = add i16 %46, 1
  store i16 %47, i16* %3, align 2
  br label %6, !llvm.loop !6

48:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i16], align 16
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [256 x i16], [256 x i16]* %2, i64 0, i64 0
  call void @foo(i16* noundef %6)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %50, %0
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 8
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i16, i16* %4, align 2
  %19 = call i16 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i16 %18) #2, !srcloc !7
  store i16 %19, i16* %4, align 2
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 1
  %28 = xor i32 %27, 4129
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  br label %35

30:                                               ; preds = %17
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 1
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %4, align 2
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %14, !llvm.loop !8

39:                                               ; preds = %14
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i16], [256 x i16]* %2, i64 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  call void @abort() #3
  unreachable

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %7, !llvm.loop !9

53:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i64 468}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
