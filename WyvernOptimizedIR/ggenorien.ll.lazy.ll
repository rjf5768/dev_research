; ModuleID = './ggenorien.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ggenorien.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@maxterm = external dso_local global i32, align 4
@termarray = external dso_local global %struct.termnets**, align 8
@ecount = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ggenorien() #0 {
  br label %1

1:                                                ; preds = %372, %0
  %.0 = phi i32 [ 1, %0 ], [ %373, %372 ]
  %2 = load i32, i32* @numcells, align 4
  %3 = load i32, i32* @numpads, align 4
  %4 = add nsw i32 %2, %3
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %374, label %5

5:                                                ; preds = %1
  %6 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %6, i64 %7
  %9 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %5
  br label %372

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %20 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i64 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %27 = load %struct.tilebox*, %struct.tilebox** %26, align 8
  %28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i64 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i64 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %29, %31
  br label %33

33:                                               ; preds = %62, %18
  %.01 = phi i32 [ 1, %18 ], [ %63, %62 ]
  %34 = icmp ult i32 %.01, 8
  br i1 %34, label %35, label %64

35:                                               ; preds = %33
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %36
  %38 = load %struct.tilebox*, %struct.tilebox** %37, align 8
  %39 = icmp eq %struct.tilebox* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %62

41:                                               ; preds = %35
  %42 = zext i32 %.01 to i64
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %42
  %44 = load %struct.tilebox*, %struct.tilebox** %43, align 8
  %45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 17
  %46 = load %struct.termbox*, %struct.termbox** %45, align 8
  %47 = zext i32 %.01 to i64
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %47
  %49 = load %struct.tilebox*, %struct.tilebox** %48, align 8
  %50 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %50, align 8
  %.not39 = icmp eq %struct.termbox* %46, null
  br i1 %.not39, label %61, label %51

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %55, %51
  %.08 = phi %struct.termbox* [ %46, %51 ], [ %57, %55 ]
  %53 = getelementptr inbounds %struct.termbox, %struct.termbox* %.08, i64 0, i32 0
  %54 = load %struct.termbox*, %struct.termbox** %53, align 8
  %.not40 = icmp eq %struct.termbox* %54, null
  br i1 %.not40, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.termbox, %struct.termbox* %.08, i64 0, i32 0
  %57 = load %struct.termbox*, %struct.termbox** %56, align 8
  %58 = bitcast %struct.termbox* %.08 to i8*
  call void @free(i8* noundef %58) #3
  br label %52, !llvm.loop !4

59:                                               ; preds = %52
  %60 = bitcast %struct.termbox* %.08 to i8*
  call void @free(i8* noundef %60) #3
  br label %61

61:                                               ; preds = %59, %41
  br label %62

62:                                               ; preds = %61, %40
  %63 = add nuw nsw i32 %.01, 1
  br label %33, !llvm.loop !6

64:                                               ; preds = %33
  %65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 4, i64 8
  %66 = load i32, i32* %65, align 4
  %.not20 = icmp eq i32 %66, 0
  br i1 %.not20, label %205, label %67

67:                                               ; preds = %64
  switch i32 %66, label %75 [
    i32 1, label %68
    i32 2, label %69
    i32 3, label %70
    i32 4, label %71
    i32 5, label %72
    i32 6, label %73
    i32 7, label %74
  ]

68:                                               ; preds = %67
  br label %75

69:                                               ; preds = %67
  br label %75

70:                                               ; preds = %67
  br label %75

71:                                               ; preds = %67
  br label %75

72:                                               ; preds = %67
  br label %75

