; ModuleID = './20011008-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011008-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__db_lsn = type { i32, i32 }
%struct.__db_txnlist = type { i32, %struct.anon, %union.anon }
%struct.anon = type { %struct.__db_txnlist*, %struct.__db_txnlist** }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i8*, i32, i8*, [20 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @log_compare(%struct.__db_lsn* nocapture noundef readnone %0, %struct.__db_lsn* nocapture noundef readnone %1) #0 {
  ret i32 1
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @__db_txnlist_lsnadd(i32 noundef %0, %struct.__db_txnlist* nocapture noundef readonly %1, %struct.__db_lsn* nocapture noundef writeonly %2, i32 noundef %3) #1 {
  %5 = alloca i64, align 8
  br label %6

6:                                                ; preds = %64, %4
  %.02 = phi i32 [ 0, %4 ], [ %65, %64 ]
  %.0 = phi i32 [ %0, %4 ], [ %16, %64 ]
  %7 = and i32 %3, 1
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %6
  br label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ]
  %14 = icmp slt i32 %.02, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = add nsw i32 %.0, 1
  br label %17

17:                                               ; preds = %61, %15
  %.01 = phi i32 [ 0, %15 ], [ %62, %61 ]
  %18 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  %21 = icmp slt i32 %.01, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %24 = bitcast i8** %23 to %struct.__db_lsn**
  %25 = load %struct.__db_lsn*, %struct.__db_lsn** %24, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %25, i64 %26
  %28 = add nuw nsw i32 %.01, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %25, i64 %29
  %31 = call i32 @log_compare(%struct.__db_lsn* noundef %27, %struct.__db_lsn* noundef nonnull %30)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %35 = bitcast i8** %34 to %struct.__db_lsn**
  %36 = load %struct.__db_lsn*, %struct.__db_lsn** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %36, i64 %37
  %39 = bitcast %struct.__db_lsn* %38 to i64*
  %40 = load i64, i64* %39, align 4
  store i64 %40, i64* %5, align 8
  %41 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %42 = bitcast i8** %41 to %struct.__db_lsn**
  %43 = load %struct.__db_lsn*, %struct.__db_lsn** %42, align 8
  %44 = zext i32 %.01 to i64
  %45 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %43, i64 %44
  %46 = add nuw nsw i32 %.01, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %43, i64 %47
  %49 = bitcast %struct.__db_lsn* %48 to i64*
  %50 = bitcast %struct.__db_lsn* %45 to i64*
  %51 = load i64, i64* %49, align 4
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %53 = bitcast i8** %52 to %struct.__db_lsn**
  %54 = load %struct.__db_lsn*, %struct.__db_lsn** %53, align 8
  %55 = add nuw nsw i32 %.01, 1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %54, i64 %56
  %58 = bitcast %struct.__db_lsn* %57 to i64*
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %58, align 4
  br label %60

60:                                               ; preds = %33, %22
  br label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !4

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !6

66:                                               ; preds = %12
  %67 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %68 = bitcast i8** %67 to i64**
  %69 = load i64*, i64** %68, align 8
  %70 = bitcast %struct.__db_lsn* %2 to i64*
  %71 = load i64, i64* %69, align 4
  store i64 %71, i64* %70, align 4
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.__db_txnlist, align 8
  %2 = alloca %struct.__db_lsn, align 4
  %3 = alloca [1235 x %struct.__db_lsn], align 16
  %4 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 0
  store i32 1234, i32* %4, align 8
  %5 = getelementptr inbounds [1235 x %struct.__db_lsn], [1235 x %struct.__db_lsn]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %1, i64 0, i32 2, i32 0, i32 2
  %7 = bitcast i8** %6 to %struct.__db_lsn**
  store %struct.__db_lsn* %5, %struct.__db_lsn** %7, align 8
  %8 = call i32 @__db_txnlist_lsnadd(i32 noundef 0, %struct.__db_txnlist* noundef nonnull %1, %struct.__db_lsn* noundef nonnull %2, i32 noundef 0)
  %.not = icmp eq i32 %8, 1
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %0
  %11 = call i32 @__db_txnlist_lsnadd(i32 noundef 0, %struct.__db_txnlist* noundef nonnull %1, %struct.__db_lsn* noundef nonnull %2, i32 noundef 1)
  %.not1 = icmp eq i32 %11, 1234
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
