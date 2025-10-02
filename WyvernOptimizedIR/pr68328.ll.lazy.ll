; ModuleID = './pr68328.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@d = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  ret i32 4195552
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  call void asm sideeffect "", "imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #2, !srcloc !5
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(i32 noundef %0) #0 {
  %2 = call i32 @foo()
  br label %3

3:                                                ; preds = %24, %1
  %.0 = phi i8 [ undef, %1 ], [ %.1, %24 ]
  %4 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @d, align 4
  %7 = trunc i32 %6 to i8
  br label %8

8:                                                ; preds = %5, %3
  %.1 = phi i8 [ %7, %5 ], [ %.0, %3 ]
  %9 = sext i8 %.1 to i32
  %10 = icmp slt i32 %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i8 [ %.1, %11 ], [ 0, %12 ]
  %15 = add i8 %14, -120
  %16 = xor i8 %15, 1
  %17 = icmp sgt i8 %16, 97
  %.neg.neg = zext i1 %17 to i32
  %18 = load i32, i32* @a, align 4
  %.not1 = icmp eq i32 %18, %.neg.neg
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %13
  call void @bar(i32 noundef 1193046, i32 noundef 0)
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* @b, align 4
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %22, label %24

22:                                               ; preds = %20
  %23 = load i32, i32* @e, align 4
  ret i32 %23

24:                                               ; preds = %20
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @baz(i32 noundef 2)
  ret i32 0
}

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
!4 = !{i64 104}
!5 = !{i64 224}