73:                                               ; preds = %67
  br label %75

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %73, %72, %71, %70, %69, %68, %67
  %.12 = phi i32 [ %.01, %67 ], [ 6, %74 ], [ 7, %73 ], [ 5, %72 ], [ 4, %71 ], [ 3, %70 ], [ 2, %69 ], [ 1, %68 ]
  %76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %77 = load %struct.tilebox*, %struct.tilebox** %76, align 8
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i64 0, i32 17
  %79 = load %struct.termbox*, %struct.termbox** %78, align 8
  %80 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %81 = bitcast i8* %80 to %struct.termbox*
  %82 = sext i32 %66 to i64
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %82
  %84 = load %struct.tilebox*, %struct.tilebox** %83, align 8
  %85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %84, i64 0, i32 17
  %86 = bitcast %struct.termbox** %85 to i8**
  store i8* %80, i8** %86, align 8
  %87 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i64 0, i32 0
  store %struct.termbox* null, %struct.termbox** %87, align 8
  %88 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i64 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i64 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i64 0, i32 3
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.termbox, %struct.termbox* %81, i64 0, i32 4
  store i32 %98, i32* %99, align 4
  call void @move(i32 noundef %.12) #3
  %100 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 1
  %101 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 2
  call void @point(i32* noundef nonnull %100, i32* noundef nonnull %101) #3
  %102 = and i32 %25, 1
  %.not30 = icmp eq i32 %102, 0
  br i1 %.not30, label %107, label %103

103:                                              ; preds = %75
  %104 = icmp eq i32 %.12, 4
  br i1 %104, label %113, label %105

105:                                              ; preds = %103
  %106 = icmp eq i32 %.12, 6
  br i1 %106, label %113, label %107

107:                                              ; preds = %105, %75
  %108 = and i32 %32, 1
  %.not31 = icmp eq i32 %108, 0
  br i1 %.not31, label %117, label %109

109:                                              ; preds = %107
  %110 = icmp eq i32 %.12, 2
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = icmp eq i32 %.12, 3
  br i1 %112, label %113, label %117

113:                                              ; preds = %111, %109, %105, %103
  %114 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %113, %111, %107
  %118 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 3
  store i32 %119, i32* %120, align 8
  %121 = and i32 %25, 1
  %.not32 = icmp eq i32 %121, 0
  br i1 %.not32, label %126, label %122

122:                                              ; preds = %117
  %123 = icmp eq i32 %.12, 1
  br i1 %123, label %132, label %124

124:                                              ; preds = %122
  %125 = icmp eq i32 %.12, 3
  br i1 %125, label %132, label %126

126:                                              ; preds = %124, %117
  %127 = and i32 %32, 1
  %.not33 = icmp eq i32 %127, 0
  br i1 %.not33, label %136, label %128

128:                                              ; preds = %126
  %129 = icmp eq i32 %.12, 4
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = icmp eq i32 %.12, 7
  br i1 %131, label %132, label %136

132:                                              ; preds = %130, %128, %124, %122
  %133 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %132, %130, %126
  %137 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i64 0, i32 4
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %202, %136
  %.012 = phi %struct.termbox* [ %81, %136 ], [ %147, %202 ]
  %.010 = phi %struct.termbox* [ %79, %136 ], [ %145, %202 ]
  %.03 = phi i32 [ 2, %136 ], [ %203, %202 ]
  %141 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 8
  %142 = load i32, i32* %141, align 4
  %.not34 = icmp sgt i32 %.03, %142
  br i1 %.not34, label %204, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.termbox, %struct.termbox* %.010, i64 0, i32 0
  %145 = load %struct.termbox*, %struct.termbox** %144, align 8
  %146 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %147 = bitcast i8* %146 to %struct.termbox*
  %148 = bitcast %struct.termbox* %.012 to i8**
  store i8* %146, i8** %148, align 8
  %149 = getelementptr inbounds %struct.termbox, %struct.termbox* %147, i64 0, i32 0
  store %struct.termbox* null, %struct.termbox** %149, align 8
  %150 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.termbox, %struct.termbox* %147, i64 0, i32 1
  store i32 %151, i32* %152, align 8
  %153 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.termbox, %struct.termbox* %147, i64 0, i32 2
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.termbox, %struct.termbox* %147, i64 0, i32 3
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.termbox, %struct.termbox* %147, i64 0, i32 4
  store i32 %160, i32* %161, align 4
  call void @move(i32 noundef %.12) #3
  %162 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 1
  %163 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 2
  call void @point(i32* noundef nonnull %162, i32* noundef nonnull %163) #3
  %164 = and i32 %25, 1
  %.not35 = icmp eq i32 %164, 0
  br i1 %.not35, label %169, label %165

165:                                              ; preds = %143
  %166 = icmp eq i32 %.12, 4
  br i1 %166, label %175, label %167

