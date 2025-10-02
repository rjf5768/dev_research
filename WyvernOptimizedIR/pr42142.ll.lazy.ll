; ModuleID = './pr42142.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.sort.end = private unnamed_addr constant [2 x i32] [i32 10, i32 10], align 4

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i32 @sort(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to [2 x i32]*
  store i64 42949672970, i64* %2, align 8
  br label %3

3:                                                ; preds = %17, %1
  %.0 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %4 = icmp ult i32 %.0, 2
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, %0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %14
  store i32 10, i32* %15, align 4
  br label %17

16:                                               ; preds = %5
  br label %19

17:                                               ; preds = %10
  %18 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

.loopexit:                                        ; preds = %3
  br label %19

19:                                               ; preds = %.loopexit, %16
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @sort(i32 noundef 5)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
