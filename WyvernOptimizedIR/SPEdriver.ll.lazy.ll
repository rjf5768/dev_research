; ModuleID = './SPEdriver.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/SPEdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local double @SPEdriver(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, double* noundef %5, double* noundef %6, double* noundef %7) #0 {
  %9 = alloca %struct.timeval, align 8
  %10 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %9, i8* noundef null) #3
  %11 = call i64 @clock() #3
  br label %12

12:                                               ; preds = %15, %8
  %.02 = phi i32 [ 0, %8 ], [ %16, %15 ]
  %13 = icmp ult i32 %.02, 2000000
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  call void @Crystal_div(i32 noundef 12, double noundef 1.000000e-02, double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, double* noundef %5, double* noundef %6, double* noundef %7) #3
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !4

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %22, %17
  %.04 = phi double [ undef, %17 ], [ %21, %22 ]
  %.13 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %19 = icmp ult i32 %.13, 2000000
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = call double @Crystal_pow(i32 noundef 12, double* noundef %0) #3
  br label %22

22:                                               ; preds = %20
  %23 = add nuw nsw i32 %.13, 1
  br label %18, !llvm.loop !6

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %45, %24
  %.2 = phi i32 [ 0, %24 ], [ %46, %45 ]
  %26 = icmp ult i32 %.2, 12
  br i1 %26, label %27, label %47

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %42, %27
  %.01 = phi i32 [ 0, %27 ], [ %43, %42 ]
  %29 = icmp ult i32 %.01, 12
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = zext i32 %.2 to i64
  %32 = mul nuw nsw i64 %31, 12
  %33 = getelementptr inbounds double, double* %5, i64 %32
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds double, double* %33, i64 %34
  %36 = load double, double* %35, align 8
  %37 = zext i32 %.2 to i64
  %38 = mul nuw nsw i64 %37, 12
  %39 = getelementptr inbounds double, double* %7, i64 %38
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds double, double* %39, i64 %40
  store double %36, double* %41, align 8
  br label %42

42:                                               ; preds = %30
  %43 = add nuw nsw i32 %.01, 1
  br label %28, !llvm.loop !7

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.2, 1
  br label %25, !llvm.loop !8

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %74, %47
  %.3 = phi i32 [ 0, %47 ], [ %75, %74 ]
  %49 = icmp ult i32 %.3, 2000000
  br i1 %49, label %50, label %76

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %71, %50
  %.1 = phi i32 [ 0, %50 ], [ %72, %71 ]
  %52 = icmp ult i32 %.1, 12
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %68, %53
  %.0 = phi i32 [ 0, %53 ], [ %69, %68 ]
  %55 = icmp ult i32 %.0, 12
  br i1 %55, label %56, label %70

56:                                               ; preds = %54
  %57 = zext i32 %.1 to i64
  %58 = mul nuw nsw i64 %57, 12
  %59 = getelementptr inbounds double, double* %7, i64 %58
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds double, double* %59, i64 %60
  %62 = load double, double* %61, align 8
  %63 = zext i32 %.1 to i64
  %64 = mul nuw nsw i64 %63, 12
  %65 = getelementptr inbounds double, double* %5, i64 %64
  %66 = zext i32 %.0 to i64
  %67 = getelementptr inbounds double, double* %65, i64 %66
  store double %62, double* %67, align 8
  br label %68

68:                                               ; preds = %56
  %69 = add nuw nsw i32 %.0, 1
  br label %54, !llvm.loop !9

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = add nuw nsw i32 %.1, 1
  br label %51, !llvm.loop !10

73:                                               ; preds = %51
  call void @Crystal_Cholesky(i32 noundef 12, double* noundef %5, double* noundef %2, double* noundef %4) #3
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %.3, 1
  br label %48, !llvm.loop !11

76:                                               ; preds = %48
  ret double %.04
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local void @Crystal_div(i32 noundef, double noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef) #2

declare dso_local double @Crystal_pow(i32 noundef, double* noundef) #2

declare dso_local void @Crystal_Cholesky(i32 noundef, double* noundef, double* noundef, double* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