167:                                              ; preds = %165
  %168 = icmp eq i32 %.12, 6
  br i1 %168, label %175, label %169

169:                                              ; preds = %167, %143
  %170 = and i32 %32, 1
  %.not36 = icmp eq i32 %170, 0
  br i1 %.not36, label %179, label %171

171:                                              ; preds = %169
  %172 = icmp eq i32 %.12, 2
  br i1 %172, label %175, label %173

173:                                              ; preds = %171
  %174 = icmp eq i32 %.12, 3
  br i1 %174, label %175, label %179

175:                                              ; preds = %173, %171, %167, %165
  %176 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %175, %173, %169
  %180 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 3
  store i32 %181, i32* %182, align 8
  %183 = and i32 %25, 1
  %.not37 = icmp eq i32 %183, 0
  br i1 %.not37, label %188, label %184

184:                                              ; preds = %179
  %185 = icmp eq i32 %.12, 1
  br i1 %185, label %194, label %186

186:                                              ; preds = %184
  %187 = icmp eq i32 %.12, 3
  br i1 %187, label %194, label %188

188:                                              ; preds = %186, %179
  %189 = and i32 %32, 1
  %.not38 = icmp eq i32 %189, 0
  br i1 %.not38, label %198, label %190

190:                                              ; preds = %188
  %191 = icmp eq i32 %.12, 4
  br i1 %191, label %194, label %192

192:                                              ; preds = %190
  %193 = icmp eq i32 %.12, 7
  br i1 %193, label %194, label %198

194:                                              ; preds = %192, %190, %186, %184
  %195 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %194, %192, %188
  %199 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.termbox, %struct.termbox* %145, i64 0, i32 4
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %198
  %203 = add nuw nsw i32 %.03, 1
  br label %140, !llvm.loop !7

204:                                              ; preds = %140
  br label %205

205:                                              ; preds = %204, %64
  %206 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %207 = load %struct.tilebox*, %struct.tilebox** %206, align 8
  %208 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %207, i64 0, i32 12
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %207, i64 0, i32 11
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %209, %211
  %213 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %214 = load %struct.tilebox*, %struct.tilebox** %213, align 8
  %215 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i64 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i64 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %216, %218
  br label %220

220:                                              ; preds = %369, %205
  %.2 = phi i32 [ 1, %205 ], [ %370, %369 ]
  %221 = icmp ult i32 %.2, 8
  br i1 %221, label %222, label %371

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 4, i64 8
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %.2, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %369

227:                                              ; preds = %222
  %228 = zext i32 %.2 to i64
  %229 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 4, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %369

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 0
  %235 = load %struct.tilebox*, %struct.tilebox** %234, align 8
  %236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i64 0, i32 17
  %237 = load %struct.termbox*, %struct.termbox** %236, align 8
  %238 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %239 = bitcast i8* %238 to %struct.termbox*
  %240 = zext i32 %.2 to i64
  %241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %240
  %242 = load %struct.tilebox*, %struct.tilebox** %241, align 8
  %243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %242, i64 0, i32 17
  %244 = bitcast %struct.termbox** %243 to i8**
  store i8* %238, i8** %244, align 8
  %245 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 0
  store %struct.termbox* null, %struct.termbox** %245, align 8
  %246 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i64 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 5
  store i32 %247, i32* %248, align 8
  %249 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i64 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 1
  store i32 %250, i32* %251, align 8
  %252 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i64 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 2
  store i32 %253, i32* %254, align 4
  call void @move(i32 noundef %.2) #3
  %255 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 1
  %256 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 2
  call void @point(i32* noundef nonnull %255, i32* noundef nonnull %256) #3
  %257 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 3
  store i32 %258, i32* %259, align 8
  %260 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 4
  store i32 %261, i32* %262, align 4
  %263 = and i32 %212, 1
  %.not21 = icmp eq i32 %263, 0
  br i1 %.not21, label %268, label %264

264:                                              ; preds = %233
  %265 = icmp eq i32 %.2, 4
  br i1 %265, label %274, label %266

266:                                              ; preds = %264
  %267 = icmp eq i32 %.2, 6
  br i1 %267, label %274, label %268

268:                                              ; preds = %266, %233
  %269 = and i32 %219, 1
  %.not22 = icmp eq i32 %269, 0
  br i1 %.not22, label %281, label %270

