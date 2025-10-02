; ModuleID = './950612-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950612-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub nsw i32 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub i32 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f3(i64 noundef %0) #0 {
  %2 = icmp slt i64 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub nsw i64 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ %4, %3 ], [ %0, %5 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f4(i64 noundef %0) #0 {
  %2 = icmp slt i64 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub i64 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ %4, %3 ], [ %0, %5 ]
  ret i64 %7
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %40, %0
  %.0 = phi i32 [ 0, %0 ], [ %41, %40 ]
  %2 = icmp ult i32 %.0, 11
  br i1 %2, label %3, label %42

3:                                                ; preds = %1
  %4 = call i32 @f1(i32 noundef %.0)
  %.not = icmp eq i32 %4, %.0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = sub nsw i32 0, %.0
  %8 = call i32 @f1(i32 noundef %7)
  %.not1 = icmp eq i32 %8, %.0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = call i32 @f2(i32 noundef %.0)
  %.not2 = icmp eq i32 %11, %.0
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  %14 = sub nsw i32 0, %.0
  %15 = call i32 @f2(i32 noundef %14)
  %.not3 = icmp eq i32 %15, %.0
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  %18 = zext i32 %.0 to i64
  %19 = call i64 @f3(i64 noundef %18)
  %20 = zext i32 %.0 to i64
  %.not4 = icmp eq i64 %19, %20
  br i1 %.not4, label %22, label %21

21:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  %23 = sub nsw i32 0, %.0
  %24 = sext i32 %23 to i64
  %25 = call i64 @f3(i64 noundef %24)
  %26 = zext i32 %.0 to i64
  %.not5 = icmp eq i64 %25, %26
  br i1 %.not5, label %28, label %27

27:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %22
  %29 = zext i32 %.0 to i64
  %30 = call i64 @f4(i64 noundef %29)
  %31 = zext i32 %.0 to i64
  %.not6 = icmp eq i64 %30, %31
  br i1 %.not6, label %33, label %32

32:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %28
  %34 = sub nsw i32 0, %.0
  %35 = sext i32 %34 to i64
  %36 = call i64 @f4(i64 noundef %35)
  %37 = zext i32 %.0 to i64
  %.not7 = icmp eq i64 %36, %37
  br i1 %.not7, label %39, label %38

38:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

42:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %42, %38, %32, %27, %21, %16, %12, %9, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
