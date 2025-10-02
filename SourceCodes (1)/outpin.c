; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outpin.c'
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
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.dimbox*, align 8
  %3 = alloca %struct.netbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** @cktName, align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %10) #4
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %1, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17)
  call void @exit(i32 noundef 0) #5
  unreachable

19:                                               ; preds = %0
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %23, align 16
  %24 = load i32, i32* @numcells, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %44, %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @numcells, align 4
  %29 = load i32, i32* @numpads, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %33, i64 %35
  %37 = load %struct.cellbox*, %struct.cellbox** %36, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %42, align 4
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %26, !llvm.loop !4

47:                                               ; preds = %41, %26
  %48 = load i32, i32* @numcells, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %68, %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @numcells, align 4
  %53 = load i32, i32* @numpads, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %57, i64 %59
  %61 = load %struct.cellbox*, %struct.cellbox** %60, align 8
  %62 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 1, i32* %66, align 8
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %50, !llvm.loop !6

71:                                               ; preds = %65, %50
  %72 = load i32, i32* @numcells, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %92, %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @numcells, align 4
  %77 = load i32, i32* @numpads, align 4
  %78 = add nsw i32 %76, %77
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %81, i64 %83
  %85 = load %struct.cellbox*, %struct.cellbox** %84, align 8
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 1, i32* %90, align 4
  br label %95

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %74, !llvm.loop !7

95:                                               ; preds = %89, %74
  %96 = load i32, i32* @numcells, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %116, %95
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @numcells, align 4
  %101 = load i32, i32* @numpads, align 4
  %102 = add nsw i32 %100, %101
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %105, i64 %107
  %109 = load %struct.cellbox*, %struct.cellbox** %108, align 8
  %110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 1, i32* %114, align 16
  br label %119

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %98, !llvm.loop !8

119:                                              ; preds = %113, %98
  %120 = load i32, i32* @numcells, align 4
  %121 = add nsw i32 %120, 1
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %121, i32* %122, align 16
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 16
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %119
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 16
  %139 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %135, %131
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 16
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %140
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %151 = load i32, i32* %150, align 16
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 16
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %155, i32* %157, align 16
  br label %158

158:                                              ; preds = %153, %149
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %306, %158
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @numnets, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %309

163:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  %164 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %164, i64 %166
  %168 = load %struct.dimbox*, %struct.dimbox** %167, align 8
  store %struct.dimbox* %168, %struct.dimbox** %2, align 8
  %169 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %170 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %169, i32 0, i32 0
  %171 = load %struct.netbox*, %struct.netbox** %170, align 8
  store %struct.netbox* %171, %struct.netbox** %3, align 8
  br label %172

172:                                              ; preds = %184, %163
  %173 = load %struct.netbox*, %struct.netbox** %3, align 8
  %174 = icmp ne %struct.netbox* %173, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.netbox*, %struct.netbox** %3, align 8
  %177 = getelementptr inbounds %struct.netbox, %struct.netbox* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %175
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.netbox*, %struct.netbox** %3, align 8
  %186 = getelementptr inbounds %struct.netbox, %struct.netbox* %185, i32 0, i32 0
  %187 = load %struct.netbox*, %struct.netbox** %186, align 8
  store %struct.netbox* %187, %struct.netbox** %3, align 8
  br label %172, !llvm.loop !9

188:                                              ; preds = %172
  %189 = load i32, i32* %5, align 4
  %190 = icmp sle i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %306

192:                                              ; preds = %188
  %193 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %193, i64 %195
  %197 = load %struct.dimbox*, %struct.dimbox** %196, align 8
  store %struct.dimbox* %197, %struct.dimbox** %2, align 8
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %199 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %200 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %199, i32 0, i32 13
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %201)
  %203 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %204 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %203, i32 0, i32 0
  %205 = load %struct.netbox*, %struct.netbox** %204, align 8
  store %struct.netbox* %205, %struct.netbox** %3, align 8
  br label %206