270:                                              ; preds = %268
  %271 = icmp eq i32 %.2, 2
  br i1 %271, label %274, label %272

272:                                              ; preds = %270
  %273 = icmp eq i32 %.2, 3
  br i1 %273, label %274, label %281

274:                                              ; preds = %272, %270, %266, %264
  %275 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 8
  %278 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %274, %272, %268
  %282 = and i32 %212, 1
  %.not23 = icmp eq i32 %282, 0
  br i1 %.not23, label %287, label %283

283:                                              ; preds = %281
  %284 = icmp eq i32 %.2, 1
  br i1 %284, label %293, label %285

285:                                              ; preds = %283
  %286 = icmp eq i32 %.2, 3
  br i1 %286, label %293, label %287

287:                                              ; preds = %285, %281
  %288 = and i32 %219, 1
  %.not24 = icmp eq i32 %288, 0
  br i1 %.not24, label %300, label %289

289:                                              ; preds = %287
  %290 = icmp eq i32 %.2, 4
  br i1 %290, label %293, label %291

291:                                              ; preds = %289
  %292 = icmp eq i32 %.2, 7
  br i1 %292, label %293, label %300

293:                                              ; preds = %291, %289, %285, %283
  %294 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  %297 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i64 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %293, %291, %287
  br label %301

301:                                              ; preds = %366, %300
  %.113 = phi %struct.termbox* [ %239, %300 ], [ %308, %366 ]
  %.111 = phi %struct.termbox* [ %237, %300 ], [ %306, %366 ]
  %.14 = phi i32 [ 2, %300 ], [ %367, %366 ]
  %302 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 8
  %303 = load i32, i32* %302, align 4
  %.not25 = icmp sgt i32 %.14, %303
  br i1 %.not25, label %368, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.termbox, %struct.termbox* %.111, i64 0, i32 0
  %306 = load %struct.termbox*, %struct.termbox** %305, align 8
  %307 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %308 = bitcast i8* %307 to %struct.termbox*
  %309 = bitcast %struct.termbox* %.113 to i8**
  store i8* %307, i8** %309, align 8
  %310 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 0
  store %struct.termbox* null, %struct.termbox** %310, align 8
  %311 = getelementptr inbounds %struct.termbox, %struct.termbox* %306, i64 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 5
  store i32 %312, i32* %313, align 8
  %314 = getelementptr inbounds %struct.termbox, %struct.termbox* %306, i64 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 1
  store i32 %315, i32* %316, align 8
  %317 = getelementptr inbounds %struct.termbox, %struct.termbox* %306, i64 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 2
  store i32 %318, i32* %319, align 4
  call void @move(i32 noundef %.2) #3
  %320 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 1
  %321 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 2
  call void @point(i32* noundef nonnull %320, i32* noundef nonnull %321) #3
  %322 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 3
  store i32 %323, i32* %324, align 8
  %325 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 4
  store i32 %326, i32* %327, align 4
  %328 = and i32 %212, 1
  %.not26 = icmp eq i32 %328, 0
  br i1 %.not26, label %333, label %329

329:                                              ; preds = %304
  %330 = icmp eq i32 %.2, 4
  br i1 %330, label %339, label %331

331:                                              ; preds = %329
  %332 = icmp eq i32 %.2, 6
  br i1 %332, label %339, label %333

333:                                              ; preds = %331, %304
  %334 = and i32 %219, 1
  %.not27 = icmp eq i32 %334, 0
  br i1 %.not27, label %346, label %335

335:                                              ; preds = %333
  %336 = icmp eq i32 %.2, 2
  br i1 %336, label %339, label %337

337:                                              ; preds = %335
  %338 = icmp eq i32 %.2, 3
  br i1 %338, label %339, label %346

339:                                              ; preds = %337, %335, %331, %329
  %340 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  %343 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 8
  br label %346

346:                                              ; preds = %339, %337, %333
  %347 = and i32 %212, 1
  %.not28 = icmp eq i32 %347, 0
  br i1 %.not28, label %352, label %348

348:                                              ; preds = %346
  %349 = icmp eq i32 %.2, 1
  br i1 %349, label %358, label %350

