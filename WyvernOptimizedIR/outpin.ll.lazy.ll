; ModuleID = './outpin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.pin\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"net %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"pin %s  x %d  y %d  cell %d  PinOrEquiv %d\0A\00", align 1
@pinnames = external dso_local global i8**, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outpin() #0 {
  %1 = alloca [5 x i32], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %4 = load i8*, i8** @cktName, align 8
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #5
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %11) #5
  call void @exit(i32 noundef 0) #6
  unreachable

13:                                               ; preds = %0
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  store i32 0, i32* %17, align 16
  %18 = load i32, i32* @numcells, align 4
  br label %19

19:                                               ; preds = %34, %13
  %.0.in = phi i32 [ %18, %13 ], [ %.0, %34 ]
  %.0 = add nsw i32 %.0.in, 1
  %20 = load i32, i32* @numcells, align 4
  %21 = load i32, i32* @numpads, align 4
  %22 = add nsw i32 %20, %21
  %.not.not = icmp slt i32 %.0.in, %22
  br i1 %.not.not, label %23, label %.loopexit8

23:                                               ; preds = %19
  %24 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %24, i64 %25
  %27 = load %struct.cellbox*, %struct.cellbox** %26, align 8
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i64 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  store i32 1, i32* %32, align 4
  br label %35

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  br label %19, !llvm.loop !4

.loopexit8:                                       ; preds = %19
  br label %35

35:                                               ; preds = %.loopexit8, %31
  %36 = load i32, i32* @numcells, align 4
  br label %37

37:                                               ; preds = %52, %35
  %.1.in = phi i32 [ %36, %35 ], [ %.1, %52 ]
  %.1 = add nsw i32 %.1.in, 1
  %38 = load i32, i32* @numcells, align 4
  %39 = load i32, i32* @numpads, align 4
  %40 = add nsw i32 %38, %39
  %.not.not11 = icmp slt i32 %.1.in, %40
  br i1 %.not.not11, label %41, label %.loopexit7

41:                                               ; preds = %37
  %42 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %43 = sext i32 %.1 to i64
  %44 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %42, i64 %43
  %45 = load %struct.cellbox*, %struct.cellbox** %44, align 8
  %46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i64 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  store i32 1, i32* %50, align 8
  br label %53

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  br label %37, !llvm.loop !6

.loopexit7:                                       ; preds = %37
  br label %53

53:                                               ; preds = %.loopexit7, %49
  %54 = load i32, i32* @numcells, align 4
  br label %55

55:                                               ; preds = %70, %53
  %.2.in = phi i32 [ %54, %53 ], [ %.2, %70 ]
  %.2 = add nsw i32 %.2.in, 1
  %56 = load i32, i32* @numcells, align 4
  %57 = load i32, i32* @numpads, align 4
  %58 = add nsw i32 %56, %57
  %.not.not12 = icmp slt i32 %.2.in, %58
  br i1 %.not.not12, label %59, label %.loopexit6

59:                                               ; preds = %55
  %60 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %61 = sext i32 %.2 to i64
  %62 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %60, i64 %61
  %63 = load %struct.cellbox*, %struct.cellbox** %62, align 8
  %64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i64 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  store i32 1, i32* %68, align 4
  br label %71

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  br label %55, !llvm.loop !7

.loopexit6:                                       ; preds = %55
  br label %71

71:                                               ; preds = %.loopexit6, %67
  %72 = load i32, i32* @numcells, align 4
  br label %73

73:                                               ; preds = %88, %71
  %.3.in = phi i32 [ %72, %71 ], [ %.3, %88 ]
  %.3 = add nsw i32 %.3.in, 1
  %74 = load i32, i32* @numcells, align 4
  %75 = load i32, i32* @numpads, align 4
  %76 = add nsw i32 %74, %75
  %.not.not13 = icmp slt i32 %.3.in, %76
  br i1 %.not.not13, label %77, label %.loopexit

77:                                               ; preds = %73
  %78 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %79 = sext i32 %.3 to i64
  %80 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %78, i64 %79
  %81 = load %struct.cellbox*, %struct.cellbox** %80, align 8
  %82 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %81, i64 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  store i32 1, i32* %86, align 16
  br label %89

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  br label %73, !llvm.loop !8

.loopexit:                                        ; preds = %73
  br label %89

89:                                               ; preds = %.loopexit, %85
  %90 = load i32, i32* @numcells, align 4
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  store i32 %91, i32* %92, align 16
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 16
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 16
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %101
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 16
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %110
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %121 = load i32, i32* %120, align 16
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 16
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  store i32 %125, i32* %127, align 16
  br label %128

128:                                              ; preds = %123, %119
  br label %129

