; ModuleID = './981019-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981019-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f3.x = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %6, label %5

5:                                                ; preds = %4
  call void @f1()
  br label %6

6:                                                ; preds = %5, %4
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %6
  br label %9

9:                                                ; preds = %18, %8
  %10 = call i32 @f3()
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %.loopexit, label %11

11:                                               ; preds = %9
  %.not3 = icmp eq i32 %2, 0
  br i1 %.not3, label %18, label %12

12:                                               ; preds = %11
  %13 = call i32 @f2()
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %18, label %14

14:                                               ; preds = %12
  call void @f1()
  %15 = call i32 @f3()
  %.not5 = icmp eq i32 %15, 0
  br i1 %.not5, label %17, label %16

16:                                               ; preds = %14
  call void @f1()
  br label %17

17:                                               ; preds = %16, %14
  call void @f1()
  br label %19

18:                                               ; preds = %12, %11
  br label %9, !llvm.loop !4

.loopexit:                                        ; preds = %9
  br label %19

19:                                               ; preds = %.loopexit, %17
  %.0 = phi i32 [ %1, %17 ], [ %2, %.loopexit ]
  %.not2 = icmp eq i32 %.0, 0
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %19
  call void @f1()
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @f1() #1 {
  call void @abort() #4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @f3() #2 {
  %1 = load i32, i32* @f3.x, align 4
  %.not = icmp eq i32 %1, 0
  %2 = zext i1 %.not to i32
  store i32 %2, i32* @f3.x, align 4
  ret i32 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @f2() #1 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @ff(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
