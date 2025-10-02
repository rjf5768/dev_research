; ModuleID = './920411-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920411-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @f(i8* nocapture noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  br label %4

4:                                                ; preds = %16, %1
  %.02 = phi i64 [ 0, %1 ], [ %19, %16 ]
  %.0 = phi i64 [ 0, %1 ], [ %18, %16 ]
  %5 = icmp eq i64 %.02, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %13, %6
  %.01 = phi i64 [ 0, %6 ], [ %14, %13 ]
  %8 = icmp ult i64 %.01, 8
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %0, i64 %.01
  %11 = load i8, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %3, i64 %.01
  store i8 %11, i8* %12, align 1
  br label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i64 %.01, 1
  br label %7, !llvm.loop !4

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %.0, %17
  %19 = add nuw nsw i64 %.02, 1
  br label %4, !llvm.loop !6

20:                                               ; preds = %4
  ret i64 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [8 x i8], align 1
  br label %2

2:                                                ; preds = %5, %0
  %.0 = phi i32 [ 8, %0 ], [ %3, %5 ]
  %3 = add nsw i32 %.0, -1
  %4 = icmp sgt i32 %.0, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 %6
  store i8 32, i8* %7, align 1
  br label %2, !llvm.loop !7

8:                                                ; preds = %2
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %10 = call i64 @f(i8* noundef nonnull %9)
  %.not = icmp eq i64 %10, 2314885530818453536
  br i1 %.not, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
