; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor_dimension = type { i32, i32, i32 }
%struct.gfc_array_i4 = type { i32*, i32, [7 x %struct.descriptor_dimension] }

@constinit = private global [7 x %struct.descriptor_dimension] [%struct.descriptor_dimension { i32 1, i32 1, i32 3 }, %struct.descriptor_dimension { i32 3, i32 1, i32 3 }, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @msum_i4(%struct.gfc_array_i4* noundef %0, %struct.gfc_array_i4* noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.gfc_array_i4*, align 8
  %5 = alloca %struct.gfc_array_i4*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfc_array_i4* %0, %struct.gfc_array_i4** %4, align 8
  store %struct.gfc_array_i4* %1, %struct.gfc_array_i4** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %5, align 8
  %19 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %18, i32 0, i32 2
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %5, align 8
  %27 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %26, i32 0, i32 2
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %27, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %25, %32
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %61, %3
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %5, align 8
  %40 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %39, i32 0, i32 2
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %40, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %5, align 8
  %48 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %47, i32 0, i32 2
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %48, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %46, %53
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %38
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %34, !llvm.loop !4

64:                                               ; preds = %34
  %65 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %4, align 8
  %66 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  %68 = load %struct.gfc_array_i4*, %struct.gfc_array_i4** %5, align 8
  %69 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %94, %64
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %10, align 8
  br label %72, !llvm.loop !6

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 16
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32* %93, i32** %9, align 8
  br label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %71, label %100, !llvm.loop !7

100:                                              ; preds = %94
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [9 x i32], align 16
  %4 = alloca %struct.gfc_array_i4, align 8
  %5 = alloca %struct.gfc_array_i4, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast %struct.gfc_array_i4* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 96, i1 false)
  %8 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i32 0, i32 0
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i32 0, i32 1
  store i32 265, i32* %10, align 8
  %11 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %4, i32 0, i32 2
  %12 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %12, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.descriptor_dimension, %struct.descriptor_dimension* %12, i32 0, i32 2
  store i32 3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %5, i32 0, i32 0
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %5, i32 0, i32 1
  store i32 266, i32* %18, align 8
  %19 = getelementptr inbounds %struct.gfc_array_i4, %struct.gfc_array_i4* %5, i32 0, i32 2
  %20 = getelementptr inbounds [7 x %struct.descriptor_dimension], [7 x %struct.descriptor_dimension]* %19, i64 0, i64 0
  %21 = bitcast [7 x %struct.descriptor_dimension]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([7 x %struct.descriptor_dimension]* @constinit to i8*), i64 84, i1 false)
  store i32 2, i32* %6, align 4
  call void @msum_i4(%struct.gfc_array_i4* noundef %4, %struct.gfc_array_i4* noundef %5, i32* noundef %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
