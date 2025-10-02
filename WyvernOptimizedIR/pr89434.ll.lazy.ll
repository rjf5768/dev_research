; ModuleID = './pr89434.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89434.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i64 @foo(i64 noundef 9162596898)
  %.not = icmp eq i64 %1, -9162596898
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal i64 @foo(i64 noundef %0) #1 {
  %2 = load i64, i64* @g, align 8
  %3 = trunc i64 %2 to i32
  %4 = sub i32 0, %3
  %5 = trunc i64 %0 to i32
  %6 = and i32 %4, 65535
  %7 = icmp ugt i32 %6, %5
  %8 = zext i1 %7 to i64
  %9 = or i64 %8, %0
  %10 = zext i32 %4 to i64
  %11 = sub i64 %10, %9
  ret i64 %11
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
