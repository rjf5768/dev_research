; ModuleID = './pr52760.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i16, i16, i16, i16 }

@__const.main.t = private unnamed_addr constant %struct.T { i16 1, i16 515, i16 1029, i16 1543 }, align 2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i32 noundef %0, %struct.T* nocapture noundef %1) #0 {
  br label %3

3:                                                ; preds = %42, %2
  %.0 = phi i32 [ 0, %2 ], [ %43, %42 ]
  %4 = icmp slt i32 %.0, %0
  br i1 %4, label %5, label %44

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %6, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %9, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = call i16 @llvm.fshl.i16(i16 %11, i16 %8, i16 8)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %13, i32 0
  store i16 %12, i16* %14, align 2
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %15, i32 1
  %17 = load i16, i16* %16, align 2
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %18, i32 1
  %20 = load i16, i16* %19, align 2
  %21 = call i16 @llvm.fshl.i16(i16 %20, i16 %17, i16 8)
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %22, i32 1
  store i16 %21, i16* %23, align 2
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %24, i32 2
  %26 = load i16, i16* %25, align 2
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %27, i32 2
  %29 = load i16, i16* %28, align 2
  %30 = call i16 @llvm.fshl.i16(i16 %29, i16 %26, i16 8)
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %31, i32 2
  store i16 %30, i16* %32, align 2
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %33, i32 3
  %35 = load i16, i16* %34, align 2
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %36, i32 3
  %38 = load i16, i16* %37, align 2
  %39 = call i16 @llvm.fshl.i16(i16 %38, i16 %35, i16 8)
  %40 = zext i32 %.0 to i64
  %41 = getelementptr inbounds %struct.T, %struct.T* %1, i64 %40, i32 3
  store i16 %39, i16* %41, align 2
  br label %42

42:                                               ; preds = %5
  %43 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

44:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to %struct.T*
  store i64 434320308619640833, i64* %1, align 8
  call void @foo(i32 noundef 1, %struct.T* noundef nonnull %tmpcast)
  %2 = bitcast i64* %1 to i16*
  %3 = load i16, i16* %2, align 8
  %.not = icmp eq i16 %3, 256
  br i1 %.not, label %4, label %13

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.T, %struct.T* %tmpcast, i64 0, i32 1
  %6 = load i16, i16* %5, align 2
  %.not1 = icmp eq i16 %6, 770
  br i1 %.not1, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.T, %struct.T* %tmpcast, i64 0, i32 2
  %9 = load i16, i16* %8, align 4
  %.not2 = icmp eq i16 %9, 1284
  br i1 %.not2, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.T, %struct.T* %tmpcast, i64 0, i32 3
  %12 = load i16, i16* %11, align 2
  %.not3 = icmp eq i16 %12, 1798
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %10, %7, %4, %0
  call void @abort() #5
  unreachable

14:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
