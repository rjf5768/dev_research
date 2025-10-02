; ModuleID = './gasp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gasp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AEXPAND1_GASP:    \09%s\0A\00", align 1
@trace = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"NEWPRIMES\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"empty reduction in reduce_gasp, shouldn't happen\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"REDUCE_GASP: %s reduced to %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @expand_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 10, i32 noundef %6) #2
  store %struct.set_family* %7, %struct.set_family** %5, align 8
  br label %8

8:                                                ; preds = %13, %4
  %.0 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %.0, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  call void @expand1_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %3, i32 noundef %.0, %struct.set_family** noundef nonnull %5)
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

15:                                               ; preds = %8
  %16 = load %struct.set_family*, %struct.set_family** %5, align 8
  %17 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %16) #2
  store %struct.set_family* %17, %struct.set_family** %5, align 8
  %18 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %17, %struct.set_family* noundef %2, i32 noundef 0) #2
  store %struct.set_family* %18, %struct.set_family** %5, align 8
  ret %struct.set_family* %18
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_dupl(...) #1

declare dso_local %struct.set_family* @expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @expand1_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %3, i32 noundef %4, %struct.set_family** nocapture noundef %5) #0 {
  %7 = load i32, i32* @debug, align 4
  %8 = and i32 %7, 8
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %19, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, %4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %16) #2
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %17) #2
  br label %19

19:                                               ; preds = %9, %6
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %21 = icmp slt i32 %20, 33
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %28

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %25 = add nsw i32 %24, -1
  %26 = ashr i32 %25, 5
  %27 = add nsw i32 %26, 2
  %phi.cast = sext i32 %27 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ 8, %22 ], [ %phi.bo, %23 ]
  %30 = call i8* @malloc(i64 noundef %29) #2
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %33 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %31, i32 noundef %32) #2
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %35 = icmp slt i32 %34, 33
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %39 = add nsw i32 %38, -1
  %40 = ashr i32 %39, 5
  %41 = add nsw i32 %40, 2
  %phi.cast4 = sext i32 %41 to i64
  %phi.bo5 = shl nsw i64 %phi.cast4, 2
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i64 [ 8, %36 ], [ %phi.bo5, %37 ]
  %44 = call i8* @malloc(i64 noundef %43) #2
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %47 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %45, i32 noundef %46) #2
  %48 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %49 = icmp slt i32 %48, 33
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %56

51:                                               ; preds = %42
  %52 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %53 = add nsw i32 %52, -1
  %54 = ashr i32 %53, 5
  %55 = add nsw i32 %54, 2
  %phi.cast6 = sext i32 %55 to i64
  %phi.bo7 = shl nsw i64 %phi.cast6, 2
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i64 [ 8, %50 ], [ %phi.bo7, %51 ]
  %58 = call i8* @malloc(i64 noundef %57) #2
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %61 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %59, i32 noundef %60) #2
  %62 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %63, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  br label %72

72:                                               ; preds = %77, %56
  %.03 = phi i32* [ %66, %56 ], [ %81, %77 ]
  %73 = icmp ult i32* %.03, %71
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = load i32, i32* %.03, align 4
  %76 = or i32 %75, 8192
  store i32 %76, i32* %.03, align 4
  br label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %.03, i64 %80
  br label %72, !llvm.loop !6

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %87 = load i32*, i32** %86, align 8
  br label %88

88:                                               ; preds = %107, %82
  %.01 = phi i32 [ 0, %82 ], [ %112, %107 ]
  %.0 = phi i32* [ %87, %82 ], [ %111, %107 ]
  %89 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %.01, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = icmp eq i32 %.01, %4
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %.0, align 4
  %96 = and i32 %95, 32768
  %.not17 = icmp eq i32 %96, 0
  br i1 %.not17, label %103, label %97

97:                                               ; preds = %94, %92
  %98 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %.0, align 4
  %102 = and i32 %101, -8193
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %.0, align 4
  %105 = or i32 %104, 8192
  br label %106

106:                                              ; preds = %103, %97
  %storemerge = phi i32 [ %102, %97 ], [ %105, %103 ]
  store i32 %storemerge, i32* %.0, align 4
  br label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %.0, i64 %110
  %112 = add nuw nsw i32 %.01, 1
  br label %88, !llvm.loop !7

113:                                              ; preds = %88
  %114 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, %4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %33, i32* noundef %120) #2
  %122 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %123 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %47, i32* noundef %122, i32* noundef %33) #2
  call void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_parts to void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* noundef %2, %struct.set_family* noundef %0, i32* noundef %33, i32* noundef %47) #2
  call void (%struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_raising to void (%struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* noundef %2, i32* noundef %33, i32* noundef %47) #2
  %124 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %125 = load i32*, i32** %124, align 8
  br label %126

126:                                              ; preds = %184, %113
  %.12 = phi i32 [ 0, %113 ], [ %189, %184 ]
  %.1 = phi i32* [ %125, %113 ], [ %188, %184 ]
  %127 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %.12, %128
  br i1 %129, label %130, label %190

130:                                              ; preds = %126
  %131 = load i32, i32* %.1, align 4
  %132 = and i32 %131, 8192
  %.not11 = icmp eq i32 %132, 0
  br i1 %.not11, label %183, label %133

133:                                              ; preds = %130
  %134 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %.1, i32* noundef %33) #2
  %.not12 = icmp eq i32 %134, 0
  br i1 %.not12, label %135, label %137

