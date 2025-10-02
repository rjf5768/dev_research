; ModuleID = './pr85169.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca <64 x i8>, align 64
  store <64 x i8> zeroinitializer, <64 x i8>* %1, align 64
  call void @foo(<64 x i8>* noundef nonnull %1)
  br label %2

2:                                                ; preds = %12, %0
  %.0 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = load <64 x i8>, <64 x i8>* %1, align 64
  %6 = extractelement <64 x i8> %5, i32 %.0
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %.0, 63
  %9 = zext i1 %8 to i32
  %.not = icmp eq i32 %7, %9
  br i1 %.not, label %11, label %10

10:                                               ; preds = %4
  call void @abort() #3
  unreachable

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %13 = add i32 %.0, 1
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @foo(<64 x i8>* nocapture noundef %0) #1 {
  %2 = load <64 x i8>, <64 x i8>* %0, align 64
  %3 = insertelement <64 x i8> %2, i8 1, i64 63
  store <64 x i8> %3, <64 x i8>* %0, align 64
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
