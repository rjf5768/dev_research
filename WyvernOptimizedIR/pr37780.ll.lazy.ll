; ModuleID = './pr37780.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37780.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooctz(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i32 @llvm.cttz.i32(i32 %0, i1 true), !range !4
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ 32, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooctz2(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = call i32 @llvm.cttz.i32(i32 %0, i1 true), !range !4
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %3, %2 ], [ 32, %4 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooctz3(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = call i32 @llvm.cttz.i32(i32 %0, i1 true), !range !4
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %3, %2 ], [ 32, %4 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooclz(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !range !4
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ 32, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooclz2(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !range !4
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %3, %2 ], [ 32, %4 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @fooclz3(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !range !4
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %3, %2 ], [ 32, %4 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @fooctz(i32 noundef 0)
  %.not = icmp eq i32 %1, 32
  br i1 %.not, label %2, label %12

2:                                                ; preds = %0
  %3 = call i32 @fooctz2(i32 noundef 0)
  %.not1 = icmp eq i32 %3, 32
  br i1 %.not1, label %4, label %12

4:                                                ; preds = %2
  %5 = call i32 @fooctz3(i32 noundef 0)
  %.not2 = icmp eq i32 %5, 32
  br i1 %.not2, label %6, label %12

6:                                                ; preds = %4
  %7 = call i32 @fooclz(i32 noundef 0)
  %.not3 = icmp eq i32 %7, 32
  br i1 %.not3, label %8, label %12

8:                                                ; preds = %6
  %9 = call i32 @fooclz2(i32 noundef 0)
  %.not4 = icmp eq i32 %9, 32
  br i1 %.not4, label %10, label %12

10:                                               ; preds = %8
  %11 = call i32 @fooclz3(i32 noundef 0)
  %.not5 = icmp eq i32 %11, 32
  br i1 %.not5, label %13, label %12

12:                                               ; preds = %10, %8, %6, %4, %2, %0
  call void @abort() #4
  unreachable

13:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
