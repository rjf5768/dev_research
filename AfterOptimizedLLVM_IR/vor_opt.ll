; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/vor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/vor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Knode = type { %struct.point, i32, i32, i32 }
%struct.point = type { i32, i32 }
%struct.Enode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.CHsplay_node = type { %struct.CHsplay_element, %struct.CHsplay_node*, %struct.CHsplay_node*, %struct.CHsplay_node* }
%struct.CHsplay_element = type { %struct.key, %struct.CHpoints* }
%struct.key = type { double, double, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.dpoint = type { double, double }

@CHno = dso_local global i32 0, align 4
@Kcount = dso_local global i32 1, align 4
@Ecount = dso_local global i32 1, align 4
@K = dso_local global %struct.Knode* null, align 8
@E = dso_local global %struct.Enode* null, align 8
@Splaytree = dso_local global %struct.splay_node* null, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error: Can't intersect\0A\00", align 1
@CHSplaytree = dso_local global %struct.CHsplay_node* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"The center is (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The radius is %9.2f\0A\00", align 1
@S = dso_local global %struct.CHpoints* null, align 8
@default_radius = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @clean_up() #0 {
  %1 = load %struct.Knode*, %struct.Knode** @K, align 8
  %2 = bitcast %struct.Knode* %1 to i8*
  call void @free(i8* noundef %2) #5
  %3 = load %struct.Enode*, %struct.Enode** @E, align 8
  %4 = bitcast %struct.Enode* %3 to i8*
  call void @free(i8* noundef %4) #5
  store i32 1, i32* @Kcount, align 4
  store i32 1, i32* @Ecount, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getpoint(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.point, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.point* %5 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i8* @insert(%struct.splay_node** noundef @Splaytree, i64 %11)
  ret void
}

declare dso_local i8* @insert(%struct.splay_node** noundef, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.splay_node* @init()
  store %struct.splay_node* %5, %struct.splay_node** @Splaytree, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %4)
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* noundef %2, i32* noundef %3)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  call void @getpoint(i32 noundef %15, i32 noundef %16)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %8, !llvm.loop !4

20:                                               ; preds = %8
  ret void
}

declare dso_local %struct.splay_node* @init() #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_point(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = load %struct.Knode*, %struct.Knode** @K, align 8
  %5 = load i32, i32* @Kcount, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.Knode, %struct.Knode* %4, i64 %6
  %8 = getelementptr inbounds %struct.Knode, %struct.Knode* %7, i32 0, i32 0
  %9 = bitcast %struct.point* %8 to i8*
  %10 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 8, i1 false)
  %11 = load %struct.Knode*, %struct.Knode** @K, align 8
  %12 = load i32, i32* @Kcount, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Knode, %struct.Knode* %11, i64 %13
  %15 = getelementptr inbounds %struct.Knode, %struct.Knode* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.Knode*, %struct.Knode** @K, align 8
  %17 = load i32, i32* @Kcount, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Knode, %struct.Knode* %16, i64 %18
  %20 = getelementptr inbounds %struct.Knode, %struct.Knode* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.Knode*, %struct.Knode** @K, align 8
  %22 = load i32, i32* @Kcount, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Knode, %struct.Knode* %21, i64 %23
  %25 = getelementptr inbounds %struct.Knode, %struct.Knode* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @Kcount, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @Kcount, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @compute_v(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.dpoint, align 8
  %11 = alloca %struct.point, align 4
  %12 = alloca %struct.point, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.point, align 4
  %18 = alloca %struct.dpoint, align 8
  %19 = alloca %struct.dpoint, align 8
  %20 = alloca %struct.dpoint, align 8
  %21 = alloca %struct.dpoint, align 8
  %22 = alloca %struct.dpoint, align 8
  %23 = alloca %struct.dpoint, align 8
  %24 = alloca %struct.dpoint, align 8
  %25 = alloca %struct.dpoint, align 8
  %26 = alloca %struct.dpoint, align 8
  %27 = alloca %struct.dpoint, align 8
  %28 = alloca %struct.dpoint, align 8
  %29 = alloca %struct.dpoint, align 8
  %30 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %3, align 8
  store double -1.000000e+04, double* %13, align 8
  store double -1.000000e+04, double* %14, align 8
  store double 1.000000e+04, double* %15, align 8
  store double 1.000000e+04, double* %16, align 8
  %31 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %40 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %39, i32 0, i32 1
  %41 = bitcast %struct.point* %11 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %44 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %43)
  %45 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %44, i32 0, i32 1
  %46 = bitcast %struct.point* %12 to i8*
  %47 = bitcast %struct.point* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = bitcast %struct.point* %11 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = bitcast %struct.point* %12 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = call i64 @vector(i64 %49, i64 %51)
  %53 = bitcast %struct.point* %17 to i64*
  store i64 %52, i64* %53, align 4
  %54 = bitcast %struct.point* %8 to i8*
  %55 = bitcast %struct.point* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = bitcast %struct.point* %11 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = bitcast %struct.point* %12 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call { double, double } @midpoint(i64 %57, i64 %59)
  %61 = bitcast %struct.dpoint* %18 to { double, double }*
  %62 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 0
  %63 = extractvalue { double, double } %60, 0
  store double %63, double* %62, align 8
  %64 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 1
  %65 = extractvalue { double, double } %60, 1
  store double %65, double* %64, align 8
  %66 = bitcast %struct.point* %8 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.dpoint* %18 to { double, double }*
  %69 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = call double @calculate_c(i64 %67, double %70, double %72)
  store double %73, double* %9, align 8
  %74 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %1
  %80 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load double, double* %9, align 8
  %87 = load double, double* %16, align 8
  %88 = bitcast %struct.point* %8 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = bitcast %struct.point* %7 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call { double, double } @intersect(i64 %89, i64 %91, double noundef %86, double noundef %87)
  %93 = bitcast %struct.dpoint* %19 to { double, double }*
  %94 = getelementptr inbounds { double, double }, { double, double }* %93, i32 0, i32 0
  %95 = extractvalue { double, double } %92, 0
  store double %95, double* %94, align 8
  %96 = getelementptr inbounds { double, double }, { double, double }* %93, i32 0, i32 1
  %97 = extractvalue { double, double } %92, 1
  store double %97, double* %96, align 8
  %98 = bitcast %struct.dpoint* %10 to i8*
  %99 = bitcast %struct.dpoint* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = load double, double* %13, align 8
  %101 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp ogt double %100, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = load double, double* %15, align 8
  %108 = fcmp ogt double %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %104, %85
  %110 = load double, double* %9, align 8
  %111 = load double, double* %13, align 8
  %112 = bitcast %struct.point* %8 to i64*
  %113 = load i64, i64* %112, align 4
  %114 = bitcast %struct.point* %4 to i64*
  %115 = load i64, i64* %114, align 4
  %116 = call { double, double } @intersect(i64 %113, i64 %115, double noundef %110, double noundef %111)
  %117 = bitcast %struct.dpoint* %20 to { double, double }*
  %118 = getelementptr inbounds { double, double }, { double, double }* %117, i32 0, i32 0
  %119 = extractvalue { double, double } %116, 0
  store double %119, double* %118, align 8
  %120 = getelementptr inbounds { double, double }, { double, double }* %117, i32 0, i32 1
  %121 = extractvalue { double, double } %116, 1
  store double %121, double* %120, align 8
  %122 = bitcast %struct.dpoint* %10 to i8*
  %123 = bitcast %struct.dpoint* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  br label %124