350:                                              ; preds = %348
  %351 = icmp eq i32 %.2, 3
  br i1 %351, label %358, label %352

352:                                              ; preds = %350, %346
  %353 = and i32 %219, 1
  %.not29 = icmp eq i32 %353, 0
  br i1 %.not29, label %365, label %354

354:                                              ; preds = %352
  %355 = icmp eq i32 %.2, 4
  br i1 %355, label %358, label %356

356:                                              ; preds = %354
  %357 = icmp eq i32 %.2, 7
  br i1 %357, label %358, label %365

358:                                              ; preds = %356, %354, %350, %348
  %359 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  %362 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i64 0, i32 4
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %358, %356, %352
  br label %366

366:                                              ; preds = %365
  %367 = add nuw nsw i32 %.14, 1
  br label %301, !llvm.loop !8

368:                                              ; preds = %301
  br label %369

369:                                              ; preds = %368, %232, %226
  %370 = add nuw nsw i32 %.2, 1
  br label %220, !llvm.loop !9

371:                                              ; preds = %220
  br label %372

372:                                              ; preds = %371, %17
  %373 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !10

374:                                              ; preds = %1
  call void @delHtab() #3
  br label %375

375:                                              ; preds = %415, %374
  %.05 = phi i32 [ 1, %374 ], [ %416, %415 ]
  %376 = load i32, i32* @numnets, align 4
  %.not15 = icmp sgt i32 %.05, %376
  br i1 %.not15, label %417, label %377

377:                                              ; preds = %375
  %378 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %379 = zext i32 %.05 to i64
  %380 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %378, i64 %379
  %381 = load %struct.dimbox*, %struct.dimbox** %380, align 8
  %382 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 0
  br label %383

383:                                              ; preds = %412, %377
  %.06.in = phi %struct.netbox** [ %382, %377 ], [ %413, %412 ]
  %.06 = load %struct.netbox*, %struct.netbox** %.06.in, align 8
  %.not19 = icmp eq %struct.netbox* %.06, null
  br i1 %.not19, label %414, label %384

384:                                              ; preds = %383
  %385 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 5
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @maxterm, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %411

389:                                              ; preds = %384
  %390 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %391 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %392 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 5
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.termnets*, %struct.termnets** %391, i64 %394
  %396 = bitcast %struct.termnets** %395 to i8**
  store i8* %390, i8** %396, align 8
  %397 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %398 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 5
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.termnets*, %struct.termnets** %397, i64 %400
  %402 = load %struct.termnets*, %struct.termnets** %401, align 8
  %403 = getelementptr inbounds %struct.termnets, %struct.termnets* %402, i64 0, i32 0
  store i32 %.05, i32* %403, align 8
  %404 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %405 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.termnets*, %struct.termnets** %404, i64 %407
  %409 = load %struct.termnets*, %struct.termnets** %408, align 8
  %410 = getelementptr inbounds %struct.termnets, %struct.termnets* %409, i64 0, i32 1
  store %struct.netbox* %.06, %struct.netbox** %410, align 8
  br label %411

411:                                              ; preds = %389, %384
  br label %412

412:                                              ; preds = %411
  %413 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 0
  br label %383, !llvm.loop !11

414:                                              ; preds = %383
  br label %415

415:                                              ; preds = %414
  %416 = add nuw nsw i32 %.05, 1
  br label %375, !llvm.loop !12

417:                                              ; preds = %375
  br label %418

418:                                              ; preds = %502, %417
  %.1 = phi i32 [ 1, %417 ], [ %503, %502 ]
  %419 = load i32, i32* @numcells, align 4
  %420 = load i32, i32* @numpads, align 4
  %421 = add nsw i32 %419, %420
  %.not16 = icmp sgt i32 %.1, %421
  br i1 %.not16, label %504, label %422

422:                                              ; preds = %418
  %423 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %424 = zext i32 %.1 to i64
  %425 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %423, i64 %424
  %426 = load %struct.cellbox*, %struct.cellbox** %425, align 8
  %427 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 10
  %428 = load i32, i32* %427, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %464

430:                                              ; preds = %422
  %431 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 21, i64 %433
  %435 = load %struct.tilebox*, %struct.tilebox** %434, align 8
  %436 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %435, i64 0, i32 17
  br label %437

