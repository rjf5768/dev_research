; ModuleID = './placepin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/placepin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"DEATH: Sequence was specified which\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" required more capacity than given\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sides could hanlde. Problem cell:%d\0A\00", align 1
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @placepin() #0 {
  br label %1

1:                                                ; preds = %354, %0
  %.016 = phi i32 [ undef, %0 ], [ %.7, %354 ]
  %.02 = phi i32 [ 1, %0 ], [ %355, %354 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.02, %2
  br i1 %.not, label %356, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.02 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 17
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  br label %354

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 20
  %18 = load %struct.uncombox*, %struct.uncombox** %17, align 8
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 19
  %20 = load %struct.contentbox*, %struct.contentbox** %19, align 8
  br label %21

21:                                               ; preds = %351, %16
  %.117 = phi i32 [ %.016, %16 ], [ %.6, %351 ]
  %.0 = phi i32 [ 1, %16 ], [ %352, %351 ]
  %22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 18
  %23 = load i32, i32* %22, align 4
  %.not34 = icmp sgt i32 %.0, %23
  br i1 %.not34, label %353, label %24

24:                                               ; preds = %21
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %25, i32 7
  %27 = load i32, i32* %26, align 4
  %.not35 = icmp eq i32 %27, 0
  br i1 %.not35, label %350, label %28

28:                                               ; preds = %24
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %29, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %71

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %35 = load %struct.sidebox*, %struct.sidebox** %34, align 8
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %36, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %35, i64 %39, i32 0
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %52, %33
  %.012 = phi i32 [ %41, %33 ], [ %57, %52 ]
  %.07 = phi i32 [ 0, %33 ], [ %56, %52 ]
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %44 = load %struct.sidebox*, %struct.sidebox** %43, align 8
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %45, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %44, i64 %48, i32 1
  %50 = load i32, i32* %49, align 4
  %.not41 = icmp sgt i32 %.012, %50
  br i1 %.not41, label %58, label %51

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = sext i32 %.012 to i64
  %54 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %53, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %.07, %55
  %57 = add nsw i32 %.012, 1
  br label %42, !llvm.loop !4

58:                                               ; preds = %42
  %59 = zext i32 %.0 to i64
  %60 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %59, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %.07, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.02) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %58
  br label %187

71:                                               ; preds = %28
  %72 = zext i32 %.0 to i64
  %73 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %72, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %151

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %78 = load %struct.sidebox*, %struct.sidebox** %77, align 8
  %79 = zext i32 %.0 to i64
  %80 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %79, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %78, i64 %82, i32 0
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %95, %76
  %.113 = phi i32 [ %84, %76 ], [ %100, %95 ]
  %.1 = phi i32 [ 0, %76 ], [ %99, %95 ]
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %87 = load %struct.sidebox*, %struct.sidebox** %86, align 8
  %88 = zext i32 %.0 to i64
  %89 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %88, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %87, i64 %91, i32 1
  %93 = load i32, i32* %92, align 4
  %.not39 = icmp sgt i32 %.113, %93
  br i1 %.not39, label %101, label %94

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  %96 = sext i32 %.113 to i64
  %97 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %96, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %.1, %98
  %100 = add nsw i32 %.113, 1
  br label %85, !llvm.loop !6

101:                                              ; preds = %85
  %102 = zext i32 %.0 to i64
  %103 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %102, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %.1, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %109)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.02) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %115 = load %struct.sidebox*, %struct.sidebox** %114, align 8
  %116 = zext i32 %.0 to i64
  %117 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %116, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %115, i64 %119, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %132, %113
  %.214 = phi i32 [ %121, %113 ], [ %137, %132 ]
  %.2 = phi i32 [ 0, %113 ], [ %136, %132 ]
  %123 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %124 = load %struct.sidebox*, %struct.sidebox** %123, align 8
  %125 = zext i32 %.0 to i64
  %126 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %125, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %124, i64 %128, i32 1
  %130 = load i32, i32* %129, align 4
  %.not40 = icmp sgt i32 %.214, %130
  br i1 %.not40, label %138, label %131

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131
  %133 = sext i32 %.214 to i64
  %134 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %133, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %.2, %135
  %137 = add nsw i32 %.214, 1
  br label %122, !llvm.loop !7

138:                                              ; preds = %122
  %139 = zext i32 %.0 to i64
  %140 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %139, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %.2, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %145 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %144)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.02) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

150:                                              ; preds = %138
  br label %186

