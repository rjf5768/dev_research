; ModuleID = './vor.ll'
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
@str = private unnamed_addr constant [23 x i8] c"Error: Can't intersect\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @clean_up() #0 {
  %1 = load i8*, i8** bitcast (%struct.Knode** @K to i8**), align 8
  call void @free(i8* noundef %1) #8
  %2 = load i8*, i8** bitcast (%struct.Enode** @E to i8**), align 8
  call void @free(i8* noundef %2) #8
  store i32 1, i32* @Kcount, align 4
  store i32 1, i32* @Ecount, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getpoint(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.point*
  %4 = bitcast i64* %3 to i32*
  store i32 %0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i8* @insert(%struct.splay_node** noundef nonnull @Splaytree, i64 %6) #8
  ret void
}

declare dso_local i8* @insert(%struct.splay_node** noundef, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.splay_node* @init() #8
  store %struct.splay_node* %4, %struct.splay_node** @Splaytree, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %14, %0
  %.0 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %8 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.0, %8
  br i1 %.not, label %16, label %9

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %1, i32* noundef nonnull %2) #8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  call void @getpoint(i32 noundef %12, i32 noundef %13)
  br label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

16:                                               ; preds = %7
  ret void
}

declare dso_local %struct.splay_node* @init() #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @add_point(i64 %0) #3 {
  %2 = load %struct.Knode*, %struct.Knode** @K, align 8
  %3 = load i32, i32* @Kcount, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.Knode, %struct.Knode* %2, i64 %4, i32 0
  %6 = bitcast %struct.point* %5 to i64*
  store i64 %0, i64* %6, align 4
  %7 = load %struct.Knode*, %struct.Knode** @K, align 8
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %struct.Knode, %struct.Knode* %7, i64 %8, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.Knode*, %struct.Knode** @K, align 8
  %11 = load i32, i32* @Kcount, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Knode, %struct.Knode* %10, i64 %12, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.Knode*, %struct.Knode** @K, align 8
  %15 = load i32, i32* @Kcount, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Knode, %struct.Knode* %14, i64 %16, i32 3
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @Kcount, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @Kcount, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @compute_v(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %tmpcast7 = bitcast i64* %3 to %struct.point*
  %4 = alloca i64, align 8
  %tmpcast4 = bitcast i64* %4 to %struct.point*
  %5 = alloca i64, align 8
  %tmpcast6 = bitcast i64* %5 to %struct.point*
  %6 = alloca i64, align 8
  %tmpcast8 = bitcast i64* %6 to %struct.point*
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpoint, align 8
  %9 = alloca i64, align 8
  %tmpcast = bitcast i64* %9 to %struct.point*
  %10 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %10 to %struct.point*
  %11 = alloca %struct.dpoint, align 8
  %12 = alloca %struct.dpoint, align 8
  %13 = alloca %struct.dpoint, align 8
  %14 = alloca %struct.dpoint, align 8
  %15 = alloca %struct.dpoint, align 8
  %16 = alloca %struct.dpoint, align 8
  %17 = alloca %struct.dpoint, align 8
  %18 = alloca %struct.dpoint, align 8
  %19 = alloca %struct.dpoint, align 8
  %20 = alloca %struct.dpoint, align 8
  %21 = alloca %struct.dpoint, align 8
  %22 = alloca %struct.dpoint, align 8
  %23 = bitcast i64* %3 to i32*
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.point, %struct.point* %tmpcast7, i64 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = bitcast i64* %4 to i32*
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.point, %struct.point* %tmpcast4, i64 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = bitcast i64* %5 to i32*
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.point, %struct.point* %tmpcast6, i64 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = bitcast i64* %6 to i32*
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.point, %struct.point* %tmpcast8, i64 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %32 = bitcast %struct.point* %31 to i64*
  %33 = load i64, i64* %32, align 4
  store i64 %33, i64* %9, align 8
  %34 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %35 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %34, i64 0, i32 1
  %36 = bitcast %struct.point* %35 to i64*
  %37 = load i64, i64* %36, align 4
  store i64 %37, i64* %10, align 8
  %38 = call i64 @vector(i64 %33, i64 %37) #8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call { double, double } @midpoint(i64 %39, i64 %37) #8
  %41 = extractvalue { double, double } %40, 0
  %42 = extractvalue { double, double } %40, 1
  %43 = call double @calculate_c(i64 %38, double %41, double %42) #8
  %44 = bitcast i64* %9 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = bitcast i64* %10 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call { double, double } @intersect(i64 %56, i64 %57, double noundef %43, double noundef 1.000000e+04) #8
  %59 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %11, i64 0, i32 0
  %60 = extractvalue { double, double } %58, 0
  store double %60, double* %59, align 8
  %61 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %11, i64 0, i32 1
  %62 = extractvalue { double, double } %58, 1
  store double %62, double* %61, align 8
  %63 = bitcast %struct.dpoint* %8 to i8*
  %64 = bitcast %struct.dpoint* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %63, i8* noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false)
  %65 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fcmp olt double %66, -1.000000e+04
  br i1 %67, label %72, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = fcmp ogt double %70, 1.000000e+04
  br i1 %71, label %72, label %82

