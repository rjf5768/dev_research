; ModuleID = './memcpy-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %73, %0
  %.01 = phi i32 [ 0, %0 ], [ %74, %73 ]
  %2 = icmp ult i32 %.01, 8
  br i1 %2, label %3, label %75

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %70, %3
  %.02 = phi i32 [ 0, %3 ], [ %71, %70 ]
  %5 = icmp ult i32 %.02, 8
  br i1 %5, label %6, label %72

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %67, %6
  %.03 = phi i32 [ 1, %6 ], [ %68, %67 ]
  %8 = icmp ult i32 %.03, 80
  br i1 %8, label %9, label %69

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %20, %9
  %.04 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %.0 = phi i8 [ 65, %9 ], [ %22, %20 ]
  %11 = icmp ult i32 %.04, 96
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = zext i32 %.04 to i64
  %14 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u1 to [96 x i8]*), i64 0, i64 %13
  store i8 97, i8* %14, align 1
  %15 = icmp sgt i8 %.0, 95
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %.1 = phi i8 [ 65, %16 ], [ %.0, %12 ]
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u2 to [96 x i8]*), i64 0, i64 %18
  store i8 %.1, i8* %19, align 1
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.04, 1
  %22 = add i8 %.1, 1
  br label %10, !llvm.loop !4

23:                                               ; preds = %10
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %24
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u2 to i8*), i64 %26
  %28 = zext i32 %.03 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %25, i8* noundef nonnull align 1 dereferenceable(1) %27, i64 %28, i1 false)
  br i1 true, label %30, label %29

29:                                               ; preds = %23
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %37, %30
  %.08 = phi i8* [ bitcast (%union.anon* @u1 to i8*), %30 ], [ %39, %37 ]
  %.15 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %32 = icmp ult i32 %.15, %.01
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load i8, i8* %.08, align 1
  %.not14 = icmp eq i8 %34, 97
  br i1 %.not14, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.15, 1
  %39 = getelementptr inbounds i8, i8* %.08, i64 1
  br label %31, !llvm.loop !6

40:                                               ; preds = %31
  %41 = trunc i32 %.02 to i8
  %42 = add i8 %41, 65
  br label %43

43:                                               ; preds = %52, %40
  %.19 = phi i8* [ %.08, %40 ], [ %54, %52 ]
  %.26 = phi i32 [ 0, %40 ], [ %53, %52 ]
  %.2 = phi i8 [ %42, %40 ], [ %55, %52 ]
  %44 = icmp ult i32 %.26, %.03
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = icmp sgt i8 %.2, 95
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %45
  %.3 = phi i8 [ 65, %47 ], [ %.2, %45 ]
  %49 = load i8, i8* %.19, align 1
  %.not13 = icmp eq i8 %49, %.3
  br i1 %.not13, label %51, label %50

50:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.26, 1
  %54 = getelementptr inbounds i8, i8* %.19, i64 1
  %55 = add i8 %.3, 1
  br label %43, !llvm.loop !7

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %63, %56
  %.210 = phi i8* [ %.19, %56 ], [ %65, %63 ]
  %.37 = phi i32 [ 0, %56 ], [ %64, %63 ]
  %58 = icmp ult i32 %.37, 8
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = load i8, i8* %.210, align 1
  %.not = icmp eq i8 %60, 97
  br i1 %.not, label %62, label %61

61:                                               ; preds = %59
  call void @abort() #3
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  %64 = add nuw nsw i32 %.37, 1
  %65 = getelementptr inbounds i8, i8* %.210, i64 1
  br label %57, !llvm.loop !8

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !9

69:                                               ; preds = %7
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !10

72:                                               ; preds = %4
  br label %73

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !11

75:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %75, %61, %50, %35, %29
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
