; ModuleID = './991016-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991016-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit(i32 noundef %0, i32 noundef %1, i8* nocapture noundef %2) #0 {
  %4 = bitcast i8* %2 to i32*
  %5 = bitcast i8* %2 to i64*
  %6 = bitcast i8* %2 to i64*
  switch i32 %0, label %34 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %25
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %11, %7
  %.01 = phi i32 [ %1, %7 ], [ %12, %11 ]
  %9 = load i32, i32* %4, align 4
  %10 = shl nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %.01, -1
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %8, !llvm.loop !4

13:                                               ; preds = %11
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br label %35

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %20, %16
  %.1 = phi i32 [ %1, %16 ], [ %21, %20 ]
  %18 = load i64, i64* %5, align 8
  %19 = shl nsw i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %17
  %21 = add nsw i32 %.1, -1
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %22, label %17, !llvm.loop !6

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br label %35

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %29, %25
  %.2 = phi i32 [ %1, %25 ], [ %30, %29 ]
  %27 = load i64, i64* %6, align 8
  %28 = shl nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %26
  %30 = add nsw i32 %.2, -1
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %31, label %26, !llvm.loop !7

31:                                               ; preds = %29
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br label %35

34:                                               ; preds = %3
  call void @abort() #3
  unreachable

35:                                               ; preds = %31, %22, %13
  %.0.in = phi i1 [ %33, %31 ], [ %24, %22 ], [ %15, %13 ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 1, i32* %1, align 4
  %4 = bitcast i32* %1 to i8*
  %5 = call i32 @doit(i32 noundef 0, i32 noundef 5, i8* noundef nonnull %4)
  store i64 1, i64* %2, align 8
  %6 = bitcast i64* %2 to i8*
  %7 = call i32 @doit(i32 noundef 1, i32 noundef 5, i8* noundef nonnull %6)
  store i64 1, i64* %3, align 8
  %8 = bitcast i64* %3 to i8*
  %9 = call i32 @doit(i32 noundef 2, i32 noundef 5, i8* noundef nonnull %8)
  %10 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %10, 32
  br i1 %.not, label %12, label %11

11:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %.not1 = icmp eq i64 %13, 32
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %.not2 = icmp eq i64 %16, 32
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %18, %17, %14, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
