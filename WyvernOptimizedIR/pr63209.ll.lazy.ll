; ModuleID = './pr63209.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.top = private unnamed_addr constant [2 x i32] [i32 -8750470, i32 -8750470], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @Predictor(i32 noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i32, i32* %1, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @Select(i32 noundef %4, i32 noundef %0, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @Select(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = lshr i32 %0, 8
  %5 = and i32 %4, 255
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = call i32 @Sub(i32 noundef %5, i32 noundef %7)
  %9 = and i32 %0, 255
  %10 = and i32 %1, 255
  %11 = call i32 @Sub(i32 noundef %9, i32 noundef %10)
  %12 = add nsw i32 %8, %11
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi i32 [ %0, %14 ], [ %1, %15 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @main() #2 {
  %1 = call i32 @Predictor(i32 noundef -8684677, i32* noundef getelementptr inbounds ([2 x i32], [2 x i32]* @__const.main.top, i64 0, i64 0))
  %2 = icmp eq i32 %1, -8684677
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %4 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @Sub(i32 noundef %0, i32 noundef %1) #1 {
  %3 = sub nsw i32 %1, %0
  ret i32 %3
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
