; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pabs.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %6 = icmp ne %struct.precisionType* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %9 = bitcast %struct.precisionType* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %18 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %21)
  store %struct.precisionType* %22, %struct.precisionType** %4, align 8
  %23 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %24 = icmp eq %struct.precisionType* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %26, %struct.precisionType** %2, align 8
  br label %61

27:                                               ; preds = %14
  %28 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %28, i32 0, i32 3
  store i8 0, i8* %29, align 2
  %30 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %30, i32 0, i32 4
  %32 = getelementptr inbounds [1 x i16], [1 x i16]* %31, i64 0, i64 0
  %33 = bitcast i16* %32 to i8*
  %34 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %35 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 4
  %36 = getelementptr inbounds [1 x i16], [1 x i16]* %35, i64 0, i64 0
  %37 = bitcast i16* %36 to i8*
  %38 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i64
  %42 = mul i64 %41, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %33, i8* align 2 %37, i64 %42, i1 false)
  %43 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %44 = icmp ne %struct.precisionType* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %27
  %46 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %47 = bitcast %struct.precisionType* %46 to i16*
  %48 = load i16, i16* %47, align 2
  %49 = add i16 %48, -1
  store i16 %49, i16* %47, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %54 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %52, %45, %27
  %57 = phi i1 [ false, %45 ], [ false, %27 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %60 = call %struct.precisionType* @presult(%struct.precisionType* noundef %59)
  store %struct.precisionType* %60, %struct.precisionType** %2, align 8
  br label %61

61:                                               ; preds = %56, %25
  %62 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %62
}

declare dso_local %struct.precisionType* @palloc(...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
