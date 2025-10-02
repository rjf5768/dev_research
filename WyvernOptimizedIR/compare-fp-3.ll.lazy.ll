; ModuleID = './compare-fp-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test1(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oeq float %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = fcmp une float %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp olt float %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = fcmp ogt float %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test3(float noundef %0, float noundef %1) #0 {
  %3 = fcmp olt float %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = fcmp olt float %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test4(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oeq float %0, %1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = fcmp une float %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test5(float noundef %0, float noundef %1) #0 {
  %3 = fcmp uno float %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = fcmp ult float %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = fcmp olt float %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %4, %2
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test6(float noundef %0, float noundef %1) #0 {
  %3 = fcmp uno float %1, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = fcmp ugt float %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = fcmp olt float %1, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %4, %2
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test7(float noundef %0, float noundef %1) #0 {
  %3 = fcmp uno float %0, %1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = fcmp uno float %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4, %2
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @all_tests(float noundef %0, float noundef %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @main() #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error0() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error1() #0 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