135:                                              ; preds = %133
  %136 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* noundef %2, i32* noundef nonnull %.1, i32* noundef %33, i32* noundef %61) #2
  %.not13 = icmp eq i32 %136, 0
  br i1 %.not13, label %182, label %137

137:                                              ; preds = %135, %133
  %138 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %3) #2
  %139 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i64 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i64 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, %4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, %4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %145, i32* noundef %152) #2
  %154 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %138, %struct.set_family* noundef %1) #2
  %155 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i64 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i64 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %158, %.12
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** noundef %154, i32* noundef %161) #2
  %163 = load i32*, i32** %154, align 8
  %.not14 = icmp eq i32* %163, null
  br i1 %.not14, label %167, label %164

164:                                              ; preds = %137
  %165 = bitcast i32** %154 to i8**
  %166 = load i8*, i8** %165, align 8
  call void @free(i8* noundef %166)
  store i32* null, i32** %154, align 8
  br label %167

167:                                              ; preds = %164, %137
  br i1 true, label %168, label %170

168:                                              ; preds = %167
  %169 = bitcast i32** %154 to i8*
  call void @free(i8* noundef %169)
  br label %170

170:                                              ; preds = %168, %167
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %138) #2
  %171 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* noundef %2, i32* noundef %162, i32* noundef %33, i32* noundef %61) #2
  %.not15 = icmp eq i32 %171, 0
  br i1 %.not15, label %178, label %172

172:                                              ; preds = %170
  %173 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %61, i32* noundef %33, i32* noundef %162) #2
  %174 = load i32, i32* %61, align 4
  %175 = and i32 %174, -32769
  store i32 %175, i32* %61, align 4
  %176 = load %struct.set_family*, %struct.set_family** %5, align 8
  %177 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %176, i32* noundef nonnull %61) #2
  store %struct.set_family* %177, %struct.set_family** %5, align 8
  br label %178

178:                                              ; preds = %172, %170
  %.not16 = icmp eq i32* %162, null
  br i1 %.not16, label %181, label %179

179:                                              ; preds = %178
  %180 = bitcast i32* %162 to i8*
  call void @free(i8* noundef %180)
  br label %181

181:                                              ; preds = %179, %178
  br label %182

182:                                              ; preds = %181, %135
  br label %183

183:                                              ; preds = %182, %130
  br label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %.1, i64 %187
  %189 = add nuw nsw i32 %.12, 1
  br label %126, !llvm.loop !8

190:                                              ; preds = %126
  %.not8 = icmp eq i32* %33, null
  br i1 %.not8, label %193, label %191

191:                                              ; preds = %190
  %192 = bitcast i32* %33 to i8*
  call void @free(i8* noundef %192)
  br label %193

193:                                              ; preds = %191, %190
  %.not9 = icmp eq i32* %47, null
  br i1 %.not9, label %196, label %194

194:                                              ; preds = %193
  %195 = bitcast i32* %47 to i8*
  call void @free(i8* noundef %195)
  br label %196

196:                                              ; preds = %194, %193
  %.not10 = icmp eq i32* %61, null
  br i1 %.not10, label %199, label %197

197:                                              ; preds = %196
  %198 = bitcast i32* %61 to i8*
  call void @free(i8* noundef %198)
  br label %199

199:                                              ; preds = %197, %196
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_copy(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local void @essen_parts(...) #1

declare dso_local void @essen_raising(...) #1

declare dso_local i32 @setp_implies(...) #1

declare dso_local i32 @feasibly_covered(...) #1

declare dso_local %struct.set_family* @sf_save(...) #1

declare dso_local i32** @cube2list(...) #1

declare dso_local i32* @reduce_cube(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local void @sf_free(...) #1

declare dso_local i32* @set_or(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @irred_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 3
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %3
  %7 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %0, %struct.set_family* noundef %2) #2
  %8 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %7, %struct.set_family* noundef %1) #2
  br label %10

9:                                                ; preds = %3
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %2) #2
  br label %10

10:                                               ; preds = %9, %6
  %.0 = phi %struct.set_family* [ %8, %6 ], [ %0, %9 ]
  ret %struct.set_family* %.0
}

declare dso_local %struct.set_family* @irredundant(...) #1

