; ModuleID = './2003-04-22-Switch.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-04-22-Switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"C\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"B\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"D\0A\00", align 1
@str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp ult i32 %.0, 10
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = call i32 @func(i32 noundef %.0)
  br label %5

5:                                                ; preds = %3
  %6 = add i32 %.0, 1
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func(i32 noundef %0) #0 {
  switch i32 %0, label %6 [
    i32 8, label %2
    i32 0, label %3
    i32 3, label %3
    i32 2, label %3
    i32 1, label %4
    i32 7, label %4
    i32 9, label %5
  ]

2:                                                ; preds = %1
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.2, i64 0, i64 0))
  br label %3

3:                                                ; preds = %2, %1, %1, %1
  %.0 = phi i32 [ 4, %1 ], [ 4, %1 ], [ 4, %1 ], [ 6, %2 ]
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  br label %7

4:                                                ; preds = %1, %1
  br label %5

5:                                                ; preds = %4, %1
  %.1 = phi i32 [ 4, %1 ], [ 7, %4 ]
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %1
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.3, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %5, %3
  %.2 = phi i32 [ 1, %6 ], [ %.1, %5 ], [ %.0, %3 ]
  ret i32 %.2
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
