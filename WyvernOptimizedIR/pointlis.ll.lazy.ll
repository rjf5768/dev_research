; ModuleID = './pointlis.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/pointlis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Can't create point\0A\00", align 1
@CHno = external dso_local global i32, align 4
@str = private unnamed_addr constant [19 x i8] c"Can't create point\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.CHpoints* @create_point(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #8
  %4 = bitcast i8* %3 to %struct.CHpoints*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i64 0, i32 4
  store %struct.CHpoints* null, %struct.CHpoints** %7, align 8
  %8 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i64 0, i32 3
  store %struct.CHpoints* null, %struct.CHpoints** %8, align 8
  %9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i64 0, i32 1
  %10 = bitcast %struct.point* %9 to i64*
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %10, align 4
  %12 = load i32, i32* @CHno, align 4
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i64 0, i32 0
  store i32 %12, i32* %13, align 8
  ret %struct.CHpoints* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_list_insert(%struct.CHpoints** nocapture noundef %0, i64 %1) #0 {
  %3 = load i32, i32* @CHno, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @CHno, align 4
  %5 = call %struct.CHpoints* @create_point(i64 %1)
  %6 = load %struct.CHpoints*, %struct.CHpoints** %0, align 8
  %7 = icmp eq %struct.CHpoints* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i64 0, i32 4
  store %struct.CHpoints* %5, %struct.CHpoints** %9, align 8
  %10 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i64 0, i32 3
  store %struct.CHpoints* %5, %struct.CHpoints** %10, align 8
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.CHpoints*, %struct.CHpoints** %0, align 8
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i64 0, i32 3
  store %struct.CHpoints* %12, %struct.CHpoints** %13, align 8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i64 0, i32 4
  %15 = load %struct.CHpoints*, %struct.CHpoints** %14, align 8
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i64 0, i32 3
  store %struct.CHpoints* %5, %struct.CHpoints** %16, align 8
  %17 = load %struct.CHpoints*, %struct.CHpoints** %0, align 8
  %18 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %17, i64 0, i32 4
  %19 = load %struct.CHpoints*, %struct.CHpoints** %18, align 8
  %20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i64 0, i32 4
  store %struct.CHpoints* %19, %struct.CHpoints** %20, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %17, i64 0, i32 4
  store %struct.CHpoints* %5, %struct.CHpoints** %21, align 8
  br label %22

