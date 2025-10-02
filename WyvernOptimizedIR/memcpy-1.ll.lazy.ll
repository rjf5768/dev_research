; ModuleID = './memcpy-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i8* @copy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %4, i1 false)
  ret i8* %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [131072 x i8], align 16
  %2 = alloca [131072 x i8], align 16
  br label %3

3:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %4 = icmp ult i32 %.0, 131072
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = trunc i32 %.0 to i8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [131072 x i8], [131072 x i8]* %1, i64 0, i64 %7
  store i8 %6, i8* %8, align 1
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %9
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %5
  %12 = add i32 %.0, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  %14 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  %15 = getelementptr inbounds [131072 x i8], [131072 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %14, i8* noundef nonnull align 16 dereferenceable(1024) %15, i64 1024, i1 false)
  br label %16

16:                                               ; preds = %25, %13
  %.1 = phi i32 [ 0, %13 ], [ %26, %25 ]
  %17 = icmp ult i32 %.1, 1024
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = trunc i32 %.1 to i8
  %.not5 = icmp eq i8 %21, %22
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = add i32 %.1, 1
  br label %16, !llvm.loop !6

27:                                               ; preds = %16
  %28 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %28, i8 1, i64 1024, i1 false)
  br label %29

29:                                               ; preds = %37, %27
  %.2 = phi i32 [ 0, %27 ], [ %38, %37 ]
  %30 = icmp ult i32 %.2, 1024
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = zext i32 %.2 to i64
  %33 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %.not4 = icmp eq i8 %34, 1
  br i1 %.not4, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = add i32 %.2, 1
  br label %29, !llvm.loop !7

39:                                               ; preds = %29
  %40 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  %41 = getelementptr inbounds [131072 x i8], [131072 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(131072) %40, i8* noundef nonnull align 16 dereferenceable(131072) %41, i64 131072, i1 false)
  br label %42

42:                                               ; preds = %51, %39
  %.3 = phi i32 [ 0, %39 ], [ %52, %51 ]
  %43 = icmp ult i32 %.3, 131072
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = zext i32 %.3 to i64
  %46 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = trunc i32 %.3 to i8
  %.not3 = icmp eq i8 %47, %48
  br i1 %.not3, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #5
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = add i32 %.3, 1
  br label %42, !llvm.loop !8

53:                                               ; preds = %42
  %54 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(131072) %54, i8 0, i64 131072, i1 false)
  br label %55

55:                                               ; preds = %63, %53
  %.4 = phi i32 [ 0, %53 ], [ %64, %63 ]
  %56 = icmp ult i32 %.4, 131072
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = zext i32 %.4 to i64
  %59 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %.not2 = icmp eq i8 %60, 0
  br i1 %.not2, label %62, label %61

61:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  %64 = add i32 %.4, 1
  br label %55, !llvm.loop !9

65:                                               ; preds = %55
  %66 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  %67 = getelementptr inbounds [131072 x i8], [131072 x i8]* %1, i64 0, i64 0
  %68 = call i8* @copy(i8* noundef nonnull %66, i8* noundef nonnull %67, i32 noundef 1024)
  br label %69

69:                                               ; preds = %78, %65
  %.5 = phi i32 [ 0, %65 ], [ %79, %78 ]
  %70 = icmp ult i32 %.5, 1024
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = zext i32 %.5 to i64
  %73 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = trunc i32 %.5 to i8
  %.not1 = icmp eq i8 %74, %75
  br i1 %.not1, label %77, label %76

76:                                               ; preds = %71
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = add i32 %.5, 1
  br label %69, !llvm.loop !10

80:                                               ; preds = %69
  %81 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(131072) %81, i8 0, i64 131072, i1 false)
  %82 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 0
  %83 = getelementptr inbounds [131072 x i8], [131072 x i8]* %1, i64 0, i64 0
  %84 = call i8* @copy(i8* noundef nonnull %82, i8* noundef nonnull %83, i32 noundef 131072)
  br label %85

85:                                               ; preds = %94, %80
  %.6 = phi i32 [ 0, %80 ], [ %95, %94 ]
  %86 = icmp ult i32 %.6, 131072
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  %88 = zext i32 %.6 to i64
  %89 = getelementptr inbounds [131072 x i8], [131072 x i8]* %2, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = trunc i32 %.6 to i8
  %.not = icmp eq i8 %90, %91
  br i1 %.not, label %93, label %92

92:                                               ; preds = %87
  call void @abort() #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = add i32 %.6, 1
  br label %85, !llvm.loop !11

96:                                               ; preds = %85
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %96, %92, %76, %61, %49, %35, %23
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
