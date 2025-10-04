; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20100-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20100-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = internal global i16 0, align 2
@p = internal global i16 0, align 2
@e = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @frob(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  store i16 %5, i16* @g, align 2
  %6 = load i16, i16* %4, align 2
  store i16 %6, i16* @p, align 2
  %7 = call zeroext i16 @inc_g()
  %8 = call signext i8 @ring_empty()
  ret i8 %8
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @inc_g() #0 {
  %1 = call zeroext i16 @next_g()
  store i16 %1, i16* @g, align 2
  ret i16 %1
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @ring_empty() #0 {
  %1 = alloca i8, align 1
  %2 = call zeroext i16 @curr_p()
  %3 = zext i16 %2 to i32
  %4 = call zeroext i16 @curr_g()
  %5 = zext i16 %4 to i32
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i8 1, i8* %1, align 1
  br label %9

8:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i8, i8* %1, align 1
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @get_n() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  %3 = call zeroext i16 @curr_g()
  store i16 %3, i16* %2, align 2
  br label %4

4:                                                ; preds = %13, %0
  %5 = call signext i8 @ring_empty()
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i16, i16* %1, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %9, 5
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = call zeroext i16 @inc_g()
  %15 = load i16, i16* %1, align 2
  %16 = add i16 %15, 1
  store i16 %16, i16* %1, align 2
  br label %4, !llvm.loop !4

17:                                               ; preds = %11
  %18 = load i16, i16* %1, align 2
  ret i16 %18
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @curr_g() #0 {
  %1 = load i16, i16* @g, align 2
  ret i16 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 3, i8* @e, align 1
  %2 = call signext i8 @frob(i16 noundef zeroext 0, i16 noundef zeroext 2)
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %0
  %6 = load i16, i16* @g, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = load i16, i16* @p, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* @e, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = call zeroext i16 @get_n()
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i16, i16* @g, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i16, i16* @p, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %13, %9, %5, %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %25
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @next_g() #0 {
  %1 = load i16, i16* @g, align 2
  %2 = zext i16 %1 to i32
  %3 = load i8, i8* @e, align 1
  %4 = zext i8 %3 to i32
  %5 = sub nsw i32 %4, 1
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %12

8:                                                ; preds = %0
  %9 = load i16, i16* @g, align 2
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, 1
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i32 [ 0, %7 ], [ %11, %8 ]
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @curr_p() #0 {
  %1 = load i16, i16* @p, align 2
  ret i16 %1
}

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
