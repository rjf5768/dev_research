; ModuleID = './pr57829.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57829.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, -1
  %3 = ashr i32 %2, 31
  %4 = or i32 %3, 2
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f2(i64 noundef %0) #0 {
  %2 = add nsw i64 %0, -1
  %3 = ashr i64 %2, 63
  %4 = or i64 %3, 2
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f3(i32 noundef %0) #0 {
  %2 = and i32 %0, 63
  %3 = add nuw nsw i32 %2, 2
  %4 = lshr i32 %3, 5
  %5 = or i32 %4, 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f1(i32 noundef 1)
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %2, label %8

2:                                                ; preds = %0
  %3 = call i64 @f2(i64 noundef 1)
  %.not1 = icmp eq i64 %3, 2
  br i1 %.not1, label %4, label %8

4:                                                ; preds = %2
  %5 = call i32 @f3(i32 noundef 63)
  %.not2 = icmp eq i32 %5, 6
  br i1 %.not2, label %6, label %8

6:                                                ; preds = %4
  %7 = call i32 @f3(i32 noundef 1)
  %.not3 = icmp eq i32 %7, 4
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6, %4, %2, %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %6
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
