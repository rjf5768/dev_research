; ModuleID = './recursive.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fib(%.1f): %.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Tak(%d,%d,%d): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Fib(3): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Tak(3.0,2.0,1.0): %.1f\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i32 @ack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nsw i32 %1, 1
  br label %15

6:                                                ; preds = %2
  %7 = add nsw i32 %0, -1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = add nsw i32 %1, -1
  %10 = call i32 @ack(i32 noundef %0, i32 noundef %9)
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 1, %11 ]
  %14 = call i32 @ack(i32 noundef %7, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %4
  %.0 = phi i32 [ %5, %4 ], [ %14, %12 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i32 @fib(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  %5 = add nsw i32 %0, -2
  %6 = call i32 @fib(i32 noundef %5)
  %7 = add nsw i32 %0, -1
  %8 = call i32 @fib(i32 noundef %7)
  %9 = add nsw i32 %6, %8
  br label %10

10:                                               ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ %9, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local double @fibFP(double noundef %0) #0 {
  %2 = fcmp olt double %0, 2.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  %5 = fadd double %0, -2.000000e+00
  %6 = call double @fibFP(double noundef %5)
  %7 = fadd double %0, -1.000000e+00
  %8 = call double @fibFP(double noundef %7)
  %9 = fadd double %6, %8
  br label %10

10:                                               ; preds = %4, %3
  %.0 = phi double [ 1.000000e+00, %3 ], [ %9, %4 ]
  ret double %.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i32 @tak(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = add nsw i32 %0, -1
  %7 = call i32 @tak(i32 noundef %6, i32 noundef %1, i32 noundef %2)
  %8 = add nsw i32 %1, -1
  %9 = call i32 @tak(i32 noundef %8, i32 noundef %2, i32 noundef %0)
  %10 = add nsw i32 %2, -1
  %11 = call i32 @tak(i32 noundef %10, i32 noundef %0, i32 noundef %1)
  %12 = call i32 @tak(i32 noundef %7, i32 noundef %9, i32 noundef %11)
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %5
  %.0 = phi i32 [ %12, %5 ], [ %2, %13 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local double @takFP(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = fcmp olt double %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = fadd double %0, -1.000000e+00
  %7 = call double @takFP(double noundef %6, double noundef %1, double noundef %2)
  %8 = fadd double %1, -1.000000e+00
  %9 = call double @takFP(double noundef %8, double noundef %2, double noundef %0)
  %10 = fadd double %2, -1.000000e+00
  %11 = call double @takFP(double noundef %10, double noundef %0, double noundef %1)
  %12 = call double @takFP(double noundef %7, double noundef %9, double noundef %11)
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %5
  %.0 = phi double [ %12, %5 ], [ %2, %13 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = call i32 @ack(i32 noundef 3, i32 noundef 11)
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 11, i32 noundef %3) #3
  %5 = call double @fibFP(double noundef 3.800000e+01)
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), double noundef 3.800000e+01, double noundef %5) #3
  %7 = call i32 @tak(i32 noundef 30, i32 noundef 20, i32 noundef 10)
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 30, i32 noundef 20, i32 noundef 10, i32 noundef %7) #3
  %9 = call i32 @fib(i32 noundef 3)
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef %9) #3
  %11 = call double @takFP(double noundef 3.000000e+00, double noundef 2.000000e+00, double noundef 1.000000e+00)
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), double noundef %11) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
