; ModuleID = './pr69320-2.ll'
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
  %2 = load i32, i32* @d, align 4
  %3 = icmp ne i32 %2, 10
  %4 = zext i1 %3 to i32
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @g, align 4
  %6 = icmp slt i32 %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %18, %11
  %storemerge = phi i32 [ 0, %11 ], [ %20, %18 ]
  store i32 %storemerge, i32* @a, align 4
  %13 = icmp slt i32 %storemerge, 7
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %16, %14
  store i32 poison, i32* null, align 4294967296
  br i1 poison, label %16, label %17

16:                                               ; preds = %15
  br label %15, !llvm.loop !5

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @a, align 4
  %20 = add nsw i32 %19, 1
  br label %12, !llvm.loop !7

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %8
  %23 = load i32, i32* @e, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sdiv i32 %23, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* @b, align 2
  %27 = load i32, i32* @f, align 4
  ret i32 %27

28:                                               ; preds = %21
  store i32* %1, i32** @c, align 8
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @fn1()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
