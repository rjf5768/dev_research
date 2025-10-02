; ModuleID = './gimpel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gimpel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gimpel_reduce(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, %struct.stats_struct* noundef %6, %struct.solution_struct** nocapture noundef %7) #0 {
  %9 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %10

10:                                               ; preds = %147, %8
  %.017.in = phi %struct.sm_row_struct** [ %9, %8 ], [ %148, %147 ]
  %.012 = phi %struct.sm_col_struct* [ undef, %8 ], [ %.315, %147 ]
  %.07 = phi %struct.sm_col_struct* [ undef, %8 ], [ %.310, %147 ]
  %.01 = phi i32 [ 0, %8 ], [ %.3, %147 ]
  %.017 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.017.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.017, null
  br i1 %.not, label %.loopexit, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %146

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %16, align 8
  %18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i64 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i64 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %31 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %30, align 8
  %32 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %32, align 8
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %33, i64 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %31, i64 %36
  %38 = load %struct.sm_col_struct*, %struct.sm_col_struct** %37, align 8
  br label %40

39:                                               ; preds = %21, %15
  br label %40

40:                                               ; preds = %39, %29
  %41 = phi %struct.sm_col_struct* [ %38, %29 ], [ null, %39 ]
  %42 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  %44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i64 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %48, align 8
  %50 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %49, i64 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %57 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %56, align 8
  %58 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %59 = load %struct.sm_element_struct*, %struct.sm_element_struct** %58, align 8
  %60 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %59, i64 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %57, i64 %62
  %64 = load %struct.sm_col_struct*, %struct.sm_col_struct** %63, align 8
  br label %66

65:                                               ; preds = %47, %40
  br label %66

66:                                               ; preds = %65, %55
  %67 = phi %struct.sm_col_struct* [ %64, %55 ], [ null, %65 ]
  %68 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %41, i64 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %130

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %67, i64 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %78 = load %struct.sm_element_struct*, %struct.sm_element_struct** %77, align 8
  %79 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %78, i64 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %84 = load %struct.sm_element_struct*, %struct.sm_element_struct** %83, align 8
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %84, i64 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %92 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %91, align 8
  %93 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 4
  %94 = load %struct.sm_element_struct*, %struct.sm_element_struct** %93, align 8
  %95 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %94, i64 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %92, i64 %97
  %99 = load %struct.sm_col_struct*, %struct.sm_col_struct** %98, align 8
  br label %101

100:                                              ; preds = %82, %76
  br label %101

101:                                              ; preds = %100, %90
  %102 = phi %struct.sm_col_struct* [ %99, %90 ], [ null, %100 ]
  %103 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %104 = load %struct.sm_element_struct*, %struct.sm_element_struct** %103, align 8
  %105 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %104, i64 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %108, label %126

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %110 = load %struct.sm_element_struct*, %struct.sm_element_struct** %109, align 8
  %111 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %110, i64 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %118 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %117, align 8
  %119 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 3
  %120 = load %struct.sm_element_struct*, %struct.sm_element_struct** %119, align 8
  %121 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %120, i64 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %118, i64 %123
  %125 = load %struct.sm_col_struct*, %struct.sm_col_struct** %124, align 8
  br label %127

126:                                              ; preds = %108, %101
  br label %127

127:                                              ; preds = %126, %116
  %128 = phi %struct.sm_col_struct* [ %125, %116 ], [ null, %126 ]
  br label %129

129:                                              ; preds = %127, %72
  %.113 = phi %struct.sm_col_struct* [ %102, %127 ], [ %41, %72 ]
  %.18 = phi %struct.sm_col_struct* [ %128, %127 ], [ %67, %72 ]
  %.1 = phi i32 [ 1, %127 ], [ %.01, %72 ]
  br label %130

130:                                              ; preds = %129, %71
  %.214 = phi %struct.sm_col_struct* [ %41, %71 ], [ %.113, %129 ]
  %.29 = phi %struct.sm_col_struct* [ %67, %71 ], [ %.18, %129 ]
  %.2 = phi i32 [ 1, %71 ], [ %.1, %129 ]
  %.not28 = icmp eq i32 %.2, 0
  br i1 %.not28, label %145, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.214, i64 0, i32 3
  %135 = load %struct.sm_element_struct*, %struct.sm_element_struct** %134, align 8
  %136 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %135, i64 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, %133
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.214, i64 0, i32 4
  %141 = load %struct.sm_element_struct*, %struct.sm_element_struct** %140, align 8
  %142 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %141, i64 0, i32 0
  %143 = load i32, i32* %142, align 8
  br label %144

144:                                              ; preds = %139, %131
  %.02 = phi i32 [ %143, %139 ], [ %137, %131 ]
  br label %149

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %11
  %.315 = phi %struct.sm_col_struct* [ %.214, %145 ], [ %.012, %11 ]
  %.310 = phi %struct.sm_col_struct* [ %.29, %145 ], [ %.07, %11 ]
  %.3 = phi i32 [ %.2, %145 ], [ %.01, %11 ]
  br label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.017, i64 0, i32 5
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %149

