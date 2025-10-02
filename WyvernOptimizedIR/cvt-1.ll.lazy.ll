; ModuleID = './cvt-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cvt-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @g2(double noundef %0) #0 {
  %2 = fptosi double %0 to i64
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(i64 noundef %0) #1 {
  %2 = sitofp i64 %0 to double
  %3 = call i64 @g1(double noundef %2)
  %4 = sitofp i64 %0 to double
  %5 = call i64 @g2(double noundef %4)
  %.not = icmp eq i64 %3, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  call void @abort() #4
  unreachable

7:                                                ; preds = %1
  %8 = sitofp i64 %0 to double
  %9 = call i64 @g2(double noundef %8)
  %10 = sitofp i64 %9 to double
  ret double %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @g1(double noundef %0) #0 {
  %2 = fptosi double %0 to i64
  ret i64 %2
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call double @f(i64 noundef 123456789)
  %2 = fcmp une double %1, 0x419D6F3454000000
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call double @f(i64 noundef 123456789)
  %6 = call i64 @g2(double noundef 0x419D6F3454000000)
  %7 = sitofp i64 %6 to double
  %8 = fcmp une double %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %4
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
