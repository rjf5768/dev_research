; ModuleID = './findnodes.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }

@numRects = external dso_local global i32, align 4
@rectArray = external dso_local global %struct.rect*, align 8
@Hlist = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@hRectRoot = external dso_local global %struct.tnode*, align 8
@vRectRoot = external dso_local global %struct.tnode*, align 8
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"rect Node: %d  at: %d %d \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  width:%d  height:%d\0A\00", align 1
@doPlacement = external dso_local global i32, align 4
@fpNodes = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"L NC;\0A94 X%d %d %d;\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@HRlist = external dso_local global %struct.dlink2*, align 8
@VRlist = external dso_local global %struct.dlink2*, align 8
@LEroot = external dso_local global %struct.tnode*, align 8
@LEptrs = external dso_local global %struct.dlink2**, align 8
@BEroot = external dso_local global %struct.tnode*, align 8
@BEptrs = external dso_local global %struct.dlink2**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @findnodes() #0 {
  store i32 0, i32* @numRects, align 4
  %1 = call noalias dereferenceable_or_null(5200) i8* @malloc(i64 noundef 5200) #5
  store i8* %1, i8** bitcast (%struct.rect** @rectArray to i8**), align 8
  br label %2

2:                                                ; preds = %714, %0
  %.036 = phi i32 [ undef, %0 ], [ %.1450, %714 ]
  %.022 = phi i32 [ undef, %0 ], [ %.14, %714 ]
  %.014 = phi i32 [ undef, %0 ], [ %.721, %714 ]
  %.0.in = phi %struct.dlink1** [ @Hlist, %0 ], [ %715, %714 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %716, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %7, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %714

12:                                               ; preds = %3
  %13 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %13, i64 %14, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %5 to i64
  %18 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %13, i64 %17, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %20, i64 %21, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %25 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %26 = call i32 @tprop(%struct.tnode* noundef %25, i32 noundef %16) #5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %24, i64 %27
  br label %29

29:                                               ; preds = %711, %12
  %.053 = phi i32 [ -100000, %12 ], [ %.457, %711 ]
  %.137 = phi i32 [ %.036, %12 ], [ %.1349, %711 ]
  %.123 = phi i32 [ %.022, %12 ], [ %.1335, %711 ]
  %.115 = phi i32 [ %.014, %12 ], [ %.620, %711 ]
  %.03.in = phi %struct.dlink1** [ %28, %12 ], [ %712, %711 ]
  %.03 = load %struct.dlink1*, %struct.dlink1** %.03.in, align 8
  %.not88 = icmp eq %struct.dlink1* %.03, null
  br i1 %.not88, label %.loopexit62, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.03, i64 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %33, i64 %34, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %711

39:                                               ; preds = %30
  %40 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %41 = sext i32 %32 to i64
  %42 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %40, i64 %41, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, %19
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %713

46:                                               ; preds = %39
  %47 = icmp slt i32 %43, %.053
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %711

49:                                               ; preds = %46
  %50 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %51 = sext i32 %32 to i64
  %52 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %50, i64 %51, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %32 to i64
  %55 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %50, i64 %54, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %23
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = icmp slt i32 %56, %23
  br i1 %59, label %60, label %61

60:                                               ; preds = %58, %49
  br label %711

61:                                               ; preds = %58
  %62 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %63 = sext i32 %5 to i64
  %64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %62, i64 %63, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %69 = sext i32 %32 to i64
  %70 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %69, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %67
  %74 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %75 = sext i32 %32 to i64
  %76 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %74, i64 %75, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = icmp eq i32 %43, %16
  br i1 %80, label %82, label %81

81:                                               ; preds = %79, %73
  br label %711

82:                                               ; preds = %79, %67
  br label %93

83:                                               ; preds = %61
  %84 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %85 = sext i32 %32 to i64
  %86 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %84, i64 %85, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = icmp eq i32 %56, %23
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %711

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %95 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %96 = call i32 @tprop(%struct.tnode* noundef %95, i32 noundef %16) #5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %94, i64 %97
  br label %99

99:                                               ; preds = %708, %93
  %.154 = phi i32 [ %.053, %93 ], [ %.255, %708 ]
  %.01.in = phi %struct.dlink1** [ %98, %93 ], [ %709, %708 ]
  %.01 = load %struct.dlink1*, %struct.dlink1** %.01.in, align 8
  %.not89 = icmp eq %struct.dlink1* %.01, null
  br i1 %.not89, label %.loopexit61, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %103, i64 %104, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %708

109:                                              ; preds = %100
  %110 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %111 = sext i32 %102 to i64
  %112 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %110, i64 %111, i32 3
  %113 = load i32, i32* %112, align 4
  %.not90 = icmp slt i32 %113, %43
  br i1 %.not90, label %114, label %115

114:                                              ; preds = %109
  br label %708

115:                                              ; preds = %109
  %116 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %117 = sext i32 %102 to i64
  %118 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i64 %117, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %102 to i64
  %121 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i64 %120, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %119, %23
  br i1 %123, label %126, label %124

124:                                              ; preds = %115
  %125 = icmp slt i32 %122, %23
  br i1 %125, label %126, label %127

126:                                              ; preds = %124, %115
  br label %708

127:                                              ; preds = %124
  %128 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %129 = sext i32 %5 to i64
  %130 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %128, i64 %129, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %135 = sext i32 %102 to i64
  %136 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i64 %135, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %133
  %140 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %141 = sext i32 %102 to i64
  %142 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %140, i64 %141, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = icmp eq i32 %113, %19
  br i1 %146, label %148, label %147

147:                                              ; preds = %145, %139
  br label %708

148:                                              ; preds = %145, %133
  br label %159

149:                                              ; preds = %127
  %150 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %151 = sext i32 %102 to i64
  %152 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %150, i64 %151, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = icmp eq i32 %122, %23
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  br label %708

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %148
  %160 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %161 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %162 = call i32 @tprop(%struct.tnode* noundef %161, i32 noundef %23) #5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %160, i64 %163
  br label %165

165:                                              ; preds = %417, %159
  %.238 = phi i32 [ %.137, %159 ], [ %.1046, %417 ]
  %.224 = phi i32 [ %.123, %159 ], [ %.1032, %417 ]
  %.216 = phi i32 [ %.115, %159 ], [ %.317, %417 ]
  %.010 = phi i32 [ 0, %159 ], [ %.12, %417 ]
  %.02.in = phi %struct.dlink1** [ %164, %159 ], [ %418, %417 ]
  %.02 = load %struct.dlink1*, %struct.dlink1** %.02.in, align 8
  %.not91 = icmp eq %struct.dlink1* %.02, null
  br i1 %.not91, label %.loopexit60, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.02, i64 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %169, i64 %170, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %417

175:                                              ; preds = %166
  %176 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %177 = sext i32 %168 to i64
  %178 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %176, i64 %177, i32 3
  %179 = load i32, i32* %178, align 4
  %.not101 = icmp slt i32 %179, %23
  br i1 %.not101, label %180, label %181

180:                                              ; preds = %175
  br label %417

181:                                              ; preds = %175
  %182 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %183 = sext i32 %168 to i64
  %184 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %182, i64 %183, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %168 to i64
  %187 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %182, i64 %186, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %185, %113
  br i1 %189, label %192, label %190

190:                                              ; preds = %181
  %191 = icmp slt i32 %188, %43
  br i1 %191, label %192, label %193

192:                                              ; preds = %190, %181
  br label %417

193:                                              ; preds = %190
  %194 = icmp eq i32 %113, %43
  br i1 %194, label %195, label %247

195:                                              ; preds = %193
  %196 = icmp slt i32 %185, %43
  br i1 %196, label %220, label %197

197:                                              ; preds = %195
  %198 = icmp eq i32 %185, %43
  br i1 %198, label %199, label %246

199:                                              ; preds = %197
  %200 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %201 = sext i32 %168 to i64
  %202 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %200, i64 %201, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %199
  %206 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %207 = sext i32 %168 to i64
  %208 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %206, i64 %207, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %246

211:                                              ; preds = %205
  %212 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %213 = sext i32 %168 to i64
  %214 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %212, i64 %213, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %212, i64 %216, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %211, %199, %195
  %221 = icmp sgt i32 %188, %113
  br i1 %221, label %245, label %222

222:                                              ; preds = %220
  %223 = icmp eq i32 %188, %113
  br i1 %223, label %224, label %246

224:                                              ; preds = %222
  %225 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %226 = sext i32 %168 to i64
  %227 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %225, i64 %226, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %224
  %231 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %232 = sext i32 %168 to i64
  %233 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %231, i64 %232, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %238 = sext i32 %168 to i64
  %239 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %237, i64 %238, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %237, i64 %241, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %236, %224, %220
  br label %246

246:                                              ; preds = %245, %236, %230, %222, %211, %205, %197
  %.339 = phi i32 [ %168, %245 ], [ %.238, %236 ], [ %.238, %230 ], [ %.238, %222 ], [ %.238, %211 ], [ %.238, %205 ], [ %.238, %197 ]
  %.325 = phi i32 [ %168, %245 ], [ %.224, %236 ], [ %.224, %230 ], [ %.224, %222 ], [ %.224, %211 ], [ %.224, %205 ], [ %.224, %197 ]
  %.111 = phi i32 [ 4, %245 ], [ %.010, %236 ], [ %.010, %230 ], [ %.010, %222 ], [ %.010, %211 ], [ %.010, %205 ], [ %.010, %197 ]
  br label %413

247:                                              ; preds = %193
  %248 = icmp eq i32 %.010, 0
  br i1 %248, label %249, label %322

249:                                              ; preds = %247
  %250 = icmp slt i32 %185, %43
  br i1 %250, label %274, label %251

251:                                              ; preds = %249
  %252 = icmp eq i32 %185, %43
  br i1 %252, label %253, label %321

253:                                              ; preds = %251
  %254 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %255 = sext i32 %168 to i64
  %256 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %254, i64 %255, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %274, label %259

259:                                              ; preds = %253
  %260 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %261 = sext i32 %168 to i64
  %262 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %260, i64 %261, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %321

265:                                              ; preds = %259
  %266 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %267 = sext i32 %168 to i64
  %268 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i64 %267, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i64 %270, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %321

274:                                              ; preds = %265, %253, %249
  %275 = icmp sgt i32 %188, %43
  br i1 %275, label %284, label %276

276:                                              ; preds = %274
  %277 = icmp eq i32 %188, %43
  br i1 %277, label %278, label %321

278:                                              ; preds = %276
  %279 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %280 = sext i32 %168 to i64
  %281 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %279, i64 %280, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %321

284:                                              ; preds = %278, %274
  %285 = icmp slt i32 %185, %113
  br i1 %285, label %294, label %286

286:                                              ; preds = %284
  %287 = icmp eq i32 %185, %113
  br i1 %287, label %288, label %320

288:                                              ; preds = %286
  %289 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %290 = sext i32 %168 to i64
  %291 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %289, i64 %290, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %320

294:                                              ; preds = %288, %284
  %295 = icmp sgt i32 %188, %113
  br i1 %295, label %319, label %296

296:                                              ; preds = %294
  %297 = icmp eq i32 %188, %113
  br i1 %297, label %298, label %320

298:                                              ; preds = %296
  %299 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %300 = sext i32 %168 to i64
  %301 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %299, i64 %300, i32 6
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %298
  %305 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %306 = sext i32 %168 to i64
  %307 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %305, i64 %306, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %304
  %311 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %312 = sext i32 %168 to i64
  %313 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %311, i64 %312, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %311, i64 %315, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %310, %298, %294
  br label %320

320:                                              ; preds = %319, %310, %304, %296, %288, %286
  %.440 = phi i32 [ %168, %319 ], [ %.238, %310 ], [ %.238, %304 ], [ %.238, %296 ], [ %.238, %288 ], [ %.238, %286 ]
  %.426 = phi i32 [ %168, %319 ], [ %.224, %310 ], [ %.224, %304 ], [ %.224, %296 ], [ %.224, %288 ], [ %.224, %286 ]
  %.2 = phi i32 [ 4, %319 ], [ %.010, %310 ], [ %.010, %304 ], [ %.010, %296 ], [ %.010, %288 ], [ %.010, %286 ]
  br label %321

321:                                              ; preds = %320, %278, %276, %265, %259, %251
  %.541 = phi i32 [ %.440, %320 ], [ %.238, %278 ], [ %.238, %276 ], [ %.238, %265 ], [ %.238, %259 ], [ %.238, %251 ]
  %.527 = phi i32 [ %.426, %320 ], [ %.224, %278 ], [ %.224, %276 ], [ %.224, %265 ], [ %.224, %259 ], [ %.224, %251 ]
  %.3 = phi i32 [ %.2, %320 ], [ %.010, %278 ], [ %.010, %276 ], [ %.010, %265 ], [ %.010, %259 ], [ %.010, %251 ]
  br label %322

322:                                              ; preds = %321, %247
  %.642 = phi i32 [ %.541, %321 ], [ %.238, %247 ]
  %.628 = phi i32 [ %.527, %321 ], [ %.224, %247 ]
  %.4 = phi i32 [ %.3, %321 ], [ %.010, %247 ]
  %323 = icmp eq i32 %.4, 1
  br i1 %323, label %326, label %324

324:                                              ; preds = %322
  %325 = icmp eq i32 %.4, 0
  br i1 %325, label %326, label %367

326:                                              ; preds = %324, %322
  %327 = icmp slt i32 %185, %113
  br i1 %327, label %336, label %328

328:                                              ; preds = %326
  %329 = icmp eq i32 %185, %113
  br i1 %329, label %330, label %366

330:                                              ; preds = %328
  %331 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %332 = sext i32 %168 to i64
  %333 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %331, i64 %332, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %366

336:                                              ; preds = %330, %326
  %337 = icmp sgt i32 %188, %113
  br i1 %337, label %361, label %338

338:                                              ; preds = %336
  %339 = icmp eq i32 %188, %113
  br i1 %339, label %340, label %366

340:                                              ; preds = %338
  %341 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %342 = sext i32 %168 to i64
  %343 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %341, i64 %342, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %361, label %346

346:                                              ; preds = %340
  %347 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %348 = sext i32 %168 to i64
  %349 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %347, i64 %348, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %366

352:                                              ; preds = %346
  %353 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %354 = sext i32 %168 to i64
  %355 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %353, i64 %354, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %353, i64 %357, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %352, %340, %336
  %362 = icmp eq i32 %.4, 1
  br i1 %362, label %363, label %364

363:                                              ; preds = %361
  br label %365

364:                                              ; preds = %361
  br label %365

365:                                              ; preds = %364, %363
  %.5 = phi i32 [ 3, %363 ], [ 2, %364 ]
  br label %366

366:                                              ; preds = %365, %352, %346, %338, %330, %328
  %.743 = phi i32 [ %168, %365 ], [ %.642, %352 ], [ %.642, %346 ], [ %.642, %338 ], [ %.642, %330 ], [ %.642, %328 ]
  %.6 = phi i32 [ %.5, %365 ], [ %.4, %352 ], [ %.4, %346 ], [ %.4, %338 ], [ %.4, %330 ], [ %.4, %328 ]
  br label %367

367:                                              ; preds = %366, %324
  %.844 = phi i32 [ %.743, %366 ], [ %.642, %324 ]
  %.7 = phi i32 [ %.6, %366 ], [ %.4, %324 ]
  %368 = icmp eq i32 %.7, 2
  br i1 %368, label %371, label %369

369:                                              ; preds = %367
  %370 = icmp eq i32 %.7, 0
  br i1 %370, label %371, label %412

371:                                              ; preds = %369, %367
  %372 = icmp slt i32 %185, %43
  br i1 %372, label %396, label %373

373:                                              ; preds = %371
  %374 = icmp eq i32 %185, %43
  br i1 %374, label %375, label %411

375:                                              ; preds = %373
  %376 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %377 = sext i32 %168 to i64
  %378 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %376, i64 %377, i32 6
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %396, label %381

381:                                              ; preds = %375
  %382 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %383 = sext i32 %168 to i64
  %384 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %382, i64 %383, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %411

387:                                              ; preds = %381
  %388 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %389 = sext i32 %168 to i64
  %390 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %388, i64 %389, i32 8
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %388, i64 %392, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %387, %375, %371
  %397 = icmp sgt i32 %188, %43
  br i1 %397, label %406, label %398

398:                                              ; preds = %396
  %399 = icmp eq i32 %188, %43
  br i1 %399, label %400, label %411

400:                                              ; preds = %398
  %401 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %402 = sext i32 %168 to i64
  %403 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %401, i64 %402, i32 6
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %400, %396
  %407 = icmp eq i32 %.7, 2
  br i1 %407, label %408, label %409

408:                                              ; preds = %406
  br label %410

409:                                              ; preds = %406
  br label %410

410:                                              ; preds = %409, %408
  %.8 = phi i32 [ 3, %408 ], [ 1, %409 ]
  br label %411

411:                                              ; preds = %410, %400, %398, %387, %381, %373
  %.729 = phi i32 [ %168, %410 ], [ %.628, %400 ], [ %.628, %398 ], [ %.628, %387 ], [ %.628, %381 ], [ %.628, %373 ]
  %.9 = phi i32 [ %.8, %410 ], [ %.7, %400 ], [ %.7, %398 ], [ %.7, %387 ], [ %.7, %381 ], [ %.7, %373 ]
  br label %412

412:                                              ; preds = %411, %369
  %.830 = phi i32 [ %.729, %411 ], [ %.628, %369 ]
  %.10 = phi i32 [ %.9, %411 ], [ %.7, %369 ]
  br label %413

413:                                              ; preds = %412, %246
  %.945 = phi i32 [ %.339, %246 ], [ %.844, %412 ]
  %.931 = phi i32 [ %.325, %246 ], [ %.830, %412 ]
  %.11 = phi i32 [ %.111, %246 ], [ %.10, %412 ]
  %414 = icmp slt i32 %.11, 3
  br i1 %414, label %415, label %416

415:                                              ; preds = %413
  br label %417

416:                                              ; preds = %413
  br label %419

417:                                              ; preds = %415, %192, %180, %174
  %.1046 = phi i32 [ %.238, %174 ], [ %.238, %192 ], [ %.945, %415 ], [ %.238, %180 ]
  %.1032 = phi i32 [ %.224, %174 ], [ %.224, %192 ], [ %.931, %415 ], [ %.224, %180 ]
  %.317 = phi i32 [ %.216, %174 ], [ %179, %192 ], [ %179, %415 ], [ %179, %180 ]
  %.12 = phi i32 [ %.010, %174 ], [ %.010, %192 ], [ %.11, %415 ], [ %.010, %180 ]
  %418 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.02, i64 0, i32 2
  br label %165, !llvm.loop !4

.loopexit60:                                      ; preds = %165
  br label %419

419:                                              ; preds = %.loopexit60, %416
  %.1147 = phi i32 [ %.945, %416 ], [ %.238, %.loopexit60 ]
  %.1133 = phi i32 [ %.931, %416 ], [ %.224, %.loopexit60 ]
  %.418 = phi i32 [ %179, %416 ], [ %.216, %.loopexit60 ]
  %.13 = phi i32 [ %.11, %416 ], [ %.010, %.loopexit60 ]
  %420 = icmp slt i32 %.13, 3
  br i1 %420, label %421, label %422

421:                                              ; preds = %419
  br label %710

422:                                              ; preds = %419
  %423 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %424 = sext i32 %.1133 to i64
  %425 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %423, i64 %424, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %.1147 to i64
  %428 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %423, i64 %427, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp slt i32 %426, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %422
  %432 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %433 = sext i32 %.1147 to i64
  %434 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %432, i64 %433, i32 1
  %435 = sext i32 %.1147 to i64
  %436 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %432, i64 %435, i32 2
  br label %459

437:                                              ; preds = %422
  %438 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %439 = sext i32 %.1133 to i64
  %440 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %438, i64 %439, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %.1147 to i64
  %443 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %438, i64 %442, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = icmp sgt i32 %441, %444
  br i1 %445, label %446, label %452

446:                                              ; preds = %437
  %447 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %448 = sext i32 %.1133 to i64
  %449 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %447, i64 %448, i32 1
  %450 = sext i32 %.1133 to i64
  %451 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %447, i64 %450, i32 2
  br label %458

452:                                              ; preds = %437
  %453 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %454 = sext i32 %.1133 to i64
  %455 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %453, i64 %454, i32 1
  %456 = sext i32 %.1147 to i64
  %457 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %453, i64 %456, i32 2
  br label %458

458:                                              ; preds = %452, %446
  %.08.in = phi i32* [ %449, %446 ], [ %455, %452 ]
  %.06.in = phi i32* [ %451, %446 ], [ %457, %452 ]
  br label %459

459:                                              ; preds = %458, %431
  %.19.in = phi i32* [ %434, %431 ], [ %.08.in, %458 ]
  %.17.in = phi i32* [ %436, %431 ], [ %.06.in, %458 ]
  %.17 = load i32, i32* %.17.in, align 4
  %.not92 = icmp sgt i32 %56, %.418
  br i1 %.not92, label %546, label %460

460:                                              ; preds = %459
  %.19 = load i32, i32* %.19.in, align 4
  %461 = icmp slt i32 %.19, %43
  br i1 %461, label %462, label %546

462:                                              ; preds = %460
  %463 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %464 = sext i32 %.1133 to i64
  %465 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %463, i64 %464, i32 6
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %468 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %469 = call i32 @tprop(%struct.tnode* noundef %468, i32 noundef %43) #5
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %467, i64 %470
  %472 = load %struct.dlink1*, %struct.dlink1** %471, align 8
  %473 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %474 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %472, i64 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %473, i64 %476, i32 3
  %478 = load i32, i32* %477, align 4
  br label %479

479:                                              ; preds = %490, %462
  %.pn = phi %struct.dlink1* [ %472, %462 ], [ %.04, %490 ]
  %.04.in = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.pn, i64 0, i32 2
  %.04 = load %struct.dlink1*, %struct.dlink1** %.04.in, align 8
  %.not98 = icmp eq %struct.dlink1* %.04, null
  br i1 %.not98, label %.loopexit59, label %480

480:                                              ; preds = %479
  %481 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %482 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %481, i64 %484, i32 3
  %486 = load i32, i32* %485, align 4
  %487 = icmp sgt i32 %486, %478
  br i1 %487, label %488, label %489

488:                                              ; preds = %480
  br label %491

489:                                              ; preds = %480
  br label %490

490:                                              ; preds = %489
  br label %479, !llvm.loop !6

.loopexit59:                                      ; preds = %479
  br label %491

491:                                              ; preds = %.loopexit59, %488
  br label %492

492:                                              ; preds = %544, %491
  %.04.pn = phi %struct.dlink1* [ %.04, %491 ], [ %.1, %544 ]
  %.1.in = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04.pn, i64 0, i32 1
  %.1 = load %struct.dlink1*, %struct.dlink1** %.1.in, align 8
  %.not99 = icmp eq %struct.dlink1* %.1, null
  br i1 %.not99, label %.loopexit58, label %493

493:                                              ; preds = %492
  %494 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %495 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %494, i64 %497, i32 5
  %499 = load i32, i32* %498, align 4
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %493
  br label %544

502:                                              ; preds = %493
  %503 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %504 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %503, i64 %506, i32 2
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %505 to i64
  %510 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %503, i64 %509, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp sgt i32 %511, %.418
  br i1 %512, label %515, label %513

513:                                              ; preds = %502
  %514 = icmp slt i32 %508, %.418
  br i1 %514, label %515, label %516

515:                                              ; preds = %513, %502
  br label %544

516:                                              ; preds = %513
  %.not100 = icmp eq i32 %466, 0
  br i1 %.not100, label %523, label %517

517:                                              ; preds = %516
  %518 = icmp eq i32 %511, %.418
  br i1 %518, label %519, label %522

519:                                              ; preds = %517
  %520 = icmp sgt i32 %508, %511
  br i1 %520, label %521, label %522

521:                                              ; preds = %519
  br label %544

522:                                              ; preds = %519, %517
  br label %537

523:                                              ; preds = %516
  %524 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %525 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %524, i64 %527, i32 6
  %529 = load i32, i32* %528, align 4
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %531, label %536

531:                                              ; preds = %523
  %532 = icmp eq i32 %511, %.418
  br i1 %532, label %535, label %533

533:                                              ; preds = %531
  %534 = icmp eq i32 %508, %.418
  br i1 %534, label %535, label %536

535:                                              ; preds = %533, %531
  br label %544

536:                                              ; preds = %533, %523
  br label %537

537:                                              ; preds = %536, %522
  %538 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %539 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %538, i64 %541, i32 3
  %543 = load i32, i32* %542, align 4
  br label %545

544:                                              ; preds = %535, %521, %515, %501
  br label %492, !llvm.loop !7

.loopexit58:                                      ; preds = %492
  br label %545

545:                                              ; preds = %.loopexit58, %537
  %.051 = phi i32 [ %543, %537 ], [ %43, %.loopexit58 ]
  br label %546

546:                                              ; preds = %545, %460, %459
  %.152 = phi i32 [ %.051, %545 ], [ %43, %460 ], [ %43, %459 ]
  %.not93 = icmp sgt i32 %122, %.418
  br i1 %.not93, label %614, label %547

547:                                              ; preds = %546
  %548 = icmp sgt i32 %.17, %113
  br i1 %548, label %549, label %614

549:                                              ; preds = %547
  %550 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %551 = sext i32 %.1147 to i64
  %552 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %550, i64 %551, i32 6
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %555 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %556 = call i32 @tprop(%struct.tnode* noundef %555, i32 noundef %113) #5
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %554, i64 %557
  br label %559

559:                                              ; preds = %611, %549
  %.05.in = phi %struct.dlink1** [ %558, %549 ], [ %612, %611 ]
  %.05 = load %struct.dlink1*, %struct.dlink1** %.05.in, align 8
  %.not96 = icmp eq %struct.dlink1* %.05, null
  br i1 %.not96, label %.loopexit, label %560

560:                                              ; preds = %559
  %561 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %562 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.05, i64 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %561, i64 %564, i32 5
  %566 = load i32, i32* %565, align 4
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %560
  br label %611

569:                                              ; preds = %560
  %570 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %571 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.05, i64 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %570, i64 %573, i32 2
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %572 to i64
  %577 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %570, i64 %576, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = icmp sgt i32 %578, %.418
  br i1 %579, label %582, label %580

580:                                              ; preds = %569
  %581 = icmp slt i32 %575, %.418
  br i1 %581, label %582, label %583

582:                                              ; preds = %580, %569
  br label %611

583:                                              ; preds = %580
  %.not97 = icmp eq i32 %553, 0
  br i1 %.not97, label %590, label %584

584:                                              ; preds = %583
  %585 = icmp eq i32 %578, %.418
  br i1 %585, label %586, label %589

586:                                              ; preds = %584
  %587 = icmp sgt i32 %575, %578
  br i1 %587, label %588, label %589

588:                                              ; preds = %586
  br label %611

589:                                              ; preds = %586, %584
  br label %604

590:                                              ; preds = %583
  %591 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %592 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.05, i64 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %591, i64 %594, i32 6
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %596, 1
  br i1 %597, label %598, label %603

598:                                              ; preds = %590
  %599 = icmp eq i32 %578, %.418
  br i1 %599, label %602, label %600

600:                                              ; preds = %598
  %601 = icmp eq i32 %575, %.418
  br i1 %601, label %602, label %603

602:                                              ; preds = %600, %598
  br label %611

603:                                              ; preds = %600, %590
  br label %604

604:                                              ; preds = %603, %589
  %605 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %606 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.05, i64 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %605, i64 %608, i32 3
  %610 = load i32, i32* %609, align 4
  br label %613

611:                                              ; preds = %602, %588, %582, %568
  %612 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.05, i64 0, i32 2
  br label %559, !llvm.loop !8

.loopexit:                                        ; preds = %559
  br label %613

613:                                              ; preds = %.loopexit, %604
  %.012 = phi i32 [ %610, %604 ], [ %113, %.loopexit ]
  br label %614

614:                                              ; preds = %613, %547, %546
  %.113 = phi i32 [ %.012, %613 ], [ %113, %547 ], [ %113, %546 ]
  %615 = call i32 @backCheck(i32 noundef %.152, i32 noundef %.113, i32 noundef %23, i32 noundef %.418)
  %.not94 = icmp eq i32 %615, 0
  br i1 %.not94, label %617, label %616

616:                                              ; preds = %614
  br label %710

617:                                              ; preds = %614
  %618 = load i32, i32* @numRects, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* @numRects, align 4
  %620 = srem i32 %619, 100
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %629

622:                                              ; preds = %617
  %623 = load i8*, i8** bitcast (%struct.rect** @rectArray to i8**), align 8
  %624 = load i32, i32* @numRects, align 4
  %625 = add nsw i32 %624, 100
  %626 = sext i32 %625 to i64
  %627 = mul nsw i64 %626, 52
  %628 = call i8* @realloc(i8* noundef %623, i64 noundef %627) #5
  store i8* %628, i8** bitcast (%struct.rect** @rectArray to i8**), align 8
  br label %629

629:                                              ; preds = %622, %617
  %630 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %631 = load i32, i32* @numRects, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.rect, %struct.rect* %630, i64 %632, i32 4
  store i32 %.152, i32* %633, align 4
  %634 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %635 = load i32, i32* @numRects, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.rect, %struct.rect* %634, i64 %636, i32 5
  store i32 %.113, i32* %637, align 4
  %638 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %639 = load i32, i32* @numRects, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.rect, %struct.rect* %638, i64 %640, i32 6
  store i32 %23, i32* %641, align 4
  %642 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %643 = load i32, i32* @numRects, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.rect, %struct.rect* %642, i64 %644, i32 7
  store i32 %.418, i32* %645, align 4
  %646 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %647 = load i32, i32* @numRects, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.rect, %struct.rect* %646, i64 %648, i32 8
  store i32 0, i32* %649, align 4
  %650 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %651 = load i32, i32* @numRects, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.rect, %struct.rect* %650, i64 %652, i32 9
  store i32 0, i32* %653, align 4
  %654 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %655 = load i32, i32* @numRects, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.rect, %struct.rect* %654, i64 %656, i32 10
  store i32 0, i32* %657, align 4
  %658 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %659 = load i32, i32* @numRects, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.rect, %struct.rect* %658, i64 %660, i32 11
  store i32 0, i32* %661, align 4
  %662 = add nsw i32 %.152, %.113
  %663 = sdiv i32 %662, 2
  %664 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %665 = load i32, i32* @numRects, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.rect, %struct.rect* %664, i64 %666, i32 0
  store i32 %663, i32* %667, align 4
  %668 = add nsw i32 %23, %.418
  %669 = sdiv i32 %668, 2
  %670 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %671 = load i32, i32* @numRects, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.rect, %struct.rect* %670, i64 %672, i32 1
  store i32 %669, i32* %673, align 4
  %674 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %675 = load i32, i32* @numRects, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.rect, %struct.rect* %674, i64 %676, i32 2
  store i32 0, i32* %677, align 4
  %678 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %679 = load i32, i32* @numRects, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.rect, %struct.rect* %678, i64 %680, i32 3
  store i32 0, i32* %681, align 4
  %682 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @hRectRoot, i32 noundef %.152, i32 noundef %682) #5
  %683 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @vRectRoot, i32 noundef %23, i32 noundef %683) #5
  %684 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %685 = load i32, i32* @numRects, align 4
  %686 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %687 = sext i32 %685 to i64
  %688 = getelementptr inbounds %struct.rect, %struct.rect* %686, i64 %687, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %685 to i64
  %691 = getelementptr inbounds %struct.rect, %struct.rect* %686, i64 %690, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %684, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %685, i32 noundef %689, i32 noundef %692) #5
  %694 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %695 = sub nsw i32 %.113, %.152
  %696 = sub nsw i32 %.418, %23
  %697 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %694, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %695, i32 noundef %696) #5
  %698 = load i32, i32* @doPlacement, align 4
  %.not95 = icmp eq i32 %698, 0
  br i1 %.not95, label %707, label %699

