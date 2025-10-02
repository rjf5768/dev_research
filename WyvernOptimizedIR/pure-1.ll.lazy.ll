; ModuleID = './pure-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pure-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 2, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @main() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1, %0
  br i1 false, label %3, label %4

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  br i1 false, label %5, label %6

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4
  br i1 false, label %7, label %8

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7, %6
  br i1 false, label %9, label %10

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8
  br i1 false, label %11, label %12

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10
  br i1 false, label %13, label %14

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13, %12
  br i1 false, label %15, label %16

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15, %14
  %17 = call i32 @func7(i32 noundef 0)
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @func0(i32 noundef %0) #0 {
  %2 = load i32, i32* @i, align 4
  %3 = sub nsw i32 %0, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error0() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @func1(i32 noundef %0) #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error1() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @func2(i32 noundef %0) #0 {
  %2 = load i32, i32* @i, align 4
  %3 = add nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error2() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @func3(i32 noundef %0) #1 {
  %2 = mul nsw i32 %0, 3
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error3() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @func4(i32 noundef %0) #0 {
  %2 = call i32 @func0(i32 noundef %0) #2
  %3 = add nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error4() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @func5(i32 noundef %0) #1 {
  %2 = call i32 @func1(i32 noundef %0) #3
  %3 = add nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error5() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @func6(i32 noundef %0) #0 {
  %2 = call i32 @func2(i32 noundef %0)
  %3 = add nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error6() #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @func7(i32 noundef %0) #1 {
  %2 = call i32 @func3(i32 noundef %0)
  %3 = add nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @link_error7() #1 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