437:                                              ; preds = %461, %430
  %.07.in = phi %struct.termbox** [ %436, %430 ], [ %462, %461 ]
  %.07 = load %struct.termbox*, %struct.termbox** %.07.in, align 8
  %.not18 = icmp eq %struct.termbox* %.07, null
  br i1 %.not18, label %463, label %438

438:                                              ; preds = %437
  %439 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %440 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 5
  %441 = load i32, i32* %440, align 8
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.termnets*, %struct.termnets** %439, i64 %442
  %444 = load %struct.termnets*, %struct.termnets** %443, align 8
  %445 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = add nsw i32 %446, %448
  %450 = getelementptr inbounds %struct.termnets, %struct.termnets* %444, i64 0, i32 1
  %451 = load %struct.netbox*, %struct.netbox** %450, align 8
  %452 = getelementptr inbounds %struct.netbox, %struct.netbox* %451, i64 0, i32 1
  store i32 %449, i32* %452, align 8
  %453 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 3
  %456 = load i32, i32* %455, align 8
  %457 = add nsw i32 %454, %456
  %458 = getelementptr inbounds %struct.termnets, %struct.termnets* %444, i64 0, i32 1
  %459 = load %struct.netbox*, %struct.netbox** %458, align 8
  %460 = getelementptr inbounds %struct.netbox, %struct.netbox* %459, i64 0, i32 2
  store i32 %457, i32* %460, align 4
  br label %461

461:                                              ; preds = %438
  %462 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 0
  br label %437, !llvm.loop !13

463:                                              ; preds = %437
  br label %501

464:                                              ; preds = %422
  br label %465

465:                                              ; preds = %498, %464
  %.09 = phi i32 [ 1, %464 ], [ %499, %498 ]
  %466 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 18
  %467 = load i32, i32* %466, align 4
  %.not17 = icmp sgt i32 %.09, %467
  br i1 %.not17, label %500, label %468

468:                                              ; preds = %465
  %469 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 20
  %470 = load %struct.uncombox*, %struct.uncombox** %469, align 8
  %471 = zext i32 %.09 to i64
  %472 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %470, i64 %471, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %.09 to i64
  %475 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %470, i64 %474, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 20
  %478 = load %struct.uncombox*, %struct.uncombox** %477, align 8
  %479 = zext i32 %.09 to i64
  %480 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %478, i64 %479, i32 10
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %483 = sext i32 %473 to i64
  %484 = getelementptr inbounds %struct.termnets*, %struct.termnets** %482, i64 %483
  %485 = load %struct.termnets*, %struct.termnets** %484, align 8
  %486 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %476, %487
  %489 = getelementptr inbounds %struct.termnets, %struct.termnets* %485, i64 0, i32 1
  %490 = load %struct.netbox*, %struct.netbox** %489, align 8
  %491 = getelementptr inbounds %struct.netbox, %struct.netbox* %490, i64 0, i32 1
  store i32 %488, i32* %491, align 8
  %492 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %426, i64 0, i32 3
  %493 = load i32, i32* %492, align 8
  %494 = add nsw i32 %481, %493
  %495 = getelementptr inbounds %struct.termnets, %struct.termnets* %485, i64 0, i32 1
  %496 = load %struct.netbox*, %struct.netbox** %495, align 8
  %497 = getelementptr inbounds %struct.netbox, %struct.netbox* %496, i64 0, i32 2
  store i32 %494, i32* %497, align 4
  br label %498

498:                                              ; preds = %468
  %499 = add nuw nsw i32 %.09, 1
  br label %465, !llvm.loop !14

500:                                              ; preds = %465
  br label %501

501:                                              ; preds = %500, %463
  br label %502

502:                                              ; preds = %501
  %503 = add nuw nsw i32 %.1, 1
  br label %418, !llvm.loop !15

504:                                              ; preds = %418
  %505 = load i32, i32* @ecount, align 4
  %506 = load i32, i32* @maxterm, align 4
  %507 = add nsw i32 %506, %505
  store i32 %507, i32* @maxterm, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @move(i32 noundef) #2

declare dso_local void @point(i32* noundef, i32* noundef) #2

declare dso_local void @delHtab() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