72:                                               ; preds = %68, %55
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %3, align 8
  %75 = call { double, double } @intersect(i64 %73, i64 %74, double noundef %43, double noundef -1.000000e+04) #8
  %76 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %12, i64 0, i32 0
  %77 = extractvalue { double, double } %75, 0
  store double %77, double* %76, align 8
  %78 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %12, i64 0, i32 1
  %79 = extractvalue { double, double } %75, 1
  store double %79, double* %78, align 8
  %80 = bitcast %struct.dpoint* %8 to i8*
  %81 = bitcast %struct.dpoint* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %80, i8* noundef nonnull align 8 dereferenceable(16) %81, i64 16, i1 false)
  br label %82

82:                                               ; preds = %72, %68
  br label %299

83:                                               ; preds = %49, %1
  %84 = bitcast i64* %9 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = bitcast i64* %10 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call { double, double } @intersect(i64 %96, i64 %97, double noundef %43, double noundef 1.000000e+04) #8
  %99 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %13, i64 0, i32 0
  %100 = extractvalue { double, double } %98, 0
  store double %100, double* %99, align 8
  %101 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %13, i64 0, i32 1
  %102 = extractvalue { double, double } %98, 1
  store double %102, double* %101, align 8
  %103 = bitcast %struct.dpoint* %8 to i8*
  %104 = bitcast %struct.dpoint* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %103, i8* noundef nonnull align 8 dereferenceable(16) %104, i64 16, i1 false)
  br label %298

105:                                              ; preds = %89, %83
  %106 = bitcast i64* %9 to i32*
  %107 = load i32, i32* %106, align 8
  %108 = bitcast i64* %10 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call { double, double } @intersect(i64 %118, i64 %119, double noundef %43, double noundef 1.000000e+04) #8
  %121 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %14, i64 0, i32 0
  %122 = extractvalue { double, double } %120, 0
  store double %122, double* %121, align 8
  %123 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %14, i64 0, i32 1
  %124 = extractvalue { double, double } %120, 1
  store double %124, double* %123, align 8
  %125 = bitcast %struct.dpoint* %8 to i8*
  %126 = bitcast %struct.dpoint* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %125, i8* noundef nonnull align 8 dereferenceable(16) %126, i64 16, i1 false)
  %127 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %128 = load double, double* %127, align 8
  %129 = fcmp olt double %128, -1.000000e+04
  br i1 %129, label %134, label %130

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %132 = load double, double* %131, align 8
  %133 = fcmp ogt double %132, 1.000000e+04
  br i1 %133, label %134, label %144

134:                                              ; preds = %130, %117
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = call { double, double } @intersect(i64 %135, i64 %136, double noundef %43, double noundef 1.000000e+04) #8
  %138 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %15, i64 0, i32 0
  %139 = extractvalue { double, double } %137, 0
  store double %139, double* %138, align 8
  %140 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %15, i64 0, i32 1
  %141 = extractvalue { double, double } %137, 1
  store double %141, double* %140, align 8
  %142 = bitcast %struct.dpoint* %8 to i8*
  %143 = bitcast %struct.dpoint* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %142, i8* noundef nonnull align 8 dereferenceable(16) %143, i64 16, i1 false)
  br label %144

144:                                              ; preds = %134, %130
  br label %297

145:                                              ; preds = %111, %105
  %146 = bitcast i64* %9 to i32*
  %147 = load i32, i32* %146, align 8
  %148 = bitcast i64* %10 to i32*
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %3, align 8
  %160 = call { double, double } @intersect(i64 %158, i64 %159, double noundef %43, double noundef -1.000000e+04) #8
  %161 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %16, i64 0, i32 0
  %162 = extractvalue { double, double } %160, 0
  store double %162, double* %161, align 8
  %163 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %16, i64 0, i32 1
  %164 = extractvalue { double, double } %160, 1
  store double %164, double* %163, align 8
  %165 = bitcast %struct.dpoint* %8 to i8*
  %166 = bitcast %struct.dpoint* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %165, i8* noundef nonnull align 8 dereferenceable(16) %166, i64 16, i1 false)
  br label %296

167:                                              ; preds = %151, %145
  %168 = bitcast i64* %9 to i32*
  %169 = load i32, i32* %168, align 8
  %170 = bitcast i64* %10 to i32*
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %5, align 8
  %182 = call { double, double } @intersect(i64 %180, i64 %181, double noundef %43, double noundef 1.000000e+04) #8
  %183 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %17, i64 0, i32 0
  %184 = extractvalue { double, double } %182, 0
  store double %184, double* %183, align 8
  %185 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %17, i64 0, i32 1
  %186 = extractvalue { double, double } %182, 1
  store double %186, double* %185, align 8
  %187 = bitcast %struct.dpoint* %8 to i8*
  %188 = bitcast %struct.dpoint* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %187, i8* noundef nonnull align 8 dereferenceable(16) %188, i64 16, i1 false)
  br label %295

