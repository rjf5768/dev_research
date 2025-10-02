; ModuleID = './revertBits.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/revertBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0x12345678\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0x0123456789012345\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"0x%x -> 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"0x%llx -> 0x%llx\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ReverseBits32(i32 noundef %0) #0 {
  %2 = call i32 @llvm.bitreverse.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ReverseBits64(i64 noundef %0) #0 {
  %2 = call i64 @llvm.bitreverse.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %4, %0
  %.04 = phi i32 [ 0, %0 ], [ %11, %4 ]
  %.02 = phi i64 [ 0, %0 ], [ %7, %4 ]
  %.01 = phi i64 [ 0, %0 ], [ %10, %4 ]
  %2 = icmp ult i32 %.04, 16777216
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = zext i32 %.04 to i64
  %6 = call i64 @ReverseBits64(i64 noundef %5)
  %7 = add i64 %.02, %6
  %8 = call i32 @ReverseBits32(i32 noundef %.04)
  %9 = zext i32 %8 to i64
  %10 = add i64 %.01, %9
  %11 = add nuw nsw i32 %.04, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %16, %12
  %.13 = phi i64 [ %.02, %12 ], [ %19, %16 ]
  %.1 = phi i64 [ %.01, %12 ], [ %22, %16 ]
  %.0 = phi i32 [ 0, %12 ], [ %23, %16 ]
  %14 = icmp ult i32 %.0, 16777216
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = zext i32 %.0 to i64
  %18 = call i64 @llvm.bitreverse.i64(i64 %17)
  %19 = sub i64 %.13, %18
  %20 = call i32 @llvm.bitreverse.i32(i32 %.0)
  %21 = zext i32 %20 to i64
  %22 = sub i64 %.1, %21
  %23 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305419896, i32 noundef 510274632) #5
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 noundef 81985529205302085, i64 noundef -6718103380001897344) #5
  %27 = icmp eq i64 %.1, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = icmp ne i64 %.13, 0
  %phi.cast = zext i1 %29 to i32
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 1, %24 ], [ %phi.cast, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bitreverse.i32(i32) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bitreverse.i64(i64) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
