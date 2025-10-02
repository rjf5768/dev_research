; ModuleID = './printargs.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/printargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"#Args = %d. They are:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = add nsw i32 %0, -1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #2
  br label %5

5:                                                ; preds = %12, %2
  %.0 = phi i32 [ 1, %2 ], [ %13, %12 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i8*, i8** %1, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %10) #2
  br label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @puts(i8* noundef) #1

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
