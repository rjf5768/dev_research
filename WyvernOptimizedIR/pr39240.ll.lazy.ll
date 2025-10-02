; ModuleID = './pr39240.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39240.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l1 = dso_local global i64 4294967292, align 8
@l2 = dso_local global i64 65532, align 8
@l3 = dso_local global i64 252, align 8
@l4 = dso_local global i64 -4, align 8
@l5 = dso_local global i64 -4, align 8
@l6 = dso_local global i64 -4, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar1(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo1(i32 noundef returned %0) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i16 @bar2(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  %3 = call signext i16 @foo2(i32 noundef %2)
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal signext i16 @foo2(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  ret i16 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i8 @bar3(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  %3 = call signext i8 @foo3(i32 noundef %2)
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal signext i8 @foo3(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar4(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo4(i32 noundef returned %0) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @bar5(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  %3 = call zeroext i16 @foo5(i32 noundef %2)
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i16 @foo5(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  ret i16 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @bar6(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, 6
  %3 = call zeroext i8 @foo6(i32 noundef %2)
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i8 @foo6(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @bar1(i32 noundef -10)
  %2 = zext i32 %1 to i64
  %3 = load volatile i64, i64* @l1, align 8
  %.not = icmp eq i64 %3, %2
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %6 = call zeroext i16 @bar2(i32 noundef -10)
  %7 = zext i16 %6 to i64
  %8 = load volatile i64, i64* @l2, align 8
  %.not1 = icmp eq i64 %8, %7
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  %11 = call zeroext i8 @bar3(i32 noundef -10)
  %12 = zext i8 %11 to i64
  %13 = load volatile i64, i64* @l3, align 8
  %.not2 = icmp eq i64 %13, %12
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10
  %16 = call i32 @bar4(i32 noundef -10)
  %17 = sext i32 %16 to i64
  %18 = load volatile i64, i64* @l4, align 8
  %.not3 = icmp eq i64 %18, %17
  br i1 %.not3, label %20, label %19

19:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %15
  %21 = call signext i16 @bar5(i32 noundef -10)
  %22 = sext i16 %21 to i64
  %23 = load volatile i64, i64* @l5, align 8
  %.not4 = icmp eq i64 %23, %22
  br i1 %.not4, label %25, label %24

24:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %20
  %26 = call signext i8 @bar6(i32 noundef -10)
  %27 = sext i8 %26 to i64
  %28 = load volatile i64, i64* @l6, align 8
  %.not5 = icmp eq i64 %28, %27
  br i1 %.not5, label %30, label %29

29:                                               ; preds = %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %25
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %29, %24, %19, %14, %9, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