declare dso_local %struct.set_family* @sf_append(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @last_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* noundef %3) #0 {
  %5 = call i64 (...) @util_cpu_time() #2
  %6 = call %struct.set_family* @reduce_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1)
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %5, i32 noundef 9, %struct.set_family* noundef %6, %struct.cost_struct* noundef %3) #2
  %7 = call i64 (...) @util_cpu_time() #2
  %8 = call %struct.set_family* @expand_gasp(%struct.set_family* noundef %6, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %0)
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %7, i32 noundef 7, %struct.set_family* noundef %8, %struct.cost_struct* noundef %3) #2
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %6) #2
  %9 = call i64 (...) @util_cpu_time() #2
  %10 = call %struct.set_family* @irred_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %8)
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %9, i32 noundef 8, %struct.set_family* noundef %10, %struct.cost_struct* noundef %3) #2
  ret %struct.set_family* %10
}

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @reduce_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %6 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %4, i32 noundef %5) #2
  %7 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #2
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %9, i64 %15
  br label %17

17:                                               ; preds = %45, %2
  %.01 = phi i32* [ %9, %2 ], [ %49, %45 ]
  %.0 = phi %struct.set_family* [ %6, %2 ], [ %.2, %45 ]
  %18 = icmp ult i32* %.01, %16
  br i1 %18, label %19, label %50

19:                                               ; preds = %17
  %20 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** noundef %7, i32* noundef %.01) #2
  %21 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* noundef %20) #2
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %19
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #2
  br label %34

23:                                               ; preds = %19
  %24 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* noundef %20, i32* noundef %.01) #2
  %.not3 = icmp eq i32 %24, 0
  br i1 %.not3, label %29, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %20, align 4
  %27 = or i32 %26, 32768
  store i32 %27, i32* %20, align 4
  %28 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.0, i32* noundef %.01) #2
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %20, align 4
  %31 = and i32 %30, -32769
  store i32 %31, i32* %20, align 4
  %32 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.0, i32* noundef nonnull %20) #2
  br label %33

33:                                               ; preds = %29, %25
  %.1 = phi %struct.set_family* [ %28, %25 ], [ %32, %29 ]
  br label %34

34:                                               ; preds = %33, %22
  %.2 = phi %struct.set_family* [ %.0, %22 ], [ %.1, %33 ]
  %35 = load i32, i32* @debug, align 4
  %36 = and i32 %35, 16
  %.not4 = icmp eq i32 %36, 0
  br i1 %.not4, label %41, label %37

37:                                               ; preds = %34
  %38 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %.01) #2
  %39 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* noundef %20) #2
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %38, i8* noundef %39) #2
  br label %41

41:                                               ; preds = %37, %34
  %.not5 = icmp eq i32* %20, null
  br i1 %.not5, label %44, label %42

42:                                               ; preds = %41
  %43 = bitcast i32* %20 to i8*
  call void @free(i8* noundef %43)
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %.01, i64 %48
  br label %17, !llvm.loop !9

50:                                               ; preds = %17
  %51 = load i32*, i32** %7, align 8
  %.not = icmp eq i32* %51, null
  br i1 %.not, label %55, label %52

52:                                               ; preds = %50
  %53 = bitcast i32** %7 to i8**
  %54 = load i8*, i8** %53, align 8
  call void @free(i8* noundef %54)
  store i32* null, i32** %7, align 8
  br label %55

55:                                               ; preds = %52, %50
  br i1 true, label %56, label %58

56:                                               ; preds = %55
  %57 = bitcast i32** %7 to i8*
  call void @free(i8* noundef %57)
  br label %58

58:                                               ; preds = %56, %55
  ret %struct.set_family* %.0
}

declare dso_local void @totals(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @super_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* noundef %3) #0 {
  %5 = call i64 (...) @util_cpu_time() #2
  %6 = call %struct.set_family* @reduce_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1)
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %5, i32 noundef 9, %struct.set_family* noundef %6, %struct.cost_struct* noundef %3) #2
  %7 = call i64 (...) @util_cpu_time() #2
  %8 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @all_primes to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %6, %struct.set_family* noundef %2) #2
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %7, i32 noundef 7, %struct.set_family* noundef %8, %struct.cost_struct* noundef %3) #2
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %6) #2
  %9 = call i64 (...) @util_cpu_time() #2
  %10 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %0, %struct.set_family* noundef %8) #2
  %11 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %10) #2
  %12 = load i32, i32* @trace, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %16, label %13

13:                                               ; preds = %4
  %14 = call i64 (...) @util_cpu_time() #2
  %15 = sub nsw i64 %14, %9
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef %15) #2
  br label %16

16:                                               ; preds = %13, %4
  %17 = call i64 (...) @util_cpu_time() #2
  %18 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %11, %struct.set_family* noundef %1) #2
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %17, i32 noundef 5, %struct.set_family* noundef %18, %struct.cost_struct* noundef %3) #2
  ret %struct.set_family* %18
}

declare dso_local %struct.set_family* @all_primes(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local i32 @setp_empty(...) #1

declare dso_local void @fatal(...) #1

declare dso_local i32 @setp_equal(...) #1

declare dso_local i8* @pc2(...) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
