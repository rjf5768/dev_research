; ModuleID = './920501-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"1234111111\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"1234111127\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @str2llu(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = sext i8 %2 to i64
  %4 = add nsw i64 %3, -48
  br label %5

5:                                                ; preds = %9, %1
  %.01 = phi i64 [ %4, %1 ], [ %13, %9 ]
  %.pn = phi i8* [ %0, %1 ], [ %.0, %9 ]
  %.0 = getelementptr inbounds i8, i8* %.pn, i64 1
  %6 = load i8, i8* %.0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %14

9:                                                ; preds = %5
  %10 = sext i8 %6 to i64
  %11 = add nsw i64 %10, -48
  %12 = mul i64 %.01, 10
  %13 = add i64 %12, %11
  br label %5

14:                                               ; preds = %8
  ret i64 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @sqrtllu(i64 noundef %0) #1 {
  br label %2

2:                                                ; preds = %4, %1
  %.01 = phi i64 [ %0, %1 ], [ %5, %4 ]
  %.0 = phi i64 [ 0, %1 ], [ %3, %4 ]
  %3 = add i64 %.0, 1
  %.not = icmp ult i64 %.01, 2
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = lshr i64 %.01, 1
  br label %2, !llvm.loop !4

6:                                                ; preds = %2
  %7 = lshr i64 %3, 1
  %8 = shl i64 1, %7
  %9 = and i64 %3, 1
  %.not3 = icmp eq i64 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %6
  %11 = lshr i64 %8, 1
  %12 = add i64 %8, %11
  br label %13

13:                                               ; preds = %10, %6
  %.1 = phi i64 [ %12, %10 ], [ %8, %6 ]
  br label %14

14:                                               ; preds = %18, %13
  %.2 = phi i64 [ %.1, %13 ], [ %17, %18 ]
  %15 = udiv i64 %0, %.2
  %16 = add i64 %.2, %15
  %17 = lshr i64 %16, 1
  br label %18

18:                                               ; preds = %14
  %19 = icmp ult i64 %15, %17
  br i1 %19, label %14, label %20, !llvm.loop !6

20:                                               ; preds = %18
  ret i64 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @plist(i64 noundef %0, i64 noundef %1, i64* noundef %2) #2 {
  br label %4

4:                                                ; preds = %18, %3
  %.02 = phi i64 [ %0, %3 ], [ %19, %18 ]
  %.0 = phi i64* [ %2, %3 ], [ %.1, %18 ]
  %.not = icmp ugt i64 %.02, %1
  br i1 %.not, label %20, label %5

5:                                                ; preds = %4
  %6 = call i64 @sqrtllu(i64 noundef %.02)
  br label %7

7:                                                ; preds = %13, %5
  %.01 = phi i64 [ 3, %5 ], [ %14, %13 ]
  %.not3 = icmp ugt i64 %.01, %6
  br i1 %.not3, label %15, label %8

8:                                                ; preds = %7
  %9 = urem i64 %.02, %.01
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %17

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = add i64 %.01, 2
  br label %7, !llvm.loop !7

15:                                               ; preds = %7
  %16 = getelementptr inbounds i64, i64* %.0, i64 1
  store i64 %.02, i64* %.0, align 8
  br label %17

17:                                               ; preds = %15, %11
  %.1 = phi i64* [ %.0, %11 ], [ %16, %15 ]
  br label %18

18:                                               ; preds = %17
  %19 = add i64 %.02, 2
  br label %4, !llvm.loop !8

20:                                               ; preds = %4
  store i64 0, i64* %.0, align 8
  %21 = ptrtoint i64* %.0 to i64
  %22 = ptrtoint i64* %2 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 3
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #3 {
  %3 = alloca [10 x i64], align 16
  %4 = call i64 @str2llu(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @str2llu(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 0
  %7 = call i32 @plist(i64 noundef %4, i64 noundef %5, i64* noundef nonnull %6)
  %8 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 0
  %9 = load i64, i64* %8, align 16
  %.not = icmp eq i64 %9, 1234111117
  br i1 %.not, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 1
  %12 = load i64, i64* %11, align 8
  %.not1 = icmp eq i64 %12, 1234111121
  br i1 %.not1, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 2
  %15 = load i64, i64* %14, align 16
  %.not2 = icmp eq i64 %15, 1234111127
  br i1 %.not2, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 3
  %18 = load i64, i64* %17, align 8
  %.not3 = icmp eq i64 %18, 0
  br i1 %.not3, label %20, label %19

19:                                               ; preds = %16, %13, %10, %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %20, %19
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!8 = distinct !{!8, !5}
