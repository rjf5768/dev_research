; ModuleID = './pr56866.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56866.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [256 x i64], align 16
  %2 = alloca [256 x i64], align 16
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca [256 x i16], align 16
  %6 = alloca [256 x i16], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = bitcast [256 x i64]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %9, i8 0, i64 2048, i1 false)
  %10 = bitcast [256 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %10, i8 0, i64 1024, i1 false)
  %11 = bitcast [256 x i16]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(512) %11, i8 0, i64 512, i1 false)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %12, i8 0, i64 256, i1 false)
  %13 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  store i64 81985529216486895, i64* %13, align 16
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  store i32 19088743, i32* %14, align 16
  %15 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 0
  store i16 17767, i16* %15, align 16
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8 115, i8* %16, align 16
  %17 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %17, i32* nonnull %18, i16* nonnull %19, i8* nonnull %20) #4, !srcloc !4
  br label %21

21:                                               ; preds = %33, %0
  %.0 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %22 = icmp ult i32 %.0, 256
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %26, i64 56)
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %31
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %23
  %34 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !5

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %48, %35
  %.1 = phi i32 [ 0, %35 ], [ %49, %48 ]
  %37 = icmp ult i32 %.1, 256
  br i1 %37, label %38, label %50

38:                                               ; preds = %36
  %39 = zext i32 %.1 to i64
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %.1 to i64
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @llvm.fshl.i32(i32 %44, i32 %41, i32 24)
  %46 = zext i32 %.1 to i64
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %46
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = add nuw nsw i32 %.1, 1
  br label %36, !llvm.loop !7

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %63, %50
  %.2 = phi i32 [ 0, %50 ], [ %64, %63 ]
  %52 = icmp ult i32 %.2, 256
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = zext i32 %.2 to i64
  %58 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = call i16 @llvm.fshl.i16(i16 %59, i16 %56, i16 7)
  %61 = zext i32 %.2 to i64
  %62 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 %61
  store i16 %60, i16* %62, align 2
  br label %63

63:                                               ; preds = %53
  %64 = add nuw nsw i32 %.2, 1
  br label %51, !llvm.loop !8

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %78, %65
  %.3 = phi i32 [ 0, %65 ], [ %79, %78 ]
  %67 = icmp ult i32 %.3, 256
  br i1 %67, label %68, label %80

68:                                               ; preds = %66
  %69 = zext i32 %.3 to i64
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i32 %.3 to i64
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i8 @llvm.fshl.i8(i8 %74, i8 %71, i8 3)
  %76 = zext i32 %.3 to i64
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %76
  store i8 %75, i8* %77, align 1
  br label %78

78:                                               ; preds = %68
  %79 = add nuw nsw i32 %.3, 1
  br label %66, !llvm.loop !9

80:                                               ; preds = %66
  %81 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %81, i32* nonnull %82, i16* nonnull %83, i8* nonnull %84) #4, !srcloc !10
  %85 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %.not = icmp eq i64 %86, -1224658842671273011
  br i1 %.not, label %87, label %90

87:                                               ; preds = %80
  %88 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 1
  %89 = load i64, i64* %88, align 8
  %.not1 = icmp eq i64 %89, 0
  br i1 %.not1, label %91, label %90

90:                                               ; preds = %87, %80
  call void @abort() #5
  br label %UnifiedUnreachableBlock

91:                                               ; preds = %87
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %.not2 = icmp eq i32 %93, 1728127813
  br i1 %.not2, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %.not3 = icmp eq i32 %96, 0
  br i1 %.not3, label %98, label %97

97:                                               ; preds = %94, %91
  call void @abort() #5
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %94
  %99 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %100 = load i16, i16* %99, align 16
  %.not4 = icmp eq i16 %100, -19550
  br i1 %.not4, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 1
  %103 = load i16, i16* %102, align 2
  %.not5 = icmp eq i16 %103, 0
  br i1 %.not5, label %105, label %104

104:                                              ; preds = %101, %98
  call void @abort() #5
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %101
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %107 = load i8, i8* %106, align 16
  %.not6 = icmp eq i8 %107, -101
  br i1 %.not6, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 1
  %110 = load i8, i8* %109, align 1
  %.not7 = icmp eq i8 %110, 0
  br i1 %.not7, label %112, label %111

111:                                              ; preds = %108, %105
  call void @abort() #5
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %108
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %111, %104, %97, %90
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 551}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{i64 1040}
