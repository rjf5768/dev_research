; ModuleID = './961125-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961125-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i8* @begfield(i32 noundef 58, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 3), i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i8* %1, getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 2)
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

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i8* @begfield(i32 noundef %0, i8* noundef readonly %1, i8* noundef readnone %2, i32 noundef %3, i32 noundef %4) #1 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %31, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %29, %6
  %.01 = phi i8* [ %1, %6 ], [ %.2, %29 ]
  %.0 = phi i32 [ %3, %6 ], [ %.1, %29 ]
  %8 = icmp ult i8* %.01, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = add nsw i32 %.0, -1
  %11 = icmp ne i32 %.0, 0
  br label %12

12:                                               ; preds = %9, %7
  %.1 = phi i32 [ %10, %9 ], [ %.0, %7 ]
  %13 = phi i1 [ %11, %9 ], [ false, %7 ]
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %23, %14
  %.12 = phi i8* [ %.01, %14 ], [ %24, %23 ]
  %16 = icmp ult i8* %.12, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load i8, i8* %.12, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, %0
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i1 [ false, %15 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %15, !llvm.loop !4

25:                                               ; preds = %21
  %26 = icmp ult i8* %.12, %2
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %29

29:                                               ; preds = %27, %25
  %.2 = phi i8* [ %28, %27 ], [ %.12, %25 ]
  br label %7, !llvm.loop !6

30:                                               ; preds = %12
  br label %33

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %32, %31
  br label %32

33:                                               ; preds = %30
  %34 = sext i32 %4 to i64
  %35 = getelementptr inbounds i8, i8* %.01, i64 %34
  %.not3 = icmp ugt i8* %35, %2
  br i1 %.not3, label %39, label %36

36:                                               ; preds = %33
  %37 = sext i32 %4 to i64
  %38 = getelementptr inbounds i8, i8* %.01, i64 %37
  br label %39

39:                                               ; preds = %36, %33
  %.3 = phi i8* [ %38, %36 ], [ %.01, %33 ]
  ret i8* %.3
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
