; ModuleID = './lowercase.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/lowercase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticData = internal global [16 x i16] [i16 72, i16 69, i16 76, i16 76, i16 79, i16 32, i16 87, i16 79, i16 82, i16 76, i16 68, i16 33, i16 72, i16 69, i16 76, i16 76], align 16
@.str = private unnamed_addr constant [29 x i8] c"iterations (%ld characters)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i64 [ 0, %2 ], [ %7, %6 ]
  %4 = icmp ult i64 %.0, 32
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  call void @doTest(i64 noundef %.0)
  br label %6

6:                                                ; preds = %5
  %7 = add i64 %.0, 1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @doTest(i64 noundef %0) #0 {
  %2 = add i64 %0, 15
  %3 = and i64 %2, -16
  %4 = shl i64 %3, 1
  %5 = call i8* @malloc(i64 noundef %4) #6
  %6 = bitcast i8* %5 to i16*
  br label %7

7:                                                ; preds = %12, %1
  %.0 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %8 = icmp ult i64 %.0, %3
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds i16, i16* %6, i64 %.0
  %11 = bitcast i16* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(32) %11, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([16 x i16]* @staticData to i8*), i64 32, i1 false)
  br label %12

12:                                               ; preds = %9
  %13 = add i64 %.0, 16
  br label %7, !llvm.loop !6

14:                                               ; preds = %7
  %15 = shl i64 %3, 1
  %16 = call i8* @malloc(i64 noundef %15) #6
  %17 = bitcast i8* %16 to i16*
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 noundef %0, i64 noundef %0) #6
  %19 = shl i64 %3, 1
  call void @llvm.memset.p0i8.i64(i8* align 2 %16, i8 0, i64 %19, i1 false)
  br label %20

20:                                               ; preds = %24, %14
  %.1 = phi i64 [ 0, %14 ], [ %25, %24 ]
  %21 = icmp ult i64 %.1, 10000000
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = call i64 @lower_StringImpl(i16* noundef %6, i64 noundef %0, i16* noundef %17)
  br label %24

24:                                               ; preds = %22
  %25 = add i64 %.1, 1
  br label %20, !llvm.loop !7

26:                                               ; preds = %20
  ret void
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i64 @lower_StringImpl(i16* noalias nocapture noundef readonly %0, i64 noundef %1, i16* noalias nocapture noundef writeonly %2) #4 {
  br label %4

4:                                                ; preds = %11, %3
  %.02 = phi i32 [ 0, %3 ], [ %13, %11 ]
  %.01 = phi i64 [ 0, %3 ], [ %14, %11 ]
  %5 = icmp ult i64 %.01, %1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds i16, i16* %0, i64 %.01
  %8 = load i16, i16* %7, align 2
  %9 = call zeroext i16 @toASCIILower(i16 noundef zeroext %8)
  %10 = getelementptr inbounds i16, i16* %2, i64 %.01
  store i16 %9, i16* %10, align 2
  br label %11

11:                                               ; preds = %6
  %12 = zext i16 %8 to i32
  %13 = or i32 %.02, %12
  %14 = add i64 %.01, 1
  br label %4, !llvm.loop !8

15:                                               ; preds = %4
  %.not = icmp ult i32 %.02, 128
  br i1 %.not, label %16, label %17

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16
  %.0 = phi i64 [ 0, %17 ], [ 1, %16 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i16 @toASCIILower(i16 noundef zeroext %0) #5 {
  %2 = icmp ugt i16 %0, 64
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp ult i16 %0, 91
  %phi.bo = select i1 %4, i16 32, i16 0
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i16 [ 0, %1 ], [ %phi.bo, %3 ]
  %7 = or i16 %6, %0
  ret i16 %7
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
