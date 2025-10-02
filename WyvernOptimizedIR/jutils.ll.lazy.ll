; ModuleID = './jutils.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_natural_order = dso_local constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @jdiv_round_up(i64 noundef %0, i64 noundef %1) #0 {
  %3 = add nsw i64 %0, %1
  %4 = add nsw i64 %3, -1
  %5 = sdiv i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @jround_up(i64 noundef %0, i64 noundef %1) #0 {
  %3 = add nsw i64 %1, -1
  %4 = add nsw i64 %3, %0
  %5 = srem i64 %4, %1
  %6 = sub nsw i64 %4, %5
  ret i64 %6
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @jcopy_sample_rows(i8** nocapture noundef readonly %0, i32 noundef %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = zext i32 %5 to i64
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8*, i8** %0, i64 %8
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8*, i8** %2, i64 %10
  br label %12

12:                                               ; preds = %17, %6
  %.02 = phi i8** [ %11, %6 ], [ %18, %17 ]
  %.01 = phi i32 [ %4, %6 ], [ %20, %17 ]
  %.0 = phi i8** [ %9, %6 ], [ %19, %17 ]
  %13 = icmp sgt i32 %.01, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = load i8*, i8** %.0, align 8
  %16 = load i8*, i8** %.02, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %15, i64 %7, i1 false)
  br label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8*, i8** %.02, i64 1
  %19 = getelementptr inbounds i8*, i8** %.0, i64 1
  %20 = add nsw i32 %.01, -1
  br label %12, !llvm.loop !4

21:                                               ; preds = %12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @jcopy_block_row([64 x i16]* nocapture noundef readonly %0, [64 x i16]* nocapture noundef writeonly %1, i32 noundef %2) #3 {
  %4 = bitcast [64 x i16]* %1 to i8*
  %5 = bitcast [64 x i16]* %0 to i8*
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @jzero_far(i8* nocapture noundef writeonly %0, i64 noundef %1) #4 {
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
