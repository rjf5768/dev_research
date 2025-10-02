; ModuleID = './pr79286.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79286.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@d = internal global [0 x [8 x i32]] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %16 ]
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 4
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, i32 noundef %.01) #2
  br label %5

5:                                                ; preds = %13, %3
  %.1 = phi i32 [ %.01, %3 ], [ %14, %13 ]
  %6 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %5
  %8 = load i32, i32* @c, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @c, align 4
  %10 = icmp ne i32 %8, 0
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i1 [ false, %5 ], [ %10, %7 ]
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = load i32, i32* getelementptr inbounds ([0 x [8 x i32]], [0 x [8 x i32]]* @d, i64 0, i64 -276460752303423488, i64 0), align 4
  br label %5, !llvm.loop !4

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

18:                                               ; preds = %1
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
