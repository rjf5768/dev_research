; ModuleID = './pneg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef %0) #0 {
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
  br label %41

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %15 = load i8, i8* %14, align 2
  %16 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 3
  store i8 %15, i8* %16, align 2
  %17 = call i32 @pcmpz(%struct.precisionType* noundef %0) #3
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 3
  %20 = load i8, i8* %19, align 2
  %.not3 = icmp eq i8 %20, 0
  %21 = zext i1 %.not3 to i8
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 3
  store i8 %21, i8* %22, align 2
  br label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i64 0, i32 4, i64 0
  %25 = bitcast i16* %24 to i8*
  %26 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %27 = bitcast i16* %26 to i8*
  %28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i64
  %31 = shl nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %25, i8* nonnull align 2 %27, i64 %31, i1 false)
  %.not2 = icmp eq %struct.precisionType* %0, null
  br i1 %.not2, label %39, label %32

32:                                               ; preds = %23
  %33 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = add i16 %34, -1
  store i16 %35, i16* %33, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #3
  br label %39

39:                                               ; preds = %37, %32, %23
  %40 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %10) #3
  br label %41

41:                                               ; preds = %39, %12
  %.0 = phi %struct.precisionType* [ %10, %12 ], [ %40, %39 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

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
