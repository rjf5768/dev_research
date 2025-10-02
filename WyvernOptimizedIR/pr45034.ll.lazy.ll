; ModuleID = './pr45034.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45034.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, -128
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, 127
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %3
  call void @abort() #3
  unreachable

8:                                                ; preds = %5
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_neg() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %18, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %18 ]
  %.0 = phi i8 [ -128, %0 ], [ %19, %18 ]
  call void @fixnum_neg(i8 noundef signext %.0, i8* noundef nonnull %1, i32* noundef nonnull %2)
  %4 = sext i8 %.0 to i32
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = load i32, i32* %2, align 4
  call void @foo(i32 noundef %4, i32 noundef %6, i32 noundef %7)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %3
  %.not3 = icmp eq i8 %.0, -128
  br i1 %.not3, label %9, label %13

9:                                                ; preds = %8, %3
  %10 = load i32, i32* %2, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %11, label %15

11:                                               ; preds = %9
  %12 = icmp eq i8 %.0, -128
  br i1 %12, label %13, label %15

13:                                               ; preds = %11, %8
  %14 = add nsw i32 %.01, 1
  br label %15

15:                                               ; preds = %13, %11, %9
  %.1 = phi i32 [ %14, %13 ], [ %.01, %9 ], [ %.01, %11 ]
  %16 = icmp eq i8 %.0, 127
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  %19 = add i8 %.0, 1
  br label %3

20:                                               ; preds = %17
  ret i32 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @fixnum_neg(i8 noundef signext %0, i8* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) #2 {
  %4 = sub i8 0, %0
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = sub i8 0, %0
  br label %9

9:                                                ; preds = %7, %6
  %.in = phi i8 [ %4, %6 ], [ %8, %7 ]
  store i8 %.in, i8* %1, align 1
  %10 = icmp eq i8 %0, -128
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @test_neg()
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
