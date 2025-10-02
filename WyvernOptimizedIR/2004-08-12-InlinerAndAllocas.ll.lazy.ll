; ModuleID = './2004-08-12-InlinerAndAllocas.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/2004-08-12-InlinerAndAllocas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %.01 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp ult i32 %.01, 10000
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = call i32 @Callee(i32 noundef %.01)
  br label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %.0, %4
  %7 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %.0) #3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Callee(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %2

2:                                                ; preds = %1
  %3 = alloca [1000 x i8], align 16
  %.sub = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %.sub, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #3
  %5 = load i8, i8* %.sub, align 16
  %6 = sext i8 %5 to i32
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %2
  %.0 = phi i32 [ %6, %2 ], [ 0, %7 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