124:                                              ; preds = %109, %104
  br label %398

125:                                              ; preds = %79, %1
  %126 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load double, double* %9, align 8
  %139 = load double, double* %16, align 8
  %140 = bitcast %struct.point* %8 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = bitcast %struct.point* %7 to i64*
  %143 = load i64, i64* %142, align 4
  %144 = call { double, double } @intersect(i64 %141, i64 %143, double noundef %138, double noundef %139)
  %145 = bitcast %struct.dpoint* %21 to { double, double }*
  %146 = getelementptr inbounds { double, double }, { double, double }* %145, i32 0, i32 0
  %147 = extractvalue { double, double } %144, 0
  store double %147, double* %146, align 8
  %148 = getelementptr inbounds { double, double }, { double, double }* %145, i32 0, i32 1
  %149 = extractvalue { double, double } %144, 1
  store double %149, double* %148, align 8
  %150 = bitcast %struct.dpoint* %10 to i8*
  %151 = bitcast %struct.dpoint* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  br label %397

152:                                              ; preds = %131, %125
  %153 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %204

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %158
  %165 = load double, double* %9, align 8
  %166 = load double, double* %16, align 8
  %167 = bitcast %struct.point* %8 to i64*
  %168 = load i64, i64* %167, align 4
  %169 = bitcast %struct.point* %7 to i64*
  %170 = load i64, i64* %169, align 4
  %171 = call { double, double } @intersect(i64 %168, i64 %170, double noundef %165, double noundef %166)
  %172 = bitcast %struct.dpoint* %22 to { double, double }*
  %173 = getelementptr inbounds { double, double }, { double, double }* %172, i32 0, i32 0
  %174 = extractvalue { double, double } %171, 0
  store double %174, double* %173, align 8
  %175 = getelementptr inbounds { double, double }, { double, double }* %172, i32 0, i32 1
  %176 = extractvalue { double, double } %171, 1
  store double %176, double* %175, align 8
  %177 = bitcast %struct.dpoint* %10 to i8*
  %178 = bitcast %struct.dpoint* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  %179 = load double, double* %13, align 8
  %180 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %181 = load double, double* %180, align 8
  %182 = fcmp ogt double %179, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %164
  %184 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %185 = load double, double* %184, align 8
  %186 = load double, double* %15, align 8
  %187 = fcmp ogt double %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %183, %164
  %189 = load double, double* %9, align 8
  %190 = load double, double* %15, align 8
  %191 = bitcast %struct.point* %8 to i64*
  %192 = load i64, i64* %191, align 4
  %193 = bitcast %struct.point* %6 to i64*
  %194 = load i64, i64* %193, align 4
  %195 = call { double, double } @intersect(i64 %192, i64 %194, double noundef %189, double noundef %190)
  %196 = bitcast %struct.dpoint* %23 to { double, double }*
  %197 = getelementptr inbounds { double, double }, { double, double }* %196, i32 0, i32 0
  %198 = extractvalue { double, double } %195, 0
  store double %198, double* %197, align 8
  %199 = getelementptr inbounds { double, double }, { double, double }* %196, i32 0, i32 1
  %200 = extractvalue { double, double } %195, 1
  store double %200, double* %199, align 8
  %201 = bitcast %struct.dpoint* %10 to i8*
  %202 = bitcast %struct.dpoint* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 %202, i64 16, i1 false)
  br label %203

203:                                              ; preds = %188, %183
  br label %396

204:                                              ; preds = %158, %152
  %205 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load double, double* %9, align 8
  %218 = load double, double* %13, align 8
  %219 = bitcast %struct.point* %8 to i64*
  %220 = load i64, i64* %219, align 4
  %221 = bitcast %struct.point* %4 to i64*
  %222 = load i64, i64* %221, align 4
  %223 = call { double, double } @intersect(i64 %220, i64 %222, double noundef %217, double noundef %218)
  %224 = bitcast %struct.dpoint* %24 to { double, double }*
  %225 = getelementptr inbounds { double, double }, { double, double }* %224, i32 0, i32 0
  %226 = extractvalue { double, double } %223, 0
  store double %226, double* %225, align 8
  %227 = getelementptr inbounds { double, double }, { double, double }* %224, i32 0, i32 1
  %228 = extractvalue { double, double } %223, 1
  store double %228, double* %227, align 8
  %229 = bitcast %struct.dpoint* %10 to i8*
  %230 = bitcast %struct.dpoint* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 16, i1 false)
  br label %395

231:                                              ; preds = %210, %204
  %232 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load double, double* %9, align 8
  %245 = load double, double* %15, align 8
  %246 = bitcast %struct.point* %8 to i64*
  %247 = load i64, i64* %246, align 4
  %248 = bitcast %struct.point* %6 to i64*
  %249 = load i64, i64* %248, align 4
  %250 = call { double, double } @intersect(i64 %247, i64 %249, double noundef %244, double noundef %245)
  %251 = bitcast %struct.dpoint* %25 to { double, double }*
  %252 = getelementptr inbounds { double, double }, { double, double }* %251, i32 0, i32 0
  %253 = extractvalue { double, double } %250, 0
  store double %253, double* %252, align 8
  %254 = getelementptr inbounds { double, double }, { double, double }* %251, i32 0, i32 1
  %255 = extractvalue { double, double } %250, 1
  store double %255, double* %254, align 8
  %256 = bitcast %struct.dpoint* %10 to i8*
  %257 = bitcast %struct.dpoint* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 16, i1 false)
  br label %394

