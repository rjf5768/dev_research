; ModuleID = './pr65215-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @bar(i64* nocapture noundef readonly %0) #0 {
  %2 = load i64, i64* %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = call i32 @foo(i32 noundef %3)
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = lshr i64 %2, 32
  %8 = trunc i64 %7 to i32
  %9 = call i32 @foo(i32 noundef %8)
  %10 = zext i32 %9 to i64
  %11 = or i64 %6, %10
  ret i64 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo(i32 noundef %0) #1 {
  %2 = call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  %2 = call i32 @foo(i32 noundef -17973592)
  %3 = zext i32 %2 to i64
  %4 = call i32 @foo(i32 noundef -559038737)
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %3
  store i64 %7, i64* %1, align 8
  %8 = call i64 @bar(i64* noundef nonnull %1)
  %.not = icmp eq i64 %8, -77195986095718673
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #5
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
