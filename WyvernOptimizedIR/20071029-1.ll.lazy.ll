; ModuleID = './20071029-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071029-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.T = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@test.i = internal global i32 11, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%union.T* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = load i32, i32* @test.i, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @test.i, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %1
  %8 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %37

10:                                               ; preds = %7
  %11 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %13, label %37

13:                                               ; preds = %10
  %14 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %37

16:                                               ; preds = %13
  %17 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %.not5 = icmp eq i32 %21, 0
  br i1 %.not5, label %22, label %37

22:                                               ; preds = %19
  %23 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %.not6 = icmp eq i32 %24, 0
  br i1 %.not6, label %25, label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %.not7 = icmp eq i32 %27, 0
  br i1 %.not7, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %.not8 = icmp eq i64 %30, 0
  br i1 %.not8, label %31, label %37

31:                                               ; preds = %28
  %32 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %.not9 = icmp eq i64 %33, 0
  br i1 %.not9, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %union.T, %union.T* %0, i64 0, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %.not10 = icmp eq i32 %36, 0
  br i1 %.not10, label %38, label %37

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %34
  %39 = load i32, i32* @test.i, align 4
  %40 = icmp eq i32 %39, 20
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %38
  ret void

UnifiedUnreachableBlock:                          ; preds = %41, %37, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @foo(i32 noundef %0) #2 {
  %2 = alloca %union.T, align 8
  %3 = alloca %union.T, align 8
  br label %4

4:                                                ; preds = %4, %1
  %.0 = phi i32 [ %0, %1 ], [ %7, %4 ]
  %5 = bitcast %union.T* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %union.T, %union.T* %3, i64 0, i32 0, i32 0
  %7 = add nsw i32 %.0, 1
  store i32 %7, i32* %6, align 8
  %8 = bitcast %union.T* %2 to i8*
  %9 = bitcast %union.T* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %8, i8* noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @test(%union.T* noundef nonnull %2)
  br label %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %union.T, align 8
  br label %2

2:                                                ; preds = %7, %0
  %.01 = phi %union.T* [ null, %0 ], [ %1, %7 ]
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = bitcast %union.T* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %4 = getelementptr inbounds %union.T, %union.T* %1, i64 0, i32 0, i32 8
  %5 = zext i32 %.0 to i64
  store i64 %5, i64* %4, align 8
  %6 = icmp ult i32 %.0, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %.0, 1
  br label %2

9:                                                ; preds = %2
  %.not = icmp eq %union.T* %1, %.01
  br i1 %.not, label %10, label %13

10:                                               ; preds = %9
  %11 = getelementptr inbounds %union.T, %union.T* %1, i64 0, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %.not2 = icmp eq i64 %12, 2
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %10, %9
  call void @abort() #5
  unreachable

14:                                               ; preds = %10
  call void @foo(i32 noundef 10)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