151:                                              ; preds = %71
  %152 = zext i32 %.0 to i64
  %153 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %152, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 2
  br i1 %155, label %156, label %185

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %166, %156
  %.315 = phi i32 [ 1, %156 ], [ %171, %166 ]
  %.3 = phi i32 [ 0, %156 ], [ %170, %166 ]
  %158 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %159 = load %struct.sidebox*, %struct.sidebox** %158, align 8
  %160 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %159, i64 %162, i32 1
  %164 = load i32, i32* %163, align 4
  %.not38 = icmp sgt i32 %.315, %164
  br i1 %.not38, label %172, label %165

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  %167 = zext i32 %.315 to i64
  %168 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %167, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %.3, %169
  %171 = add nuw nsw i32 %.315, 1
  br label %157, !llvm.loop !8

172:                                              ; preds = %157
  %173 = zext i32 %.0 to i64
  %174 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %173, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %.3, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %179 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %181 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %182, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.02) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %151
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186, %70
  %188 = zext i32 %.0 to i64
  %189 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %188, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 2
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = zext i32 %.0 to i64
  %194 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %193, i32 4
  br label %195

195:                                              ; preds = %208, %192
  %196 = zext i32 %.0 to i64
  %197 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %196, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = sitofp i32 %198 to double
  %200 = load i32, i32* @randVar, align 4
  %201 = mul nsw i32 %200, 1103515245
  %202 = add nsw i32 %201, 12345
  store i32 %202, i32* @randVar, align 4
  %203 = and i32 %202, 2147483647
  %204 = sitofp i32 %203 to double
  %205 = fdiv double %204, 0x41DFFFFFFFC00000
  %206 = fmul double %205, %199
  %207 = fptosi double %206 to i32
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %194, align 4
  %210 = icmp eq i32 %209, %207
  br i1 %210, label %195, label %211, !llvm.loop !9

211:                                              ; preds = %208
  %212 = add nsw i32 %207, 1
  br label %257

213:                                              ; preds = %187
  %214 = zext i32 %.0 to i64
  %215 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %214, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %246

218:                                              ; preds = %213
  %219 = zext i32 %.0 to i64
  %220 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %219, i32 4
  br label %221

221:                                              ; preds = %234, %218
  %222 = zext i32 %.0 to i64
  %223 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %222, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sitofp i32 %224 to double
  %226 = load i32, i32* @randVar, align 4
  %227 = mul nsw i32 %226, 1103515245
  %228 = add nsw i32 %227, 12345
  store i32 %228, i32* @randVar, align 4
  %229 = and i32 %228, 2147483647
  %230 = sitofp i32 %229 to double
  %231 = fdiv double %230, 0x41DFFFFFFFC00000
  %232 = fmul double %231, %225
  %233 = fptosi double %232 to i32
  br label %234

234:                                              ; preds = %221
  %235 = load i32, i32* %220, align 4
  %236 = icmp eq i32 %235, %233
  br i1 %236, label %221, label %237, !llvm.loop !10

237:                                              ; preds = %234
  %238 = icmp eq i32 %233, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = zext i32 %.0 to i64
  %241 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %240, i32 5
  br label %245

242:                                              ; preds = %237
  %243 = zext i32 %.0 to i64
  %244 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %243, i32 6
  br label %245

245:                                              ; preds = %242, %239
  %.218.in = phi i32* [ %241, %239 ], [ %244, %242 ]
  %.218 = load i32, i32* %.218.in, align 4
  br label %256

246:                                              ; preds = %213
  %247 = zext i32 %.0 to i64
  %248 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %247, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = zext i32 %.0 to i64
  %253 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %252, i32 5
  %254 = load i32, i32* %253, align 4
  br label %255

255:                                              ; preds = %251, %246
  %.319 = phi i32 [ %254, %251 ], [ %.117, %246 ]
  br label %256

256:                                              ; preds = %255, %245
  %.420 = phi i32 [ %.218, %245 ], [ %.319, %255 ]
  br label %257

257:                                              ; preds = %256, %211
  %.521 = phi i32 [ %212, %211 ], [ %.420, %256 ]
  %258 = zext i32 %.0 to i64
  %259 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %258, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = zext i32 %.0 to i64
  %264 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %263, i32 5
  %265 = load i32, i32* %264, align 4
  br label %277

266:                                              ; preds = %257
  %267 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 22
  %268 = load %struct.sidebox*, %struct.sidebox** %267, align 8
  %269 = sext i32 %.521 to i64
  %270 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %268, i64 %269, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %.521 to i64
  %273 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %268, i64 %272, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, %271
  %276 = add nsw i32 %275, 1
  br label %277