189:                                              ; preds = %173, %167
  %190 = bitcast i64* %9 to i32*
  %191 = load i32, i32* %190, align 8
  %192 = bitcast i64* %10 to i32*
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %191, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %195
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* %4, align 8
  %204 = call { double, double } @intersect(i64 %202, i64 %203, double noundef %43, double noundef -1.000000e+04) #8
  %205 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %18, i64 0, i32 0
  %206 = extractvalue { double, double } %204, 0
  store double %206, double* %205, align 8
  %207 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %18, i64 0, i32 1
  %208 = extractvalue { double, double } %204, 1
  store double %208, double* %207, align 8
  %209 = bitcast %struct.dpoint* %8 to i8*
  %210 = bitcast %struct.dpoint* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %209, i8* noundef nonnull align 8 dereferenceable(16) %210, i64 16, i1 false)
  %211 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = fcmp olt double %212, -1.000000e+04
  br i1 %213, label %218, label %214

214:                                              ; preds = %201
  %215 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %216 = load double, double* %215, align 8
  %217 = fcmp ogt double %216, 1.000000e+04
  br i1 %217, label %218, label %228

218:                                              ; preds = %214, %201
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* %3, align 8
  %221 = call { double, double } @intersect(i64 %219, i64 %220, double noundef %43, double noundef -1.000000e+04) #8
  %222 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %19, i64 0, i32 0
  %223 = extractvalue { double, double } %221, 0
  store double %223, double* %222, align 8
  %224 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %19, i64 0, i32 1
  %225 = extractvalue { double, double } %221, 1
  store double %225, double* %224, align 8
  %226 = bitcast %struct.dpoint* %8 to i8*
  %227 = bitcast %struct.dpoint* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %226, i8* noundef nonnull align 8 dereferenceable(16) %227, i64 16, i1 false)
  br label %228

228:                                              ; preds = %218, %214
  br label %294

229:                                              ; preds = %195, %189
  %230 = bitcast i64* %9 to i32*
  %231 = load i32, i32* %230, align 8
  %232 = bitcast i64* %10 to i32*
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %231, %233
  br i1 %234, label %235, label %251

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %235
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* %4, align 8
  %244 = call { double, double } @intersect(i64 %242, i64 %243, double noundef %43, double noundef -1.000000e+04) #8
  %245 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %20, i64 0, i32 0
  %246 = extractvalue { double, double } %244, 0
  store double %246, double* %245, align 8
  %247 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %20, i64 0, i32 1
  %248 = extractvalue { double, double } %244, 1
  store double %248, double* %247, align 8
  %249 = bitcast %struct.dpoint* %8 to i8*
  %250 = bitcast %struct.dpoint* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %249, i8* noundef nonnull align 8 dereferenceable(16) %250, i64 16, i1 false)
  br label %293

251:                                              ; preds = %235, %229
  %252 = bitcast i64* %9 to i32*
  %253 = load i32, i32* %252, align 8
  %254 = bitcast i64* %10 to i32*
  %255 = load i32, i32* %254, align 8
  %256 = icmp sgt i32 %253, %255
  br i1 %256, label %257, label %291

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %259, %261
  br i1 %262, label %263, label %291

263:                                              ; preds = %257
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* %4, align 8
  %266 = call { double, double } @intersect(i64 %264, i64 %265, double noundef %43, double noundef -1.000000e+04) #8
  %267 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %21, i64 0, i32 0
  %268 = extractvalue { double, double } %266, 0
  store double %268, double* %267, align 8
  %269 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %21, i64 0, i32 1
  %270 = extractvalue { double, double } %266, 1
  store double %270, double* %269, align 8
  %271 = bitcast %struct.dpoint* %8 to i8*
  %272 = bitcast %struct.dpoint* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %271, i8* noundef nonnull align 8 dereferenceable(16) %272, i64 16, i1 false)
  %273 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %274 = load double, double* %273, align 8
  %275 = fcmp olt double %274, -1.000000e+04
  br i1 %275, label %280, label %276

276:                                              ; preds = %263
  %277 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %278 = load double, double* %277, align 8
  %279 = fcmp ogt double %278, 1.000000e+04
  br i1 %279, label %280, label %290

280:                                              ; preds = %276, %263
  %281 = load i64, i64* %7, align 8
  %282 = load i64, i64* %5, align 8
  %283 = call { double, double } @intersect(i64 %281, i64 %282, double noundef %43, double noundef 1.000000e+04) #8
  %284 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %22, i64 0, i32 0
  %285 = extractvalue { double, double } %283, 0
  store double %285, double* %284, align 8
  %286 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %22, i64 0, i32 1
  %287 = extractvalue { double, double } %283, 1
  store double %287, double* %286, align 8
  %288 = bitcast %struct.dpoint* %8 to i8*
  %289 = bitcast %struct.dpoint* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %288, i8* noundef nonnull align 8 dereferenceable(16) %289, i64 16, i1 false)
  br label %290

290:                                              ; preds = %280, %276
  br label %292

291:                                              ; preds = %257, %251
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

292:                                              ; preds = %290
  br label %293

293:                                              ; preds = %292, %241
  br label %294

294:                                              ; preds = %293, %228
  br label %295

295:                                              ; preds = %294, %179
  br label %296

296:                                              ; preds = %295, %157
  br label %297

297:                                              ; preds = %296, %144
  br label %298

298:                                              ; preds = %297, %95
  br label %299