258:                                              ; preds = %237, %231
  %259 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %264, label %310

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %266, %268
  br i1 %269, label %270, label %310

270:                                              ; preds = %264
  %271 = load double, double* %9, align 8
  %272 = load double, double* %14, align 8
  %273 = bitcast %struct.point* %8 to i64*
  %274 = load i64, i64* %273, align 4
  %275 = bitcast %struct.point* %5 to i64*
  %276 = load i64, i64* %275, align 4
  %277 = call { double, double } @intersect(i64 %274, i64 %276, double noundef %271, double noundef %272)
  %278 = bitcast %struct.dpoint* %26 to { double, double }*
  %279 = getelementptr inbounds { double, double }, { double, double }* %278, i32 0, i32 0
  %280 = extractvalue { double, double } %277, 0
  store double %280, double* %279, align 8
  %281 = getelementptr inbounds { double, double }, { double, double }* %278, i32 0, i32 1
  %282 = extractvalue { double, double } %277, 1
  store double %282, double* %281, align 8
  %283 = bitcast %struct.dpoint* %10 to i8*
  %284 = bitcast %struct.dpoint* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 16, i1 false)
  %285 = load double, double* %13, align 8
  %286 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %287 = load double, double* %286, align 8
  %288 = fcmp ogt double %285, %287
  br i1 %288, label %294, label %289

289:                                              ; preds = %270
  %290 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %291 = load double, double* %290, align 8
  %292 = load double, double* %15, align 8
  %293 = fcmp ogt double %291, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %289, %270
  %295 = load double, double* %9, align 8
  %296 = load double, double* %13, align 8
  %297 = bitcast %struct.point* %8 to i64*
  %298 = load i64, i64* %297, align 4
  %299 = bitcast %struct.point* %4 to i64*
  %300 = load i64, i64* %299, align 4
  %301 = call { double, double } @intersect(i64 %298, i64 %300, double noundef %295, double noundef %296)
  %302 = bitcast %struct.dpoint* %27 to { double, double }*
  %303 = getelementptr inbounds { double, double }, { double, double }* %302, i32 0, i32 0
  %304 = extractvalue { double, double } %301, 0
  store double %304, double* %303, align 8
  %305 = getelementptr inbounds { double, double }, { double, double }* %302, i32 0, i32 1
  %306 = extractvalue { double, double } %301, 1
  store double %306, double* %305, align 8
  %307 = bitcast %struct.dpoint* %10 to i8*
  %308 = bitcast %struct.dpoint* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %307, i8* align 8 %308, i64 16, i1 false)
  br label %309

309:                                              ; preds = %294, %289
  br label %393

310:                                              ; preds = %264, %258
  %311 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp sgt i32 %312, %314
  br i1 %315, label %316, label %337

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %316
  %323 = load double, double* %9, align 8
  %324 = load double, double* %14, align 8
  %325 = bitcast %struct.point* %8 to i64*
  %326 = load i64, i64* %325, align 4
  %327 = bitcast %struct.point* %5 to i64*
  %328 = load i64, i64* %327, align 4
  %329 = call { double, double } @intersect(i64 %326, i64 %328, double noundef %323, double noundef %324)
  %330 = bitcast %struct.dpoint* %28 to { double, double }*
  %331 = getelementptr inbounds { double, double }, { double, double }* %330, i32 0, i32 0
  %332 = extractvalue { double, double } %329, 0
  store double %332, double* %331, align 8
  %333 = getelementptr inbounds { double, double }, { double, double }* %330, i32 0, i32 1
  %334 = extractvalue { double, double } %329, 1
  store double %334, double* %333, align 8
  %335 = bitcast %struct.dpoint* %10 to i8*
  %336 = bitcast %struct.dpoint* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %335, i8* align 8 %336, i64 16, i1 false)
  br label %392

337:                                              ; preds = %316, %310
  %338 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp sgt i32 %339, %341
  br i1 %342, label %343, label %389

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %345, %347
  br i1 %348, label %349, label %389

349:                                              ; preds = %343
  %350 = load double, double* %9, align 8
  %351 = load double, double* %14, align 8
  %352 = bitcast %struct.point* %8 to i64*
  %353 = load i64, i64* %352, align 4
  %354 = bitcast %struct.point* %5 to i64*
  %355 = load i64, i64* %354, align 4
  %356 = call { double, double } @intersect(i64 %353, i64 %355, double noundef %350, double noundef %351)
  %357 = bitcast %struct.dpoint* %29 to { double, double }*
  %358 = getelementptr inbounds { double, double }, { double, double }* %357, i32 0, i32 0
  %359 = extractvalue { double, double } %356, 0
  store double %359, double* %358, align 8
  %360 = getelementptr inbounds { double, double }, { double, double }* %357, i32 0, i32 1
  %361 = extractvalue { double, double } %356, 1
  store double %361, double* %360, align 8
  %362 = bitcast %struct.dpoint* %10 to i8*
  %363 = bitcast %struct.dpoint* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %362, i8* align 8 %363, i64 16, i1 false)
  %364 = load double, double* %13, align 8
  %365 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %366 = load double, double* %365, align 8
  %367 = fcmp ogt double %364, %366
  br i1 %367, label %373, label %368

368:                                              ; preds = %349
  %369 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %370 = load double, double* %369, align 8
  %371 = load double, double* %15, align 8
  %372 = fcmp ogt double %370, %371
  br i1 %372, label %373, label %388

373:                                              ; preds = %368, %349
  %374 = load double, double* %9, align 8
  %375 = load double, double* %15, align 8
  %376 = bitcast %struct.point* %8 to i64*
  %377 = load i64, i64* %376, align 4
  %378 = bitcast %struct.point* %6 to i64*
  %379 = load i64, i64* %378, align 4
  %380 = call { double, double } @intersect(i64 %377, i64 %379, double noundef %374, double noundef %375)
  %381 = bitcast %struct.dpoint* %30 to { double, double }*
  %382 = getelementptr inbounds { double, double }, { double, double }* %381, i32 0, i32 0
  %383 = extractvalue { double, double } %380, 0
  store double %383, double* %382, align 8
  %384 = getelementptr inbounds { double, double }, { double, double }* %381, i32 0, i32 1
  %385 = extractvalue { double, double } %380, 1
  store double %385, double* %384, align 8
  %386 = bitcast %struct.dpoint* %10 to i8*
  %387 = bitcast %struct.dpoint* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %386, i8* align 8 %387, i64 16, i1 false)
  br label %388