149:                                              ; preds = %.loopexit, %144
  %.416 = phi %struct.sm_col_struct* [ %.214, %144 ], [ %.012, %.loopexit ]
  %.411 = phi %struct.sm_col_struct* [ %.29, %144 ], [ %.07, %.loopexit ]
  %.04 = phi i32 [ %133, %144 ], [ undef, %.loopexit ]
  %.13 = phi i32 [ %.02, %144 ], [ undef, %.loopexit ]
  %.4 = phi i32 [ 1, %144 ], [ %.01, %.loopexit ]
  %.not22 = icmp eq i32 %.4, 0
  br i1 %.not22, label %215, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.416, i64 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.411, i64 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %.13, -1
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %.13, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %162 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %161, align 8
  %163 = sext i32 %.13 to i64
  %164 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %162, i64 %163
  %165 = load %struct.sm_row_struct*, %struct.sm_row_struct** %164, align 8
  br label %167

166:                                              ; preds = %156, %150
  br label %167

167:                                              ; preds = %166, %160
  %168 = phi %struct.sm_row_struct* [ %165, %160 ], [ null, %166 ]
  %169 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %168) #2
  call void (%struct.sm_row_struct*, i32, ...) bitcast (void (...)* @sm_row_remove to void (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %169, i32 noundef %152) #2
  %170 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.411, i64 0, i32 3
  br label %171

171:                                              ; preds = %188, %167
  %.06.in = phi %struct.sm_element_struct** [ %170, %167 ], [ %189, %188 ]
  %.06 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.06.in, align 8
  %.not23 = icmp eq %struct.sm_element_struct* %.06, null
  br i1 %.not23, label %190, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.06, i64 0, i32 0
  %174 = load i32, i32* %173, align 8
  %.not26 = icmp eq i32 %174, %.04
  br i1 %.not26, label %187, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %169, i64 0, i32 3
  br label %177

177:                                              ; preds = %184, %175
  %.05.in = phi %struct.sm_element_struct** [ %176, %175 ], [ %185, %184 ]
  %.05 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.05.in, align 8
  %.not27 = icmp eq %struct.sm_element_struct* %.05, null
  br i1 %.not27, label %186, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.06, i64 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.05, i64 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %180, i32 noundef %182) #2
  br label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.05, i64 0, i32 4
  br label %177, !llvm.loop !6

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %172
  br label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.06, i64 0, i32 2
  br label %171, !llvm.loop !7

190:                                              ; preds = %171
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %152) #2
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %154) #2
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %.04) #2
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %.13) #2
  %191 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  %194 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = add nsw i32 %3, -1
  %198 = add nsw i32 %4, -1
  %199 = call %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...) bitcast (%struct.solution_struct* (...)* @sm_mincov to %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...)*)(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %197, i32 noundef %198, i32 noundef %5, %struct.stats_struct* noundef %6) #2
  store %struct.solution_struct* %199, %struct.solution_struct** %7, align 8
  %200 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.solution_struct*, %struct.solution_struct** %7, align 8
  %.not24 = icmp eq %struct.solution_struct* %203, null
  br i1 %.not24, label %214, label %204

204:                                              ; preds = %190
  %205 = load %struct.solution_struct*, %struct.solution_struct** %7, align 8
  %206 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %205, i64 0, i32 0
  %207 = load %struct.sm_row_struct*, %struct.sm_row_struct** %206, align 8
  %208 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %169, %struct.sm_row_struct* noundef %207) #2
  %.not25 = icmp eq i32 %208, 0
  br i1 %.not25, label %211, label %209

209:                                              ; preds = %204
  %210 = load %struct.solution_struct*, %struct.solution_struct** %7, align 8
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %210, i32* noundef %2, i32 noundef %154) #2
  br label %213

211:                                              ; preds = %204
  %212 = load %struct.solution_struct*, %struct.solution_struct** %7, align 8
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %212, i32* noundef %2, i32 noundef %152) #2
  br label %213

213:                                              ; preds = %211, %209
  br label %214

214:                                              ; preds = %213, %190
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %169) #2
  br label %216

215:                                              ; preds = %149
  br label %216

216:                                              ; preds = %215, %214
  %.0 = phi i32 [ 1, %214 ], [ 0, %215 ]
  ret i32 %.0
}

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

declare dso_local void @sm_row_remove(...) #1

declare dso_local %struct.sm_element_struct* @sm_insert(...) #1

declare dso_local void @sm_delcol(...) #1

declare dso_local void @sm_delrow(...) #1

declare dso_local %struct.solution_struct* @sm_mincov(...) #1

declare dso_local i32 @sm_row_intersects(...) #1

declare dso_local void @solution_add(...) #1

declare dso_local void @sm_row_free(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
