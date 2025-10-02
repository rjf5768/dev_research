; ModuleID = './switch.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = dso_local constant i32 256, align 4
@seven = internal global i32 15, align 4
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"error: i=%hhd, c=%hhd\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0) #0 {
  switch i32 %0, label %26 [
    i32 0, label %2
    i32 1, label %5
    i32 2, label %8
    i32 3, label %12
    i32 4, label %15
    i32 5, label %18
    i32 6, label %21
    i32 7, label %24
  ]

2:                                                ; preds = %1
  %3 = load i32, i32* @seven, align 4
  %4 = lshr i32 %3, 3
  br label %27

5:                                                ; preds = %1
  %6 = load i32, i32* @seven, align 4
  %7 = lshr i32 %6, 2
  br label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @seven, align 4
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 2
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @seven, align 4
  %14 = lshr i32 %13, 1
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @seven, align 4
  %17 = and i32 %16, 4
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @seven, align 4
  %20 = and i32 %19, 5
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @seven, align 4
  %23 = and i32 %22, 6
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @seven, align 4
  br label %27

26:                                               ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %24, %21, %18, %15, %12, %8, %5, %2
  %.0 = phi i32 [ -1, %26 ], [ %25, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %8 ], [ %7, %5 ], [ %4, %2 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %12, %0
  %.0 = phi i8 [ 0, %0 ], [ %13, %12 ]
  %2 = icmp ult i8 %.0, 8
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = zext i8 %.0 to i32
  %5 = call i32 @test(i32 noundef %4)
  %6 = trunc i32 %5 to i8
  %.not = icmp eq i8 %.0, %6
  br i1 %.not, label %11, label %7

7:                                                ; preds = %3
  %8 = zext i8 %.0 to i32
  %9 = and i32 %5, 255
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #3
  br label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %11
  %13 = add i8 %.0, 1
  br label %1, !llvm.loop !4

14:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