388:                                              ; preds = %373, %368
  br label %391

389:                                              ; preds = %343, %337
  %390 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %391, %322
  br label %393

393:                                              ; preds = %392, %309
  br label %394

394:                                              ; preds = %393, %243
  br label %395

395:                                              ; preds = %394, %216
  br label %396

396:                                              ; preds = %395, %203
  br label %397

397:                                              ; preds = %396, %137
  br label %398

398:                                              ; preds = %397, %124
  %399 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %400 = load double, double* %399, align 8
  %401 = fptosi double %400 to i32
  %402 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 0
  store i32 %401, i32* %402, align 4
  %403 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 1
  %404 = load double, double* %403, align 8
  %405 = fptosi double %404 to i32
  %406 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 1
  store i32 %405, i32* %406, align 4
  %407 = bitcast %struct.point* %2 to i64*
  %408 = load i64, i64* %407, align 4
  ret i64 %408
}

declare dso_local %struct.CHpoints* @next(%struct.CHpoints* noundef) #2

declare dso_local i64 @vector(i64, i64) #2

declare dso_local double @calculate_c(i64, double, double) #2

declare dso_local { double, double } @midpoint(i64, i64) #2

declare dso_local { double, double } @intersect(i64, i64, double noundef, double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_infinit_points_to_K(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.key, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %7 = load i32, i32* @CHno, align 4
  %8 = mul nsw i32 2, %7
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = call noalias i8* @calloc(i64 noundef %10, i64 noundef 20) #5
  %12 = bitcast i8* %11 to %struct.Knode*
  store %struct.Knode* %12, %struct.Knode** @K, align 8
  %13 = load i32, i32* @CHno, align 4
  %14 = mul nsw i32 2, %13
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 noundef %16, i64 noundef 32) #5
  %18 = bitcast i8* %17 to %struct.Enode*
  store %struct.Enode* %18, %struct.Enode** @E, align 8
  %19 = call %struct.CHsplay_node* @CHinit()
  store %struct.CHsplay_node* %19, %struct.CHsplay_node** @CHSplaytree, align 8
  %20 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 3
  %22 = load %struct.CHpoints*, %struct.CHpoints** %21, align 8
  store %struct.CHpoints* %22, %struct.CHpoints** %3, align 8
  %23 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %24 = call i64 @compute_v(%struct.CHpoints* noundef %23)
  %25 = bitcast %struct.point* %5 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.point* %5 to i64*
  %27 = load i64, i64* %26, align 4
  call void @add_point(i64 %27)
  %28 = load i32, i32* @Kcount, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %33 = call i8* @CHinsert(%struct.CHsplay_node** noundef @CHSplaytree, %struct.CHpoints* noundef %32)
  br label %34

34:                                               ; preds = %38, %1
  %35 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %36 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %37 = icmp ne %struct.CHpoints* %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %40 = call i64 @compute_v(%struct.CHpoints* noundef %39)
  %41 = bitcast %struct.point* %6 to i64*
  store i64 %40, i64* %41, align 4
  %42 = bitcast %struct.point* %6 to i64*
  %43 = load i64, i64* %42, align 4
  call void @add_point(i64 %43)
  %44 = load i32, i32* @Kcount, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %47 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %49 = call i8* @CHinsert(%struct.CHsplay_node** noundef @CHSplaytree, %struct.CHpoints* noundef %48)
  %50 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %51 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %50, i32 0, i32 3
  %52 = load %struct.CHpoints*, %struct.CHpoints** %51, align 8
  store %struct.CHpoints* %52, %struct.CHpoints** %3, align 8
  br label %34, !llvm.loop !6

53:                                               ; preds = %34
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local %struct.CHsplay_node* @CHinit() #2

declare dso_local i8* @CHinsert(%struct.CHsplay_node** noundef, %struct.CHpoints* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_edge(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.Enode*, %struct.Enode** @E, align 8
  %9 = load i32, i32* @Ecount, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.Enode, %struct.Enode* %8, i64 %10
  %12 = getelementptr inbounds %struct.Enode, %struct.Enode* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.Enode*, %struct.Enode** @E, align 8
  %15 = load i32, i32* @Ecount, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Enode, %struct.Enode* %14, i64 %16
  %18 = getelementptr inbounds %struct.Enode, %struct.Enode* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load %struct.Knode*, %struct.Knode** @K, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Knode, %struct.Knode* %19, i64 %21
  %23 = getelementptr inbounds %struct.Knode, %struct.Knode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load i32, i32* @Ecount, align 4
  %28 = load %struct.Knode*, %struct.Knode** @K, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Knode, %struct.Knode* %28, i64 %30
  %32 = getelementptr inbounds %struct.Knode, %struct.Knode* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* @Ecount, align 4
  %34 = load %struct.Enode*, %struct.Enode** @E, align 8
  %35 = load i32, i32* @Ecount, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Enode, %struct.Enode* %34, i64 %36
  %38 = getelementptr inbounds %struct.Enode, %struct.Enode* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @Ecount, align 4
  %40 = load %struct.Enode*, %struct.Enode** @E, align 8
  %41 = load i32, i32* @Ecount, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Enode, %struct.Enode* %40, i64 %42
  %44 = getelementptr inbounds %struct.Enode, %struct.Enode* %43, i32 0, i32 4
  store i32 %39, i32* %44, align 4
  br label %150

45:                                               ; preds = %2
  %46 = load %struct.Knode*, %struct.Knode** @K, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Knode, %struct.Knode* %46, i64 %48
  %50 = getelementptr inbounds %struct.Knode, %struct.Knode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %142

53:                                               ; preds = %45
  %54 = load i32, i32* @Ecount, align 4
  %55 = load %struct.Knode*, %struct.Knode** @K, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Knode, %struct.Knode* %55, i64 %57
  %59 = getelementptr inbounds %struct.Knode, %struct.Knode* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  %60 = load %struct.Knode*, %struct.Knode** @K, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Knode, %struct.Knode* %60, i64 %62
  %64 = getelementptr inbounds %struct.Knode, %struct.Knode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.Enode*, %struct.Enode** @E, align 8
  %67 = load i32, i32* @Ecount, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Enode, %struct.Enode* %66, i64 %68
  %70 = getelementptr inbounds %struct.Enode, %struct.Enode* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  %71 = load %struct.Knode*, %struct.Knode** @K, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Knode, %struct.Knode* %71, i64 %73
  %75 = getelementptr inbounds %struct.Knode, %struct.Knode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.Enode*, %struct.Enode** @E, align 8
  %78 = load i32, i32* @Ecount, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Enode, %struct.Enode* %77, i64 %79
  %81 = getelementptr inbounds %struct.Enode, %struct.Enode* %80, i32 0, i32 4
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.Enode*, %struct.Enode** @E, align 8
  %84 = load %struct.Knode*, %struct.Knode** @K, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.Knode, %struct.Knode* %84, i64 %86
  %88 = getelementptr inbounds %struct.Knode, %struct.Knode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Enode, %struct.Enode* %83, i64 %90
  %92 = getelementptr inbounds %struct.Enode, %struct.Enode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %82, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %53
  %96 = load i32, i32* @Ecount, align 4
  %97 = load %struct.Enode*, %struct.Enode** @E, align 8
  %98 = load %struct.Knode*, %struct.Knode** @K, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Knode, %struct.Knode* %98, i64 %100
  %102 = getelementptr inbounds %struct.Knode, %struct.Knode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Enode, %struct.Enode* %97, i64 %104
  %106 = getelementptr inbounds %struct.Enode, %struct.Enode* %105, i32 0, i32 2
  store i32 %96, i32* %106, align 4
  %107 = load i32, i32* @Ecount, align 4
  %108 = load %struct.Enode*, %struct.Enode** @E, align 8
  %109 = load %struct.Knode*, %struct.Knode** @K, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.Knode, %struct.Knode* %109, i64 %111
  %113 = getelementptr inbounds %struct.Knode, %struct.Knode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Enode, %struct.Enode* %108, i64 %115
  %117 = getelementptr inbounds %struct.Enode, %struct.Enode* %116, i32 0, i32 4
  store i32 %107, i32* %117, align 4
  br label %141

118:                                              ; preds = %53
  %119 = load i32, i32* @Ecount, align 4
  %120 = load %struct.Enode*, %struct.Enode** @E, align 8
  %121 = load %struct.Knode*, %struct.Knode** @K, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.Knode, %struct.Knode* %121, i64 %123
  %125 = getelementptr inbounds %struct.Knode, %struct.Knode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Enode, %struct.Enode* %120, i64 %127
  %129 = getelementptr inbounds %struct.Enode, %struct.Enode* %128, i32 0, i32 3
  store i32 %119, i32* %129, align 4
  %130 = load i32, i32* @Ecount, align 4
  %131 = load %struct.Enode*, %struct.Enode** @E, align 8
  %132 = load %struct.Knode*, %struct.Knode** @K, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.Knode, %struct.Knode* %132, i64 %134
  %136 = getelementptr inbounds %struct.Knode, %struct.Knode* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Enode, %struct.Enode* %131, i64 %138
  %140 = getelementptr inbounds %struct.Enode, %struct.Enode* %139, i32 0, i32 5
  store i32 %130, i32* %140, align 4
  br label %141

141:                                              ; preds = %118, %95
  br label %149

142:                                              ; preds = %45
  %143 = load i32, i32* @Ecount, align 4
  %144 = load %struct.Knode*, %struct.Knode** @K, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Knode, %struct.Knode* %144, i64 %146
  %148 = getelementptr inbounds %struct.Knode, %struct.Knode* %147, i32 0, i32 3
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %141
  br label %150

150:                                              ; preds = %149, %26
  %151 = load %struct.Knode*, %struct.Knode** @K, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.Knode, %struct.Knode* %151, i64 %153
  %155 = getelementptr inbounds %struct.Knode, %struct.Knode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %150
  %159 = load i32, i32* @Ecount, align 4
  %160 = load %struct.Knode*, %struct.Knode** @K, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Knode, %struct.Knode* %160, i64 %162
  %164 = getelementptr inbounds %struct.Knode, %struct.Knode* %163, i32 0, i32 1
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* @Ecount, align 4
  %166 = load %struct.Enode*, %struct.Enode** @E, align 8
  %167 = load i32, i32* @Ecount, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Enode, %struct.Enode* %166, i64 %168
  %170 = getelementptr inbounds %struct.Enode, %struct.Enode* %169, i32 0, i32 2
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* @Ecount, align 4
  %172 = load %struct.Enode*, %struct.Enode** @E, align 8
  %173 = load i32, i32* @Ecount, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.Enode, %struct.Enode* %172, i64 %174
  %176 = getelementptr inbounds %struct.Enode, %struct.Enode* %175, i32 0, i32 4
  store i32 %171, i32* %176, align 4
  br label %282

177:                                              ; preds = %150
  %178 = load %struct.Knode*, %struct.Knode** @K, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.Knode, %struct.Knode* %178, i64 %180
  %182 = getelementptr inbounds %struct.Knode, %struct.Knode* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %274

185:                                              ; preds = %177
  %186 = load i32, i32* @Ecount, align 4
  %187 = load %struct.Knode*, %struct.Knode** @K, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.Knode, %struct.Knode* %187, i64 %189
  %191 = getelementptr inbounds %struct.Knode, %struct.Knode* %190, i32 0, i32 2
  store i32 %186, i32* %191, align 4
  %192 = load %struct.Knode*, %struct.Knode** @K, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.Knode, %struct.Knode* %192, i64 %194
  %196 = getelementptr inbounds %struct.Knode, %struct.Knode* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.Enode*, %struct.Enode** @E, align 8
  %199 = load i32, i32* @Ecount, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Enode, %struct.Enode* %198, i64 %200
  %202 = getelementptr inbounds %struct.Enode, %struct.Enode* %201, i32 0, i32 2
  store i32 %197, i32* %202, align 4
  %203 = load %struct.Knode*, %struct.Knode** @K, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.Knode, %struct.Knode* %203, i64 %205
  %207 = getelementptr inbounds %struct.Knode, %struct.Knode* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.Enode*, %struct.Enode** @E, align 8
  %210 = load i32, i32* @Ecount, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.Enode, %struct.Enode* %209, i64 %211
  %213 = getelementptr inbounds %struct.Enode, %struct.Enode* %212, i32 0, i32 4
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.Enode*, %struct.Enode** @E, align 8
  %216 = load %struct.Knode*, %struct.Knode** @K, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.Knode, %struct.Knode* %216, i64 %218
  %220 = getelementptr inbounds %struct.Knode, %struct.Knode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.Enode, %struct.Enode* %215, i64 %222
  %224 = getelementptr inbounds %struct.Enode, %struct.Enode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %214, %225
  br i1 %226, label %227, label %250

227:                                              ; preds = %185
  %228 = load i32, i32* @Ecount, align 4
  %229 = load %struct.Enode*, %struct.Enode** @E, align 8
  %230 = load %struct.Knode*, %struct.Knode** @K, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.Knode, %struct.Knode* %230, i64 %232
  %234 = getelementptr inbounds %struct.Knode, %struct.Knode* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.Enode, %struct.Enode* %229, i64 %236
  %238 = getelementptr inbounds %struct.Enode, %struct.Enode* %237, i32 0, i32 2
  store i32 %228, i32* %238, align 4
  %239 = load i32, i32* @Ecount, align 4
  %240 = load %struct.Enode*, %struct.Enode** @E, align 8
  %241 = load %struct.Knode*, %struct.Knode** @K, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.Knode, %struct.Knode* %241, i64 %243
  %245 = getelementptr inbounds %struct.Knode, %struct.Knode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.Enode, %struct.Enode* %240, i64 %247
  %249 = getelementptr inbounds %struct.Enode, %struct.Enode* %248, i32 0, i32 4
  store i32 %239, i32* %249, align 4
  br label %273

250:                                              ; preds = %185
  %251 = load i32, i32* @Ecount, align 4
  %252 = load %struct.Enode*, %struct.Enode** @E, align 8
  %253 = load %struct.Knode*, %struct.Knode** @K, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.Knode, %struct.Knode* %253, i64 %255
  %257 = getelementptr inbounds %struct.Knode, %struct.Knode* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.Enode, %struct.Enode* %252, i64 %259
  %261 = getelementptr inbounds %struct.Enode, %struct.Enode* %260, i32 0, i32 3
  store i32 %251, i32* %261, align 4
  %262 = load i32, i32* @Ecount, align 4
  %263 = load %struct.Enode*, %struct.Enode** @E, align 8
  %264 = load %struct.Knode*, %struct.Knode** @K, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.Knode, %struct.Knode* %264, i64 %266
  %268 = getelementptr inbounds %struct.Knode, %struct.Knode* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.Enode, %struct.Enode* %263, i64 %270
  %272 = getelementptr inbounds %struct.Enode, %struct.Enode* %271, i32 0, i32 5
  store i32 %262, i32* %272, align 4
  br label %273

273:                                              ; preds = %250, %227
  br label %281

274:                                              ; preds = %177
  %275 = load i32, i32* @Ecount, align 4
  %276 = load %struct.Knode*, %struct.Knode** @K, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.Knode, %struct.Knode* %276, i64 %278
  %280 = getelementptr inbounds %struct.Knode, %struct.Knode* %279, i32 0, i32 3
  store i32 %275, i32* %280, align 4
  br label %281

281:                                              ; preds = %274, %273
  br label %282

282:                                              ; preds = %281, %158
  %283 = load i32, i32* @Ecount, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @Ecount, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.key, align 8
  %7 = alloca %struct.key, align 8
  %8 = alloca %struct.dpoint, align 8
  %9 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %10 = call %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** noundef @CHSplaytree)
  store %struct.CHpoints* %10, %struct.CHpoints** %4, align 8
  %11 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %12 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %11)
  store %struct.CHpoints* %12, %struct.CHpoints** %3, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %14 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %13)
  store %struct.CHpoints* %14, %struct.CHpoints** %5, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i32 0, i32 1
  %17 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %18 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %17)
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 1
  %20 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 1
  %22 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 1
  %24 = bitcast %struct.point* %19 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = bitcast %struct.point* %21 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %23 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call { double, double } @centre(i64 %25, i64 %27, i64 %29)
  %31 = bitcast %struct.dpoint* %8 to { double, double }*
  %32 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = extractvalue { double, double } %30, 0
  store double %33, double* %32, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = extractvalue { double, double } %30, 1
  store double %35, double* %34, align 8
  %36 = bitcast %struct.point* %16 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = bitcast %struct.dpoint* %8 to { double, double }*
  %39 = getelementptr inbounds { double, double }, { double, double }* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = getelementptr inbounds { double, double }, { double, double }* %38, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = call double @radius2(i64 %37, double %40, double %42)
  %44 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  store double %43, double* %44, align 8
  %45 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %46 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %45)
  %47 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %48 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %49 = call double @angle(%struct.CHpoints* noundef %46, %struct.CHpoints* noundef %47, %struct.CHpoints* noundef %48)
  %50 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  store double %49, double* %50, align 8
  %51 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %52 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  call void @CHdelete(%struct.CHsplay_node** noundef @CHSplaytree, %struct.key* noundef byval(%struct.key) align 8 %6)
  %55 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %56 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %55, i32 0, i32 1
  %57 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %58 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %57, i32 0, i32 1
  %59 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %62 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %61)
  %63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %62, i32 0, i32 1
  %64 = bitcast %struct.point* %58 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.point* %60 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.point* %63 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call { double, double } @centre(i64 %65, i64 %67, i64 %69)
  %71 = bitcast %struct.dpoint* %9 to { double, double }*
  %72 = getelementptr inbounds { double, double }, { double, double }* %71, i32 0, i32 0
  %73 = extractvalue { double, double } %70, 0
  store double %73, double* %72, align 8
  %74 = getelementptr inbounds { double, double }, { double, double }* %71, i32 0, i32 1
  %75 = extractvalue { double, double } %70, 1
  store double %75, double* %74, align 8
  %76 = bitcast %struct.point* %56 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = bitcast %struct.dpoint* %9 to { double, double }*
  %79 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = call double @radius2(i64 %77, double %80, double %82)
  %84 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double %83, double* %84, align 8
  %85 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %86 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %87 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %88 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %87)
  %89 = call double @angle(%struct.CHpoints* noundef %85, %struct.CHpoints* noundef %86, %struct.CHpoints* noundef %88)
  %90 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double %89, double* %90, align 8
  %91 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %92 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  call void @CHdelete(%struct.CHsplay_node** noundef @CHSplaytree, %struct.key* noundef byval(%struct.key) align 8 %7)
  %95 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %95
}

