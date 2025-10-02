; ModuleID = './multiplies.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/multiplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <4 x i32> }

@TheArray = dso_local global [100000 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%u %u %u %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %union.IV, align 16
  %4 = alloca %union.IV, align 16
  %5 = alloca %union.IV, align 16
  %6 = alloca %union.IV, align 16
  br label %7

7:                                                ; preds = %14, %2
  %.05 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %8 = icmp ult i32 %.05, 100000
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = uitofp i32 %.05 to double
  %11 = fmul double %10, 1.234500e+01
  %12 = zext i32 %.05 to i64
  %13 = getelementptr inbounds [100000 x double], [100000 x double]* @TheArray, i64 0, i64 %12
  store double %11, double* %13, align 8
  br label %14

14:                                               ; preds = %9
  %15 = add i32 %.05, 1
  br label %7, !llvm.loop !4

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %29, %16
  %.011 = phi <16 x i8> [ zeroinitializer, %16 ], [ %.112, %29 ]
  %.07 = phi i32 [ 0, %16 ], [ %30, %29 ]
  %18 = icmp ult i32 %.07, 1000
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %22, %19
  %.112 = phi <16 x i8> [ %.011, %19 ], [ %26, %22 ]
  %.16 = phi i32 [ 0, %19 ], [ %27, %22 ]
  %.not15 = icmp eq i32 %.16, 50000
  br i1 %.not15, label %28, label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %23 = zext i32 %.16 to i64
  %24 = getelementptr inbounds <16 x i8>, <16 x i8>* bitcast ([100000 x double]* @TheArray to <16 x i8>*), i64 %23
  %25 = load <16 x i8>, <16 x i8>* %24, align 16
  %26 = mul <16 x i8> %.112, %25
  %27 = add i32 %.16, 1
  br label %20, !llvm.loop !6

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = add i32 %.07, 1
  br label %17, !llvm.loop !7

31:                                               ; preds = %17
  %32 = bitcast %union.IV* %3 to <16 x i8>*
  store <16 x i8> %.011, <16 x i8>* %32, align 16
  call void @printIV(%union.IV* noundef nonnull %3)
  br label %33

33:                                               ; preds = %45, %31
  %.18 = phi i32 [ 0, %31 ], [ %46, %45 ]
  %.03 = phi <8 x i16> [ zeroinitializer, %31 ], [ %.14, %45 ]
  %34 = icmp ult i32 %.18, 1000
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %38, %35
  %.2 = phi i32 [ 0, %35 ], [ %43, %38 ]
  %.14 = phi <8 x i16> [ %.03, %35 ], [ %42, %38 ]
  %.not14 = icmp eq i32 %.2, 50000
  br i1 %.not14, label %44, label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = zext i32 %.2 to i64
  %40 = getelementptr inbounds <8 x i16>, <8 x i16>* bitcast ([100000 x double]* @TheArray to <8 x i16>*), i64 %39
  %41 = load <8 x i16>, <8 x i16>* %40, align 16
  %42 = mul <8 x i16> %.14, %41
  %43 = add i32 %.2, 1
  br label %36, !llvm.loop !8

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = add i32 %.18, 1
  br label %33, !llvm.loop !9

47:                                               ; preds = %33
  %48 = bitcast %union.IV* %4 to <8 x i16>*
  store <8 x i16> %.03, <8 x i16>* %48, align 16
  call void @printIV(%union.IV* noundef nonnull %4)
  br label %49

49:                                               ; preds = %61, %47
  %.29 = phi i32 [ 0, %47 ], [ %62, %61 ]
  %.01 = phi <4 x i32> [ zeroinitializer, %47 ], [ %.12, %61 ]
  %50 = icmp ult i32 %.29, 1000
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %54, %51
  %.3 = phi i32 [ 0, %51 ], [ %59, %54 ]
  %.12 = phi <4 x i32> [ %.01, %51 ], [ %58, %54 ]
  %.not13 = icmp eq i32 %.3, 50000
  br i1 %.not13, label %60, label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = zext i32 %.3 to i64
  %56 = getelementptr inbounds <4 x i32>, <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), i64 %55
  %57 = load <4 x i32>, <4 x i32>* %56, align 16
  %58 = mul <4 x i32> %.12, %57
  %59 = add i32 %.3, 1
  br label %52, !llvm.loop !10

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = add i32 %.29, 1
  br label %49, !llvm.loop !11

63:                                               ; preds = %49
  %64 = getelementptr inbounds %union.IV, %union.IV* %5, i64 0, i32 0
  store <4 x i32> %.01, <4 x i32>* %64, align 16
  call void @printIV(%union.IV* noundef nonnull %5)
  br label %65

65:                                               ; preds = %77, %63
  %.310 = phi i32 [ 0, %63 ], [ %78, %77 ]
  %.0 = phi <4 x i32> [ zeroinitializer, %63 ], [ %.1, %77 ]
  %66 = icmp ult i32 %.310, 1000
  br i1 %66, label %67, label %79

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %70, %67
  %.4 = phi i32 [ 0, %67 ], [ %75, %70 ]
  %.1 = phi <4 x i32> [ %.0, %67 ], [ %74, %70 ]
  %.not = icmp eq i32 %.4, 50000
  br i1 %.not, label %76, label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = zext i32 %.4 to i64
  %72 = getelementptr inbounds <4 x i32>, <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), i64 %71
  %73 = load <4 x i32>, <4 x i32>* %72, align 16
  %74 = mul <4 x i32> %.1, %73
  %75 = add i32 %.4, 1
  br label %68, !llvm.loop !12

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = add i32 %.310, 1
  br label %65, !llvm.loop !13

79:                                               ; preds = %65
  %80 = getelementptr inbounds %union.IV, %union.IV* %6, i64 0, i32 0
  store <4 x i32> %.0, <4 x i32>* %80, align 16
  call void @printIV(%union.IV* noundef nonnull %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printIV(%union.IV* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %union.IV, %union.IV* %0, i64 0, i32 0, i64 0
  %3 = load i32, i32* %2, align 16
  %4 = getelementptr inbounds %union.IV, %union.IV* %0, i64 0, i32 0, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %union.IV, %union.IV* %0, i64 0, i32 0, i64 2
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %union.IV, %union.IV* %0, i64 0, i32 0, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #2
  ret void
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
