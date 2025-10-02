; ModuleID = './pr78720.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78720.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @foo(i8 noundef signext %0) #0 {
  %2 = and i8 %0, -128
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 12
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @bar(i8 noundef signext %0) #0 {
  %2 = and i8 %0, -128
  %3 = zext i8 %2 to i64
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @baz(i8 noundef signext %0) #0 {
  %2 = lshr i8 %0, 2
  %3 = and i8 %2, 32
  %4 = zext i8 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @foo(i8 noundef signext -1)
  %.not = icmp eq i64 %1, 524288
  br i1 %.not, label %2, label %18

2:                                                ; preds = %0
  %3 = call i64 @bar(i8 noundef signext -1)
  %.not1 = icmp eq i64 %3, 128
  br i1 %.not1, label %4, label %18

4:                                                ; preds = %2
  %5 = call i64 @baz(i8 noundef signext -1)
  %.not2 = icmp eq i64 %5, 32
  br i1 %.not2, label %6, label %18

6:                                                ; preds = %4
  %7 = call i64 @foo(i8 noundef signext 0)
  %.not3 = icmp eq i64 %7, 0
  br i1 %.not3, label %8, label %18

8:                                                ; preds = %6
  %9 = call i64 @bar(i8 noundef signext 0)
  %.not4 = icmp eq i64 %9, 0
  br i1 %.not4, label %10, label %18

10:                                               ; preds = %8
  %11 = call i64 @baz(i8 noundef signext 0)
  %.not5 = icmp eq i64 %11, 0
  br i1 %.not5, label %12, label %18

12:                                               ; preds = %10
  %13 = call i64 @foo(i8 noundef signext 31)
  %.not6 = icmp eq i64 %13, 0
  br i1 %.not6, label %14, label %18

14:                                               ; preds = %12
  %15 = call i64 @bar(i8 noundef signext 31)
  %.not7 = icmp eq i64 %15, 0
  br i1 %.not7, label %16, label %18

16:                                               ; preds = %14
  %17 = call i64 @baz(i8 noundef signext 31)
  %.not8 = icmp eq i64 %17, 0
  br i1 %.not8, label %19, label %18

18:                                               ; preds = %16, %14, %12, %10, %8, %6, %4, %2, %0
  call void @abort() #3
  unreachable

19:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