299:                                              ; preds = %298, %82
  %tmpcast5 = bitcast i64* %2 to %struct.point*
  %300 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 0
  %301 = load double, double* %300, align 8
  %302 = fptosi double %301 to i32
  %303 = bitcast i64* %2 to i32*
  store i32 %302, i32* %303, align 8
  %304 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i64 0, i32 1
  %305 = load double, double* %304, align 8
  %306 = fptosi double %305 to i32
  %307 = getelementptr inbounds %struct.point, %struct.point* %tmpcast5, i64 0, i32 1
  store i32 %306, i32* %307, align 4
  %308 = load i64, i64* %2, align 8
  ret i64 %308
}

declare dso_local %struct.CHpoints* @next(%struct.CHpoints* noundef) #2

declare dso_local i64 @vector(i64, i64) #2

declare dso_local double @calculate_c(i64, double, double) #2

declare dso_local { double, double } @midpoint(i64, i64) #2

declare dso_local { double, double } @intersect(i64, i64, double noundef, double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_infinit_points_to_K(%struct.CHpoints* noundef %0) #0 {
  %2 = load i32, i32* @CHno, align 4
  %3 = shl nsw i32 %2, 1
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 20) #8
  store i8* %6, i8** bitcast (%struct.Knode** @K to i8**), align 8
  %7 = shl nsw i32 %2, 1
  %8 = add nsw i32 %7, -2
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 32) #8
  store i8* %10, i8** bitcast (%struct.Enode** @E to i8**), align 8
  %11 = call %struct.CHsplay_node* @CHinit() #8
  store %struct.CHsplay_node* %11, %struct.CHsplay_node** @CHSplaytree, align 8
  %12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 3
  %13 = load %struct.CHpoints*, %struct.CHpoints** %12, align 8
  %14 = call i64 @compute_v(%struct.CHpoints* noundef %0)
  call void @add_point(i64 %14)
  %15 = load i32, i32* @Kcount, align 4
  %16 = add nsw i32 %15, -1
  %17 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = call i8* @CHinsert(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.CHpoints* noundef %0) #8
  br label %19

19:                                               ; preds = %20, %1
  %.0 = phi %struct.CHpoints* [ %13, %1 ], [ %27, %20 ]
  %.not = icmp eq %struct.CHpoints* %.0, %0
  br i1 %.not, label %28, label %20

20:                                               ; preds = %19
  %21 = call i64 @compute_v(%struct.CHpoints* noundef %.0)
  call void @add_point(i64 %21)
  %22 = load i32, i32* @Kcount, align 4
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = call i8* @CHinsert(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.CHpoints* noundef %.0) #8
  %26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 3
  %27 = load %struct.CHpoints*, %struct.CHpoints** %26, align 8
  br label %19, !llvm.loop !6

28:                                               ; preds = %19
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local %struct.CHsplay_node* @CHinit() #2

