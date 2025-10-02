; ModuleID = './parallel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.RankReduceDataSt = type { double, i32 }

@nRanks = internal global i32 1, align 4
@myRank = internal global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"source == dest\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/parallel.c\00", align 1
@__PRETTY_FUNCTION__.sendReceiveParallel = private unnamed_addr constant [60 x i8] c"int sendReceiveParallel(void *, int, int, void *, int, int)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @getNRanks() #0 {
  %1 = load i32, i32* @nRanks, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @getMyRank() #0 {
  %1 = load i32, i32* @myRank, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @printRank() #0 {
  %1 = load i32, i32* @myRank, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timestampBarrier(i8* noundef %0) #1 {
  %2 = alloca i64, align 8
  %3 = call i32 @printRank()
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1
  %6 = call i64 @time(i64* noundef null) #8
  store i64 %6, i64* %2, align 8
  %7 = call i8* @ctime(i64* noundef nonnull %2) #8
  %8 = getelementptr inbounds i8, i8* %7, i64 24
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %7, i8* noundef %0) #8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11) #8
  br label %13

13:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @barrierParallel() #2 {
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @ctime(i64* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @initParallel(i32* nocapture noundef %0, i8*** nocapture noundef %1) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @destroyParallel() #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sendReceiveParallel(i8* nocapture noundef readonly %0, i32 noundef returned %1, i32 noundef %2, i8* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = icmp eq i32 %5, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.sendReceiveParallel, i64 0, i64 0)) #9
  unreachable

10:                                               ; preds = %8
  %11 = sext i32 %1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %11, i1 false)
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @addIntParallel(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @addRealParallel(double* nocapture noundef readonly %0, double* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds double, double* %0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds double, double* %1, i64 %10
  store double %9, double* %11, align 8
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @addDoubleParallel(double* nocapture noundef readonly %0, double* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds double, double* %0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds double, double* %1, i64 %10
  store double %9, double* %11, align 8
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @maxIntParallel(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !8

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @minRankDoubleParallel(%struct.RankReduceDataSt* nocapture noundef readonly %0, %struct.RankReduceDataSt* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %0, i64 %7, i32 0
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %1, i64 %10, i32 0
  store double %9, double* %11, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %0, i64 %12, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %1, i64 %15, i32 1
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !9

19:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @maxRankDoubleParallel(%struct.RankReduceDataSt* nocapture noundef readonly %0, %struct.RankReduceDataSt* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %0, i64 %7, i32 0
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %1, i64 %10, i32 0
  store double %9, double* %11, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %0, i64 %12, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %1, i64 %15, i32 1
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @bcastParallel(i8* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @builtWithMpi() #2 {
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
