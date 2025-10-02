; ModuleID = './pr39339.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.E = type { i64, i64, %struct.C }
%struct.C = type { i32, %struct.D }
%struct.D = type { i32 }
%struct.B = type { %struct.A*, i8 }
%struct.A = type { %struct.C*, i32 }

@__const.main.e = private unnamed_addr constant { i64, i64, { i32, { i8, i8, i8, i8 } } } { i64 5, i64 0, { i32, { i8, i8, i8, i8 } } { i32 6, { i8, i8, i8, i8 } { i8 -1, i8 -1, i8 127, i8 85 } } }, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo(%struct.E* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, %struct.B* nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.D, align 4
  %6 = getelementptr inbounds %struct.E, %struct.E* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.E, %struct.E* %0, i64 0, i32 2, i32 1, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %11 = and i32 %2, 15
  %12 = and i32 %9, -16
  %13 = or i32 %12, %11
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.B, %struct.B* %3, i64 0, i32 0
  %15 = load %struct.A*, %struct.A** %14, align 8
  %16 = getelementptr inbounds %struct.A, %struct.A* %15, i64 0, i32 0
  %17 = load %struct.C*, %struct.C** %16, align 8
  %18 = getelementptr inbounds %struct.C, %struct.C* %17, i64 %7, i32 0
  store i32 %1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.B, %struct.B* %3, i64 0, i32 0
  %20 = load %struct.A*, %struct.A** %19, align 8
  %21 = getelementptr inbounds %struct.A, %struct.A* %20, i64 0, i32 0
  %22 = load %struct.C*, %struct.C** %21, align 8
  %23 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %24 = getelementptr inbounds %struct.C, %struct.C* %22, i64 %7, i32 1, i32 0
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %27 = or i32 %25, 4194304
  store i32 %27, i32* %26, align 4
  br label %28

28:                                               ; preds = %43, %4
  %.01.in = phi i64 [ %7, %4 ], [ %.01, %43 ]
  %.0 = phi i32 [ 1, %4 ], [ %44, %43 ]
  %.01 = add nsw i64 %.01.in, 1
  %29 = icmp slt i32 %.0, %2
  br i1 %29, label %30, label %45

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.B, %struct.B* %3, i64 0, i32 0
  %32 = load %struct.A*, %struct.A** %31, align 8
  %33 = getelementptr inbounds %struct.A, %struct.A* %32, i64 0, i32 0
  %34 = load %struct.C*, %struct.C** %33, align 8
  %35 = getelementptr inbounds %struct.C, %struct.C* %34, i64 %.01, i32 0
  store i32 %1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.B, %struct.B* %3, i64 0, i32 0
  %37 = load %struct.A*, %struct.A** %36, align 8
  %38 = getelementptr inbounds %struct.A, %struct.A* %37, i64 0, i32 0
  %39 = load %struct.C*, %struct.C** %38, align 8
  %40 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %41 = getelementptr inbounds %struct.C, %struct.C* %39, i64 %.01, i32 1, i32 0
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %41, align 4
  br label %43

43:                                               ; preds = %30
  %44 = add nuw nsw i32 %.0, 1
  br label %28, !llvm.loop !4

45:                                               ; preds = %28
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.E, align 8
  %2 = alloca [4 x %struct.C], align 16
  %3 = alloca %struct.A, align 8
  %4 = alloca %struct.B, align 8
  %5 = alloca %struct.D, align 4
  %6 = bitcast %struct.E* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %6, i8* noundef nonnull align 8 dereferenceable(24) bitcast ({ i64, i64, { i32, { i8, i8, i8, i8 } } }* @__const.main.e to i8*), i64 24, i1 false)
  %7 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0
  %8 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %2, i64 0, i64 0
  store %struct.C* %8, %struct.C** %7, align 8
  %9 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 0
  store %struct.A* %3, %struct.A** %10, align 8
  %11 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, i8* %11, align 8
  %14 = bitcast [4 x %struct.C]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  call void @foo(%struct.E* noundef nonnull %1, i32 noundef 65, i32 noundef 2, %struct.B* noundef nonnull %4)
  %15 = getelementptr inbounds %struct.E, %struct.E* %1, i64 0, i32 2, i32 1, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %18 = and i32 %16, -16
  %19 = or i32 %18, 2
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %2, i64 0, i64 0, i32 1, i32 0
  %rhsv = load i32, i32* %20, align 4
  %.not = icmp eq i32 %19, %rhsv
  br i1 %.not, label %22, label %21

21:                                               ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %0
  %23 = getelementptr inbounds %struct.D, %struct.D* %5, i64 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 4194304
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %2, i64 0, i64 1, i32 1, i32 0
  %rhsv1 = load i32, i32* %26, align 4
  %.not2 = icmp eq i32 %25, %rhsv1
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %22
  call void @abort() #6
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %22
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %27, %21
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
