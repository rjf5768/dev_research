; ModuleID = './strcpy-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcpy-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [96 x i8] }

@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %80, %0
  %.01 = phi i32 [ 0, %0 ], [ %81, %80 ]
  %2 = icmp ult i32 %.01, 8
  br i1 %2, label %3, label %82

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %77, %3
  %.02 = phi i32 [ 0, %3 ], [ %78, %77 ]
  %5 = icmp ult i32 %.02, 8
  br i1 %5, label %6, label %79

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %74, %6
  %.03 = phi i32 [ 1, %6 ], [ %75, %74 ]
  %8 = icmp ult i32 %.03, 80
  br i1 %8, label %9, label %76

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %20, %9
  %.04 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %.0 = phi i8 [ 65, %9 ], [ %22, %20 ]
  %11 = icmp ult i32 %.04, 97
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = zext i32 %.04 to i64
  %14 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 %13
  store i8 97, i8* %14, align 1
  %15 = icmp sgt i8 %.0, 95
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %.1 = phi i8 [ 65, %16 ], [ %.0, %12 ]
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %18
  store i8 %.1, i8* %19, align 1
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.04, 1
  %22 = add i8 %.1, 1
  br label %10, !llvm.loop !4

23:                                               ; preds = %10
  %24 = add nuw nsw i32 %.02, %.03
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %27
  %29 = zext i32 %.02 to i64
  %30 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u2 to i8*), i64 %29
  %31 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %28, i8* noundef nonnull dereferenceable(1) %30) #3
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %32
  %.not = icmp eq i8* %31, %33
  br i1 %.not, label %35, label %34

34:                                               ; preds = %23
  call void @abort() #4
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %42, %35
  %.08 = phi i8* [ bitcast (%union.anon* @u1 to i8*), %35 ], [ %44, %42 ]
  %.15 = phi i32 [ 0, %35 ], [ %43, %42 ]
  %37 = icmp ult i32 %.15, %.01
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = load i8, i8* %.08, align 1
  %.not16 = icmp eq i8 %39, 97
  br i1 %.not16, label %41, label %40

40:                                               ; preds = %38
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.15, 1
  %44 = getelementptr inbounds i8, i8* %.08, i64 1
  br label %36, !llvm.loop !6

45:                                               ; preds = %36
  %46 = trunc i32 %.02 to i8
  %47 = add i8 %46, 65
  br label %48

48:                                               ; preds = %57, %45
  %.19 = phi i8* [ %.08, %45 ], [ %59, %57 ]
  %.26 = phi i32 [ 0, %45 ], [ %58, %57 ]
  %.2 = phi i8 [ %47, %45 ], [ %60, %57 ]
  %49 = icmp ult i32 %.26, %.03
  br i1 %49, label %50, label %61

50:                                               ; preds = %48
  %51 = icmp sgt i8 %.2, 95
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %50
  %.3 = phi i8 [ 65, %52 ], [ %.2, %50 ]
  %54 = load i8, i8* %.19, align 1
  %.not15 = icmp eq i8 %54, %.3
  br i1 %.not15, label %56, label %55

55:                                               ; preds = %53
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.26, 1
  %59 = getelementptr inbounds i8, i8* %.19, i64 1
  %60 = add i8 %.3, 1
  br label %48, !llvm.loop !7

61:                                               ; preds = %48
  %62 = load i8, i8* %.19, align 1
  %.not13 = icmp eq i8 %62, 0
  br i1 %.not13, label %64, label %63

63:                                               ; preds = %61
  call void @abort() #4
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %71, %64
  %.19.pn = phi i8* [ %.19, %64 ], [ %.210, %71 ]
  %.37 = phi i32 [ 0, %64 ], [ %72, %71 ]
  %.210 = getelementptr inbounds i8, i8* %.19.pn, i64 1
  %66 = icmp ult i32 %.37, 8
  br i1 %66, label %67, label %73

67:                                               ; preds = %65
  %68 = load i8, i8* %.210, align 1
  %.not14 = icmp eq i8 %68, 97
  br i1 %.not14, label %70, label %69

69:                                               ; preds = %67
  call void @abort() #4
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = add nuw nsw i32 %.37, 1
  br label %65, !llvm.loop !8

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !9

76:                                               ; preds = %7
  br label %77

77:                                               ; preds = %76
  %78 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !10

79:                                               ; preds = %4
  br label %80

80:                                               ; preds = %79
  %81 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !11

82:                                               ; preds = %1
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %82, %69, %63, %55, %40, %34
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