declare dso_local i8* @CHinsert(%struct.CHsplay_node** noundef, %struct.CHpoints* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @add_edge(i32 noundef %0, i32 noundef %1) #6 {
  %3 = load %struct.Enode*, %struct.Enode** @E, align 8
  %4 = load i32, i32* @Ecount, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.Enode, %struct.Enode* %3, i64 %5, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load %struct.Enode*, %struct.Enode** @E, align 8
  %8 = load i32, i32* @Ecount, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.Enode, %struct.Enode* %7, i64 %9, i32 1
  store i32 %1, i32* %10, align 4
  %11 = load %struct.Knode*, %struct.Knode** @K, align 8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds %struct.Knode, %struct.Knode* %11, i64 %12, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* @Ecount, align 4
  %18 = load %struct.Knode*, %struct.Knode** @K, align 8
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds %struct.Knode, %struct.Knode* %18, i64 %19, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @Ecount, align 4
  %22 = load %struct.Enode*, %struct.Enode** @E, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.Enode, %struct.Enode* %22, i64 %23, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @Ecount, align 4
  %26 = load %struct.Enode*, %struct.Enode** @E, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.Enode, %struct.Enode* %26, i64 %27, i32 4
  store i32 %25, i32* %28, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.Knode*, %struct.Knode** @K, align 8
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds %struct.Knode, %struct.Knode* %30, i64 %31, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %29
  %36 = load i32, i32* @Ecount, align 4
  %37 = load %struct.Knode*, %struct.Knode** @K, align 8
  %38 = sext i32 %0 to i64
  %39 = getelementptr inbounds %struct.Knode, %struct.Knode* %37, i64 %38, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.Knode*, %struct.Knode** @K, align 8
  %41 = sext i32 %0 to i64
  %42 = getelementptr inbounds %struct.Knode, %struct.Knode* %40, i64 %41, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.Enode*, %struct.Enode** @E, align 8
  %45 = load i32, i32* @Ecount, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Enode, %struct.Enode* %44, i64 %46, i32 2
  store i32 %43, i32* %47, align 4
  %48 = load %struct.Knode*, %struct.Knode** @K, align 8
  %49 = sext i32 %0 to i64
  %50 = getelementptr inbounds %struct.Knode, %struct.Knode* %48, i64 %49, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.Enode*, %struct.Enode** @E, align 8
  %53 = load i32, i32* @Ecount, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Enode, %struct.Enode* %52, i64 %54, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.Enode*, %struct.Enode** @E, align 8
  %57 = load %struct.Knode*, %struct.Knode** @K, align 8
  %58 = sext i32 %0 to i64
  %59 = getelementptr inbounds %struct.Knode, %struct.Knode* %57, i64 %58, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.Enode, %struct.Enode* %56, i64 %61, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, %0
  br i1 %64, label %65, label %82

65:                                               ; preds = %35
  %66 = load i32, i32* @Ecount, align 4
  %67 = load %struct.Enode*, %struct.Enode** @E, align 8
  %68 = load %struct.Knode*, %struct.Knode** @K, align 8
  %69 = sext i32 %0 to i64
  %70 = getelementptr inbounds %struct.Knode, %struct.Knode* %68, i64 %69, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.Enode, %struct.Enode* %67, i64 %72, i32 2
  store i32 %66, i32* %73, align 4
  %74 = load i32, i32* @Ecount, align 4
  %75 = load %struct.Enode*, %struct.Enode** @E, align 8
  %76 = load %struct.Knode*, %struct.Knode** @K, align 8
  %77 = sext i32 %0 to i64
  %78 = getelementptr inbounds %struct.Knode, %struct.Knode* %76, i64 %77, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.Enode, %struct.Enode* %75, i64 %80, i32 4
  store i32 %74, i32* %81, align 4
  br label %99

82:                                               ; preds = %35
  %83 = load i32, i32* @Ecount, align 4
  %84 = load %struct.Enode*, %struct.Enode** @E, align 8
  %85 = load %struct.Knode*, %struct.Knode** @K, align 8
  %86 = sext i32 %0 to i64
  %87 = getelementptr inbounds %struct.Knode, %struct.Knode* %85, i64 %86, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Enode, %struct.Enode* %84, i64 %89, i32 3
  store i32 %83, i32* %90, align 4
  %91 = load i32, i32* @Ecount, align 4
  %92 = load %struct.Enode*, %struct.Enode** @E, align 8
  %93 = load %struct.Knode*, %struct.Knode** @K, align 8
  %94 = sext i32 %0 to i64
  %95 = getelementptr inbounds %struct.Knode, %struct.Knode* %93, i64 %94, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Enode, %struct.Enode* %92, i64 %97, i32 5
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %82, %65
  br label %105

100:                                              ; preds = %29
  %101 = load i32, i32* @Ecount, align 4
  %102 = load %struct.Knode*, %struct.Knode** @K, align 8
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds %struct.Knode, %struct.Knode* %102, i64 %103, i32 3
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %99
  br label %106

106:                                              ; preds = %105, %16
  %107 = load %struct.Knode*, %struct.Knode** @K, align 8
  %108 = sext i32 %1 to i64
  %109 = getelementptr inbounds %struct.Knode, %struct.Knode* %107, i64 %108, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i32, i32* @Ecount, align 4
  %114 = load %struct.Knode*, %struct.Knode** @K, align 8
  %115 = sext i32 %1 to i64
  %116 = getelementptr inbounds %struct.Knode, %struct.Knode* %114, i64 %115, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @Ecount, align 4
  %118 = load %struct.Enode*, %struct.Enode** @E, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.Enode, %struct.Enode* %118, i64 %119, i32 2
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @Ecount, align 4
  %122 = load %struct.Enode*, %struct.Enode** @E, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds %struct.Enode, %struct.Enode* %122, i64 %123, i32 4
  store i32 %121, i32* %124, align 4
  br label %202

125:                                              ; preds = %106
  %126 = load %struct.Knode*, %struct.Knode** @K, align 8
  %127 = sext i32 %1 to i64
  %128 = getelementptr inbounds %struct.Knode, %struct.Knode* %126, i64 %127, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %196

131:                                              ; preds = %125
  %132 = load i32, i32* @Ecount, align 4
  %133 = load %struct.Knode*, %struct.Knode** @K, align 8
  %134 = sext i32 %1 to i64
  %135 = getelementptr inbounds %struct.Knode, %struct.Knode* %133, i64 %134, i32 2
  store i32 %132, i32* %135, align 4
  %136 = load %struct.Knode*, %struct.Knode** @K, align 8
  %137 = sext i32 %1 to i64
  %138 = getelementptr inbounds %struct.Knode, %struct.Knode* %136, i64 %137, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.Enode*, %struct.Enode** @E, align 8
  %141 = load i32, i32* @Ecount, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.Enode, %struct.Enode* %140, i64 %142, i32 2
  store i32 %139, i32* %143, align 4
  %144 = load %struct.Knode*, %struct.Knode** @K, align 8
  %145 = sext i32 %1 to i64
  %146 = getelementptr inbounds %struct.Knode, %struct.Knode* %144, i64 %145, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.Enode*, %struct.Enode** @E, align 8
  %149 = load i32, i32* @Ecount, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Enode, %struct.Enode* %148, i64 %150, i32 4
  store i32 %147, i32* %151, align 4
  %152 = load %struct.Enode*, %struct.Enode** @E, align 8
  %153 = load %struct.Knode*, %struct.Knode** @K, align 8
  %154 = sext i32 %1 to i64
  %155 = getelementptr inbounds %struct.Knode, %struct.Knode* %153, i64 %154, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.Enode, %struct.Enode* %152, i64 %157, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, %1
  br i1 %160, label %161, label %178

161:                                              ; preds = %131
  %162 = load i32, i32* @Ecount, align 4
  %163 = load %struct.Enode*, %struct.Enode** @E, align 8
  %164 = load %struct.Knode*, %struct.Knode** @K, align 8
  %165 = sext i32 %1 to i64
  %166 = getelementptr inbounds %struct.Knode, %struct.Knode* %164, i64 %165, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Enode, %struct.Enode* %163, i64 %168, i32 2
  store i32 %162, i32* %169, align 4
  %170 = load i32, i32* @Ecount, align 4
  %171 = load %struct.Enode*, %struct.Enode** @E, align 8
  %172 = load %struct.Knode*, %struct.Knode** @K, align 8
  %173 = sext i32 %1 to i64
  %174 = getelementptr inbounds %struct.Knode, %struct.Knode* %172, i64 %173, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.Enode, %struct.Enode* %171, i64 %176, i32 4
  store i32 %170, i32* %177, align 4
  br label %195

178:                                              ; preds = %131
  %179 = load i32, i32* @Ecount, align 4
  %180 = load %struct.Enode*, %struct.Enode** @E, align 8
  %181 = load %struct.Knode*, %struct.Knode** @K, align 8
  %182 = sext i32 %1 to i64
  %183 = getelementptr inbounds %struct.Knode, %struct.Knode* %181, i64 %182, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.Enode, %struct.Enode* %180, i64 %185, i32 3
  store i32 %179, i32* %186, align 4
  %187 = load i32, i32* @Ecount, align 4
  %188 = load %struct.Enode*, %struct.Enode** @E, align 8
  %189 = load %struct.Knode*, %struct.Knode** @K, align 8
  %190 = sext i32 %1 to i64
  %191 = getelementptr inbounds %struct.Knode, %struct.Knode* %189, i64 %190, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.Enode, %struct.Enode* %188, i64 %193, i32 5
  store i32 %187, i32* %194, align 4
  br label %195

195:                                              ; preds = %178, %161
  br label %201

196:                                              ; preds = %125
  %197 = load i32, i32* @Ecount, align 4
  %198 = load %struct.Knode*, %struct.Knode** @K, align 8
  %199 = sext i32 %1 to i64
  %200 = getelementptr inbounds %struct.Knode, %struct.Knode* %198, i64 %199, i32 3
  store i32 %197, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %195
  br label %202

202:                                              ; preds = %201, %112
  %203 = load i32, i32* @Ecount, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* @Ecount, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.key, align 8
  %3 = alloca %struct.key, align 8
  %4 = alloca %struct.dpoint, align 8
  %5 = alloca %struct.dpoint, align 8
  %6 = call %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** noundef nonnull @CHSplaytree) #8
  %7 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %6) #8
  %8 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %6) #8
  %9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i64 0, i32 1
  %10 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %7) #8
  %11 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %10, i64 0, i32 1
  %12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i64 0, i32 1
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %6, i64 0, i32 1
  %14 = bitcast %struct.point* %11 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = bitcast %struct.point* %12 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.point* %13 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call { double, double } @centre(i64 %15, i64 %17, i64 %19) #8
  %21 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %4, i64 0, i32 0
  %22 = extractvalue { double, double } %20, 0
  store double %22, double* %21, align 8
  %23 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %4, i64 0, i32 1
  %24 = extractvalue { double, double } %20, 1
  store double %24, double* %23, align 8
  %25 = bitcast %struct.point* %9 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %4, i64 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = call double @radius2(i64 %26, double %28, double %24) #8
  %30 = getelementptr inbounds %struct.key, %struct.key* %2, i64 0, i32 0
  store double %29, double* %30, align 8
  %31 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %7) #8
  %32 = call double @angle(%struct.CHpoints* noundef %31, %struct.CHpoints* noundef %7, %struct.CHpoints* noundef %6) #8
  %33 = getelementptr inbounds %struct.key, %struct.key* %2, i64 0, i32 1
  store double %32, double* %33, align 8
  %34 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i64 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %2, i64 0, i32 2
  store i32 %35, i32* %36, align 8
  call void @CHdelete(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.key* noundef nonnull byval(%struct.key) align 8 %2) #8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i64 0, i32 1
  %38 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %6, i64 0, i32 1
  %39 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i64 0, i32 1
  %40 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %8) #8
  %41 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %40, i64 0, i32 1
  %42 = bitcast %struct.point* %38 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = bitcast %struct.point* %39 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = bitcast %struct.point* %41 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call { double, double } @centre(i64 %43, i64 %45, i64 %47) #8
  %49 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  %50 = extractvalue { double, double } %48, 0
  store double %50, double* %49, align 8
  %51 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  %52 = extractvalue { double, double } %48, 1
  store double %52, double* %51, align 8
  %53 = bitcast %struct.point* %37 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = call double @radius2(i64 %54, double %56, double %52) #8
  %58 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 0
  store double %57, double* %58, align 8
  %59 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %8) #8
  %60 = call double @angle(%struct.CHpoints* noundef %6, %struct.CHpoints* noundef %8, %struct.CHpoints* noundef %59) #8
  %61 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 1
  store double %60, double* %61, align 8
  %62 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i64 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 2
  store i32 %63, i32* %64, align 8
  call void @CHdelete(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.key* noundef nonnull byval(%struct.key) align 8 %3) #8
  ret %struct.CHpoints* %6
}

