; ModuleID = './20071202-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071202-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, [6 x i32], %struct.T }
%struct.T = type { i32, [8 x i32] }

@constinit = private global [6 x i32] zeroinitializer, align 4
@__const.main.s = private unnamed_addr constant %struct.S { i32 6, i32 12, [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], %struct.T { i32 7, [8 x i32] [i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15] } }, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @foo(%struct.S* nocapture noundef %0) #0 {
  %2 = alloca %struct.S, align 4
  %3 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %3, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  %10 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %11 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %11, i8* noundef nonnull align 4 dereferenceable(24) bitcast ([6 x i32]* @constinit to i8*), i64 24, i1 false)
  %12 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  %13 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3
  %14 = bitcast %struct.T* %12 to i8*
  %15 = bitcast %struct.T* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(36) %14, i8* noundef nonnull align 4 dereferenceable(36) %15, i64 36, i1 false)
  %16 = bitcast %struct.S* %0 to i8*
  %17 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(68) %16, i8* noundef nonnull align 4 dereferenceable(68) %17, i64 68, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.S, align 4
  %2 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(68) %2, i8* noundef nonnull align 4 dereferenceable(68) bitcast (%struct.S* @__const.main.s to i8*), i64 68, i1 false)
  call void @foo(%struct.S* noundef nonnull %1)
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 12
  br i1 %.not, label %5, label %26

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 6
  br i1 %.not1, label %8, label %26

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 0
  %10 = load i32, i32* %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 2
  %16 = load i32, i32* %15, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 3
  %19 = load i32, i32* %18, align 4
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 4
  %22 = load i32, i32* %21, align 4
  %.not6 = icmp eq i32 %22, 0
  br i1 %.not6, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2, i64 5
  %25 = load i32, i32* %24, align 4
  %.not7 = icmp eq i32 %25, 0
  br i1 %.not7, label %27, label %26

26:                                               ; preds = %23, %20, %17, %14, %11, %8, %5, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 0
  %29 = load i32, i32* %28, align 4
  %.not8 = icmp eq i32 %29, 7
  br i1 %.not8, label %30, label %54

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 0
  %32 = load i32, i32* %31, align 4
  %.not9 = icmp eq i32 %32, 8
  br i1 %.not9, label %33, label %54

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 1
  %35 = load i32, i32* %34, align 4
  %.not10 = icmp eq i32 %35, 9
  br i1 %.not10, label %36, label %54

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 2
  %38 = load i32, i32* %37, align 4
  %.not11 = icmp eq i32 %38, 10
  br i1 %.not11, label %39, label %54

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 3
  %41 = load i32, i32* %40, align 4
  %.not12 = icmp eq i32 %41, 11
  br i1 %.not12, label %42, label %54

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 4
  %44 = load i32, i32* %43, align 4
  %.not13 = icmp eq i32 %44, 12
  br i1 %.not13, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 5
  %47 = load i32, i32* %46, align 4
  %.not14 = icmp eq i32 %47, 13
  br i1 %.not14, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 6
  %50 = load i32, i32* %49, align 4
  %.not15 = icmp eq i32 %50, 14
  br i1 %.not15, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i32 1, i64 7
  %53 = load i32, i32* %52, align 4
  %.not16 = icmp eq i32 %53, 15
  br i1 %.not16, label %55, label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %51
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %54, %26
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
