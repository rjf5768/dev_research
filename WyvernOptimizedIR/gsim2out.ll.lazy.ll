; ModuleID = './gsim2out.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsim2out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_descr = type { i16, i16, i16, i16 }
%struct.gs_state_s = type opaque
%struct.status = type { %struct.gs_matrix_s, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }

@.str = private unnamed_addr constant [15 x i8] c"gsim2out cells\00", align 1
@trace_from.nesw = internal global [5 x %struct.dir_descr] [%struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }, %struct.dir_descr { i16 1, i16 1, i16 1, i16 0 }, %struct.dir_descr { i16 1, i16 -1, i16 0, i16 -1 }, %struct.dir_descr { i16 -1, i16 -1, i16 -1, i16 0 }, %struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_type1imagepath(%struct.gs_state_s* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, i8* noundef %8, i32 noundef %9) #0 {
  %11 = alloca %struct.status, align 8
  %12 = alloca %struct.gs_matrix_s, align 8
  %13 = alloca %struct.gs_point_s, align 4
  %14 = alloca %struct.gs_point_s, align 4
  %15 = alloca %struct.gs_point_s, align 4
  %16 = shl nsw i32 %3, 2
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %19 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %18) #6
  %20 = fpext float %17 to double
  %21 = fpext float %17 to double
  %22 = call i32 @gs_make_scaling(double noundef %20, double noundef %21, %struct.gs_matrix_s* noundef nonnull %12) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %26 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %27 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef nonnull %12, %struct.gs_matrix_s* noundef nonnull %25, %struct.gs_matrix_s* noundef nonnull %26) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %31 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %32 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef nonnull %30, %struct.gs_matrix_s* noundef nonnull %31) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %10
  %.02 = phi i32 [ %22, %10 ], [ %27, %24 ], [ %32, %29 ]
  br label %193

