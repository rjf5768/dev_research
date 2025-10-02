; ModuleID = './20041126-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041126-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 5
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %22, %12
  %.1 = phi i32 [ %.0, %12 ], [ %23, %22 ]
  %14 = icmp ult i32 %.1, 10
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nuw nsw i32 %.1, 1
  %.not = icmp eq i32 %18, %19
  br i1 %.not, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  ret void

UnifiedUnreachableBlock:                          ; preds = %20, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [10 x i32], align 16
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @__const.main.a to i8*), i64 40, i1 false)
  br label %3

3:                                                ; preds = %9, %0
  %.0 = phi i32 [ -5, %0 ], [ %10, %9 ]
  %4 = icmp slt i32 %.0, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = xor i32 %.0, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

11:                                               ; preds = %3
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  call void @check(i32* noundef nonnull %12)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