277:                                              ; preds = %266, %262
  %.06 = phi i32 [ 1, %262 ], [ %276, %266 ]
  %.05 = phi i32 [ %265, %262 ], [ %274, %266 ]
  %.04 = phi i32 [ %265, %262 ], [ %271, %266 ]
  br label %278

278:                                              ; preds = %306, %277
  %279 = sitofp i32 %.06 to double
  %280 = load i32, i32* @randVar, align 4
  %281 = mul nsw i32 %280, 1103515245
  %282 = add nsw i32 %281, 12345
  store i32 %282, i32* @randVar, align 4
  %283 = and i32 %282, 2147483647
  %284 = sitofp i32 %283 to double
  %285 = fdiv double %284, 0x41DFFFFFFFC00000
  %286 = fmul double %285, %279
  %287 = fptosi double %286 to i32
  %288 = add nsw i32 %.04, %287
  br label %289

289:                                              ; preds = %303, %278
  %.4 = phi i32 [ 0, %278 ], [ %296, %303 ]
  %.03 = phi i32 [ %288, %278 ], [ %304, %303 ]
  %290 = icmp sgt i32 %.03, %.05
  br i1 %290, label %291, label %292

291:                                              ; preds = %289
  br label %305

292:                                              ; preds = %289
  %293 = sext i32 %.03 to i64
  %294 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %293, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %.4, %295
  %297 = zext i32 %.0 to i64
  %298 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %297, i32 7
  %299 = load i32, i32* %298, align 4
  %.not36 = icmp slt i32 %296, %299
  br i1 %.not36, label %301, label %300

300:                                              ; preds = %292
  br label %305

301:                                              ; preds = %292
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  %304 = add nsw i32 %.03, 1
  br label %289

305:                                              ; preds = %300, %291
  br label %306

306:                                              ; preds = %305
  br i1 %290, label %278, label %307, !llvm.loop !11

307:                                              ; preds = %306
  %308 = add nsw i32 %.04, %287
  br label %309

309:                                              ; preds = %329, %307
  %.09 = phi i32 [ %.0, %307 ], [ %330, %329 ]
  %.5 = phi i32 [ 0, %307 ], [ %315, %329 ]
  %.01 = phi i32 [ %308, %307 ], [ %331, %329 ]
  %310 = icmp slt i32 %.01, %.03
  br i1 %310, label %311, label %332

311:                                              ; preds = %309
  %312 = sext i32 %.01 to i64
  %313 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %312, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %.5, %314
  %316 = sext i32 %.01 to i64
  %317 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %316, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %314
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %326, %311
  %.010 = phi i32 [ %.09, %311 ], [ %327, %326 ]
  %321 = add nsw i32 %.09, %314
  %322 = icmp slt i32 %.010, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = sext i32 %.010 to i64
  %325 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %324, i32 1
  store i32 %.01, i32* %325, align 4
  br label %326

326:                                              ; preds = %323
  %327 = add nsw i32 %.010, 1
  br label %320, !llvm.loop !12

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328
  %330 = add nsw i32 %.09, %314
  %331 = add nsw i32 %.01, 1
  br label %309, !llvm.loop !13

332:                                              ; preds = %309
  %333 = zext i32 %.0 to i64
  %334 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %333, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 %335, %.5
  %337 = sext i32 %.03 to i64
  %338 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %337, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, %336
  store i32 %340, i32* %338, align 4
  br label %341

341:                                              ; preds = %347, %332
  %.111 = phi i32 [ %.09, %332 ], [ %348, %347 ]
  %342 = add nsw i32 %.09, %336
  %343 = icmp slt i32 %.111, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = sext i32 %.111 to i64
  %346 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %345, i32 1
  store i32 %.03, i32* %346, align 4
  br label %347

347:                                              ; preds = %344
  %348 = add nsw i32 %.111, 1
  br label %341, !llvm.loop !14

349:                                              ; preds = %341
  br label %350

350:                                              ; preds = %349, %24
  %.6 = phi i32 [ %.521, %349 ], [ %.117, %24 ]
  br label %351

351:                                              ; preds = %350
  %352 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !15

353:                                              ; preds = %21
  br label %354

354:                                              ; preds = %353, %15
  %.7 = phi i32 [ %.016, %15 ], [ %.117, %353 ]
  %355 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !16

356:                                              ; preds = %1
  ret void

UnifiedUnreachableBlock:                          ; preds = %177, %143, %106, %63
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