declare dso_local %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** noundef) #2

declare dso_local %struct.CHpoints* @before(%struct.CHpoints* noundef) #2

declare dso_local double @radius2(i64, double, double) #2

declare dso_local { double, double } @centre(i64, i64, i64) #2

declare dso_local double @angle(%struct.CHpoints* noundef, %struct.CHpoints* noundef, %struct.CHpoints* noundef) #2

declare dso_local void @CHdelete(%struct.CHsplay_node** noundef, %struct.key* noundef byval(%struct.key) align 8) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @draw_sec(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.dpoint, align 8
  %3 = alloca %struct.dpoint, align 8
  %4 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  %5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %7 = bitcast %struct.point* %5 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = bitcast %struct.point* %6 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call i32 @length2(i64 %8, i64 %10) #8
  %12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %13 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i64 0, i32 1
  %15 = bitcast %struct.point* %12 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = bitcast %struct.point* %14 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @length2(i64 %16, i64 %18) #8
  %20 = icmp sgt i32 %11, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %25 = bitcast %struct.point* %23 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = bitcast %struct.point* %24 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i32 @length2(i64 %26, i64 %28) #8
  %30 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i64 0, i32 1
  %32 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %33 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %32, i64 0, i32 1
  %34 = bitcast %struct.point* %31 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = bitcast %struct.point* %33 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i32 @length2(i64 %35, i64 %37) #8
  %39 = icmp sgt i32 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  br label %83

42:                                               ; preds = %21, %1
  %43 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %44 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %45 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %44, i64 0, i32 1
  %46 = bitcast %struct.point* %43 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = bitcast %struct.point* %45 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = call i32 @length2(i64 %47, i64 %49) #8
  %51 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  %52 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %51, i64 0, i32 1
  %53 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %54 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %53, i64 0, i32 1
  %55 = bitcast %struct.point* %52 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = bitcast %struct.point* %54 to i64*
  %58 = load i64, i64* %57, align 4
  %59 = call i32 @length2(i64 %56, i64 %58) #8
  %60 = icmp sgt i32 %50, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %63 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #8
  %64 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %63, i64 0, i32 1
  %65 = bitcast %struct.point* %62 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = bitcast %struct.point* %64 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = call i32 @length2(i64 %66, i64 %68) #8
  %70 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %71 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  %72 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %71, i64 0, i32 1
  %73 = bitcast %struct.point* %70 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = bitcast %struct.point* %72 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call i32 @length2(i64 %74, i64 %76) #8
  %78 = icmp sgt i32 %69, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #8
  br label %82

81:                                               ; preds = %61, %42
  br label %82

82:                                               ; preds = %81, %79
  %.01 = phi %struct.CHpoints* [ %80, %79 ], [ %0, %81 ]
  br label %83

83:                                               ; preds = %82, %40
  %.1 = phi %struct.CHpoints* [ %41, %40 ], [ %.01, %82 ]
  %84 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %.1) #8
  %85 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %.1) #8
  %86 = call double @angle(%struct.CHpoints* noundef %84, %struct.CHpoints* noundef %.1, %struct.CHpoints* noundef %85) #8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %84, i64 0, i32 1
  %90 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i64 0, i32 1
  %91 = bitcast %struct.point* %89 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = bitcast %struct.point* %90 to i64*
  %94 = load i64, i64* %93, align 4
  %95 = call { double, double } @midpoint(i64 %92, i64 %94) #8
  %96 = extractvalue { double, double } %95, 0
  %97 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 0
  store double %96, double* %97, align 8
  %98 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %84, i64 0, i32 1
  %99 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i64 0, i32 1
  %100 = bitcast %struct.point* %98 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = bitcast %struct.point* %99 to i64*
  %103 = load i64, i64* %102, align 4
  %104 = call { double, double } @midpoint(i64 %101, i64 %103) #8
  %105 = extractvalue { double, double } %104, 1
  %106 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 1
  store double %105, double* %106, align 8
  %107 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %84, i64 0, i32 1
  %108 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i64 0, i32 1
  %109 = bitcast %struct.point* %107 to i64*
  %110 = load i64, i64* %109, align 4
  %111 = bitcast %struct.point* %108 to i64*
  %112 = load i64, i64* %111, align 4
  %113 = call i32 @length2(i64 %110, i64 %112) #8
  %114 = sitofp i32 %113 to double
  %115 = call double @sqrt(double noundef %114) #8
  %116 = fmul double %115, 5.000000e-01
  br label %143

