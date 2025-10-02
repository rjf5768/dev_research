; ModuleID = './20060905-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060905-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = dso_local global [256 x [3 x i8]] zeroinitializer, align 16
@g = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo()
  %.not = icmp eq i32 %1, 128
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal i32 @foo() #1 {
  br label %1

1:                                                ; preds = %14, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %14 ]
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = icmp ugt i32 %.0, 127
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = icmp ult i32 %.0, 256
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = add nsw i32 %.0, -128
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @s, i64 0, i64 %9, i64 0
  %11 = load volatile i8, i8* %10, align 1
  call void @dummy(i8 noundef signext %11)
  %12 = add nsw i32 %.01, 1
  br label %13

13:                                               ; preds = %7, %5, %3
  %.1 = phi i32 [ %12, %7 ], [ %.01, %5 ], [ %.01, %3 ]
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

16:                                               ; preds = %1
  ret i32 %.01
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @dummy(i8 noundef signext %0) #3 {
  store i8 %0, i8* @g, align 1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
