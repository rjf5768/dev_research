; ModuleID = './960209-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960209-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type { i8 }

@yabba = dso_local global i32 1, align 4
@an_array = dso_local global [5 x %struct.a_struct] zeroinitializer, align 1
@a_ptr = dso_local global %struct.a_struct* null, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i64 noundef %1) #0 {
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %27, label %3

3:                                                ; preds = %2
  %4 = load i32, i32* @yabba, align 4
  %.not5 = icmp eq i32 %4, 0
  br i1 %.not5, label %6, label %5

5:                                                ; preds = %3
  br label %36

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %24, %6
  %.02 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %.01 = phi i64 [ undef, %6 ], [ %.1, %24 ]
  %8 = icmp ult i64 %.02, 11
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %21, %9
  %.03 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %.1 = phi i64 [ %.01, %9 ], [ %.2, %21 ]
  %11 = icmp ult i64 %.03, 256
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  br i1 false, label %13, label %14

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %13
  br i1 false, label %16, label %17

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16
  br i1 false, label %19, label %20

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19, %18
  %.2 = phi i64 [ %.02, %19 ], [ %.1, %18 ]
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i64 %.03, 1
  br label %10, !llvm.loop !4

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i64 %.02, 1
  br label %7, !llvm.loop !6

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %2
  %.3 = phi i64 [ %.01, %26 ], [ undef, %2 ]
  %28 = load i32, i32* @yabba, align 4
  %.not4 = icmp eq i32 %28, 0
  br i1 %.not4, label %30, label %29

29:                                               ; preds = %27
  br label %36

30:                                               ; preds = %27
  %31 = and i32 %0, 255
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [5 x %struct.a_struct], [5 x %struct.a_struct]* @an_array, i64 0, i64 %32
  store %struct.a_struct* %33, %struct.a_struct** @a_ptr, align 8
  %34 = trunc i64 %.3 to i8
  %35 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %33, i64 0, i32 0
  store i8 %34, i8* %35, align 1
  br label %36

36:                                               ; preds = %30, %29, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %29 ], [ undef, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f(i32 noundef 1, i64 noundef 0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
