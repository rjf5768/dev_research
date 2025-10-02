; ModuleID = './pabs.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %9) #3
  %11 = icmp eq %struct.precisionType* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %32

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 3
  store i8 0, i8* %14, align 2
  %15 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 4, i64 0
  %16 = bitcast i16* %15 to i8*
  %17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %18 = bitcast i16* %17 to i8*
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %16, i8* nonnull align 2 %18, i64 %22, i1 false)
  %.not1 = icmp eq %struct.precisionType* %0, null
  br i1 %.not1, label %30, label %23

23:                                               ; preds = %13
  %24 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = add i16 %25, -1
  store i16 %26, i16* %24, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #3
  br label %30

30:                                               ; preds = %28, %23, %13
  %31 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %10) #3
  br label %32

32:                                               ; preds = %30, %12
  %.0 = phi %struct.precisionType* [ %10, %12 ], [ %31, %30 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @palloc(...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
