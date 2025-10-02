; ModuleID = './pr78791.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78791.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @foo to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @foo(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = udiv i64 %0, %1
  %5 = urem i64 %0, %1
  %6 = or i64 %4, %2
  %7 = xor i64 %5, %2
  %8 = add i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @foo(i64 noundef 64, i64 noundef 7, i64 noundef 0)
  %.not = icmp eq i64 %1, 10
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = call i64 @foo(i64 noundef 28, i64 noundef 3, i64 noundef 2)
  %.not1 = icmp eq i64 %3, 14
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
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