declare dso_local %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** noundef) #2

declare dso_local %struct.CHpoints* @before(%struct.CHpoints* noundef) #2

declare dso_local double @radius2(i64, double, double) #2

declare dso_local { double, double } @centre(i64, i64, i64) #2

declare dso_local double @angle(%struct.CHpoints* noundef, %struct.CHpoints* noundef, %struct.CHpoints* noundef) #2

declare dso_local void @CHdelete(%struct.CHsplay_node** noundef, %struct.key* noundef byval(%struct.key) align 8) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @draw_sec(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.dpoint, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHpoints*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.dpoint, align 8
  %9 = alloca %struct.dpoint, align 8
  %10 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %11 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %12 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %11)
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i32 0, i32 1
  %14 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %14, i32 0, i32 1
  %16 = bitcast %struct.point* %13 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.point* %15 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @length2(i64 %17, i64 %19)
  %21 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %22 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %21, i32 0, i32 1
  %23 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %24 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %23)
  %25 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %24, i32 0, i32 1
  %26 = bitcast %struct.point* %22 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %25 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @length2(i64 %27, i64 %29)
  %31 = icmp sgt i32 %20, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %1
  %33 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %34 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %33)
  %35 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %34, i32 0, i32 1
  %36 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 1
  %38 = bitcast %struct.point* %35 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = bitcast %struct.point* %37 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 @length2(i64 %39, i64 %41)
  %43 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %44 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %43)
  %45 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %44, i32 0, i32 1
  %46 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %47 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %46)
  %48 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %47, i32 0, i32 1
  %49 = bitcast %struct.point* %45 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = bitcast %struct.point* %48 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @length2(i64 %50, i64 %52)
  %54 = icmp sgt i32 %42, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %57 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %56)
  store %struct.CHpoints* %57, %struct.CHpoints** %5, align 8
  br label %109