35:                                               ; preds = %29
  %36 = add nsw i32 %2, 2
  %37 = add nsw i32 %3, 2
  %38 = mul nsw i32 %36, %37
  %39 = call i8* @gs_malloc(i32 noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %193

42:                                               ; preds = %35
  call void @fill_cells(i8* noundef nonnull %39, i8* noundef %1, i32 noundef %2, i32 noundef %3)
  %43 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  store i8* %8, i8** %43, align 8
  %44 = zext i32 %9 to i64
  %45 = getelementptr inbounds i8, i8* %8, i64 %44
  %46 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 1
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %64, %42
  %.03 = phi i32 [ 0, %42 ], [ %65, %64 ]
  %48 = icmp slt i32 %.03, %2
  br i1 %48, label %49, label %66

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %61, %49
  %.01 = phi i32 [ 1, %49 ], [ %62, %61 ]
  %.not8 = icmp sgt i32 %.01, %3
  br i1 %.not8, label %63, label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %2, 2
  %53 = mul nsw i32 %.01, %52
  %54 = add nsw i32 %53, %.03
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %39, i64 %56
  %58 = load i8, i8* %57, align 1
  %.not9 = icmp eq i8 %58, 0
  br i1 %.not9, label %60, label %59

59:                                               ; preds = %51
  br label %67

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %.01, 1
  br label %50, !llvm.loop !4

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.03, 1
  br label %47, !llvm.loop !6

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %59
  %68 = fmul double %6, 4.000000e+00
  %69 = fmul double %7, 4.000000e+00
  %70 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %71 = call i32 @gs_distance_transform(double noundef %68, double noundef %69, %struct.gs_matrix_s* noundef nonnull %70, %struct.gs_point_s* noundef nonnull %13) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = fmul double %4, 4.000000e+00
  %75 = fmul double %5, 4.000000e+00
  %76 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %77 = call i32 @gs_distance_transform(double noundef %74, double noundef %75, %struct.gs_matrix_s* noundef nonnull %76, %struct.gs_point_s* noundef nonnull %14) #6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = sitofp i32 %.03 to double
  %81 = fsub double %80, %6
  %82 = fmul double %81, 4.000000e+00
  %83 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 0
  %84 = call i32 @gs_distance_transform(double noundef %82, double noundef 0.000000e+00, %struct.gs_matrix_s* noundef nonnull %83, %struct.gs_point_s* noundef nonnull %15) #6
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79, %73, %67
  %.1 = phi i32 [ %71, %67 ], [ %77, %73 ], [ %84, %79 ]
  br label %193

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i64 0, i32 0
  %89 = load float, float* %88, align 4
  %90 = fpext float %89 to double
  %91 = call i32 @round_coord(double noundef %90)
  %92 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i64 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fpext float %94 to double
  %96 = call i32 @round_coord(double noundef %95)
  %97 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 3
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i64 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = call i32 @round_coord(double noundef %100)
  %102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i64 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = fpext float %103 to double
  %105 = call i32 @round_coord(double noundef %104)
  %106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i64 0, i32 0
  %107 = load float, float* %106, align 4
  %108 = fpext float %107 to double
  %109 = call i32 @round_coord(double noundef %108)
  %110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i64 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = fpext float %111 to double
  %113 = call i32 @round_coord(double noundef %112)
  %114 = call i32 @put_int(%struct.status* noundef nonnull %11, i32 noundef %109)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %87
  br label %193

117:                                              ; preds = %87
  %.not = icmp eq i32 %105, 0
  br i1 %.not, label %118, label %119

118:                                              ; preds = %117
  %.not6 = icmp eq i32 %113, 0
  br i1 %.not6, label %144, label %119

119:                                              ; preds = %118, %117
  %120 = call i32 @put_int(%struct.status* noundef nonnull %11, i32 noundef %113)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = call i32 @put_int(%struct.status* noundef nonnull %11, i32 noundef %101)
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i32 @put_int(%struct.status* noundef nonnull %11, i32 noundef %105)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %122, %119
  %.2 = phi i32 [ %120, %119 ], [ %123, %122 ], [ %126, %125 ]
  br label %193

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ugt i8* %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %193

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  store i8* %140, i8** %138, align 8
  store i8 12, i8* %139, align 1
  %141 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  store i8* %143, i8** %141, align 8
  store i8 7, i8* %142, align 1
  br label %160

144:                                              ; preds = %118
  %145 = call i32 @put_int(%struct.status* noundef nonnull %11, i32 noundef %101)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %193

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ugt i8* %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %193

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %157, align 8
  store i8 13, i8* %158, align 1
  br label %160

160:                                              ; preds = %156, %137
  %161 = shl nsw i32 %.03, 2
  %162 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 5
  store i32 %161, i32* %162, align 8
  %163 = fmul double %7, 4.000000e+00
  %164 = fptosi double %163 to i32
  %165 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 6
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %109, %167
  %169 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 7
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %113, %171
  %173 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 8
  store i32 %172, i32* %173, align 4
  %174 = call i32 @trace_cells(i8* noundef nonnull %39, i32 noundef %2, i32 noundef %3, %struct.status* noundef nonnull %11)
  call void @gs_free(i8* noundef nonnull %39, i32 noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %160
  br label %193

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %.not7 = icmp ult i8* %179, %181
  br i1 %.not7, label %183, label %182

182:                                              ; preds = %177
  br label %193

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %184, align 8
  store i8 14, i8* %185, align 1
  %187 = getelementptr inbounds %struct.status, %struct.status* %11, i64 0, i32 4
  %188 = load i8*, i8** %187, align 8
  %189 = ptrtoint i8* %188 to i64
  %190 = ptrtoint i8* %8 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  br label %193

193:                                              ; preds = %183, %182, %176, %155, %147, %136, %128, %116, %86, %41, %34
  %.0 = phi i32 [ %.02, %34 ], [ -25, %41 ], [ %.1, %86 ], [ %114, %116 ], [ %.2, %128 ], [ -13, %136 ], [ %174, %176 ], [ -13, %182 ], [ %192, %183 ], [ %145, %147 ], [ -13, %155 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @fill_cells(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds i8, i8* %1, i64 -1
  %6 = add nsw i32 %2, 2
  %7 = mul nsw i32 %6, %3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = add nsw i32 %2, 2
  %12 = add nsw i32 %3, 2
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %35, %4
  %.07 = phi i8* [ %5, %4 ], [ %.18, %35 ]
  %.06 = phi i32 [ 0, %4 ], [ %38, %35 ]
  %.04 = phi i8* [ %10, %4 ], [ %37, %35 ]
  %.01 = phi i32 [ undef, %4 ], [ %.1, %35 ]
  %16 = icmp slt i32 %.06, %3
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %30, %17
  %.18 = phi i8* [ %.07, %17 ], [ %.29, %30 ]
  %.15 = phi i8* [ %.04, %17 ], [ %33, %30 ]
  %.02 = phi i32 [ 0, %17 ], [ %32, %30 ]
  %.1 = phi i32 [ %.01, %17 ], [ %.2, %30 ]
  %.0 = phi i32 [ 0, %17 ], [ %31, %30 ]
  %19 = icmp slt i32 %.0, %2
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = icmp eq i32 %.02, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, i8* %.18, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %22, %20
  %.29 = phi i8* [ %23, %22 ], [ %.18, %20 ]
  %.13 = phi i32 [ 128, %22 ], [ %.02, %20 ]
  %.2 = phi i32 [ %25, %22 ], [ %.1, %20 ]
  %27 = and i32 %.2, %.13
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %29, label %28

28:                                               ; preds = %26
  store i8 1, i8* %.15, align 1
  br label %29

29:                                               ; preds = %28, %26
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.0, 1
  %32 = ashr i32 %.13, 1
  %33 = getelementptr inbounds i8, i8* %.15, i64 1
  br label %18, !llvm.loop !7

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %.neg = mul i32 %2, -2
  %narrow = add i32 %.neg, -2
  %36 = sext i32 %narrow to i64
  %37 = getelementptr inbounds i8, i8* %.15, i64 %36
  %38 = add nuw nsw i32 %.06, 1
  br label %15, !llvm.loop !8

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @round_coord(double noundef %0) #3 {
  %2 = fadd double %0, 5.000000e-01
  %3 = fptosi double %2 to i64
  %4 = icmp sgt i64 %3, 32767
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = icmp slt i64 %3, -32767
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  %10 = trunc i64 %3 to i32
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -32767, %8 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ 32767, %5 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @put_int(%struct.status* nocapture noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 5
  %6 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ugt i8* %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %59

10:                                               ; preds = %2
  %11 = icmp sgt i32 %1, -108
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = icmp slt i32 %1, 108
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc i32 %1 to i8
  %16 = add i8 %15, -117
  %17 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %16, i8* %4, align 1
  br label %57

18:                                               ; preds = %12, %10
  %19 = icmp sgt i32 %1, 107
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = icmp slt i32 %1, 1132
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = add nsw i32 %1, -108
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = add i8 %25, -9
  %27 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %26, i8* %4, align 1
  %28 = trunc i32 %23 to i8
  %29 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %28, i8* %27, align 1
  br label %56

30:                                               ; preds = %20, %18
  %31 = icmp sgt i32 %1, -1132
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = icmp slt i32 %1, -107
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = sub i32 -108, %1
  %36 = lshr i32 %35, 8
  %37 = trunc i32 %36 to i8
  %38 = add i8 %37, -5
  %39 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %38, i8* %4, align 1
  %40 = trunc i32 %35 to i8
  %41 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %40, i8* %39, align 1
  br label %55

42:                                               ; preds = %32, %30
  %43 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 -1, i8* %4, align 1
  %44 = lshr i32 %1, 24
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %45, i8* %43, align 1
  %47 = lshr i32 %1, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %48, i8* %46, align 1
  %50 = lshr i32 %1, 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %51, i8* %49, align 1
  %53 = trunc i32 %1 to i8
  %54 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %53, i8* %52, align 1
  br label %55

55:                                               ; preds = %42, %34
  %.01 = phi i8* [ %41, %34 ], [ %54, %42 ]
  br label %56

56:                                               ; preds = %55, %22
  %.1 = phi i8* [ %29, %22 ], [ %.01, %55 ]
  br label %57

57:                                               ; preds = %56, %14
  %.2 = phi i8* [ %17, %14 ], [ %.1, %56 ]
  %58 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 4
  store i8* %.2, i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %9
  %.0 = phi i32 [ -13, %9 ], [ 0, %57 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_cells(i8* noundef %0, i32 noundef %1, i32 noundef %2, %struct.status* noundef %3) #0 {
  %5 = add nsw i32 %1, 2
  %6 = add nsw i32 %2, 1
  %7 = mul nsw i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -2
  br label %11

11:                                               ; preds = %65, %4
  %.01 = phi i8* [ %10, %4 ], [ %66, %65 ]
  %.not = icmp ult i8* %.01, %0
  br i1 %.not, label %67, label %12

12:                                               ; preds = %11
  %13 = load i8, i8* %.01, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = sub i32 -2, %1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %.01, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %15
  %22 = ptrtoint i8* %.01 to i64
  %23 = ptrtoint i8* %0 to i64
  %24 = sub i64 %22, %23
  %25 = add nsw i32 %1, 2
  %26 = sext i32 %25 to i64
  %27 = srem i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = ptrtoint i8* %.01 to i64
  %30 = ptrtoint i8* %0 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i32 %1, 2
  %33 = sext i32 %32 to i64
  %34 = sdiv i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %28, 2
  %37 = add i32 %36, -3
  %38 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %37, %39
  %41 = shl i32 %35, 2
  %42 = add i32 %41, -4
  %43 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = call i32 @put_dxdy(%struct.status* noundef %3, i32 noundef %40, i32 noundef %45, i32 noundef 1)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  br label %68

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 11
  store i32 0, i32* %50, align 8
  %51 = call i32 @trace_from(%struct.status* noundef %3, i8* noundef nonnull %.01, i32 noundef %1)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %68

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %.not6 = icmp ult i8* %56, %58
  br i1 %.not6, label %60, label %59

59:                                               ; preds = %54
  br label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.status, %struct.status* %3, i64 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %61, align 8
  store i8 9, i8* %62, align 1
  br label %64

64:                                               ; preds = %60, %15, %12
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds i8, i8* %.01, i64 -1
  br label %11, !llvm.loop !9

67:                                               ; preds = %11
  br label %68

68:                                               ; preds = %67, %59, %53, %48
  %.0 = phi i32 [ %46, %48 ], [ %51, %53 ], [ -13, %59 ], [ 0, %67 ]
  ret i32 %.0
}

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_dxdy(%struct.status* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.gs_point_s, align 4
  %6 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %2
  %12 = sitofp i32 %8 to double
  %13 = sitofp i32 %11 to double
  %14 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 0
  %15 = call i32 @gs_distance_transform(double noundef %12, double noundef %13, %struct.gs_matrix_s* noundef %14, %struct.gs_point_s* noundef nonnull %5) #6
  %16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = fpext float %17 to double
  %19 = call i32 @round_coord(double noundef %18)
  %20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 @round_coord(double noundef %22)
  %24 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %19, %25
  %27 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %30, label %32

30:                                               ; preds = %4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30, %4
  %33 = call i32 @put_int(%struct.status* noundef %0, i32 noundef %26)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %71

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %30
  %.not1 = icmp eq i32 %29, 0
  br i1 %.not1, label %43, label %38

38:                                               ; preds = %37
  %39 = call i32 @put_int(%struct.status* noundef %0, i32 noundef %29)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %71

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %71

50:                                               ; preds = %43
  %51 = icmp eq i32 %29, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %.not4 = icmp eq i32 %3, 0
  %53 = select i1 %.not4, i8 6, i8 22
  br label %62

54:                                               ; preds = %50
  %55 = icmp eq i32 %26, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %.not3 = icmp eq i32 %3, 0
  %57 = select i1 %.not3, i8 7, i8 4
  br label %60

58:                                               ; preds = %54
  %.not2 = icmp eq i32 %3, 0
  %59 = select i1 %.not2, i8 5, i8 21
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i8 [ %57, %56 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %52
  %63 = phi i8 [ %53, %52 ], [ %61, %60 ]
  %64 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %64, align 8
  store i8 %63, i8* %65, align 1
  %67 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 5
  store i32 %8, i32* %67, align 8
  %68 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 6
  store i32 %11, i32* %68, align 4
  %69 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 7
  store i32 %19, i32* %69, align 8
  %70 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 8
  store i32 %23, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %49, %41, %35
  %.0 = phi i32 [ %33, %35 ], [ %39, %41 ], [ -13, %49 ], [ 0, %62 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_from(%struct.status* noundef %0, i8* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %2, 2
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %3
  %.03.ph = phi i32 [ 1, %3 ], [ %.03.ph.be, %.outer.backedge ]
  %.02.ph = phi i32 [ 3, %3 ], [ %.02.ph.be, %.outer.backedge ]
  %.01.ph = phi i8* [ %1, %3 ], [ %.01.ph.be, %.outer.backedge ]
  br label %5

5:                                                ; preds = %.outer, %80
  %.01 = phi i8* [ %82, %80 ], [ %.01.ph, %.outer ]
  %6 = zext i32 %.02.ph to i64
  %7 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %6
  %8 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %6, i32 2
  %9 = load i16, i16* %8, align 4
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %6, i32 3
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %.02.ph, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i8, i8* %.01, align 1
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %83

19:                                               ; preds = %15
  store i8 2, i8* %.01, align 1
  br label %20

20:                                               ; preds = %19, %5
  %21 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %6, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %4, %23
  %25 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %7, i64 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %.01, i64 %29
  %31 = load i8, i8* %30, align 1
  %.not = icmp eq i8 %31, 0
  br i1 %.not, label %51, label %32

32:                                               ; preds = %20
  %33 = sext i32 %28 to i64
  %34 = getelementptr inbounds i8, i8* %.01, i64 %33
  %35 = sub nsw i32 1, %.03.ph
  %36 = call i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef %35)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %83

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %7, i64 0, i32 0
  %41 = load i16, i16* %40, align 8
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %6, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = call i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %42, i32 noundef %45, i32 noundef 3)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %83

49:                                               ; preds = %39
  %50 = add nsw i32 %.02.ph, -1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %49, %74
  %.03.ph.be = phi i32 [ 1, %74 ], [ 3, %49 ]
  %.02.ph.be.in = phi i32 [ %75, %74 ], [ %50, %49 ]
  %.01.ph.be = phi i8* [ %.01, %74 ], [ %34, %49 ]
  %.02.ph.be = and i32 %.02.ph.be.in, 3
  br label %.outer

51:                                               ; preds = %20
  %52 = mul nsw i32 %4, %13
  %53 = add nsw i32 %52, %10
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %.01, i64 %54
  %56 = load i8, i8* %55, align 1
  %.not27 = icmp eq i8 %56, 0
  br i1 %.not27, label %57, label %76

57:                                               ; preds = %51
  %58 = sub nsw i32 3, %.03.ph
  %59 = call i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %83

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %7, i64 1, i32 2
  %64 = load i16, i16* %63, align 4
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %10, %65
  %67 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %7, i64 1, i32 3
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %13, %69
  %71 = call i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %66, i32 noundef %70, i32 noundef 1)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %83

74:                                               ; preds = %62
  %75 = add nuw nsw i32 %.02.ph, 1
  br label %.outer.backedge

76:                                               ; preds = %51
  %77 = call i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef 4)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %83

80:                                               ; preds = %76
  %81 = sext i32 %53 to i64
  %82 = getelementptr inbounds i8, i8* %.01, i64 %81
  br label %5

83:                                               ; preds = %79, %73, %61, %48, %38, %18
  %.0 = phi i32 [ 0, %18 ], [ %36, %38 ], [ %46, %48 ], [ %77, %79 ], [ %59, %61 ], [ %71, %73 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %38, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, %3
  store i32 %16, i32* %14, align 8
  br label %37

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 11
  %19 = load i32, i32* %18, align 8
  %.not1 = icmp eq i32 %19, 0
  br i1 %.not1, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, %24
  %29 = call i32 @put_dxdy(%struct.status* noundef %0, i32 noundef %25, i32 noundef %28, i32 noundef 0)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %39

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %17
  %34 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 9
  store i32 %1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 10
  store i32 %2, i32* %35, align 4
  %36 = getelementptr inbounds %struct.status, %struct.status* %0, i64 0, i32 11
  store i32 %3, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %13
  br label %38

38:                                               ; preds = %37, %4
  br label %39

39:                                               ; preds = %38, %31
  %.0 = phi i32 [ 0, %38 ], [ %29, %31 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
