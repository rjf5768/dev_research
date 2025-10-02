; ModuleID = './pr56837.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56837.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [1024 x { i32, i32 }] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 1024
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %4, i32 0
  %6 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %4, i32 1
  store i32 -1, i32* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 1024
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %4, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %4, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %6, -1
  %10 = icmp ne i32 %8, 0
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @abort() #3
  unreachable

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

16:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
