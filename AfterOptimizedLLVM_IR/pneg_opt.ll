; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pneg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef %0) #0 {
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
  br label %78

27:                                               ; preds = %14
  %28 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 2
  %31 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %32 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %31, i32 0, i32 3
  store i8 %30, i8* %32, align 2
  %33 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %34 = call i32 @pcmpz(%struct.precisionType* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %38 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %37, i32 0, i32 3
  %39 = load i8, i8* %38, align 2
  %40 = icmp ne i8 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  %44 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %45 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 3
  store i8 %43, i8* %45, align 2
  br label %46

46:                                               ; preds = %36, %27
  %47 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %48 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %47, i32 0, i32 4
  %49 = getelementptr inbounds [1 x i16], [1 x i16]* %48, i64 0, i64 0
  %50 = bitcast i16* %49 to i8*
  %51 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %52 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %51, i32 0, i32 4
  %53 = getelementptr inbounds [1 x i16], [1 x i16]* %52, i64 0, i64 0
  %54 = bitcast i16* %53 to i8*
  %55 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %56 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i64
  %59 = mul i64 %58, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %50, i8* align 2 %54, i64 %59, i1 false)
  %60 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %61 = icmp ne %struct.precisionType* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %64 = bitcast %struct.precisionType* %63 to i16*
  %65 = load i16, i16* %64, align 2
  %66 = add i16 %65, -1
  store i16 %66, i16* %64, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %71 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %70)
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %69, %62, %46
  %74 = phi i1 [ false, %62 ], [ false, %46 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %77 = call %struct.precisionType* @presult(%struct.precisionType* noundef %76)
  store %struct.precisionType* %77, %struct.precisionType** %2, align 8
  br label %78

78:                                               ; preds = %73, %25
  %79 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %79
}

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

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
