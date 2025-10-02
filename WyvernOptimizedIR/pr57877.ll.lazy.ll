; ModuleID = './pr57877.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57877.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local global i32* @b, align 8
@f = dso_local global i32 6, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @f, align 4
  %2 = sext i32 %1 to i64
  %3 = call zeroext i8 @foo(i64 noundef %2, i32* noundef nonnull @a)
  %4 = load i32, i32* @e, align 4
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i8 @foo(i64 noundef %0, i32* nocapture noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = load i32, i32* @g, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32*, i32** @c, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @h, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* @d, align 2
  %sext = shl i32 %8, 16
  %10 = ashr exact i32 %sext, 16
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ult i64 %13, %0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @e, align 4
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* @g, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @g, align 4
  br label %3, !llvm.loop !4

19:                                               ; preds = %3
  ret i8 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
