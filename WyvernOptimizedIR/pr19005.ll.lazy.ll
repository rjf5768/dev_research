; ModuleID = './pr19005.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr19005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@s = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @v, align 4
  %4 = load i32, i32* @s, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %12

5:                                                ; preds = %2
  %6 = and i32 %3, 255
  %.not1 = icmp eq i32 %6, %0
  br i1 %.not1, label %7, label %10

7:                                                ; preds = %5
  %8 = add i32 %3, 1
  %9 = and i32 %8, 255
  %.not2 = icmp eq i32 %9, %1
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %7, %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  br label %19

12:                                               ; preds = %2
  %13 = add i32 %3, 1
  %14 = and i32 %13, 255
  %.not3 = icmp eq i32 %14, %0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %12
  %16 = and i32 %3, 255
  %.not4 = icmp eq i32 %16, %1
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %15, %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, i32* @s, align 4
  %21 = xor i32 %20, 1
  store i32 %21, i32* @s, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %17, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i8
  %3 = add i8 %2, 1
  %4 = and i32 %0, 255
  %5 = zext i8 %3 to i32
  call void @bar(i32 noundef %4, i32 noundef %5)
  %6 = trunc i32 %0 to i8
  %7 = xor i8 %3, %6
  %8 = trunc i32 %0 to i8
  %9 = xor i8 %7, %8
  %10 = zext i8 %9 to i32
  %11 = and i32 %0, 255
  call void @bar(i32 noundef %10, i32 noundef %11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %storemerge = phi i32 [ -10, %0 ], [ %8, %6 ]
  store i32 %storemerge, i32* @v, align 4
  %2 = icmp slt i32 %storemerge, 266
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load i32, i32* @v, align 4
  %5 = call i32 @foo(i32 noundef %4)
  br label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @v, align 4
  %8 = add nsw i32 %7, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