117:                                              ; preds = %83
  %118 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %84, i64 0, i32 1
  %119 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.1, i64 0, i32 1
  %120 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i64 0, i32 1
  %121 = bitcast %struct.point* %118 to i64*
  %122 = load i64, i64* %121, align 4
  %123 = bitcast %struct.point* %119 to i64*
  %124 = load i64, i64* %123, align 4
  %125 = bitcast %struct.point* %120 to i64*
  %126 = load i64, i64* %125, align 4
  %127 = call { double, double } @centre(i64 %122, i64 %124, i64 %126) #8
  %128 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 0
  %129 = extractvalue { double, double } %127, 0
  store double %129, double* %128, align 8
  %130 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 1
  %131 = extractvalue { double, double } %127, 1
  store double %131, double* %130, align 8
  %132 = bitcast %struct.dpoint* %2 to i8*
  %133 = bitcast %struct.dpoint* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %132, i8* noundef nonnull align 8 dereferenceable(16) %133, i64 16, i1 false)
  %134 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %135 = bitcast %struct.point* %134 to i64*
  %136 = load i64, i64* %135, align 4
  %137 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = call double @radius2(i64 %136, double %138, double %140) #8
  %142 = call double @sqrt(double noundef %141) #8
  br label %143

143:                                              ; preds = %117, %88
  %.0 = phi double [ %116, %88 ], [ %142, %117 ]
  %144 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 0
  %145 = load double, double* %144, align 8
  %146 = fptosi double %145 to i32
  %147 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = fptosi double %148 to i32
  %150 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef %146, i32 noundef %149) #8
  %151 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double noundef %.0) #8
  ret void
}

