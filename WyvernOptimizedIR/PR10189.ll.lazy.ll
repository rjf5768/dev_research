; ModuleID = './PR10189.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR10189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32 }
%struct.S2 = type { %struct.S0 }
%struct.S0 = type { i32 }
%struct.S3 = type { i32 }

@g_37 = dso_local global i32 0, align 4
@g_177 = dso_local global %struct.S1 zeroinitializer, align 4
@g_6 = dso_local global %struct.S2 zeroinitializer, align 4
@g_169 = dso_local global %struct.S3 zeroinitializer, align 4
@g_8 = dso_local global i16 0, align 2
@g_20 = dso_local global [1 x [1 x [0 x i32]]] zeroinitializer, align 4
@g_1639 = dso_local global [1 x %struct.S2] zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i16 @safe_53(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = sub i16 %0, %1
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @safe_60(i16 noundef signext %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %7

4:                                                ; preds = %2
  %5 = sext i16 %0 to i32
  %6 = ashr i32 %5, %1
  %phi.cast = trunc i32 %6 to i16
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i16 [ 0, %3 ], [ %phi.cast, %4 ]
  ret i16 %8
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @func_1(i32 noundef %0) #1 {
  br i1 true, label %2, label %4

2:                                                ; preds = %1
  %3 = call signext i8 @func_13(i32 noundef 0, i16 noundef zeroext 0, i16 noundef signext 0)
  br label %4

4:                                                ; preds = %2, %1
  %5 = load i32, i32* getelementptr inbounds ([1 x %struct.S2], [1 x %struct.S2]* @g_1639, i64 0, i64 0, i32 0, i32 0), align 4
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local signext i8 @func_13(i32 noundef %0, i16 noundef zeroext %1, i16 noundef signext %2) #2 {
  br label %4

4:                                                ; preds = %29, %3
  %.0 = phi i32 [ 2, %3 ], [ %30, %29 ]
  %5 = icmp sgt i32 %.0, -1
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %10, %6
  %8 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i64 0, i32 0), align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %13, label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i64 0, i32 0), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i64 0, i32 0), align 4
  br label %7, !llvm.loop !4

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %26, %13
  %.01 = phi i16 [ 0, %13 ], [ %27, %26 ]
  %15 = icmp ult i16 %.01, 3
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = load volatile i32, i32* getelementptr inbounds (%struct.S2, %struct.S2* @g_6, i64 0, i32 0, i32 0), align 4
  %18 = trunc i32 %17 to i16
  %19 = load i32, i32* getelementptr inbounds (%struct.S3, %struct.S3* @g_169, i64 0, i32 0), align 4
  %20 = trunc i32 %19 to i8
  %21 = call signext i8 @func_21(i8 noundef zeroext %20, i32 noundef 0, i32* noundef null)
  %22 = sext i8 %21 to i32
  %23 = call signext i16 @safe_60(i16 noundef signext %18, i32 noundef %22)
  %24 = icmp sgt i16 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @g_37, align 4
  br label %26

26:                                               ; preds = %16
  %27 = add i16 %.01, 1
  br label %14, !llvm.loop !6

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.0, -1
  br label %4, !llvm.loop !7

31:                                               ; preds = %4
  ret i8 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i8 @func_21(i8 noundef zeroext %0, i32 noundef %1, i32* nocapture noundef readnone %2) #4 {
  %4 = load i32, i32* getelementptr inbounds ([1 x [1 x [0 x i32]]], [1 x [1 x [0 x i32]]]* @g_20, i64 0, i64 0, i64 0, i64 1), align 4
  %5 = trunc i32 %4 to i16
  %6 = load i16, i16* @g_8, align 2
  %7 = call zeroext i16 @safe_53(i16 noundef signext %5, i16 noundef signext %6)
  %8 = zext i16 %7 to i32
  store i32 %8, i32* getelementptr inbounds ([1 x [1 x [0 x i32]]], [1 x [1 x [0 x i32]]]* @g_20, i64 0, i64 0, i64 0, i64 1), align 4
  %9 = trunc i16 %7 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #5 {
  %1 = call i32 @func_1(i32 0)
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
