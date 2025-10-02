; ModuleID = './pr47148.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47148.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = internal global i32 1, align 4
@a = internal global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i8 noundef zeroext 1, i32 noundef 1)
  call void @foo(i8 noundef zeroext -1, i32 noundef 1)
  %1 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @foo(i8 noundef zeroext %0, i32 noundef %1) #1 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %19

4:                                                ; preds = %2
  %5 = zext i8 %0 to i32
  %6 = add nsw i32 %5, -2
  %7 = udiv i32 28672, %6
  %8 = load i32, i32* @a, align 4
  %9 = xor i32 %7, %8
  %10 = call i32 @bar(i32 noundef %8, i32 noundef %8)
  %.not1 = icmp eq i32 %8, %10
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* @a, align 4
  %13 = icmp ne i32 %12, 1
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ 0, %4 ], [ %phi.cast, %11 ]
  %16 = add i32 %15, %9
  %17 = load i32, i32* @b, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @b, align 4
  br label %19

19:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @bar(i32 noundef %0, i32 noundef %1) #3 {
  %3 = icmp ugt i32 %1, 31
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  %6 = lshr i32 %0, %1
  br label %7

7:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %6, %5 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
