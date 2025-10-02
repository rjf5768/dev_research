; ModuleID = './bcp-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bcp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global i32 0, align 4
@bad_t0 = dso_local global [6 x i32 ()*] [i32 ()* @bad0, i32 ()* @bad1, i32 ()* @bad5, i32 ()* @bad7, i32 ()* @bad8, i32 ()* @bad10], align 16
@bad_t1 = dso_local global [3 x i32 (i32)*] [i32 (i32)* @bad2, i32 (i32)* @bad3, i32 (i32)* @bad6], align 16
@bad_t2 = dso_local global [2 x i32 (i8*)*] [i32 (i8*)* @bad4, i32 (i8*)* @bad9], align 16
@good_t0 = dso_local global [3 x i32 ()*] [i32 ()* @good0, i32 ()* @good1, i32 ()* @good2], align 16
@opt_t0 = dso_local global [3 x i32 ()*] [i32 ()* @opt0, i32 ()* @opt1, i32 ()* @opt2], align 16
@.str = private unnamed_addr constant [3 x i8] c"hi\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @bad0() #0 {
  %1 = load i32, i32* @global, align 4
  %2 = call i1 @llvm.is.constant.i32(i32 %1)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: convergent mustprogress nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bad1() #2 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad5() #3 {
  %1 = call i32 @bad2(i32 noundef 1) #7
  ret i32 %1
}

declare dso_local i32 @bad2(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bad7() #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bad8() #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @bad9(i8* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 123456
  %3 = load i8, i8* %2, align 1
  %4 = call i1 @llvm.is.constant.i8(i8 %3)
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: convergent mustprogress nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bad10() #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @good0() #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @good1() #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @good2() #2 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt0() #3 {
  %1 = call i32 @bad3(i32 noundef 1) #7
  ret i32 %1
}

declare dso_local i32 @bad3(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt1() #3 {
  %1 = call i32 @bad6(i32 noundef 1) #7
  ret i32 %1
}

declare dso_local i32 @bad6(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @opt2() #2 {
  ret i32 1
}

declare dso_local i32 @bad4(i8* noundef) #4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #5 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 6
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [6 x i32 ()*], [6 x i32 ()*]* @bad_t0, i64 0, i64 %4
  %6 = load volatile i32 ()*, i32 ()** %5, align 8
  %7 = call i32 %6() #7
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %3
  call void @abort() #8
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %22, %12
  %.1 = phi i32 [ 0, %12 ], [ %23, %22 ]
  %14 = icmp ult i32 %.1, 3
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds [3 x i32 (i32)*], [3 x i32 (i32)*]* @bad_t1, i64 0, i64 %16
  %18 = load volatile i32 (i32)*, i32 (i32)** %17, align 8
  %19 = call i32 %18(i32 noundef 1) #7
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #8
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %34, %24
  %.2 = phi i32 [ 0, %24 ], [ %35, %34 ]
  %26 = icmp ult i32 %.2, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = zext i32 %.2 to i64
  %29 = getelementptr inbounds [2 x i32 (i8*)*], [2 x i32 (i8*)*]* @bad_t2, i64 0, i64 %28
  %30 = load volatile i32 (i8*)*, i32 (i8*)** %29, align 8
  %31 = call i32 %30(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %.not1 = icmp eq i32 %31, 0
  br i1 %.not1, label %33, label %32

32:                                               ; preds = %27
  call void @abort() #8
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.2, 1
  br label %25, !llvm.loop !7

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %46, %36
  %.3 = phi i32 [ 0, %36 ], [ %47, %46 ]
  %38 = icmp ult i32 %.3, 3
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = zext i32 %.3 to i64
  %41 = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* @good_t0, i64 0, i64 %40
  %42 = load volatile i32 ()*, i32 ()** %41, align 8
  %43 = call i32 %42() #7
  %.not = icmp eq i32 %43, 0
  br i1 %.not, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #8
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.3, 1
  br label %37, !llvm.loop !8

48:                                               ; preds = %37
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %48, %44, %32, %20, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #6

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #6

attributes #0 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { convergent mustprogress nofree nosync nounwind readnone willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
