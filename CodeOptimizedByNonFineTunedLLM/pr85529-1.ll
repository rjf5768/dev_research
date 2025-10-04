; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85529-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@c = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@s = dso_local global %struct.S zeroinitializer, align 4
@g = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @foo(i8 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  br label %16

11:                                               ; preds = %2
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %13, %14
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 -83, i8* %2, align 1
  %3 = load i32, i32* @d, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %16

6:                                                ; preds = %0
  %7 = load i32, i32* @e, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @f, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %2, align 1
  br label %16

16:                                               ; preds = %12, %5
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* @b, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %22 = load i8, i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %2, align 1
  %25 = call signext i8 @foo(i8 noundef signext %24, i32 noundef 2)
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @g, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %2, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* @c, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi i1 [ false, %20 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %21, %35
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @b, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @b, align 4
  br label %17, !llvm.loop !4

41:                                               ; preds = %17
  %42 = load i32, i32* @c, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
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
