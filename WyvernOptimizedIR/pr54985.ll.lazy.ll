; ModuleID = './pr54985.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54985.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st = type { i32 }

@__const.main._1 = private unnamed_addr constant [2 x %struct.st] [%struct.st { i32 2 }, %struct.st { i32 1 }], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @foo(%struct.st* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.st, %struct.st* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %2
  %.04 = phi i32 [ %1, %2 ], [ %6, %14 ]
  %.03 = phi i32 [ 1, %2 ], [ %.1, %14 ]
  %.02 = phi %struct.st* [ %0, %2 ], [ %15, %14 ]
  %.01 = phi i32 [ %4, %2 ], [ %9, %14 ]
  %6 = add nsw i32 %.04, -1
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.st, %struct.st* %.02, i64 0, i32 0
  %9 = load i32, i32* %8, align 4
  %.not5 = icmp eq i32 %.03, 0
  br i1 %.not5, label %11, label %10

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  %.not6 = icmp slt i32 %9, %.01
  br i1 %.not6, label %13, label %12

12:                                               ; preds = %11
  br label %17

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %10
  %.1 = phi i32 [ 0, %10 ], [ %.03, %13 ]
  %15 = getelementptr inbounds %struct.st, %struct.st* %.02, i64 1
  br label %5, !llvm.loop !4

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %12
  %.0 = phi i32 [ 1, %12 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(%struct.st* noundef getelementptr inbounds ([2 x %struct.st], [2 x %struct.st]* @__const.main._1, i64 0, i64 0), i32 noundef 2)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