22:                                               ; preds = %11, %8
  store %struct.CHpoints* %5, %struct.CHpoints** %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.CHpoints* @before(%struct.CHpoints* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 4
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  ret %struct.CHpoints* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.CHpoints* @next(%struct.CHpoints* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 3
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  ret %struct.CHpoints* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @angle(%struct.CHpoints* nocapture noundef readonly %0, %struct.CHpoints* nocapture noundef readonly %1, %struct.CHpoints* nocapture noundef readonly %2) #0 {
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca i64, align 8
  %tmpcast2 = bitcast i64* %5 to %struct.point*
  %6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %8 = bitcast %struct.point* %6 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = bitcast %struct.point* %7 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i64 @vector(i64 %9, i64 %11) #8
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %2, i64 0, i32 1
  %15 = bitcast %struct.point* %13 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = bitcast %struct.point* %14 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i64 @vector(i64 %16, i64 %18) #8
  store i64 %19, i64* %5, align 8
  %20 = bitcast i64* %4 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = bitcast i64* %5 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  %30 = add nsw i32 %24, %29
  %31 = sitofp i32 %30 to double
  %32 = bitcast i64* %4 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, %33
  %35 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, %36
  %38 = add nuw nsw i32 %34, %37
  %39 = sitofp i32 %38 to double
  %40 = bitcast i64* %5 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, %41
  %43 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, %44
  %46 = add nuw nsw i32 %42, %45
  %47 = sitofp i32 %46 to double
  %48 = fmul double %31, %31
  %49 = fmul double %39, %47
  %50 = fdiv double %48, %49
  %51 = icmp slt i32 %30, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = fneg double %50
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %52
  %.0 = phi double [ %53, %52 ], [ %50, %54 ]
  ret double %.0
}

declare dso_local i64 @vector(i64, i64) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local void @number_points(%struct.CHpoints* nocapture noundef %0) #6 {
  br label %2

2:                                                ; preds = %3, %1
  %.pn = phi %struct.CHpoints* [ %0, %1 ], [ %.0, %3 ]
  %.0.in = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.pn, i64 0, i32 3
  %.0 = load %struct.CHpoints*, %struct.CHpoints** %.0.in, align 8
  %.not = icmp eq %struct.CHpoints* %.0, %0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %2, !llvm.loop !4

4:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @remove_points(%struct.CHpoints* noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to %struct.point*
  %3 = alloca i64, align 8
  %tmpcast2 = bitcast i64* %3 to %struct.point*
  %4 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %4 to %struct.point*
  %5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 3
  %6 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  br label %7

7:                                                ; preds = %140, %1
  %.0 = phi %struct.CHpoints* [ %6, %1 ], [ %.1, %140 ]
  %.not = icmp eq %struct.CHpoints* %.0, %0
  br i1 %.not, label %12, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %10 = load %struct.CHpoints*, %struct.CHpoints** %9, align 8
  %11 = icmp ne %struct.CHpoints* %10, %.0
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i1 [ false, %7 ], [ %11, %8 ]
  br i1 %13, label %14, label %141

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %16 = load %struct.CHpoints*, %struct.CHpoints** %15, align 8
  %17 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %16, i64 0, i32 1
  %18 = bitcast %struct.point* %17 to i64*
  %19 = load i64, i64* %18, align 4
  store i64 %19, i64* %2, align 8
  %20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 1
  %21 = bitcast %struct.point* %20 to i64*
  %22 = load i64, i64* %21, align 4
  store i64 %22, i64* %4, align 8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %24 = load %struct.CHpoints*, %struct.CHpoints** %23, align 8
  %25 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %24, i64 0, i32 1
  %26 = bitcast %struct.point* %25 to i64*
  %27 = load i64, i64* %26, align 4
  store i64 %27, i64* %3, align 8
  %28 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  %33 = bitcast i64* %4 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i64* %2 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %34, %36
  %38 = mul nsw i32 %32, %37
  %39 = bitcast i64* %3 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = bitcast i64* %4 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %47 = load i32, i32* %46, align 4
  %.neg4 = sub i32 %47, %45
  %.neg5 = mul i32 %.neg4, %43
  %48 = icmp eq i32 %38, %.neg5
  br i1 %48, label %49, label %137

49:                                               ; preds = %14
  %50 = bitcast i64* %2 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = bitcast i64* %4 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = bitcast i64* %4 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = bitcast i64* %3 to i32*
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %121, label %61

61:                                               ; preds = %55, %49
  %62 = bitcast i64* %2 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = bitcast i64* %4 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = bitcast i64* %4 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = bitcast i64* %3 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %121, label %73

73:                                               ; preds = %67, %61
  %74 = bitcast i64* %2 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = bitcast i64* %4 to i32*
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = bitcast i64* %2 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = bitcast i64* %3 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %121, label %97

97:                                               ; preds = %91, %85, %79, %73
  %98 = bitcast i64* %2 to i32*
  %99 = load i32, i32* %98, align 8
  %100 = bitcast i64* %4 to i32*
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %97
  %104 = bitcast i64* %2 to i32*
  %105 = load i32, i32* %104, align 8
  %106 = bitcast i64* %3 to i32*
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %115, %91, %67, %55
  %122 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %123 = load %struct.CHpoints*, %struct.CHpoints** %122, align 8
  %124 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %125 = load %struct.CHpoints*, %struct.CHpoints** %124, align 8
  %126 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %125, i64 0, i32 4
  store %struct.CHpoints* %123, %struct.CHpoints** %126, align 8
  %127 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %128 = load %struct.CHpoints*, %struct.CHpoints** %127, align 8
  %129 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %130 = load %struct.CHpoints*, %struct.CHpoints** %129, align 8
  %131 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %130, i64 0, i32 3
  store %struct.CHpoints* %128, %struct.CHpoints** %131, align 8
  %132 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %133 = load %struct.CHpoints*, %struct.CHpoints** %132, align 8
  %134 = bitcast %struct.CHpoints* %.0 to i8*
  call void @free(i8* noundef %134) #8
  %135 = load i32, i32* @CHno, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* @CHno, align 4
  br label %140

137:                                              ; preds = %115, %109, %103, %97, %14
  %138 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %139 = load %struct.CHpoints*, %struct.CHpoints** %138, align 8
  br label %140

140:                                              ; preds = %137, %121
  %.1 = phi %struct.CHpoints* [ %133, %121 ], [ %139, %137 ]
  br label %7, !llvm.loop !6

141:                                              ; preds = %12
  %142 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %143 = load %struct.CHpoints*, %struct.CHpoints** %142, align 8
  %144 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %143, i64 0, i32 1
  %145 = bitcast %struct.point* %144 to i64*
  %146 = load i64, i64* %145, align 4
  store i64 %146, i64* %2, align 8
  %147 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 1
  %148 = bitcast %struct.point* %147 to i64*
  %149 = load i64, i64* %148, align 4
  store i64 %149, i64* %4, align 8
  %150 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %151 = load %struct.CHpoints*, %struct.CHpoints** %150, align 8
  %152 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %151, i64 0, i32 1
  %153 = bitcast %struct.point* %152 to i64*
  %154 = load i64, i64* %153, align 4
  store i64 %154, i64* %3, align 8
  %155 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %156, %158
  %160 = bitcast i64* %4 to i32*
  %161 = load i32, i32* %160, align 8
  %162 = bitcast i64* %2 to i32*
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %161, %163
  %165 = mul nsw i32 %159, %164
  %166 = bitcast i64* %3 to i32*
  %167 = load i32, i32* %166, align 8
  %168 = bitcast i64* %4 to i32*
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %167, %169
  %171 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %174 = load i32, i32* %173, align 4
  %.neg = sub i32 %174, %172
  %.neg3 = mul i32 %.neg, %170
  %175 = icmp eq i32 %165, %.neg3
  br i1 %175, label %176, label %264

176:                                              ; preds = %141
  %177 = bitcast i64* %2 to i32*
  %178 = load i32, i32* %177, align 8
  %179 = bitcast i64* %4 to i32*
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = bitcast i64* %4 to i32*
  %184 = load i32, i32* %183, align 8
  %185 = bitcast i64* %3 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %248, label %188

188:                                              ; preds = %182, %176
  %189 = bitcast i64* %2 to i32*
  %190 = load i32, i32* %189, align 8
  %191 = bitcast i64* %4 to i32*
  %192 = load i32, i32* %191, align 8
  %193 = icmp sgt i32 %190, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = bitcast i64* %4 to i32*
  %196 = load i32, i32* %195, align 8
  %197 = bitcast i64* %3 to i32*
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %248, label %200

200:                                              ; preds = %194, %188
  %201 = bitcast i64* %2 to i32*
  %202 = load i32, i32* %201, align 8
  %203 = bitcast i64* %4 to i32*
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = bitcast i64* %2 to i32*
  %208 = load i32, i32* %207, align 8
  %209 = bitcast i64* %3 to i32*
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %248, label %224

224:                                              ; preds = %218, %212, %206, %200
  %225 = bitcast i64* %2 to i32*
  %226 = load i32, i32* %225, align 8
  %227 = bitcast i64* %4 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %264

230:                                              ; preds = %224
  %231 = bitcast i64* %2 to i32*
  %232 = load i32, i32* %231, align 8
  %233 = bitcast i64* %3 to i32*
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %264

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %238, %240
  br i1 %241, label %242, label %264

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %244, %246
  br i1 %247, label %248, label %264

248:                                              ; preds = %242, %218, %194, %182
  %249 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %250 = load %struct.CHpoints*, %struct.CHpoints** %249, align 8
  %251 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %252 = load %struct.CHpoints*, %struct.CHpoints** %251, align 8
  %253 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %252, i64 0, i32 4
  store %struct.CHpoints* %250, %struct.CHpoints** %253, align 8
  %254 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %255 = load %struct.CHpoints*, %struct.CHpoints** %254, align 8
  %256 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 4
  %257 = load %struct.CHpoints*, %struct.CHpoints** %256, align 8
  %258 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %257, i64 0, i32 3
  store %struct.CHpoints* %255, %struct.CHpoints** %258, align 8
  %259 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %260 = load %struct.CHpoints*, %struct.CHpoints** %259, align 8
  %261 = bitcast %struct.CHpoints* %.0 to i8*
  call void @free(i8* noundef %261) #8
  %262 = load i32, i32* @CHno, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* @CHno, align 4
  br label %264

264:                                              ; preds = %248, %242, %236, %230, %224, %141
  %.2 = phi %struct.CHpoints* [ %260, %248 ], [ %.0, %242 ], [ %.0, %236 ], [ %.0, %230 ], [ %.0, %224 ], [ %.0, %141 ]
  ret %struct.CHpoints* %.2
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
