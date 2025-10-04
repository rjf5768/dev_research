; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 5, align 4
@b = dso_local global i16 0, align 2
@a = internal global <{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }> <{ i32 7, i32 5, i32 3, i32 3, i32 0, i32 0, i32 3, [33 x i32] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i16 0, i16* @b, align 2
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i16, i16* @b, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp sle i32 %4, 3
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i16, i16* @b, align 2
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, 6
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [40 x i32], [40 x i32]* bitcast (<{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }>* @a to [40 x i32]*), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @c, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = xor i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %20

19:                                               ; preds = %6
  br label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i16, i16* @b, align 2
  %23 = add i16 %22, 1
  store i16 %23, i16* @b, align 2
  br label %2, !llvm.loop !4

24:                                               ; preds = %19, %2
  %25 = load i16, i16* @b, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #2
  unreachable

29:                                               ; preds = %24
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

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
