; ModuleID = './pr63641.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63641.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tab1 = dso_local global [32 x i8] c"\01\01\01\01\01\01\01\01\01\00\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01", align 16
@tab2 = dso_local global [64 x i8] c"\01\01\01\01\01\01\01\01\01\00\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i8 noundef zeroext %0) #0 {
  br i1 true, label %2, label %5

2:                                                ; preds = %1
  %3 = icmp ult i8 %0, 9
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %19

5:                                                ; preds = %2, %1
  %6 = icmp eq i8 %0, 11
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %19

8:                                                ; preds = %5
  %9 = icmp ugt i8 %0, 13
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = icmp ult i8 %0, 27
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %19

13:                                               ; preds = %10, %8
  %14 = icmp ugt i8 %0, 27
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = icmp ult i8 %0, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15, %13
  br label %20

19:                                               ; preds = %17, %12, %7, %4
  br label %20

20:                                               ; preds = %19, %18
  %.0 = phi i32 [ 1, %19 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar(i8 noundef zeroext %0) #0 {
  br i1 true, label %2, label %5

2:                                                ; preds = %1
  %3 = icmp ult i8 %0, 9
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %19

5:                                                ; preds = %2, %1
  %6 = icmp eq i8 %0, 11
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %19

8:                                                ; preds = %5
  %9 = icmp ugt i8 %0, 13
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = icmp ult i8 %0, 27
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %19

13:                                               ; preds = %10, %8
  %14 = icmp ugt i8 %0, 59
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = icmp ult i8 %0, 64
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15, %13
  br label %20

19:                                               ; preds = %17, %12, %7, %4
  br label %20

20:                                               ; preds = %19, %18
  %.0 = phi i32 [ 1, %19 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = call i32 @foo(i8 noundef zeroext %4)
  %6 = icmp ult i32 %.0, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* @tab1, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i32 [ %11, %7 ], [ 0, %12 ]
  %.not1 = icmp eq i32 %5, %14
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !5

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %36, %19
  %.1 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %21 = icmp ult i32 %.1, 256
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = trunc i32 %.1 to i8
  %24 = call i32 @bar(i8 noundef zeroext %23)
  %25 = icmp ult i32 %.1, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = zext i32 %.1 to i64
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* @tab2, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 0, %31 ]
  %.not = icmp eq i32 %24, %33
  br i1 %.not, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !7

38:                                               ; preds = %20
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %34, %15
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 922}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
