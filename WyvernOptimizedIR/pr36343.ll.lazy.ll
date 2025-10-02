; ModuleID = './pr36343.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36343.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar(i32** nocapture noundef writeonly %0) #0 {
  %2 = bitcast i32** %0 to float*
  store float 0.000000e+00, float* %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local float @foo(i32 noundef %0) #1 {
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  store i32* null, i32** %2, align 8
  store float 1.000000e+00, float* %3, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  %6 = bitcast float* %3 to i32**
  br label %7

7:                                                ; preds = %5, %4
  %.01 = phi i32** [ %2, %4 ], [ %6, %5 ]
  call void @bar(i32** noundef %.01)
  %.not2 = icmp eq i32 %0, 0
  br i1 %.not2, label %12, label %8

8:                                                ; preds = %7
  %9 = load i32*, i32** %.01, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sitofp i32 %10 to float
  br label %14

12:                                               ; preds = %7
  %13 = load float, float* %3, align 4
  br label %14

14:                                               ; preds = %12, %8
  %.0 = phi float [ %11, %8 ], [ %13, %12 ]
  ret float %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call float @foo(i32 noundef 0)
  %2 = fcmp une float %1, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
