; ModuleID = './pr69320-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = internal global i32* @d, align 8
@c = dso_local global i8 0, align 1
@a = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32*, i32** @e, align 8
  store i32 -1, i32* %1, align 4
  br label %2

2:                                                ; preds = %6, %0
  %storemerge = phi i8 [ 4, %0 ], [ %8, %6 ]
  store i8 %storemerge, i8* @c, align 1
  %3 = icmp sgt i8 %storemerge, 13
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i32*, i32** @e, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %4
  %7 = load i8, i8* @c, align 1
  %8 = add i8 %7, 1
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  %10 = load i32, i32* @a, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @f, align 4
  %13 = load i32*, i32** @e, align 8
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %19, label %17

17:                                               ; preds = %9
  %18 = xor i32 %16, -1
  store i32 %18, i32* @b, align 4
  br label %19

19:                                               ; preds = %17, %9
  %.not1 = icmp eq i32 %16, -1
  br i1 %.not1, label %21, label %20

20:                                               ; preds = %19
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %20
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