206:                                              ; preds = %299, %192
  %207 = load %struct.netbox*, %struct.netbox** %3, align 8
  %208 = icmp ne %struct.netbox* %207, null
  br i1 %208, label %209, label %303

209:                                              ; preds = %206
  %210 = load %struct.netbox*, %struct.netbox** %3, align 8
  %211 = getelementptr inbounds %struct.netbox, %struct.netbox* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @numcells, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load %struct.netbox*, %struct.netbox** %3, align 8
  %217 = getelementptr inbounds %struct.netbox, %struct.netbox* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %6, align 4
  br label %279

219:                                              ; preds = %209
  %220 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %221 = load %struct.netbox*, %struct.netbox** %3, align 8
  %222 = getelementptr inbounds %struct.netbox, %struct.netbox* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %220, i64 %224
  %226 = load %struct.cellbox*, %struct.cellbox** %225, align 8
  %227 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %233

230:                                              ; preds = %219
  %231 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %6, align 4
  br label %278

233:                                              ; preds = %219
  %234 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %235 = load %struct.netbox*, %struct.netbox** %3, align 8
  %236 = getelementptr inbounds %struct.netbox, %struct.netbox* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %234, i64 %238
  %240 = load %struct.cellbox*, %struct.cellbox** %239, align 8
  %241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %240, i32 0, i32 11
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %6, align 4
  br label %277

247:                                              ; preds = %233
  %248 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %249 = load %struct.netbox*, %struct.netbox** %3, align 8
  %250 = getelementptr inbounds %struct.netbox, %struct.netbox* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %248, i64 %252
  %254 = load %struct.cellbox*, %struct.cellbox** %253, align 8
  %255 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %254, i32 0, i32 11
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %261

258:                                              ; preds = %247
  %259 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %6, align 4
  br label %276

261:                                              ; preds = %247
  %262 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %263 = load %struct.netbox*, %struct.netbox** %3, align 8
  %264 = getelementptr inbounds %struct.netbox, %struct.netbox* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %262, i64 %266
  %268 = load %struct.cellbox*, %struct.cellbox** %267, align 8
  %269 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 4
  br i1 %271, label %272, label %275

272:                                              ; preds = %261
  %273 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %274 = load i32, i32* %273, align 16
  store i32 %274, i32* %6, align 4
  br label %275

275:                                              ; preds = %272, %261
  br label %276

276:                                              ; preds = %275, %258
  br label %277

277:                                              ; preds = %276, %244
  br label %278

278:                                              ; preds = %277, %230
  br label %279

279:                                              ; preds = %278, %215
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %281 = load i8**, i8*** @pinnames, align 8
  %282 = load %struct.netbox*, %struct.netbox** %3, align 8
  %283 = getelementptr inbounds %struct.netbox, %struct.netbox* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %281, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.netbox*, %struct.netbox** %3, align 8
  %289 = getelementptr inbounds %struct.netbox, %struct.netbox* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.netbox*, %struct.netbox** %3, align 8
  %292 = getelementptr inbounds %struct.netbox, %struct.netbox* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.netbox*, %struct.netbox** %3, align 8
  %296 = getelementptr inbounds %struct.netbox, %struct.netbox* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %280, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* noundef %287, i32 noundef %290, i32 noundef %293, i32 noundef %294, i32 noundef %297)
  br label %299

299:                                              ; preds = %279
  %300 = load %struct.netbox*, %struct.netbox** %3, align 8
  %301 = getelementptr inbounds %struct.netbox, %struct.netbox* %300, i32 0, i32 0
  %302 = load %struct.netbox*, %struct.netbox** %301, align 8
  store %struct.netbox* %302, %struct.netbox** %3, align 8
  br label %206, !llvm.loop !10

303:                                              ; preds = %206
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %304, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %191
  %307 = load i32, i32* %4, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %4, align 4
  br label %159, !llvm.loop !11

309:                                              ; preds = %159
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %311 = call i32 @fclose(%struct._IO_FILE* noundef %310)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