699:                                              ; preds = %629
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %701 = load i32, i32* @numRects, align 4
  %702 = add nsw i32 %.113, %.152
  %703 = sdiv i32 %702, 2
  %704 = add nsw i32 %.418, %23
  %705 = sdiv i32 %704, 2
  %706 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %700, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef %701, i32 noundef %703, i32 noundef %705) #5
  br label %707

707:                                              ; preds = %699, %629
  br label %710

708:                                              ; preds = %157, %147, %126, %114, %108
  %.255 = phi i32 [ %.154, %108 ], [ %113, %126 ], [ %113, %147 ], [ %113, %157 ], [ %113, %114 ]
  %709 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 2
  br label %99, !llvm.loop !9

.loopexit61:                                      ; preds = %99
  br label %710

710:                                              ; preds = %.loopexit61, %707, %616, %421
  %.356 = phi i32 [ %113, %421 ], [ %113, %616 ], [ %113, %707 ], [ %.154, %.loopexit61 ]
  %.1248 = phi i32 [ %.1147, %421 ], [ %.1147, %616 ], [ %.1147, %707 ], [ %.137, %.loopexit61 ]
  %.1234 = phi i32 [ %.1133, %421 ], [ %.1133, %616 ], [ %.1133, %707 ], [ %.123, %.loopexit61 ]
  %.519 = phi i32 [ %.418, %421 ], [ %.418, %616 ], [ %.418, %707 ], [ %.115, %.loopexit61 ]
  br label %711