58:                                               ; preds = %32, %1
  %59 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %62 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %61)
  %63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %62, i32 0, i32 1
  %64 = bitcast %struct.point* %60 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.point* %63 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @length2(i64 %65, i64 %67)
  %69 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %70 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %69)
  %71 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %70, i32 0, i32 1
  %72 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %73 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %72)
  %74 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %73, i32 0, i32 1
  %75 = bitcast %struct.point* %71 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = bitcast %struct.point* %74 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i32 @length2(i64 %76, i64 %78)
  %80 = icmp sgt i32 %68, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %58
  %82 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %83 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %82, i32 0, i32 1
  %84 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %85 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %84)
  %86 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i32 0, i32 1
  %87 = bitcast %struct.point* %83 to i64*
  %88 = load i64, i64* %87, align 4
  %89 = bitcast %struct.point* %86 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = call i32 @length2(i64 %88, i64 %90)
  %92 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %93 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %92, i32 0, i32 1
  %94 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %95 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %94)
  %96 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %95, i32 0, i32 1
  %97 = bitcast %struct.point* %93 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = bitcast %struct.point* %96 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i32 @length2(i64 %98, i64 %100)
  %102 = icmp sgt i32 %91, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %105 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %104)
  store %struct.CHpoints* %105, %struct.CHpoints** %5, align 8
  br label %108

