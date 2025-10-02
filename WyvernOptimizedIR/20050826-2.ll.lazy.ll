; ModuleID = './20050826-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtattr = type { i16, i16 }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @inet_check_attr(i8* nocapture noundef readnone %0, %struct.rtattr** nocapture noundef %1) #0 {
  br label %3

3:                                                ; preds = %25, %2
  %.01 = phi i32 [ 1, %2 ], [ %26, %25 ]
  %4 = icmp ult i32 %.01, 15
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = add nsw i32 %.01, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %1, i64 %7
  %9 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %.not = icmp eq %struct.rtattr* %9, null
  br i1 %.not, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %9, i64 0, i32 0
  %12 = load i16, i16* %11, align 2
  %13 = and i16 %12, -4
  %14 = icmp eq i16 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %28

16:                                               ; preds = %10
  %.not2 = icmp eq i32 %.01, 9
  br i1 %.not2, label %23, label %17

17:                                               ; preds = %16
  %.not3 = icmp eq i32 %.01, 8
  br i1 %.not3, label %23, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %9, i64 1
  %20 = add nsw i32 %.01, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %1, i64 %21
  store %struct.rtattr* %19, %struct.rtattr** %22, align 8
  br label %23

23:                                               ; preds = %18, %17, %16
  br label %24

24:                                               ; preds = %23, %5
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %15
  %.0 = phi i32 [ -22, %15 ], [ 0, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [2 x %struct.rtattr], align 4
  %2 = alloca [14 x %struct.rtattr*], align 16
  %3 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 0, i32 0
  store i16 12, i16* %3, align 4
  %4 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 0, i32 1
  store i16 0, i16* %4, align 2
  %5 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 1
  %6 = bitcast [2 x %struct.rtattr]* %1 to i32*
  %7 = bitcast %struct.rtattr* %5 to i32*
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %15, %0
  %.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %10 = icmp ult i32 %.0, 14
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 0
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %13
  store %struct.rtattr* %12, %struct.rtattr** %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !6

17:                                               ; preds = %9
  %18 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 0
  %19 = call i32 @inet_check_attr(i8* noundef null, %struct.rtattr** noundef nonnull %18)
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %36, %21
  %.1 = phi i32 [ 0, %21 ], [ %37, %36 ]
  %23 = icmp ult i32 %.1, 14
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %25
  %27 = load %struct.rtattr*, %struct.rtattr** %26, align 8
  %.not6 = icmp eq i32 %.1, 7
  br i1 %.not6, label %30, label %28

28:                                               ; preds = %24
  %29 = icmp ne i32 %.1, 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i1 [ false, %24 ], [ %29, %28 ]
  %32 = zext i1 %31 to i64
  %33 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 %32
  %.not7 = icmp eq %struct.rtattr* %27, %33
  br i1 %.not7, label %35, label %34

34:                                               ; preds = %30
  call void @abort() #4
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !7

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %45, %38
  %.2 = phi i32 [ 0, %38 ], [ %46, %45 ]
  %40 = icmp ult i32 %.2, 14
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 0
  %43 = zext i32 %.2 to i64
  %44 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %43
  store %struct.rtattr* %42, %struct.rtattr** %44, align 8
  br label %45

45:                                               ; preds = %41
  %46 = add nuw nsw i32 %.2, 1
  br label %39, !llvm.loop !8

47:                                               ; preds = %39
  %48 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 1
  store %struct.rtattr* null, %struct.rtattr** %48, align 8
  %49 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 1, i32 0
  %50 = load i16, i16* %49, align 4
  %51 = add i16 %50, -8
  store i16 %51, i16* %49, align 4
  %52 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 1
  %53 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 5
  store %struct.rtattr* %52, %struct.rtattr** %53, align 8
  %54 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 0
  %55 = call i32 @inet_check_attr(i8* noundef null, %struct.rtattr** noundef nonnull %54)
  %.not1 = icmp eq i32 %55, -22
  br i1 %.not1, label %57, label %56

56:                                               ; preds = %47
  call void @abort() #4
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %87, %57
  %.3 = phi i32 [ 0, %57 ], [ %88, %87 ]
  %59 = icmp ult i32 %.3, 14
  br i1 %59, label %60, label %89

60:                                               ; preds = %58
  %61 = icmp eq i32 %.3, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = zext i32 %.3 to i64
  %64 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %63
  %65 = load %struct.rtattr*, %struct.rtattr** %64, align 8
  %.not5 = icmp eq %struct.rtattr* %65, null
  br i1 %.not5, label %67, label %66

66:                                               ; preds = %62
  call void @abort() #4
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %62, %60
  %.not2 = icmp eq i32 %.3, 1
  br i1 %.not2, label %76, label %68

68:                                               ; preds = %67
  %69 = icmp ult i32 %.3, 6
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = zext i32 %.3 to i64
  %72 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %71
  %73 = load %struct.rtattr*, %struct.rtattr** %72, align 8
  %74 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 1
  %.not4 = icmp eq %struct.rtattr* %73, %74
  br i1 %.not4, label %76, label %75

75:                                               ; preds = %70
  call void @abort() #4
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %70, %68, %67
  %77 = icmp ugt i32 %.3, 5
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = zext i32 %.3 to i64
  %80 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %2, i64 0, i64 %79
  %81 = load %struct.rtattr*, %struct.rtattr** %80, align 8
  %82 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %1, i64 0, i64 0
  %.not3 = icmp eq %struct.rtattr* %81, %82
  br i1 %.not3, label %84, label %83

83:                                               ; preds = %78
  call void @abort() #4
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %78, %76
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.3, 1
  br label %58, !llvm.loop !9

89:                                               ; preds = %58
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %83, %75, %66, %56, %34, %20
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!9 = distinct !{!9, !5}