711:                                              ; preds = %710, %91, %81, %60, %48, %38
  %.457 = phi i32 [ %.053, %38 ], [ %.053, %48 ], [ %.053, %60 ], [ %.356, %710 ], [ %.053, %81 ], [ %.053, %91 ]
  %.1349 = phi i32 [ %.137, %38 ], [ %.137, %48 ], [ %.137, %60 ], [ %.1248, %710 ], [ %.137, %81 ], [ %.137, %91 ]
  %.1335 = phi i32 [ %.123, %38 ], [ %.123, %48 ], [ %.123, %60 ], [ %.1234, %710 ], [ %.123, %81 ], [ %.123, %91 ]
  %.620 = phi i32 [ %.115, %38 ], [ %.115, %48 ], [ %.115, %60 ], [ %.519, %710 ], [ %.115, %81 ], [ %.115, %91 ]
  %712 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.03, i64 0, i32 2
  br label %29, !llvm.loop !10

.loopexit62:                                      ; preds = %29
  br label %713

713:                                              ; preds = %.loopexit62, %45
  br label %714

714:                                              ; preds = %713, %11
  %.1450 = phi i32 [ %.036, %11 ], [ %.137, %713 ]
  %.14 = phi i32 [ %.022, %11 ], [ %.123, %713 ]
  %.721 = phi i32 [ %.014, %11 ], [ %.115, %713 ]
  %715 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %2, !llvm.loop !11

