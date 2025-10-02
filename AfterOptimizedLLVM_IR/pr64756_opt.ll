; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64756.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64756.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global i32* null, align 8
@c = dso_local global i32** @tmp, align 8
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = internal global i32** @tmp, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @fn1(i32* noundef @a)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* @f, align 4
  %6 = icmp ult i32 %5, 1
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load volatile i32, i32* @d, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load volatile i32, i32* @d, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ true, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = load i32*, i32** %2, align 8
  %21 = load i32**, i32*** @c, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i32*, i32** @tmp, align 8
  %23 = icmp ne i32* %22, @a
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  call void @abort() #2
  unreachable

25:                                               ; preds = %17
  %26 = load i32**, i32*** @e, align 8
  store volatile i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  br label %8, !llvm.loop !4

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @f, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* @f, align 4
  br label %4, !llvm.loop !6

34:                                               ; preds = %4
  ret void
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
