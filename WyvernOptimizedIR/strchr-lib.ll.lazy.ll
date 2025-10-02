; ModuleID = './strchr-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strchr-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @strchr(i8* noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i8* [ %0, %2 ], [ %13, %12 ]
  %4 = load i8, i8* %.01, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %14

8:                                                ; preds = %3
  %9 = load i8, i8* %.01, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3

14:                                               ; preds = %11, %7
  %.0 = phi i8* [ %.01, %7 ], [ null, %11 ]
  ret i8* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @index(i8* noundef readonly %0, i32 noundef %1) #0 {
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef %1)
  ret i8* %3
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