106:                                              ; preds = %81, %58
  %107 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  store %struct.CHpoints* %107, %struct.CHpoints** %5, align 8
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %55
  %110 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %111 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %110)
  store %struct.CHpoints* %111, %struct.CHpoints** %4, align 8
  %112 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %113 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %112)
  store %struct.CHpoints* %113, %struct.CHpoints** %6, align 8
  %114 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %115 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %116 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %117 = call double @angle(%struct.CHpoints* noundef %114, %struct.CHpoints* noundef %115, %struct.CHpoints* noundef %116)
  %118 = fcmp olt double %117, 0.000000e+00
  br i1 %118, label %119, label %166

119:                                              ; preds = %109
  %120 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %121 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %120, i32 0, i32 1
  %122 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %123 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %122, i32 0, i32 1
  %124 = bitcast %struct.point* %121 to i64*
  %125 = load i64, i64* %124, align 4
  %126 = bitcast %struct.point* %123 to i64*
  %127 = load i64, i64* %126, align 4
  %128 = call { double, double } @midpoint(i64 %125, i64 %127)
  %129 = bitcast %struct.dpoint* %8 to { double, double }*
  %130 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = extractvalue { double, double } %128, 0
  store double %131, double* %130, align 8
  %132 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = extractvalue { double, double } %128, 1
  store double %133, double* %132, align 8
  %134 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  store double %135, double* %136, align 8
  %137 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %138 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %137, i32 0, i32 1
  %139 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %140 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %139, i32 0, i32 1
  %141 = bitcast %struct.point* %138 to i64*
  %142 = load i64, i64* %141, align 4
  %143 = bitcast %struct.point* %140 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call { double, double } @midpoint(i64 %142, i64 %144)
  %146 = bitcast %struct.dpoint* %9 to { double, double }*
  %147 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 0
  %148 = extractvalue { double, double } %145, 0
  store double %148, double* %147, align 8
  %149 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 1
  %150 = extractvalue { double, double } %145, 1
  store double %150, double* %149, align 8
  %151 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %9, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  store double %152, double* %153, align 8
  %154 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %155 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %154, i32 0, i32 1
  %156 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %157 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %156, i32 0, i32 1
  %158 = bitcast %struct.point* %155 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = bitcast %struct.point* %157 to i64*
  %161 = load i64, i64* %160, align 4
  %162 = call i32 @length2(i64 %159, i64 %161)
  %163 = sitofp i32 %162 to double
  %164 = call double @sqrt(double noundef %163) #5
  %165 = fdiv double %164, 2.000000e+00
  store double %165, double* %7, align 8
  br label %198