declare dso_local i32 @length2(i64, i64) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @alg2() #0 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to %struct.point*
  %2 = alloca %struct.dpoint, align 8
  %3 = alloca %struct.dpoint, align 8
  %4 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @add_infinit_points_to_K(%struct.CHpoints* noundef %4)
  %5 = load i32, i32* @CHno, align 4
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %72

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %17, %7
  %.0 = phi %struct.CHpoints* [ undef, %7 ], [ %18, %17 ]
  %9 = load i32, i32* @CHno, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %66

11:                                               ; preds = %8
  %12 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %13 = call %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* noundef %12)
  %14 = load i32, i32* @CHno, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @draw_sec(%struct.CHpoints* noundef %13)
  br label %17

17:                                               ; preds = %16, %11
  %18 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %13) #8
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i64 0, i32 1
  %20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i64 0, i32 1
  %21 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %13) #8
  %22 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %21, i64 0, i32 1
  %23 = bitcast %struct.point* %19 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = bitcast %struct.point* %20 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = bitcast %struct.point* %22 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call { double, double } @centre(i64 %24, i64 %26, i64 %28) #8
  %30 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 0
  %31 = extractvalue { double, double } %29, 0
  store double %31, double* %30, align 8
  %32 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 1
  %33 = extractvalue { double, double } %29, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.dpoint* %2 to i8*
  %35 = bitcast %struct.dpoint* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %34, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fptosi double %37 to i32
  %39 = bitcast i64* %1 to i32*
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fptosi double %41 to i32
  %43 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %1, align 8
  call void @add_point(i64 %44)
  %45 = load i32, i32* @Kcount, align 4
  %46 = add nsw i32 %45, -1
  %47 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i64 0, i32 2
  %48 = load i32, i32* %47, align 4
  call void @add_edge(i32 noundef %46, i32 noundef %48)
  %49 = load i32, i32* @Kcount, align 4
  %50 = add nsw i32 %49, -1
  %51 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i64 0, i32 2
  %52 = load i32, i32* %51, align 4
  call void @add_edge(i32 noundef %50, i32 noundef %52)
  %53 = load i32, i32* @Kcount, align 4
  %54 = add nsw i32 %53, -1
  %55 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i64 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %13) #8
  %57 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i64 0, i32 3
  store %struct.CHpoints* %56, %struct.CHpoints** %57, align 8
  %58 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %18) #8
  %59 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %58, i64 0, i32 4
  store %struct.CHpoints* %18, %struct.CHpoints** %59, align 8
  store %struct.CHpoints* %18, %struct.CHpoints** @S, align 8
  %60 = load i32, i32* @CHno, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @CHno, align 4
  %62 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %13) #8
  %63 = call i8* @CHinsert(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.CHpoints* noundef %62) #8
  %64 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %13) #8
  %65 = call i8* @CHinsert(%struct.CHsplay_node** noundef nonnull @CHSplaytree, %struct.CHpoints* noundef %64) #8
  br label %8, !llvm.loop !7

66:                                               ; preds = %8
  %67 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %.0, i64 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %.0) #8
  %70 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %69, i64 0, i32 2
  %71 = load i32, i32* %70, align 4
  call void @add_edge(i32 noundef %68, i32 noundef %71)
  br label %81

72:                                               ; preds = %0
  store i32 2, i32* @CHno, align 4
  br i1 true, label %73, label %80

73:                                               ; preds = %72
  %74 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %75 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %74, i64 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %74) #8
  %78 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %77, i64 0, i32 2
  %79 = load i32, i32* %78, align 4
  call void @add_edge(i32 noundef %76, i32 noundef %79)
  br label %80

80:                                               ; preds = %73, %72
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i8*, i8** bitcast (%struct.CHpoints** @S to i8**), align 8
  call void @free(i8* noundef %82) #8
  %83 = load %struct.CHsplay_node*, %struct.CHsplay_node** @CHSplaytree, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %83) #8
  ret void
}

declare dso_local void @CHfree_tree(%struct.CHsplay_node* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @construct_vor() #0 {
  %1 = call %struct.CHpoints* (...) @construct_ch() #8
  store %struct.CHpoints* %1, %struct.CHpoints** @S, align 8
  call void @number_points(%struct.CHpoints* noundef %1) #8
  call void @alg2()
  call void @clean_up()
  ret void
}

declare dso_local %struct.CHpoints* @construct_ch(...) #2

declare dso_local void @number_points(%struct.CHpoints* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @get_file()
  call void @construct_vor()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
