; ModuleID = './950704-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950704-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errflag = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i64 @f(i64 noundef %0, i64 noundef %1) #0 {
  store i32 0, i32* @errflag, align 4
  %3 = add nsw i64 %0, %1
  %4 = icmp sgt i64 %0, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = icmp slt i64 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i64 %3, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7, %5
  br label %18

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %2
  %12 = icmp sgt i64 %1, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = icmp slt i64 %3, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13, %11
  br label %18

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %10
  store i32 1, i32* @errflag, align 4
  br label %18

18:                                               ; preds = %17, %15, %9
  %.0 = phi i64 [ %3, %9 ], [ 0, %17 ], [ %3, %15 ]
  ret i64 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @f(i64 noundef 0, i64 noundef 0)
  %2 = load i32, i32* @errflag, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i64 @f(i64 noundef 1, i64 noundef -1)
  %6 = load i32, i32* @errflag, align 4
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = call i64 @f(i64 noundef -1, i64 noundef 1)
  %10 = load i32, i32* @errflag, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
  %14 = load i32, i32* @errflag, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -1)
  %18 = load i32, i32* @errflag, align 4
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 9223372036854775807)
  %22 = load i32, i32* @errflag, align 4
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 1)
  %26 = load i32, i32* @errflag, align 4
  %.not6 = icmp eq i32 %26, 0
  br i1 %.not6, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef -9223372036854775808)
  %30 = load i32, i32* @errflag, align 4
  %.not7 = icmp eq i32 %30, 0
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %32, %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
