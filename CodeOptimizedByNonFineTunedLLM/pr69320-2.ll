; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@c = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @d, align 4
  %4 = icmp ne i32 %3, 10
  %5 = zext i1 %4 to i32
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @g, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  store i32* null, i32** %2, align 8
  store i32 0, i32* @a, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* @a, align 4
  %16 = icmp slt i32 %15, 7
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %18, !llvm.loop !5

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @a, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @a, align 4
  br label %14, !llvm.loop !7

27:                                               ; preds = %14
  br label %34

28:                                               ; preds = %10
  %29 = load i32, i32* @e, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sdiv i32 %29, %30
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* @b, align 2
  %33 = load i32, i32* @f, align 4
  ret i32 %33

34:                                               ; preds = %27
  store i32* %1, i32** @c, align 8
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fn1()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

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
!4 = !{i64 121}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