166:                                              ; preds = %109
  %167 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %168 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %167, i32 0, i32 1
  %169 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %170 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %169, i32 0, i32 1
  %171 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %172 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %171, i32 0, i32 1
  %173 = bitcast %struct.point* %168 to i64*
  %174 = load i64, i64* %173, align 4
  %175 = bitcast %struct.point* %170 to i64*
  %176 = load i64, i64* %175, align 4
  %177 = bitcast %struct.point* %172 to i64*
  %178 = load i64, i64* %177, align 4
  %179 = call { double, double } @centre(i64 %174, i64 %176, i64 %178)
  %180 = bitcast %struct.dpoint* %10 to { double, double }*
  %181 = getelementptr inbounds { double, double }, { double, double }* %180, i32 0, i32 0
  %182 = extractvalue { double, double } %179, 0
  store double %182, double* %181, align 8
  %183 = getelementptr inbounds { double, double }, { double, double }* %180, i32 0, i32 1
  %184 = extractvalue { double, double } %179, 1
  store double %184, double* %183, align 8
  %185 = bitcast %struct.dpoint* %3 to i8*
  %186 = bitcast %struct.dpoint* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  %187 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %188 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %187, i32 0, i32 1
  %189 = bitcast %struct.point* %188 to i64*
  %190 = load i64, i64* %189, align 4
  %191 = bitcast %struct.dpoint* %3 to { double, double }*
  %192 = getelementptr inbounds { double, double }, { double, double }* %191, i32 0, i32 0
  %193 = load double, double* %192, align 8
  %194 = getelementptr inbounds { double, double }, { double, double }* %191, i32 0, i32 1
  %195 = load double, double* %194, align 8
  %196 = call double @radius2(i64 %190, double %193, double %195)
  %197 = call double @sqrt(double noundef %196) #5
  store double %197, double* %7, align 8
  br label %198

198:                                              ; preds = %166, %119
  %199 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  %200 = load double, double* %199, align 8
  %201 = fptosi double %200 to i32
  %202 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  %203 = load double, double* %202, align 8
  %204 = fptosi double %203 to i32
  %205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef %201, i32 noundef %204)
  %206 = load double, double* %7, align 8
  %207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double noundef %206)
  ret void
}

declare dso_local i32 @length2(i64, i64) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @alg2() #0 {
  %1 = alloca %struct.point, align 4
  %2 = alloca %struct.dpoint, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.dpoint, align 8
  %6 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @add_infinit_points_to_K(%struct.CHpoints* noundef %6)
  %7 = load i32, i32* @CHno, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %93

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* @CHno, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %85

13:                                               ; preds = %10
  %14 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %15 = call %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* noundef %14)
  store %struct.CHpoints* %15, %struct.CHpoints** %3, align 8
  %16 = load i32, i32* @CHno, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  call void @draw_sec(%struct.CHpoints* noundef %19)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %22 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %21)
  store %struct.CHpoints* %22, %struct.CHpoints** %4, align 8
  %23 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %23, i32 0, i32 1
  %25 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 1
  %27 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %28 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %27)
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %24 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = bitcast %struct.point* %26 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.point* %29 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = call { double, double } @centre(i64 %31, i64 %33, i64 %35)
  %37 = bitcast %struct.dpoint* %5 to { double, double }*
  %38 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = extractvalue { double, double } %36, 0
  store double %39, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = extractvalue { double, double } %36, 1
  store double %41, double* %40, align 8
  %42 = bitcast %struct.dpoint* %2 to i8*
  %43 = bitcast %struct.dpoint* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fptosi double %45 to i32
  %47 = getelementptr inbounds %struct.point, %struct.point* %1, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fptosi double %49 to i32
  %51 = getelementptr inbounds %struct.point, %struct.point* %1, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.point* %1 to i64*
  %53 = load i64, i64* %52, align 4
  call void @add_point(i64 %53)
  %54 = load i32, i32* @Kcount, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %57 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  call void @add_edge(i32 noundef %55, i32 noundef %58)
  %59 = load i32, i32* @Kcount, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %62 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  call void @add_edge(i32 noundef %60, i32 noundef %63)
  %64 = load i32, i32* @Kcount, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %67 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %69 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %68)
  %70 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %71 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %70, i32 0, i32 3
  store %struct.CHpoints* %69, %struct.CHpoints** %71, align 8
  %72 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %73 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %74 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %73)
  %75 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %74, i32 0, i32 4
  store %struct.CHpoints* %72, %struct.CHpoints** %75, align 8
  %76 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  store %struct.CHpoints* %76, %struct.CHpoints** @S, align 8
  %77 = load i32, i32* @CHno, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @CHno, align 4
  %79 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %80 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %79)
  %81 = call i8* @CHinsert(%struct.CHsplay_node** noundef @CHSplaytree, %struct.CHpoints* noundef %80)
  %82 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %83 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %82)
  %84 = call i8* @CHinsert(%struct.CHsplay_node** noundef @CHSplaytree, %struct.CHpoints* noundef %83)
  br label %10, !llvm.loop !7

85:                                               ; preds = %10
  %86 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %87 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %90 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %89)
  %91 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  call void @add_edge(i32 noundef %88, i32 noundef %92)
  br label %103

93:                                               ; preds = %0
  store i32 2, i32* @CHno, align 4
  br i1 true, label %94, label %102

94:                                               ; preds = %93
  %95 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %96 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %99 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %98)
  %100 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  call void @add_edge(i32 noundef %97, i32 noundef %101)
  br label %102

102:                                              ; preds = %94, %93
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %105 = bitcast %struct.CHpoints* %104 to i8*
  call void @free(i8* noundef %105) #5
  %106 = load %struct.CHsplay_node*, %struct.CHsplay_node** @CHSplaytree, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %106)
  ret void
}

declare dso_local void @CHfree_tree(%struct.CHsplay_node* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @construct_vor() #0 {
  %1 = call %struct.CHpoints* (...) @construct_ch()
  store %struct.CHpoints* %1, %struct.CHpoints** @S, align 8
  %2 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @number_points(%struct.CHpoints* noundef %2)
  call void @alg2()
  call void @clean_up()
  ret void
}

declare dso_local %struct.CHpoints* @construct_ch(...) #2

declare dso_local void @number_points(%struct.CHpoints* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @get_file()
  call void @construct_vor()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
}
attributes #8 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = !{!"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
