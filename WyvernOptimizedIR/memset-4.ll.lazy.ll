; ModuleID = './memset-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @f(i8* nocapture noundef writeonly %0) #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %0, i8 0, i64 15, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [15 x i8], align 1
  br label %2

2:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %3 = icmp ult i32 %.0, 15
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = trunc i32 %.0 to i8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [15 x i8], [15 x i8]* %1, i64 0, i64 %6
  store i8 %5, i8* %7, align 1
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  %11 = getelementptr inbounds [15 x i8], [15 x i8]* %1, i64 0, i64 0
  call void @f(i8* noundef nonnull %11)
  br label %12

12:                                               ; preds = %20, %10
  %.1 = phi i32 [ 0, %10 ], [ %21, %20 ]
  %13 = icmp ult i32 %.1, 15
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds [15 x i8], [15 x i8]* %1, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %.not = icmp eq i8 %17, 0
  br i1 %.not, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #4
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !6

22:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
