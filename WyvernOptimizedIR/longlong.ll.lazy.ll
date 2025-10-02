; ModuleID = './longlong.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/longlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global [32 x i64] zeroinitializer, align 16
@r = dso_local global i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i32 0, i32 0), align 8
@pars = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @alpha_ep_extbl_i_eq_0() #0 {
  %1 = load i64, i64* @pars, align 8
  %2 = trunc i64 %1 to i32
  %3 = and i32 %2, 31
  %4 = load i64*, i64** @r, align 8
  %.not = icmp eq i32 %3, 31
  br i1 %.not, label %21, label %5

5:                                                ; preds = %0
  %6 = lshr i64 %1, 5
  %7 = and i64 %6, 31
  %8 = getelementptr inbounds i64, i64* %4, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = lshr i64 %1, 27
  %11 = and i64 %10, 31
  %12 = getelementptr inbounds i64, i64* %4, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 %13, 3
  %15 = and i64 %14, 56
  %16 = lshr i64 %9, %15
  %17 = and i64 %16, 255
  %18 = load i64*, i64** @r, align 8
  %19 = zext i32 %3 to i64
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i64 3160194, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 17), align 8
  store i64 6003104017374052362, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 2), align 16
  store i64 2281701442, i64* @pars, align 8
  call void @alpha_ep_extbl_i_eq_0()
  %1 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 2), align 16
  %.not = icmp eq i64 %1, 77
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