716:                                              ; preds = %2
  call void @rectlink()
  call void @makeRLEtree()
  call void @makeRBEtree()
  %717 = load i32, i32* @doPlacement, align 4
  %.not87 = icmp eq i32 %717, 0
  br i1 %.not87, label %723, label %718

718:                                              ; preds = %716
  %719 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %720 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %719)
  %721 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %722 = call i32 @fclose(%struct._IO_FILE* noundef %721) #5
  br label %723

723:                                              ; preds = %718, %716
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @tprop(%struct.tnode* noundef, i32 noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @backCheck(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = load i32, i32* @numRects, align 4
  br label %6

6:                                                ; preds = %22, %4
  %.01 = phi i32 [ %5, %4 ], [ %23, %22 ]
  %7 = icmp sgt i32 %.01, 0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds %struct.rect, %struct.rect* %9, i64 %10, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.rect, %struct.rect* %15, i64 %16, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  br label %22

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %20
  %23 = add nsw i32 %.01, -1
  br label %6, !llvm.loop !12

.loopexit:                                        ; preds = %6
  br label %24

24:                                               ; preds = %.loopexit, %21
  %25 = icmp eq i32 %.01, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %41

27:                                               ; preds = %24
  %28 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %29 = sext i32 %.01 to i64
  %30 = getelementptr inbounds %struct.rect, %struct.rect* %28, i64 %29, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, %2
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %35 = sext i32 %.01 to i64
  %36 = getelementptr inbounds %struct.rect, %struct.rect* %34, i64 %35, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, %3
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %39, %26
  %.0 = phi i32 [ 0, %26 ], [ 0, %39 ], [ 1, %40 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @rectlink() #0 {
  %1 = alloca %struct.tnode*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.dlink2* null, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* null, %struct.dlink2** @VRlist, align 8
  call void @tpop(%struct.tnode** noundef nonnull @hRectRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %4 = load %struct.tnode*, %struct.tnode** %1, align 8
  %5 = icmp eq %struct.tnode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %50

7:                                                ; preds = %0
  %8 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  store i8* %8, i8** bitcast (%struct.dlink2** @HRlist to i8**), align 8
  %9 = load i32, i32* %3, align 4
  %.cast = bitcast i8* %8 to %struct.dlink2*
  %10 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.cast, i64 0, i32 0
  store i32 %9, i32* %10, align 8
  %.cast1 = bitcast i8* %8 to %struct.dlink2*
  %11 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.cast1, i64 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %11, align 8
  %12 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %13 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %12, i64 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %13, align 8
  call void @tpop(%struct.tnode** noundef nonnull @vRectRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %14 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  store i8* %14, i8** bitcast (%struct.dlink2** @VRlist to i8**), align 8
  %15 = load i32, i32* %3, align 4
  %.cast2 = bitcast i8* %14 to %struct.dlink2*
  %16 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.cast2, i64 0, i32 0
  store i32 %15, i32* %16, align 8
  %.cast3 = bitcast i8* %14 to %struct.dlink2*
  %17 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.cast3, i64 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %17, align 8
  %18 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %19 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %18, i64 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %19, align 8
  %20 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  br label %21

21:                                               ; preds = %25, %7
  %.0 = phi %struct.dlink2* [ %20, %7 ], [ %27, %25 ]
  call void @tpop(%struct.tnode** noundef nonnull @hRectRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %22 = load %struct.tnode*, %struct.tnode** %1, align 8
  %23 = icmp eq %struct.tnode* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %34

25:                                               ; preds = %21
  %26 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  %27 = bitcast i8* %26 to %struct.dlink2*
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %27, i64 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %27, i64 0, i32 1
  store %struct.dlink2* %.0, %struct.dlink2** %30, align 8
  %31 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %27, i64 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %31, align 8
  %32 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.0, i64 0, i32 2
  %33 = bitcast %struct.dlink2** %32 to i8**
  store i8* %26, i8** %33, align 8
  br label %21

34:                                               ; preds = %24
  %35 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  br label %36

36:                                               ; preds = %40, %34
  %.1 = phi %struct.dlink2* [ %35, %34 ], [ %42, %40 ]
  call void @tpop(%struct.tnode** noundef nonnull @vRectRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %37 = load %struct.tnode*, %struct.tnode** %1, align 8
  %38 = icmp eq %struct.tnode* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %49

40:                                               ; preds = %36
  %41 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  %42 = bitcast i8* %41 to %struct.dlink2*
  %43 = load i32, i32* %3, align 4
  %44 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %42, i64 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %42, i64 0, i32 1
  store %struct.dlink2* %.1, %struct.dlink2** %45, align 8
  %46 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %42, i64 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %46, align 8
  %47 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.1, i64 0, i32 2
  %48 = bitcast %struct.dlink2** %47 to i8**
  store i8* %41, i8** %48, align 8
  br label %36

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeRLEtree() #0 {
  store %struct.tnode* null, %struct.tnode** @LEroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #5
  store i8* %1, i8** bitcast (%struct.dlink2*** @LEptrs to i8**), align 8
  br label %2

2:                                                ; preds = %30, %0
  %.02 = phi i32 [ 0, %0 ], [ %.13, %30 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.1, %30 ]
  %.0.in = phi %struct.dlink2** [ @HRlist, %0 ], [ %31, %30 ]
  %.0 = load %struct.dlink2*, %struct.dlink2** %.0.in, align 8
  %.not = icmp eq %struct.dlink2* %.0, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %7, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.rect, %struct.rect* %12, i64 %13, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.02, 1
  %17 = srem i32 %16, 100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i8*, i8** bitcast (%struct.dlink2*** @LEptrs to i8**), align 8
  %21 = add nsw i32 %.02, 101
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call i8* @realloc(i8* noundef %20, i64 noundef %23) #5
  store i8* %24, i8** bitcast (%struct.dlink2*** @LEptrs to i8**), align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %26, i64 %27
  store %struct.dlink2* %.0, %struct.dlink2** %28, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @LEroot, i32 noundef %15, i32 noundef %16) #5
  br label %29

29:                                               ; preds = %25, %3
  %.13 = phi i32 [ %16, %25 ], [ %.02, %3 ]
  %.1 = phi i32 [ %15, %25 ], [ %.01, %3 ]
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.0, i64 0, i32 2
  br label %2, !llvm.loop !13

32:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeRBEtree() #0 {
  store %struct.tnode* null, %struct.tnode** @BEroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #5
  store i8* %1, i8** bitcast (%struct.dlink2*** @BEptrs to i8**), align 8
  br label %2

2:                                                ; preds = %30, %0
  %.02 = phi i32 [ 0, %0 ], [ %.13, %30 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.1, %30 ]
  %.0.in = phi %struct.dlink2** [ @VRlist, %0 ], [ %31, %30 ]
  %.0 = load %struct.dlink2*, %struct.dlink2** %.0.in, align 8
  %.not = icmp eq %struct.dlink2* %.0, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %7, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.rect, %struct.rect* %12, i64 %13, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.02, 1
  %17 = srem i32 %16, 100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i8*, i8** bitcast (%struct.dlink2*** @BEptrs to i8**), align 8
  %21 = add nsw i32 %.02, 101
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call i8* @realloc(i8* noundef %20, i64 noundef %23) #5
  store i8* %24, i8** bitcast (%struct.dlink2*** @BEptrs to i8**), align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %26, i64 %27
  store %struct.dlink2* %.0, %struct.dlink2** %28, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @BEroot, i32 noundef %15, i32 noundef %16) #5
  br label %29

29:                                               ; preds = %25, %3
  %.13 = phi i32 [ %16, %25 ], [ %.02, %3 ]
  %.1 = phi i32 [ %15, %25 ], [ %.01, %3 ]
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.0, i64 0, i32 2
  br label %2, !llvm.loop !14

32:                                               ; preds = %2
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