129:                                              ; preds = %240, %128
  %.03 = phi i32 [ 1, %128 ], [ %241, %240 ]
  %.4 = phi i32 [ %.3, %128 ], [ %.11, %240 ]
  %130 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.03, %130
  br i1 %.not, label %242, label %131

131:                                              ; preds = %129
  %132 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %133 = zext i32 %.03 to i64
  %134 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %132, i64 %133
  %135 = load %struct.dimbox*, %struct.dimbox** %134, align 8
  %136 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %135, i64 0, i32 0
  br label %137

137:                                              ; preds = %145, %131
  %.04 = phi i32 [ 0, %131 ], [ %.15, %145 ]
  %.01.in = phi %struct.netbox** [ %136, %131 ], [ %146, %145 ]
  %.01 = load %struct.netbox*, %struct.netbox** %.01.in, align 8
  %.not14 = icmp eq %struct.netbox* %.01, null
  br i1 %.not14, label %147, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = add nsw i32 %.04, 1
  br label %144

144:                                              ; preds = %142, %138
  %.15 = phi i32 [ %143, %142 ], [ %.04, %138 ]
  br label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  br label %137, !llvm.loop !9

147:                                              ; preds = %137
  %148 = icmp slt i32 %.04, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %147
  br label %240

150:                                              ; preds = %147
  %151 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %152 = zext i32 %.03 to i64
  %153 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %151, i64 %152
  %154 = load %struct.dimbox*, %struct.dimbox** %153, align 8
  %155 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %154, i64 0, i32 13
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %156) #5
  %158 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %154, i64 0, i32 0
  br label %159

159:                                              ; preds = %237, %150
  %.12.in = phi %struct.netbox** [ %158, %150 ], [ %238, %237 ]
  %.5 = phi i32 [ %.4, %150 ], [ %.10, %237 ]
  %.12 = load %struct.netbox*, %struct.netbox** %.12.in, align 8
  %.not15 = icmp eq %struct.netbox* %.12, null
  br i1 %.not15, label %239, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @numcells, align 4
  %.not16 = icmp sgt i32 %162, %163
  br i1 %.not16, label %167, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %166 = load i32, i32* %165, align 8
  br label %223

167:                                              ; preds = %160
  %168 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %169 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %168, i64 %171
  %173 = load %struct.cellbox*, %struct.cellbox** %172, align 8
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i64 0, i32 11
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  br label %222

180:                                              ; preds = %167
  %181 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %182 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %181, i64 %184
  %186 = load %struct.cellbox*, %struct.cellbox** %185, align 8
  %187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i64 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %192 = load i32, i32* %191, align 8
  br label %221

193:                                              ; preds = %180
  %194 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %195 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %194, i64 %197
  %199 = load %struct.cellbox*, %struct.cellbox** %198, align 8
  %200 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %199, i64 0, i32 11
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %203, label %206

203:                                              ; preds = %193
  %204 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %205 = load i32, i32* %204, align 4
  br label %220

206:                                              ; preds = %193
  %207 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %208 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %207, i64 %210
  %212 = load %struct.cellbox*, %struct.cellbox** %211, align 8
  %213 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 11
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 4
  br i1 %215, label %216, label %219

216:                                              ; preds = %206
  %217 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %218 = load i32, i32* %217, align 16
  br label %219

219:                                              ; preds = %216, %206
  %.6 = phi i32 [ %218, %216 ], [ %.5, %206 ]
  br label %220

220:                                              ; preds = %219, %203
  %.7 = phi i32 [ %205, %203 ], [ %.6, %219 ]
  br label %221

221:                                              ; preds = %220, %190
  %.8 = phi i32 [ %192, %190 ], [ %.7, %220 ]
  br label %222

222:                                              ; preds = %221, %177
  %.9 = phi i32 [ %179, %177 ], [ %.8, %221 ]
  br label %223

223:                                              ; preds = %222, %164
  %.10 = phi i32 [ %166, %164 ], [ %.9, %222 ]
  %224 = load i8**, i8*** @pinnames, align 8
  %225 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* noundef %229, i32 noundef %231, i32 noundef %233, i32 noundef %.10, i32 noundef %235) #5
  br label %237

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.netbox, %struct.netbox* %.12, i64 0, i32 0
  br label %159, !llvm.loop !10

239:                                              ; preds = %159
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %7)
  br label %240

240:                                              ; preds = %239, %149
  %.11 = phi i32 [ %.4, %149 ], [ %.5, %239 ]
  %241 = add nuw nsw i32 %.03, 1
  br label %129, !llvm.loop !11

242:                                              ; preds = %129
  %243 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %7) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
